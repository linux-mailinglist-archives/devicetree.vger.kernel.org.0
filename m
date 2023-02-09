Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBE83690E43
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 17:21:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjBIQVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 11:21:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbjBIQVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 11:21:17 -0500
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D70351C72
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 08:21:16 -0800 (PST)
Received: by mail-il1-x12e.google.com with SMTP id m15so1027991ilh.9
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 08:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UKngE7ngQXAHNLalqbKKmwc136Q0QfwqqYmXJMalfRU=;
        b=JHU9uTfXweyjbybwxNuRKLwHCy7ZW3Xaw4yrp+nEN1I3UQMTsiDfcqyF8JPAxqPnFM
         vX/xbJGWcmn4LBLVwRRaHlflnK68kh9QJbY8yxHHXbtd6xwIeRb4jOaOoO5CciWJ2I0F
         WP18JJ8KK7s/hAyIXgeM2yS1Ie5ScReIGnSZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UKngE7ngQXAHNLalqbKKmwc136Q0QfwqqYmXJMalfRU=;
        b=K3D0+GaUoftIFQ8W9YKrGp6fVCzzLrWdniEMnLMwaHHCYnHTIEh1wtTqJkF0Da4WJp
         EBdVt5HQdb31UDzRv9K1eR60HnspDR1H4LoBWaxUAEvpFTirNXaIKqYzhiDqzbGgKVBu
         l79iC5r04TI/f1pvQJhuvI9u6jE5rjEhlJlcv7Wg+V1ZcxR4JbgZJo1TNkdpK17EUHA9
         mchewEBn/W4GUZf7zf47it7MK58qiHvdVV3Iaon7OxhsdrIREGPWY53PQan7IMeqyfU8
         T5V7SzCXOBqOudcCD8wX61btJ8bDnVGANudENhR9rn9pouTZfNSVz4SnjvB84lXekByC
         kAoA==
X-Gm-Message-State: AO0yUKXBw/AdLFGyOgj73yr54L1Ricul0bufAHdAp6qTzykAxW1S9E5o
        LnxJZ+dW5dIeU9zAkNRZF5o6Kw==
X-Google-Smtp-Source: AK7set87dIrlO4+nZUuMC6eIx+SM5Upnj0kqBRD592ICoZZYE8vdX3uKGWNFHW600n7ClXSu/S70xQ==
X-Received: by 2002:a05:6e02:1b09:b0:310:f912:5a68 with SMTP id i9-20020a056e021b0900b00310f9125a68mr5337170ilv.3.1675959675409;
        Thu, 09 Feb 2023 08:21:15 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id h8-20020a92c268000000b0030da1d0c348sm536362ild.87.2023.02.09.08.21.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 08:21:15 -0800 (PST)
Date:   Thu, 9 Feb 2023 16:21:14 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm6115: Add geni debug uart node
 for qup0
Message-ID: <Y+UdetQklamQUehi@google.com>
References: <20230208122718.338545-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230208122718.338545-1-bhupesh.sharma@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 08, 2023 at 05:57:18PM +0530, Bhupesh Sharma wrote:
> qup0 on sm6115 / sm4250 has 6 SEs, with SE4 as debug uart.
> Add the debug uart node in sm6115 dtsi file.

Is there anything special about SE4 that makes it *the* debug
UART or does it just happen to be the UART that is used by the
reference board? I suspect the latter, in which case the
"qcom,geni-debug-uart" string should be set/overwritten in the
board file as in sc7280-qcard.dtsi or sc8280xp-crd.dts.

> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Changes since v1:
>   - v1 can be viewed here: https://lore.kernel.org/linux-arm-msm/20221128171215.1768745-1-bhupesh.sharma@linaro.org/
>   - Addressed Konrad's review comments on v1.
>   - Rebased againt latest linux-next/master which now has the 'qupv3_id_0' node
>     already in the dtsi file, so just add the debug uart node in v2.
> 
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index 50cb8a82ecd5..3eccfb8c16ce 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -963,6 +963,15 @@ spi4: spi@4a90000 {
>  				status = "disabled";
>  			};
>  
> +			uart4: serial@4a90000 {
> +				compatible = "qcom,geni-debug-uart";
> +				reg = <0x04a90000 0x4000>;
> +				clock-names = "se";
> +				clocks = <&gcc GCC_QUPV3_WRAP0_S4_CLK>;
> +				interrupts = <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};
> +
>  			i2c5: i2c@4a94000 {
>  				compatible = "qcom,geni-i2c";
>  				reg = <0x04a94000 0x4000>;
> @@ -992,7 +1001,6 @@ spi5: spi@4a94000 {
>  				dma-names = "tx", "rx";
>  				#address-cells = <1>;
>  				#size-cells = <0>;
> -				status = "disabled";
>  			};
>  		};
>  
> -- 
> 2.38.1
> 
