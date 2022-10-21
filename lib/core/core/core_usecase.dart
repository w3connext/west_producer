abstract class CoreUseCase<P, R> {
  R execute(P request);
}
