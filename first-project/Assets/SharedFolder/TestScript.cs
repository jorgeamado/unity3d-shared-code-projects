using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class TestScript : MonoBehaviour {
	public Text text;


	void Update () 
	{
		#if FIRST_PROJECT
		text.text = "FIRST PROJECT";
		#endif

		#if SECOND_PROJECT
		text.text = "SECOND PROJECT";
		#endif

	}
}
