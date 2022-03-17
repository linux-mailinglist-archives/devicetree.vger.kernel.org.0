Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0734DC3CC
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 11:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbiCQKQ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 06:16:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232398AbiCQKQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 06:16:57 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 815AADFDFC
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 03:15:41 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id o6so6580789ljp.3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 03:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BBJNQVwMyLBs8lLLZ+phXdIS1BZRlnyigKaYZzIPGus=;
        b=ZrFqjnS8CKuQDGyyWGOZxHY0dGaUnHUw9IrhHx+mGdrVp9Z/v5mQOg4A/OmMPxsD9+
         gQbMkSOAZTYsrKOxBBcT1OFivH9Qu8cr/eScxhBZB6FsY0Nugc+3Fy0sPIZTWUHg9zGy
         T2eFPO8ju7YBrDfOwhUZqPDQluCD5HcNRftCCYIBLKibbgSPObkpQtx61uZYb31vceUd
         Tr8Ah6tvAhRcrzhAmYmqPbMlC3McRihY8SgCMMf97Sy0skRr9ZDLQIW6ycO7InxovhaY
         yeFqHg2wY4brCSvwZPUbAEeKOF4bDZsmVInJVGhZzsp1lvINlMPckA0vyNxer+0N879q
         vWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BBJNQVwMyLBs8lLLZ+phXdIS1BZRlnyigKaYZzIPGus=;
        b=oDWqX5xZgGghasSfj3G9fU+7EUDzgp7+wIGrD8NwUrKRxrTVtKmBS9yk/DlGXEQqFW
         91YnU/wkWLt327amkTeSkNQqJQKdmlY3vdV9Y8PCH78SVs4rpp6JMveTWXcU9jjd1O/v
         pRgV0AsaZ49ohZ5ffT4ksTyKgfTdQivcJ+EEJKuLeSdbqjtOw1rMQBBfdhkcNBWN29si
         J7chcF1cNEuI0fVlh1h4EDFn5eNLUYd9svOuSAkPumPBHqv15zIsLkuNX9qVmHVSXYfA
         2zqumqaofpE7MJvIQmVAm6pJ4jIMdGBCKO0rGkozaAetVqFCwVGD7W9WCXYNT//QnNDo
         C7eg==
X-Gm-Message-State: AOAM530OST+ghYrb/eerX7q00oGm7Hs+1Gt5SVkTuFQuZpUXX+5QbMEF
        1DE1rCUiyHxXHH57X9vjX254gFt7k7DXr7es7S3yfQ==
X-Google-Smtp-Source: ABdhPJzMAlFb6clniGiYBXS5RvYGVXflZX6StQiwUqd7rEWmCRagcg/bgKr+R6rvw17Siwuf39WjLbMxfMx2e9HTTg0=
X-Received: by 2002:a2e:890e:0:b0:249:295a:eb40 with SMTP id
 d14-20020a2e890e000000b00249295aeb40mr2376622lji.463.1647512139862; Thu, 17
 Mar 2022 03:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220315153258.21097-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20220315153258.21097-1-biju.das.jz@bp.renesas.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 17 Mar 2022 11:15:03 +0100
Message-ID: <CAPDyKFpLVsNjuWX-5sketEw-j4nbgVpUY8qvWKBjDSXPG4Sfwg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: renesas,sdhi: Document RZ/G2UL SoC
To:     Biju Das <biju.das.jz@bp.renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <chris.paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Mar 2022 at 16:33, Biju Das <biju.das.jz@bp.renesas.com> wrote:
>
> Document RZ/G2UL SDHI bindings. RZ/G2UL SDHI is almost identical to one
> found on the R-Car Gen3. No driver changes are required as generic
> compatible string "renesas,rcar-gen3-sdhi" will be used as a fallback.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> index 3b191fb89cf1..9ac4986988c5 100644
> --- a/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> +++ b/Documentation/devicetree/bindings/mmc/renesas,sdhi.yaml
> @@ -57,6 +57,7 @@ properties:
>                - renesas,sdhi-r8a77990  # R-Car E3
>                - renesas,sdhi-r8a77995  # R-Car D3
>                - renesas,sdhi-r8a779a0  # R-Car V3U
> +              - renesas,sdhi-r9a07g043 # RZ/G2UL
>                - renesas,sdhi-r9a07g044 # RZ/G2{L,LC}
>                - renesas,sdhi-r9a07g054 # RZ/V2L
>            - const: renesas,rcar-gen3-sdhi # R-Car Gen3 or RZ/G2
> @@ -109,6 +110,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - renesas,sdhi-r9a07g043
>                - renesas,sdhi-r9a07g044
>                - renesas,sdhi-r9a07g054
>      then:
> --
> 2.17.1
>
