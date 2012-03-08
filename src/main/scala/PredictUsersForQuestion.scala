
object Predictor {
  def predict(qs:QuestionSegment):List[(Int,Double)] = {
    val predictor = new Predictor
    predictor.buildDict
    null;
  }
}

class Predictor {
  private def buildDict() = {
  }
}

class QuestionSegment {
}
