Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2FEB50CC1C
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 18:01:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236255AbiDWQEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 12:04:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236250AbiDWQEh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 12:04:37 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0BB1EEF3
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 09:01:40 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id e189so12348111oia.8
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 09:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wJTxIUrFvKCxRVTmk6uKluYTIyEbkCCViQFDygpxqO8=;
        b=P4MQu1Vrsr60nLAompLsJOehDhvbf/Ud3vpvIASB7neVkrTQ6ZwHbjOjZNWNYWuRsF
         W3zOfpgs4gI4TQDPEMUznLFy7B3PV6yx4N7RZuyid5kxwuAoVmjxbZKwdnGB5KDEECVn
         Bm6kHTncVNG6aR3ZfN8t62GiB97okdbLAYmFjoj1cqfOXGXzsaarFSGYdQvQ9fIcppvY
         b4usFYCZpqGt51aCDgANOOzXQKh/BNH78h5p5i6FJ53fzhchFAtRcF+efZ1vm0C5gQ1A
         L2FGfEMSFe6QjEihfEToV/evvd4+5MVqkTqbdQ9r3+lfZnKMPksYOLa8O0FEZICir552
         RSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wJTxIUrFvKCxRVTmk6uKluYTIyEbkCCViQFDygpxqO8=;
        b=ra8XMzIQFgbtkceCySfOgsnxC7/ng+JT/tCB4eP0hO95rJUkHoarHzS89KGr2atRzy
         qZBql0uNWOTGgwKdT/v/8cq5esv7AYKltjFsJ0wOsphf/3xFeNB/M90sofcV1rjF0Qqr
         o2Zdv/k7g9lj2vBvwrT5ZJNHw0offdHd/adDNDSii0pMF7DRLzaY5m4DUsH+k1DZoaBd
         u7Qut4lWUW89XQ5n59lenSq0oS7+zTTbRw5QEXZLvTIpVaJPT0l1hqHbNV3HwOlI5XAC
         /K9Cu+h8fufU4wPWsouWVcTzM9l+VwEy6mMUCyVutcMlw691XxeU/ibS9UC9+OkGVszi
         /qaA==
X-Gm-Message-State: AOAM530d0I88QpaijPk5YjplByqW0CSet/WMuuJKM/NAuk/VK+lJ9FtZ
        6c4KaVwQgSX/60/LUeD1gjSBqkHaSxxXgGz4
X-Google-Smtp-Source: ABdhPJzCy3MK2n4G5FCtMGm8D2rEsjF16CpFQ46W0YHR2eJf0pOHKGso7MG2WAfzoAl1xjNwFPSH7w==
X-Received: by 2002:a05:6808:1183:b0:2d4:5eeb:1ca3 with SMTP id j3-20020a056808118300b002d45eeb1ca3mr4941069oil.8.1650729699771;
        Sat, 23 Apr 2022 09:01:39 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b0060470f9f5e3sm1913081ota.51.2022.04.23.09.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 09:01:39 -0700 (PDT)
Date:   Sat, 23 Apr 2022 09:03:39 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 1/4] ARM: dts: qcom: apq8064: Use generic node name
 for DMA
Message-ID: <YmQjW4OYe5rTBP/Q@ripper>
References: <20220421171809.32722-1-singh.kuldeep87k@gmail.com>
 <20220421171809.32722-2-singh.kuldeep87k@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421171809.32722-2-singh.kuldeep87k@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 21 Apr 10:18 PDT 2022, Kuldeep Singh wrote:

> Qcom BAM DT spec expects generic DMA controller node name as
> "dma-controller" to enable validations.
> 
> Signed-off-by: Kuldeep Singh <singh.kuldeep87k@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

It seems that I picked up v3, but patchwork-bot didn't send out any
notifications.

Please double check linux-next to confirm that we got them all sorted
out.

Thanks,
Bjorn

> ---
>  arch/arm/boot/dts/qcom-apq8064.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index a1c8ae516d21..b2975be3ae04 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -1040,7 +1040,7 @@ sata0: sata@29000000 {
>  		};
>  
>  		/* Temporary fixed regulator */
> -		sdcc1bam:dma@12402000{
> +		sdcc1bam: dma-controller@12402000{
>  			compatible = "qcom,bam-v1.3.0";
>  			reg = <0x12402000 0x8000>;
>  			interrupts = <0 98 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1050,7 +1050,7 @@ sdcc1bam:dma@12402000{
>  			qcom,ee = <0>;
>  		};
>  
> -		sdcc3bam:dma@12182000{
> +		sdcc3bam: dma-controller@12182000{
>  			compatible = "qcom,bam-v1.3.0";
>  			reg = <0x12182000 0x8000>;
>  			interrupts = <0 96 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1060,7 +1060,7 @@ sdcc3bam:dma@12182000{
>  			qcom,ee = <0>;
>  		};
>  
> -		sdcc4bam:dma@121c2000{
> +		sdcc4bam: dma-controller@121c2000{
>  			compatible = "qcom,bam-v1.3.0";
>  			reg = <0x121c2000 0x8000>;
>  			interrupts = <0 95 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.25.1
> 
