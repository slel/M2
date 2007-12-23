--		Copyright 2004 by Daniel R. Grayson

export {
	"ass" => symbol associatedPrimes,
        "ann" => symbol annihilator,
	"coker" => symbol cokernel,
	"decompose" => symbol minimalPrimes,
	"det" => symbol determinant,
	"gens" => symbol generators,
	"ker" => symbol kernel,
	"minPres" => symbol minimalPresentation,
	"numcols" => symbol numColumns,
	"numrows" => symbol numRows,
	"prune" => symbol minimalPresentation,
	"res" => symbol resolution,
	"sub" => symbol substitute,
	"top" => symbol topComponents,
	symbol !,
	symbol !=,
	symbol #,
	symbol #?,
	symbol %,
	symbol &,
	symbol (*),
	symbol _*,
	symbol ^*,
	symbol (,
	symbol ),
	symbol **,
	symbol *,
	symbol ++,
	symbol +,
	symbol ,,
	symbol -,
	symbol ->,
	symbol .,
	symbol ..,
	symbol .?,
	symbol /,
	symbol //,
	symbol :,
	symbol :=,
	symbol ;,
	symbol <,
	symbol <-,
	symbol <<,
	symbol <=,
	symbol <==>,
	symbol =!=,
	symbol =,
	symbol ==,
	symbol ===,
	symbol ===>,
	symbol ==>,
	symbol =>,
	symbol >,
	symbol >=,
	symbol >>,
	symbol ?,
	symbol @,
	symbol @@,
	symbol ANCHOR,
	symbol AbsoluteLinks,
	symbol Adjacent,
	symbol AffineVariety,
	symbol AfterEval,
	symbol AfterNoPrint,
	symbol AfterPrint,
	symbol Algorithm,
	symbol Alignment,
	symbol Array,
	symbol Ascending,
	symbol AssociativeExpression,
	symbol Authors,
        symbol AuxiliaryFiles,
	symbol BLOCKQUOTE,
	symbol BODY,
	symbol BOLD,
	symbol BR,
	symbol Bag,
	symbol Bareiss,
	symbol BaseFunction,
	symbol BaseRow,
	symbol BasicList,
	symbol BasisElementLimit,
	symbol Bayer,
	symbol BeforePrint,
	symbol BettiTally,
	symbol Binary,
	symbol BinaryOperation,
	symbol Binomial,
	symbol Boolean,
	symbol Boxes,
	symbol CC,
	symbol CCC,
	symbol CDATA,
	symbol CODE,
	symbol COMMENT,
	symbol CacheFunction,
	symbol CacheTable,
	symbol CallLimit,
	symbol Caveat,
	symbol Center,
	symbol ChainComplex,
	symbol ChainComplexMap,
	symbol ChangeMatrix,
	symbol CheckDocumentation,
	symbol CodimensionLimit,
	symbol CoefficientRing,
	symbol Cofactor,
	symbol CoherentSheaf,
	symbol Command,
	symbol CompiledFunction,
	symbol CompiledFunctionBody,
	symbol CompiledFunctionClosure,
	symbol CompleteIntersection,
	symbol Configuration,
	symbol Consequences,
	symbol ConstantCoefficients,
	symbol CurrentVersion,
	symbol DD,
	symbol DIV,
	symbol DIV1,
	symbol DL,
	symbol DT,
	symbol Database,
	symbol Date,
	symbol DebuggingMode,
	symbol Decompose,
	symbol Degree,
	symbol DegreeLimit,
	symbol DegreeMap,
	symbol DegreeOrder,
	symbol DegreeRank,
	symbol Degrees,
	symbol Dense,
	symbol Descending,
	symbol Descent,
	symbol Description,
	symbol Dictionary,
	symbol Dispatch,
	symbol Divide,
	symbol DivideConquer,
	symbol DocumentTag,
	symbol Down,
	symbol EM,					    -- cryptic
	symbol EXAMPLE,
	symbol Eliminate,
	symbol EliminationOrder,
	symbol Email,
	symbol Encapsulate,
	symbol End,
	symbol Engine,
	symbol EngineRing,
	symbol Equation,
	symbol ExampleItem,
	symbol Exclude,
	symbol Expression,
	symbol Ext,
	symbol F4,
	symbol Fano,
	symbol Faugere,
	symbol File,
	symbol FileName,
	symbol FilePosition,
	symbol FindOne,
	symbol First,
	symbol Flexible,
	symbol FollowLinks,
	symbol ForestNode,
	symbol Format,
	symbol FractionField,
	symbol Function,
	symbol FunctionApplication,
	symbol FunctionBody,
	symbol FunctionClosure,
	symbol GBDegrees,
	symbol GF,
	symbol GLex,
	symbol GRevLex,
	symbol GaloisField,
	symbol GeneralOrderedMonoid,
	symbol Generic,
	symbol Global,
	symbol GlobalAssignHook,
	symbol GlobalDictionary,
	symbol GlobalReleaseHook,
	symbol GradedModule,
	symbol GradedModuleMap,
	symbol Grassmannian,
	symbol GroebnerBasis,
	symbol GroupLex,
	symbol GroupRevLex,
	symbol HEAD,
	symbol HEADER1,
	symbol HEADER2,
	symbol HEADER3,
	symbol HEADER4,
	symbol HEADER5,
	symbol HEADER6,
	symbol HH,
	symbol HR,
	symbol HREF,
	symbol HTML,
	symbol HardDegreeLimit,
	symbol HashTable,
	symbol HeaderType,
	symbol Heading,
	symbol Headline,
	symbol Heft,
	symbol Hermitian,
	symbol Hilbert,
	symbol Holder,
	symbol Hom,
	symbol HomePage,
	symbol Homogeneous,
	symbol Homogeneous2,
	symbol HorizontalSpace,
	symbol Hypertext,
	symbol HypertextContainer,
	symbol HypertextParagraph,
	symbol IMG,
	symbol ITALIC,
	symbol Ideal,
	symbol IgnoreExampleErrors,
	symbol ImmutableType,
	symbol IndeterminateNumber,
	symbol IndexedVariable,
	symbol IndexedVariableTable,
	symbol InfiniteNumber,
	symbol InfoDirSection,
	symbol Inhomogeneous,
	symbol Inputs,
	symbol InstallPrefix,
	symbol IntermediateMarkUpType,
	symbol Intersection,
	symbol InverseMethod,
	symbol Inverses,
	symbol MaximalRank,
	symbol MaxReductionCount,
	symbol Iterate,
	symbol KeepZeroes,
	symbol Key,
	symbol Keyword,
	symbol LABEL,
	symbol LATER,
	symbol LAYOUT,
	symbol LI,
	symbol LINK,
	symbol LITERAL,
	symbol LU,
	symbol Left,
	symbol LengthLimit,
	symbol Lex,
	symbol Limit,
	symbol Linear,
	symbol LinearAlgebra,
	symbol List,
	symbol LoadDocumentation,
	symbol Local,
	symbol LocalDictionary,
	symbol LongPolynomial,
	symbol LowerBound,
	symbol MENU,
	symbol META,
	symbol MakeDocumentation,
	symbol MakeInfo,
	symbol MakeLinks,
	symbol Manipulator,
	symbol MarkUpType,
	symbol MarkUpTypeWithOptions,
	symbol Matrix,
	symbol MatrixExpression,
	symbol MethodFunction,
	symbol MethodFunctionWithOptions,
	symbol MinimalGenerators,
	symbol MinimalMatrix,
	symbol Minimize,
	symbol Minus,
	symbol Module,
	symbol ModuleMap,
	symbol Monoid,
	symbol MonoidElement,
	symbol Monomial,
	symbol MonomialIdeal,
	symbol MonomialOrder,
	symbol MonomialSize,
	symbol Monomials,
	symbol MutableHashTable,
	symbol MutableList,
	symbol MutableMatrix,
	symbol NCLex,
	symbol Name,
	symbol Net,
	symbol NetFile,
	symbol NewFromMethod,
	symbol NewMethod,
	symbol NewOfFromMethod,
	symbol NewOfMethod,
	symbol NoPrint,
	symbol NonAssociativeProduct,
	symbol NonLinear,
	symbol Nothing,
	symbol Number,
	symbol Numeric,
	symbol OO,
	symbol OneExpression,
	symbol Option,
	symbol OptionTable,
	symbol Options,
	symbol Order,
	symbol OrderedMonoid,
	symbol OutputDictionary,
	symbol Outputs,
	symbol PARA,
	symbol PRE,
	symbol Package,
	symbol PackageDictionary,
	symbol PackagePrefix,
	symbol PairLimit,
	symbol PairsRemaining,
	symbol Parenthesize,
	symbol Partition,
	symbol PolynomialRing,
	symbol Position,
	symbol Postfix,
	symbol Power,
	symbol Prefix,
	symbol PrimaryTag,				    -- so toExternalString can be used to save documentation tags in an external database
	symbol PrimitiveElement,
	symbol Print,
	symbol PrintNames,
	symbol Product,
	symbol ProductOrder,
	symbol Proj,
	symbol Projective,
	symbol ProjectiveHilbertPolynomial,
	symbol ProjectiveVariety,
	symbol Pseudocode,
	symbol PushforwardComputation,
	symbol QQ,
	symbol Quotient,
	symbol QuotientRing,
	symbol RR,
	symbol RRR,
	symbol RemakeAllDocumentation,
	symbol Repository,
	symbol RerunExamples,
	symbol Resolution,
	symbol RevLex,
	symbol Reverse,
	symbol ReverseDictionary,
	symbol Right,
	symbol Ring,
	symbol RingElement,
	symbol RingMap,
	symbol RowExpression,
	symbol SMALL,
	symbol SPACE,
	symbol SPAN,
	symbol STRONG,
	symbol STYLE,
	symbol SUB,
	symbol SUBSECTION,
	symbol SUP,
	symbol SVD,
	symbol SYNOPSIS,
	symbol Schubert,
	symbol ScriptedFunctor,
	symbol SeeAlso,
	symbol SelfInitializingType,
	symbol Sequence,
	symbol Set,
	symbol SheafOfRings,
	symbol SkewCommutative,
	symbol Sort,
	symbol SortStrategy,
	symbol SourceCode,
	symbol SparseMonomialVectorExpression,
	symbol SparseVectorExpression,
	symbol Spec,
	symbol Standard,
	symbol StopBeforeComputation,
	symbol StopWithMinimalGenerators,
	symbol Strategy,
	symbol String,
	symbol Subnodes,
	symbol SubringLimit,
	symbol Subscript,
	symbol Sugarless,
	symbol Sum,
	symbol SumOfTwists,
	symbol Superscript,
	symbol Symbol,
	symbol Syzygies,
	symbol SyzygyLimit,
	symbol SyzygyMatrix,
	symbol SyzygyRows,
	symbol TABLE,
	symbol TD,
	symbol TEST,
	symbol TEX,
	symbol TITLE,
	symbol TO,
	symbol TO2,
	symbol TOH,
	symbol TR,
	symbol TT,
	symbol Table,
        symbol TeXmacs,
	symbol Tally,
	symbol Thing,
	symbol Time,
	symbol Tor,
	symbol Toric,
	symbol TotalPairs,
	symbol TreeNode,
	symbol Truncate,
	symbol Type,
	symbol TypicalValue,
	symbol UL,
	symbol URL,
	symbol Undo,
	symbol Unmixed,
	symbol Up,
	symbol UpdateOnly,
	symbol Usage,
	symbol UseHilbertFunction,
	symbol UseSyzygies,
	symbol GroebnerBasisOptions,
	symbol installHilbertFunction,
	symbol instances,
	-- Mike wanted this: symbol installGroebner,
	symbol gbSnapshot,
	symbol gbRemove,
	symbol UserMode,
	symbol Variable,
	symbol VariableBaseName,
	symbol Variables,
	symbol Variety,
	symbol Vector,
	symbol Verbose,
	symbol Verify,
	symbol Version,
	symbol VerticalList,
	symbol VerticalSpace,
	symbol VirtualTally,
	symbol VisibleList,
	symbol Weights,
	symbol WeylAlgebra,
	symbol Wrap,
	symbol WrapperType,
	symbol ZZ,
	symbol ZeroExpression,
	symbol [,
	symbol \,
	symbol \\,
	symbol ],
	symbol ^**,
	symbol ^,
	symbol ^^,
	symbol _,
	symbol abs,
	symbol accumulate,
	symbol acos,
	symbol addEndFunction,
	symbol addHook,
	symbol addStartFunction,
	symbol adjoint,
	symbol adjoint1,				    -- adjoint' ?
	symbol alarm,
	symbol all,
	symbol ambient,
	symbol ancestor,
	symbol and,
	symbol annihilator,
	symbol any,
	symbol append,
	symbol applicationDirectory,
	symbol apply,
	symbol applyKeys,
	symbol applyPairs,
	symbol applyTable,
	symbol applyValues,
	symbol apropos,
	symbol argument,
	symbol ascii,
	symbol asin,
	symbol assert,
	symbol assign,
	symbol associatedPrimes,
	symbol atEndOfFile,
	symbol atan,
	symbol autoload,
	symbol baseFilename,
	symbol baseName,
	symbol baseRings,
	symbol basis,
	symbol beginDocumentation,
	symbol benchmark,
	symbol betti,
	symbol between,
	symbol binomial,
	symbol borel,
	symbol break,
	symbol cache,
	symbol cacheValue,
	symbol capture,
	symbol catch,
	symbol ceiling,
	symbol centerString,
	symbol chainComplex,
	symbol char,
	symbol characters,
	symbol check,
	symbol class,
	symbol clearAll,
	symbol clearEcho,
	symbol clearOutput,
	symbol close,
	symbol closeIn,
	symbol closeOut,
	symbol code,
	symbol codim,
	symbol coefficient,
	symbol coefficientRing,
	symbol coefficients,
	symbol cohomology,
	symbol coimage,
	symbol cokernel,
	symbol collectGarbage,
	symbol columnAdd,
	symbol columnMult,
	symbol columnPermute,
	symbol columnSwap,
	symbol columnate,
	symbol combine,
	symbol commandInterpreter,
	symbol commandLine,
        symbol commonest,
	symbol comodule,
	symbol complement,
	symbol complete,
	symbol components,
	symbol compositions,
	symbol compress,
	symbol concatenate,
	symbol cone,
	symbol conjugate,
	symbol connectionCount,
	symbol content,
	symbol continue,
	symbol contract',
	symbol contract,
	symbol copy,
	symbol copyDirectory,
	symbol copyFile,
	symbol copyright,
	symbol cos,
	symbol cosh,
	symbol cotangentSheaf,
	symbol cover,
	symbol coverMap,
	symbol currentDirectory,
	symbol currentFileDirectory,
	symbol currentFileName,
	symbol currentLineNumber,
	symbol currentString,
	symbol currentTime,
	symbol dd,
	symbol debug,
	symbol deepSplice,
	symbol degree,
	symbol degreeLength,
	symbol degrees,
	symbol degreesMonoid,
	symbol degreesRing,
	symbol delete,
	symbol demark,
	symbol denominator,
	symbol depth,
	symbol describe,
	symbol determinant,
	symbol diagonalMatrix,
	symbol dictionary,
	symbol diff',
	symbol diff,
	symbol difference,
	symbol dim,
	symbol directSum,
	symbol disassemble,
	symbol dismiss,
	symbol divideByVariable,
	symbol do,
	symbol document,
	symbol drop,
	symbol dual,
	symbol dumpdata,
	symbol eagonNorthcott,
	symbol echoOff,
	symbol echoOn,
	symbol edit,
	symbol eigenvalues,
	symbol eigenvectors,
	symbol elapsedTime,				    -- obsolete
	symbol cpuTime,
	symbol elements,
	symbol else,
	symbol end,
	symbol endPackage,
	symbol endl,
	symbol entries,
	symbol environment,
	symbol erase,
	symbol error,
	symbol euler,
	symbol eulers,
	symbol evaluate,
	symbol even,
	symbol examples,
	symbol exec,
	symbol exit,
	symbol exp,
	symbol exponents,
	symbol export,
	symbol exportMutable,
	symbol expression,
	symbol extend,
	symbol exteriorPower,
	symbol factor,
	symbol false,
	symbol fileDictionaries,
	symbol fileExists,
	symbol fileLength,
	symbol fileMode,
	symbol fileTime,
	symbol findFiles,
	symbol findSynonyms,
	symbol first,
	symbol firstkey,
	symbol fittingIdeal,
	symbol flagLookup,
	symbol flatten,
	symbol flattenRing,
	symbol flip,
	symbol floor,
	symbol flush,
	symbol fold,
	symbol for,
	symbol forceGB,
	symbol fork,
	symbol format,
	symbol frac,
	symbol fraction,
	symbol frames,
	symbol from,
	symbol fromDual,
	symbol functionBody,
	symbol gb,
	symbol gcd,
	symbol gcdCoefficients,
	symbol genera,
	symbol generateAssertions,
	symbol generator,
	symbol generators,
	symbol genericMatrix,
	symbol genericSkewMatrix,
	symbol genericSymmetricMatrix,
	symbol genus,
	symbol get,
	symbol getChangeMatrix,
	symbol getGlobalSymbol,
	symbol getSymbol,
	symbol getNetFile,
	symbol getNonUnit,
	symbol getPackage,
	symbol getWWW,
	symbol getc,
	symbol getenv,
	symbol global,
        symbol globalAssign,
	symbol globalAssignFunction,
	symbol globalAssignment,
	symbol globalAssignmentHooks,
	symbol globalReleaseFunction,
	symbol gradedModule,
	symbol gradedModuleMap,
	symbol graphIdeal,
	symbol graphRing,
	symbol hash,
	symbol hashTable,
	symbol height,
	symbol help,
	symbol hh,
	symbol hilbertFunction,
	symbol hilbertPolynomial,
	symbol hilbertSeries,
	symbol hold,
	symbol homogenize,
	symbol homology,
	symbol homomorphism,
	symbol horizontalJoin,
	symbol html,
	symbol httpHeaders,
	symbol hypertext,
	symbol id,
	symbol ideal,
	symbol identity,
	symbol if,
	symbol ii,
	symbol image,
	symbol imaginaryPart,
	symbol in,
	symbol incomparable,
	symbol independentSets,
	symbol indeterminate,
	symbol index,
	symbol indexComponents,
	symbol indices,
	symbol inducedMap,
	symbol inducesWellDefinedMap,
	symbol infinity,
	symbol info,
	symbol infoHelp,
	symbol input,
	symbol installAssignmentMethod,
	symbol installMethod,
	symbol installPackage,
	symbol instance,
	symbol integrate,
	symbol intersect,
	symbol inverse,
	symbol irreducibleCharacteristicSeries,
	symbol irreducibleDecomposition,
	symbol isAffineRing,
	symbol isBorel,
	symbol isCommutative,
	symbol isConstant,
	symbol isDirectSum,
	symbol isDirectory,
	symbol isField,
	symbol isFreeModule,
	symbol isGlobalSymbol,
	symbol isHomogeneous,
	symbol isIdeal,
	symbol isInjective,
	symbol isInputFile,
	symbol isIsomorphism,
	symbol isListener,
	symbol isModule,
	symbol isMonomialIdeal,
	symbol isOpen,
	symbol isOutputFile,
	symbol isPolynomialRing,
	symbol isPrime,
	symbol isPrimitive,
	symbol isQuotientModule,
	symbol isQuotientOf,
	symbol isQuotientRing,
	symbol isReady,
	symbol isRegularFile,
	symbol isRing,
	symbol isSkewCommutative,
	symbol isSquareFree,
	symbol isSubmodule,
	symbol isSubquotient,
	symbol isSubset,
	symbol isSurjective,
	symbol isTable,
	symbol isUnit,
	symbol isWellDefined,
	symbol jacobian,
	symbol join,
	symbol kernel,
	symbol keys,
	symbol kill,
	symbol koszul,
	symbol last,
	symbol leadCoefficient,
	symbol leadComponent,
	symbol leadMonomial,
	symbol leadTerm,
	symbol length,
	symbol liftable',    -- temporary new undocumented version
	symbol lift,
	symbol liftable,
	symbol lines,
	symbol linkFile,
	symbol list,
	symbol listForm,
	symbol listLocalSymbols,
	symbol listSymbols,
	symbol listUserSymbols,
	symbol load,
	symbol loadPackage,
	symbol loaddata,
	symbol loadedFiles,
	symbol local,
	symbol localDictionaries,
	symbol locate,
	symbol log,
	symbol lookup,
	symbol lookupCount,
	symbol makeDirectory,
	symbol makeDocumentTag,
	symbol makePackageIndex,
	symbol map,
	symbol markedGB,
	symbol match,
	symbol mathML,
	symbol matrix,
	symbol max,
	symbol maxPosition,
	symbol member,
	symbol memoize,
	symbol merge,
	symbol mergePairs,
	symbol method,
	symbol methodOptions,
	symbol methods,
	symbol min,
	symbol minPosition,
	symbol mingens,
	symbol mingle,
	symbol minimalPresentation,
	symbol minimalPresentationMap,
	symbol minimalPresentationMapInv,
	symbol minimalPrimes,
	symbol minimizeFilename,
	symbol minors,
	symbol minprimes,
	symbol minus,
	symbol mkdir,
	symbol mod,
	symbol newRing,
	symbol module,
	symbol modulo,
	symbol monoid,
	symbol monomialCurve,
	symbol monomialCurveIdeal,
	symbol monomialIdeal,
	symbol monomialSubideal,
	symbol monomials,
	symbol moveFile,
	symbol mutable,
	symbol mutableIdentity,
	symbol mutableMatrix,
	symbol mutableZero,
	symbol needs,
	symbol needsPackage,
	symbol net,
	symbol netRows,
	symbol netList,
	symbol new,
	symbol newClass,
	symbol newCoordinateSystem,
	symbol newNetFile,
	symbol newPackage,
	symbol newline,
	symbol nextkey,
	symbol not,
	symbol notImplemented,
	symbol null,
	symbol nullaryMethods,
	symbol nullhomotopy,
	symbol numColumns,
	symbol numRows,
	symbol number,
	symbol numerator,
	symbol numeric,
	symbol numgens,
	symbol odd,
	symbol of,
	symbol ofClass,
	symbol on,
	symbol openDatabase,
	symbol openDatabaseOut,
	symbol openFiles,
	symbol openIn,
	symbol openInOut,
	symbol openListener,
	symbol openOut,
	symbol openOutAppend,
	symbol operatorAttributes,
	symbol options,
	symbol or,
	symbol order,
	symbol override,
	symbol pack,
	symbol package,
	symbol pad,
	symbol pager,
	symbol pairs,
	symbol parent,
	symbol part,
	symbol parts,
	symbol partition,
	symbol partitions,
	symbol pdim,
	symbol peek',
	symbol peek,
	symbol permanents,
	symbol permutations,
	symbol pfaffians,
	symbol pi,
	symbol pivots,
	symbol plus,
	symbol poincare,
	symbol poincareN,
	symbol position,
	symbol positions,
	symbol power,
	symbol powermod,
	symbol precision,
	symbol preimage,
	symbol prepend,
	symbol presentation,
	symbol pretty,
	symbol primaryDecomposition,
	symbol print,
	symbol printString,
	symbol printingTimeLimit,
	symbol processID,
	symbol product,
	symbol profile,
	symbol profileSummary,
	symbol projectiveHilbertPolynomial,
	symbol promote,
	symbol protect,
	symbol pruningMap,
	symbol pseudoRemainder,
	symbol pseudocode,
	symbol pushForward,
	symbol pushForward1,
	symbol quit,
	symbol quote,
	symbol quotient',
	symbol quotient,
	symbol quotientRemainder',
	symbol quotientRemainder,
	symbol radical,
	symbol random,
	symbol randomMutableMatrix,
	symbol rank,
	symbol read,
	symbol readDirectory,
	symbol readlink,
	symbol realPart,
	symbol realpath,
	symbol recursionDepth,
	symbol reduceHilbert,
	symbol regex,
	symbol registerFinalizer,
	symbol regularity,
	symbol relations,
	symbol relativizeFilename,
	symbol remainder',
	symbol remainder,
	symbol remove,
	symbol removeDirectory,
	symbol removeFile,
	symbol removeHook,
	symbol removeLowestDimension,
	symbol reorganize,
	symbol replace,
	symbol reshape,
	symbol resolution,
	symbol restart,
	symbol return,
	symbol returnCode,
	symbol reverse,
	symbol ring,
	symbol rotate,
	symbol round,
	symbol rowAdd,
	symbol rowMult,
	symbol rowPermute,
	symbol rowSwap,
	symbol rsort,
	symbol run,
	symbol runHooks,
	symbol same,
	symbol saturate,
	symbol scan,
	symbol scanKeys,
        symbol scanLines,
	symbol scanPairs,
	symbol scanValues,
	symbol schreyerOrder,
	symbol searchPath,
	symbol seeParsing,
	symbol select,
	symbol selectInSubring,
	symbol separate,
	symbol separateRegexp,
	symbol seq,
	symbol sequence,
	symbol set,
	symbol setEcho,
	symbol setPrecision,
	symbol setRandomSeed,
	symbol setup,
	symbol setupEmacs,
	symbol sheaf,
	symbol sheafExt,
	symbol sheafHom,
	symbol shield,
	symbol show,
	symbol showClassStructure,
	symbol showHtml,
	symbol showStructure,
	symbol showTex,
	symbol showUserStructure,
	symbol sin,
	symbol singularLocus,
	symbol sinh,
	symbol size,
	symbol sleep,
	symbol smithNormalForm,
	symbol solve,
	symbol someTerms,
	symbol sort,
	symbol sortColumns,
	symbol source,
	symbol splice,
	symbol sqrt,
	symbol stack,
	symbol standardForm,
	symbol standardPairs,
	symbol stashValue,
	symbol status,
	symbol stderr,
	symbol stdio,
	symbol sublists,
	symbol submatrix,
	symbol submatrix',
	symbol submodule,
	symbol subquotient,
	symbol subscript,
	symbol subsets,
	symbol substitute,
	symbol substring,
	symbol subtable,
	symbol sum,
	symbol super,
	symbol superscript,
	symbol support,
	symbol symbol,
	symbol symlinkDirectory,
	symbol symlinkFile,
	symbol symmetricAlgebra,
	symbol symmetricPower,
	symbol synonym,
	symbol syz,
	symbol syzygyScheme,
	symbol table,
	symbol take,
	symbol tally,
	symbol tan,
	symbol tangentSheaf,
	symbol tanh,
	symbol target,
	symbol temporaryFileName,
	symbol tensor,
	symbol tensorAssociativity,
	symbol terms,
	symbol tex,
	symbol texMath,
	symbol then,
	symbol throw,
	symbol time,
	symbol times,
	symbol timing,
	symbol to,
	symbol toAbsolutePath,
	symbol toDual,
	symbol toExternalString,
	symbol toField,
	symbol toList,
	symbol toLower,
	symbol toRRR,
	symbol toSequence,
	symbol toString,
	symbol toUpper,
	symbol topCoefficients,
	symbol topComponents,
	symbol trace,
	symbol transpose,
	symbol trim,
	symbol true,
	symbol truncate,
	symbol truncateOutput,
	symbol try,
	symbol tutorial,
	symbol typicalValues,
	symbol ultimate,
	symbol unbag,
	symbol uncurry,
	symbol undocumented,
	symbol uniform,
	symbol uninstallPackage,
	symbol unique,
	symbol unlist,
	symbol unsequence,
	symbol unstack,
	symbol use,
	symbol userSymbols,
	symbol utf8,
	symbol validate,
	symbol value,
	symbol values,
	symbol variety,
	symbol vars,
	symbol vector,
	symbol version,
	symbol verticalJoin,
	symbol viewHelp,
	symbol wait,
	symbol wedgeProduct,
	symbol weightRange,
	symbol when,
	symbol while,
	symbol width,
	symbol wrap,
	symbol xor,
	symbol youngest,
	symbol zero,
	symbol {,
	symbol |,
	symbol |-,
	symbol ||,
	symbol },
	symbol ~
}

exportMutable toList vars (0 .. 51)

exportMutable {
	symbol applicationDirectorySuffix,
	symbol backtrace,
	symbol backupFileRegexp,
	symbol buildHomeDirectory,
	symbol compactMatrixForm,
	symbol currentPackage,
	symbol debugError,
	symbol debugLevel,
	symbol debuggingMode,
	symbol dictionaryPath,
	symbol encapDirectory,
	symbol engineDebugLevel,
	symbol errorCode,
	symbol errorDepth,
	symbol fileExitHooks,
	symbol gbTrace,
	symbol homeDirectory,
	symbol interpreterDepth,
	symbol lineNumber,
	symbol loadDepth,
	symbol loadedPackages,
	symbol notify,
	symbol oo,
	symbol ooo,
	symbol oooo,
	symbol path,
	symbol prefixDirectory,
	symbol printWidth,
	symbol printingPrecision,
	symbol printingLeadLimit,
	symbol printingTrailLimit,
	symbol printingSeparator,
	symbol recursionLimit,
        symbol scriptCommandLine,
	symbol sourceHomeDirectory,
	symbol stopIfError,
	symbol topLevelMode
	}

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/m2 "
-- End:
