Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA65956140C
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 10:03:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233234AbiF3IAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 04:00:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233603AbiF3IAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 04:00:08 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D40A41612
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:59:56 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a4so18730735lfm.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sXQID4kqZRzoAMqKC8neoC1cmFkcvAWk83MWIRBHPSs=;
        b=X8NtlwiK94vDwSYZbEpSIVXUgecoaYPi0GCMqUVGDsPgRy6T/GQw16R+JOlqAQmir0
         ttMeyawPjBh41dgmYoKNEKcb6qRFRJ0zGPuPwURhGkQd8LqzMwS2gjpiPzO7/iFjoGiG
         wEZvmdUpSlcTID/1xtrdAPjEfmqjn4SYgLym59Ysf+MURSOM1UiNVVhpUNFLpGjlxESK
         zblfu1114rYiMqN7TtYukcJX4eWlnA/ZbAYQWqDoxSbjyJ6mc2ItaYJO0059nVAj4QNs
         vjW2wfJrJO1Z4AaFU3CRK0WWcIATRvgWe+cyABTZX0jfXf88d6SL9/a7JXSVC2h1Hn5z
         Ai+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sXQID4kqZRzoAMqKC8neoC1cmFkcvAWk83MWIRBHPSs=;
        b=L5SXDXepyRNWpukveEWJRGbMLFNS7ENCWNh1crSCom9mUqiVjB6Iq/HLsEHald8W1R
         YGGqLmihSoTtreU8zb+rYlYIbVxxKq1NFVpXgkc6WNtueeLBtHRVkO8FXtH4gtvv/1mE
         4/71wkjJ+39QY/loBFqGFAvVp3DnHFAjKdh0sJHc1oNEL67CEngKDyEkg4k3Ott2Gzb1
         Jv7GaIXxG7eWcykc2arGy9n+ycVE/ax71ppqbgl4A5+qPs/FwoiDyXxvd2xbHp+piUwj
         2UZuPsBaOQHrMTfKIHVrBWU47PZVoDSO8fxZRm/9w7q5oF534XtVArQsfinCn+4iLPtD
         dQmg==
X-Gm-Message-State: AJIora/TlWbHpPVegGoBlIDVuoukPLrfjOxqwZ+wZbbzsDJ1dNqFrOC1
        DQ+xWZbG8aipKx7b9AKCEb5hVdsn7OZb0QWEyZyNMQ==
X-Google-Smtp-Source: AGRyM1vRBRICLUr73DSA6nGgv5bZrmStKPTppICU7lfOXICq90+nxylSkMDtpI7OjsyHh8JhP55P6UyIUvkoFE6UVG8=
X-Received: by 2002:a05:6512:281c:b0:47f:bd92:4185 with SMTP id
 cf28-20020a056512281c00b0047fbd924185mr4792676lfb.11.1656575994730; Thu, 30
 Jun 2022 00:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20220630021951epcas2p26cd4a554f01f9cb6e44acd813eee15fd@epcas2p2.samsung.com>
 <cover.1656554759.git.chanho61.park@samsung.com> <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
In-Reply-To: <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Thu, 30 Jun 2022 10:59:43 +0300
Message-ID: <CAPLW+4ksOuBmKxGziA9Wb=wwQ8b7dciDWwAt1r1UhJOZFCJRxA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: samsung: usi: add
 exynosautov9-usi compatible
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Jun 2022 at 05:19, Chanho Park <chanho61.park@samsung.com> wrote:
>
> Add samsung,exynosautov9-uart dedicated compatible for representing
> usi of Exynos Auto v9 SoC.
>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

with a note for incorrect comment (I guess Krzysztof agreed to remove
that while applying the patch).

Thanks!

>  .../devicetree/bindings/soc/samsung/exynos-usi.yaml       | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index fde886a8cf43..6e806e950a36 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -22,8 +22,12 @@ properties:
>      pattern: "^usi@[0-9a-f]+$"
>
>    compatible:
> -    enum:
> -      - samsung,exynos850-usi   # for USIv2 (Exynos850, ExynosAutoV9)
> +    oneOf:
> +      - items:
> +          - const: samsung,exynosautov9-usi
> +          - const: samsung,exynos850-usi
> +      - enum:
> +          - samsung,exynos850-usi   # for USIv2 (Exynos850, ExynosAutoV9)
>
>    reg: true
>
> --
> 2.36.1
>
