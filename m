Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0523B4AD89A
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:15:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234989AbiBHNP2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345891AbiBHMfM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:35:12 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 754FDC03FEC0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:35:11 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id 4so20276830oil.11
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 04:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DCySzda80keBjyEDz1S/bpNT7VXpJeMj45VaQ6BvJBU=;
        b=GYXq0lDGikvfNxjZHaTsvUsWpAWeKdn/6UGfEb3FFoeFYlD6bUY/0nlap/7s/pq9z0
         3APdNRdEg8kXTQRccdTBPHnxP3GBaS0NEchX/eBUqUR4B92jiN87Z4wHKHI93W+h1GYZ
         O01ad+euhCHLjSgemVx7XVtX2vVMua5t5NA/HKNu/iBinrg6OW/pUCc0JBP8TDRLmCMr
         ZKk6vQVBcB2EhjBtCbdEacoZR+NRfxwQhTZxe37GS23drZkY2ti8E6eQYLVWDrMG1Vzo
         V5ubSMJ8oprLEnkCN0Jeu1iX3/Hc0ivMOH7TFz1fxkcyb/1RylYGfs6YEKfxH6vmadAF
         kx6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DCySzda80keBjyEDz1S/bpNT7VXpJeMj45VaQ6BvJBU=;
        b=CD6RRNYwVmj7Bg5JETtaAZysrsZso7iKr5k2Mja2BtrAya8AM7mRKam8Yqg18/8RfH
         ns0CiNGKxr2Q43M2MkfjOXcQ0VDgTWn0FAzaF+DuPgMYtEZK/Y2g3B3P0qGRZbIfthcw
         OjMdl8ncaOY5gTyp4CccS5+2lnWfd7D9WTHUFV5QtHdUVMqAlkjWVPvibh/q+Yxx/zZS
         qqceMxhWhiHLFNeOBQSqS7C7ht/k/lb3vX2lsd6AmUdSCcxD2wX/4c2CvJTOAwuCclz+
         MoL7VQfqrQQwN0pV3hmNdQt5Glecn8Z8DgdrRr8XtztXC32RIQ7wWlO2aX4oPGuvUE5b
         aE1A==
X-Gm-Message-State: AOAM530M6H7KY/MSN4pFlfZkKe7oBmszrfV5ZFRa3gGFetFtDcAiY9Qu
        uSuaulK7BrPDCzTt9xfyxSfx/A==
X-Google-Smtp-Source: ABdhPJxMAYh+r5RkZzZHsVmSNGS1wg9WOJ//Irolb0godaB76n0KtYv/ryyD2/ywrLKHBEIpmQyf+w==
X-Received: by 2002:a05:6808:211e:: with SMTP id r30mr411574oiw.6.1644323710858;
        Tue, 08 Feb 2022 04:35:10 -0800 (PST)
Received: from [192.168.11.51] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id bc36sm5211916oob.45.2022.02.08.04.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 04:35:10 -0800 (PST)
Message-ID: <300f9ec9-da52-235f-ea3c-b49bdc8bfb75@kali.org>
Date:   Tue, 8 Feb 2022 06:35:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.1
Subject: Re: [PATCH 1/2] arm64: dts: qcom: c630: Add backlight controller
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220208041606.144039-1-bjorn.andersson@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220208041606.144039-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2/7/22 10:16 PM, Bjorn Andersson wrote:
> The Lenovo Yoga C630 uses the PWM controller in the TI SN65DSI86 bridge
> chip to provide a signal for the backlight control and has TLMM GPIO 11
> attached to some regulator that drives the backlight.
>
> Unfortunately the regulator attached to this gpio is also powering the
> camera, so turning off backlight result in the detachment of the camera
> as well.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index 58845a14805f..55fb7302245b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -59,6 +59,7 @@ mode {
>   	panel {
>   		compatible = "boe,nv133fhm-n61";
>   		no-hpd;
> +		backlight = <&backlight>;
>   
>   		ports {
>   			port {
> @@ -98,6 +99,12 @@ sn65dsi86_refclk: sn65dsi86-refclk {
>   
>   		clock-frequency = <19200000>;
>   	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&sn65dsi86 1000000>;
> +		enable-gpios = <&tlmm 11 GPIO_ACTIVE_HIGH>;
> +	};
>   };
>   
>   &adsp_pas {
> @@ -419,6 +426,7 @@ sn65dsi86: bridge@2c {
>   		clock-names = "refclk";
>   
>   		no-hpd;
> +		#pwm-cells = <1>;
>   
>   		ports {
>   			#address-cells = <1>;
Tested-by: Steev Klimaszewski <steev@kali.org>
