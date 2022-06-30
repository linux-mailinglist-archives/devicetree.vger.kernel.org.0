Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28BA6561228
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 07:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232439AbiF3F7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 01:59:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiF3F7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 01:59:34 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73F1D6400
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 22:59:33 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id o23so21666813ljg.13
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 22:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rj55wFa+cwBwJLUF5zB5D7ughNA2ZeQCpO8eyDVzukE=;
        b=oDSwztU73dz6Yd5TtYHJpoHj+g+8HG9vzz7XC9t+qaaICCML3WeETUPIibHX9xdmOI
         nas/HsCNs4Ekpebb2Ee0dwHO+9kP32Dp8W1dOifpzg0ZLvqiZktAjH3DhwyZfyH2YFvR
         xYeeg/4X2UMJf4volwohGNzRctOg1f1c7V/DbF+gghtxGPYa+gWh29Jh+BX+MVdnQraE
         J/67twegu6EVYG6T/6pwTqJhuEt2I37edoho7M50a7OaVT0WoLsdW3FsnZgbyZjr1P2F
         DeBbzlzQ3zHD7GWJAry3zTi6WT4SWMDXVY0XIYpRoUgzzYGs33KImzG/Bq6Kzgu3HVHo
         vTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rj55wFa+cwBwJLUF5zB5D7ughNA2ZeQCpO8eyDVzukE=;
        b=c+u3MmAQ0gWtO3oU9n0KGb8loQQn8mIVwXD5mqHEi7xxnZt3+rBwCobXb5qAvQo/4k
         9hx4fkoeNljxRjnYJ/f2Xnkk2WLdqJ/EwVgcg7bq2mSp7ORr82SVDbd3XPrl0hAO1egr
         CmF7Dt/Tu5JVmIVGCnXe1N5mfa5PWwKrGSSFQs8jw4XUxXdRRMEzVo9SFrvNNedy34oA
         8THlVkTeDd17uSt2N470kjcdvs0+loKqIeDgUUBLEhh83304Q714Cr0PjXV2WsE2n36P
         kFNx+9x25qJD+yq6gLHzY3Ykwb8VczLftyMtc8tKb2uDh4LJQQAKrMqIdZQ2mwyBlL5J
         SW8A==
X-Gm-Message-State: AJIora/2Z76+sd9tMVbQa8mmS4nTz4sZsjLV1mBN/F4uXZjtXznymGd/
        Vr5u84vxTGGHffVwdClnP6ZAbUxhLSl3Gmdjy24ASjseD+FrJI6x
X-Google-Smtp-Source: AGRyM1ucQG/qsZjKDQSwgiXTqjD0CajwMVbG19J0dnNN2YqHzmx896/P4iARa7PaEMmBqD0KlVM6KEtODCv2IywCdmc=
X-Received: by 2002:a2e:8ec9:0:b0:25a:754d:db39 with SMTP id
 e9-20020a2e8ec9000000b0025a754ddb39mr3974428ljl.4.1656568771680; Wed, 29 Jun
 2022 22:59:31 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20220630021951epcas2p26cd4a554f01f9cb6e44acd813eee15fd@epcas2p2.samsung.com>
 <cover.1656554759.git.chanho61.park@samsung.com> <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
In-Reply-To: <8d7029cdf7b2ce0d1c43e6f91b3b9fdadece08ee.1656554759.git.chanho61.park@samsung.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Thu, 30 Jun 2022 08:59:20 +0300
Message-ID: <CAPLW+4noFAHc+g7jTaaiMQH871OkqcOWjZ85-mpfPVbjiFO1iA@mail.gmail.com>
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

Hi Chanho,

On Thu, 30 Jun 2022 at 05:19, Chanho Park <chanho61.park@samsung.com> wrote:
>
> Add samsung,exynosautov9-uart dedicated compatible for representing
> usi of Exynos Auto v9 SoC.
>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
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

Why "samsung,exynos850-usi" is duplicated? Maybe it would be correct
to leave only "items" and remove the "enum"?

>    reg: true
>
> --
> 2.36.1
>
