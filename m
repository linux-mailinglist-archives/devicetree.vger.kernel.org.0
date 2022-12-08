Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3C2D6466E0
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 03:22:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiLHCWV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 21:22:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiLHCVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 21:21:54 -0500
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEDCF92FCE
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 18:21:53 -0800 (PST)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-144b21f5e5fso323603fac.12
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 18:21:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QRhgF+aNHQAv3pBudTKbGcOoWL7qh+7LUtMMYYLdo9U=;
        b=gQRmc2OoIGAeom/CKMq6l9Ugo6WMOXWQKYHjNdaTDCud83bUPe0zOjfcq8cwb0nUku
         Ee6qb0VQBYn/57PYFdnJWVklFBudLPY36fd2J0eHVb0mPcth4nVxCIvfIvbEBCBtCimR
         vpp29san+yZtOMYLD5tY/bEAUIdFyyO6fWQCqUOB1T2mawpCy7CfC9yLUVAmRbj2snIS
         Dtt1jwmFBW9+e0jQn3ZSC3AQbw3kN5yNrL3Bx9a8YKG0PYHwmTPd8G8G2xSPjg6Z5AD6
         rfZYxnz3kvldaZI84n7oDct3h7PgBfnoHNUg2P3CEd+/QmLeq8dX9Vn1Bl/LMMue71Vf
         aLmg==
X-Gm-Message-State: ANoB5pns1GeYZDEa+Zk6p97zMiJPjXhIfmBlPekIOneLPyxF1xb7OEIE
        G3ObLcsFBDiZvaiT7W1Eff+6SH4X1Q==
X-Google-Smtp-Source: AA0mqf4qLVEv/uIgAdKfulPn3IlGdIwU29FknjSZQW+WVXxTQUTjXv+1FG9kIxXnX4MmDeYncdmsrA==
X-Received: by 2002:a05:6870:6088:b0:136:3535:cf38 with SMTP id t8-20020a056870608800b001363535cf38mr42970274oae.73.1670466113057;
        Wed, 07 Dec 2022 18:21:53 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s10-20020acadb0a000000b0035b439a4b81sm10193378oig.31.2022.12.07.18.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 18:21:52 -0800 (PST)
Received: (nullmailer pid 3386875 invoked by uid 1000);
        Thu, 08 Dec 2022 02:21:51 -0000
Date:   Wed, 7 Dec 2022 20:21:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d
 compatible strings
Message-ID: <20221208022151.GA3383136-robh@kernel.org>
References: <20221104160315.213836-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104160315.213836-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 04, 2022 at 05:03:13PM +0100, Marek Vasut wrote:
> Describe existing used combinations of compatible strings on MX6UL
> and MX7D, which are backward compatible with MX6SX. Add the missing
> imx7d-sai compatible string which is used on i.MX7 .
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Jaroslav Kysela <perex@perex.cz>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nicolin Chen <nicoleotsuka@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Xiubo Li <Xiubo.Lee@gmail.com>
> Cc: alsa-devel@alsa-project.org
> To: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/sound/fsl,sai.yaml    | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> index 11aab891288d2..05bad828cc353 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
> @@ -18,15 +18,12 @@ description: |
>  properties:
>    compatible:
>      oneOf:
> -      - enum:
> -          - fsl,vf610-sai
> -          - fsl,imx6sx-sai
> -          - fsl,imx6ul-sai
> -          - fsl,imx7ulp-sai
> -          - fsl,imx8mq-sai
> -          - fsl,imx8qm-sai
> -          - fsl,imx8ulp-sai
> -          - fsl,imx93-sai

fsl,imx93-sai got lost in this patch.

(found checking for new undocumented compatibles in next with 
scripts/dtc/dt-extract-compatibles)

> +      - items:
> +          - enum:
> +              - fsl,imx6ul-sai
> +              - fsl,imx7d-sai
> +          - const: fsl,imx6sx-sai
> +
>        - items:
>            - enum:
>                - fsl,imx8mm-sai
> @@ -34,6 +31,15 @@ properties:
>                - fsl,imx8mp-sai
>            - const: fsl,imx8mq-sai
>  
> +      - items:
> +          - enum:
> +              - fsl,imx6sx-sai
> +              - fsl,imx7ulp-sai
> +              - fsl,imx8mq-sai
> +              - fsl,imx8qm-sai
> +              - fsl,imx8ulp-sai
> +              - fsl,vf610-sai
> +
>    reg:
>      maxItems: 1
>  
> -- 
> 2.35.1
> 
> 
