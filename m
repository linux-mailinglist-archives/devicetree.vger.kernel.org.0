Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B21F865440F
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 16:16:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235802AbiLVPPt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 10:15:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235699AbiLVPOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 10:14:52 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5370D26AE1
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 07:14:51 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id p36so3130525lfa.12
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 07:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sSLbFlXF4cJk3vfeGz8RtjcRsolotrYx5zh+E/VkeoE=;
        b=sZcoOHoZO12gPLkeli6mfsMwwtirvDpf8bx2sd2LVZ1p0mRzxTRhwB8uyXLor6OHlx
         zWgwVdHtCqjT56zV3G13Z9P3zC93/McqBkG0uZBntyHOmRgNtBZ4hg6+9Pb6LwZnV5w5
         pXxHhtg3j0JmEfw9mijYDBbaabyHpSTX91B5p0fUsyNSu3vmWCP8tX+QP1KW9udRW7HO
         cL53FDy54FC4dXP4DLSwhQQQAj5PGFqFyhdxKLKoBOmkR9W1eBKjgSFiMv5K/0PEoix6
         ImHcjb5n1+FzS/rYHY6XXewQKutVbtcwosJjT3Bgdv+KBZ+/2kr+fwEtLHU+g1nXFFtN
         rhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSLbFlXF4cJk3vfeGz8RtjcRsolotrYx5zh+E/VkeoE=;
        b=RY9OQ0n7kf/RjJWUAY/m9ych5+5ev0002v5x6tEAP8B12SQr97DH1DTVwhFOg7h6Cc
         /f9TGWWHcnzge1WlEtX/TlXKTFiVSy4/Kz2R8t6Aqr5F6gBw2ICwhWLp5E9rh68m9/1j
         fNGs/fUNbWbM4hKG+3bC6ZhSeEJJGDMgi8SdHghMEbSuBHW5UozK24N7lvoHXehg1/bh
         VuC8TZ2G8E5TsN3dOoBvY8LO1CZg/8/OMKz3+rBLXIt/LV+l27rdaplGEiIjjc64nIdY
         SwI9ftgqyPalXU/vmuBsi/gAmXrFiI8tQguIrm4imf//FOOeliKdNDYoxomO5AXc4g0e
         6qUg==
X-Gm-Message-State: AFqh2kpEH0b2m5Lo9AdRVlR5gD45L9pDvVyw5h1xNDHzzLPu95DNLgLa
        pjiGwKONx3Wy4RjPkr7RoiNQ4w==
X-Google-Smtp-Source: AMrXdXudttQnXV+5W/W5Lc8ZQQgkt4M+MsIUAEQpK0lOsvvJUReeWKaNNeVfeb+uPkwzwLNHlqpufQ==
X-Received: by 2002:ac2:46cb:0:b0:4b5:b38a:6dff with SMTP id p11-20020ac246cb000000b004b5b38a6dffmr1482433lfo.24.1671722089761;
        Thu, 22 Dec 2022 07:14:49 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id w4-20020a05651234c400b0049d0a98f73csm94956lfr.154.2022.12.22.07.14.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 07:14:49 -0800 (PST)
Message-ID: <697f07b4-87e6-9fa5-4298-82b075a96264@linaro.org>
Date:   Thu, 22 Dec 2022 16:14:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: sdm845: do not customize SPI0
 pin drive/bias
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Douglas Anderson <dianders@chromium.org>
References: <20221222151319.122398-1-krzysztof.kozlowski@linaro.org>
 <20221222151319.122398-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221222151319.122398-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22.12.2022 16:13, Krzysztof Kozlowski wrote:
> Each board should define pin drive/bias for used busses.  All boards
> using SPI0 (db845c and cheza) already do it, so drop the bias/drive
> strength from SoC DTSI.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> 
> Cc: Doug Anderson <dianders@chromium.org>
> 
> Changes since v3:
> 1. Rb tag
> 
> Changes since v2:
> 1. New patch.
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index dcea535de9b7..cac70212cc2a 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2785,8 +2785,6 @@ qup_i2c15_default: qup-i2c15-default-state {
>  			qup_spi0_default: qup-spi0-default-state {
>  				pins = "gpio0", "gpio1", "gpio2", "gpio3";
>  				function = "qup0";
> -				drive-strength = <6>;
> -				bias-disable;
>  			};
>  
>  			qup_spi1_default: qup-spi1-default-state {
