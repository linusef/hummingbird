import java.awt.Rectangle;
public class AccessorsMutators {

	public static void main(String[] args) {
		// Working with Accessors and Mutators
		Rectangle rect = new Rectangle(20, 50);
		rect.grow(5, 10);
		System.out.println(rect.getWidth());
		System.out.println(rect.getHeight());

	}

}
