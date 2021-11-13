Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A2BA44F524
	for <lists+devicetree@lfdr.de>; Sat, 13 Nov 2021 21:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236076AbhKMUFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Nov 2021 15:05:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236062AbhKMUFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Nov 2021 15:05:13 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B1BC061202
        for <devicetree@vger.kernel.org>; Sat, 13 Nov 2021 12:02:20 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso19642669otj.11
        for <devicetree@vger.kernel.org>; Sat, 13 Nov 2021 12:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=y0rkE2eXHspUlHAthWH1b6o7jeh50VMqJ9wHRaI24M4=;
        b=aW9u9fGnts+Kui5gr1eOEqMyRfk/k5aY6qpEB/k9DiK9Ec191wxXRBV04evzKbA5tZ
         W21Mbviqpsbn6FP9XSQaRkHEInqMWxC3I/QHbIcooFKwG3+w0mqiBq3vNbaT+ItOUjGg
         aaaZyIVDLVaQ4gNU4KOa5Dsmwff/18yZLg7nROCBRt5Hw3+HHPD+lrczcuX+rRrnZ+DF
         fKUL29m8MOrtRf4Dwe23c2d3lX6txELLc4hrqWUt2vzFBRs2m9B3Ia1DTPR7cmye6W9S
         13PqMdIDn3a32d17JwKLKyj8AbBOSfwF9mAegcmrn2FRfe5yDmTtT/Tqk32EUVrX+p7O
         OkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=y0rkE2eXHspUlHAthWH1b6o7jeh50VMqJ9wHRaI24M4=;
        b=psoojBSR+Lt8boiOmtD6QkxHbmyngI2UhGmpdoOTRUNXTJf7XztoaW/zHODXYJpdd4
         fuU1ykfqRHNY6ea34a09eQAY14sstDq3JHOneXFROUiK1rhLhBM/TW2qfFRs0XXQ8akf
         qJ6qq3Vv0FBhK3HTaX2T2LUk9DoxREyzcLLFayiqjhamWlgy8NXp+ZXv1gHEi+sEPfzy
         KTowugFbCtxVopFEUt0LS1R47bbiEqexJycvGBUW+7RpAh4SsvjUYolFn4I4KFsZZa8b
         53oGQDl3MBSv+uckGX0+uynsWrhJ1eXvAGVeJnmNl2f8w4EGe7UXQbOFbO1ee3qidUXW
         /Kpg==
X-Gm-Message-State: AOAM533m+DL65+lnka51OUSM1yKrpXCd9OizwFehfl8SnAoibpkqfIYj
        JOqNWWNIU/PBjdVST/O05JPMlA==
X-Google-Smtp-Source: ABdhPJw/kvtWC5smOrH3f2SEC50UhtAALVArUdA8Hr+wIxdsYsdMw9Bg+kp/KqmSdjZ4B6wdAxw/EA==
X-Received: by 2002:a9d:a64:: with SMTP id 91mr20346988otg.198.1636833739698;
        Sat, 13 Nov 2021 12:02:19 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q12sm1935177otl.66.2021.11.13.12.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Nov 2021 12:02:19 -0800 (PST)
Date:   Sat, 13 Nov 2021 14:02:14 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        stephan@gerhold.net, Thara Gopinath <thara.gopinath@linaro.org>
Subject: Re: [PATCH v5 09/22] dt-bindings: qcom-qce: Move 'clocks' to
 optional properties
Message-ID: <YZAZxmsp5WLeOBuF@builder.lan>
References: <20211110105922.217895-1-bhupesh.sharma@linaro.org>
 <20211110105922.217895-10-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211110105922.217895-10-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 10 Nov 04:59 CST 2021, Bhupesh Sharma wrote:

> QCom QCE block on some SoCs like ipq6018 don't
> require clock as the required property, so the properties
> 'clocks' and 'clock-names' can be moved instead in the dt-bindings
> to the 'optional' properties section.
> 
> Otherwise, running 'make dtbs_check' leads to the following
> errors:
> 
> dma-controller@7984000: clock-names:0: 'bam_clk' was expected
> 	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> 
> dma-controller@7984000: clock-names: Additional items are not allowed ('bam_clk' was unexpected)
> 	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> 
> dma-controller@7984000: clock-names: ['iface_clk', 'bam_clk'] is too long
> 	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> 
> dma-controller@7984000: clocks: [[9, 138], [9, 137]] is too long
> 	arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dt.yaml
> 
> Cc: Thara Gopinath <thara.gopinath@linaro.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> index 30deaa0fa93d..f35bdb9ee7a8 100644
> --- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> +++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
> @@ -53,8 +53,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names

I would prefer that we make this conditional on the compatible. That
said, if this only applies to ipq6018 I think we should double check the
fact that there's no clock there...

For the sake of making progress on the series, I think you should omit
this patch from the next version.

Regards,
Bjorn

>    - dmas
>    - dma-names
>  
> -- 
> 2.31.1
> 
