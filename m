Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49B8C699228
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjBPKtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:49:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbjBPKtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:49:14 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B389A56EC6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:48:51 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bi36so2234628lfb.8
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nhWmw2hU5CpjAu/G8PlR3IasZAJo9t8FS9xeW4+4qLg=;
        b=ngOtomFRa3x1BXfs+M54l4Lf9tBbn+73Z2srUXTbGQgvaqPDpw4OoDk8jKpIUOyhxJ
         UN/I5sJXVrQ4zAuZVhJS9mp7Knpji/sGfq+l2utZqvD+WavPUOPLRRUu0vSfnWGPbOg0
         o6eYHzEl5DLgwvhbqgSG6OBrh5smwHCO6p2bYwgAL/UxMviJ05X8/bE+UcHPOXu4mrHK
         GxsqVIP6tIwNtkHdjOJMe5pd9uEWBRyEEoUikaS0oduJVnxBV5bHvRUbdDn7EtwVeaQz
         rbX3s+5wvBLYN2g1g0YDq1J5seBkuRkr0Ffd/Qw4IZsui3ZISICvavq6k7eCcKYGJPA9
         v7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nhWmw2hU5CpjAu/G8PlR3IasZAJo9t8FS9xeW4+4qLg=;
        b=VqZVGbB+Pgt+TbZ6oNAYjwPM2yhPGf6QKch+OGTncTmGuKeZ97a3Ufmig1r/NXuCdI
         Fhrn1mCxrX6URYp21J8gFl80P9D3N2gswygaUcdZpQk/8BnR1DAaQRToWYT1Wh4Sk3CU
         HLJ9msC2qbz4T60WlzEGJJd9r95eeYocYYPf5QlAbB1msVRoWybP4kCOAQhLrR3PzJAW
         YaIhvXfSM0jTfDKMfAdoAhpHCTDG5+VHBqvz6m1g5SKKzMZdNsW94rcL93RJZvRfYOYd
         E5FhKSfKJZWqZ7iF/RLx3nD3ArBAbzb/XSYMWW0r1ciCj9ke/SXxiCdoEZRL75xaYx/m
         WdGg==
X-Gm-Message-State: AO0yUKXTXbXN/CgNFxmV3fSIbf2Wpn9EoRYkCMIU2TXt1V/Te2XcOo1A
        r9W72RxXwAXxuttEQK7oSnNk5g==
X-Google-Smtp-Source: AK7set+dmMQN0uHFLsdzPkHn2zb2Dz703g51An4vt/fuoxbOWy1DVn/lOlBxm7nuXsykWNTntK86cA==
X-Received: by 2002:ac2:54b8:0:b0:4d8:71dd:5c5e with SMTP id w24-20020ac254b8000000b004d871dd5c5emr1536971lfk.37.1676544529237;
        Thu, 16 Feb 2023 02:48:49 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id r3-20020a19ac43000000b004dc4d984911sm244653lfc.271.2023.02.16.02.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:48:48 -0800 (PST)
Message-ID: <c55a17fb-3c49-6e7e-f22e-95917daf97c0@linaro.org>
Date:   Thu, 16 Feb 2023 11:48:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH 2/4] ARM: dts: qcom: ipq4018-ap120c-ac: align GPIO hog
 with DT schema
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr
References: <20230214161211.306462-1-robert.marko@sartura.hr>
 <20230214161211.306462-2-robert.marko@sartura.hr>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230214161211.306462-2-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14.02.2023 17:12, Robert Marko wrote:
> Align USB power GPIO hog node to DT schema.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
Unless you submitted a separate patch for this, I only see
hog being allowed in 845 TLMM.

Konrad
>  arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> index 38efd45433da5..cd2a32d0d5548 100644
> --- a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
> @@ -76,7 +76,7 @@ mux_cs {
>  		};
>  	};
>  
> -	usb-power {
> +	usb-power-hog {
>  		line-name = "USB-power";
>  		gpios = <1 GPIO_ACTIVE_HIGH>;
>  		gpio-hog;
