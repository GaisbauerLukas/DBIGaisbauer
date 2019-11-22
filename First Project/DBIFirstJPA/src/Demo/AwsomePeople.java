package Demo;

public class AwsomePeople {
    private boolean isAwesome;
    private long count;

    public AwsomePeople(boolean isAwesome, long count) {
       this.isAwesome = isAwesome;
       this.count = count;
    }

    public boolean isAwesome() {
        return isAwesome;
    }

    public long getCount() {
        return count;
    }
}
