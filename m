Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40AB92C8AEA
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 18:26:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387399AbgK3R03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 12:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387405AbgK3R03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 12:26:29 -0500
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2934EC0613D3
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 09:25:49 -0800 (PST)
Received: by mail-oi1-x243.google.com with SMTP id j15so14979039oih.4
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 09:25:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=HUd80TJAPN0HNUfyfM/cXlZWa0/zIVrHS2ar/oipCTA=;
        b=cORfdEM6mWVLRHnCBqW4tOax3URrJ09Zr1dd8Lm14bBFPkmy1/jM3FVqVsiptOtCru
         C/orLmR/loHRkh5nVBhk9J63TiGQ0ff+KzvjTkggpkQlTMDmbx5ZCD9iCLdpP/rIPTxX
         ekHJb1+4+T2Hf3SGN2cy69u8U5qPmqbmRjlSKbBSNVWiqc5WJETza0p+/CRYZ/JgIv3f
         HFgkJzQQc5L75zu/Mn/hNCNRQy6GZY466aVbCkEVlZ4/7QMtlmI3Lbn+cNxHaleKqvE1
         HYVLSn9Hly3NNLTVOcszeA9M/Fax7QjF2NXK3jJq1cTVxujjlIybIIg+EZ3wkBNznAnw
         H1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=HUd80TJAPN0HNUfyfM/cXlZWa0/zIVrHS2ar/oipCTA=;
        b=CfngGHX6u3E+z+aYEc+j2DBDXyTngbB9eXhi9cEJEFKDODMitkmOUxol2l9KpVEIN1
         0GVNBTNNZ5O3X0evSwPMZ1NW6frb8eVHqa9PunGkSJ6SOJze1amY3AVu83gM6CNJrcG5
         68fKWrzRX13/akPWf0mYGvuxk1Dra7LGSmgM4Geyw+uVpSxfSzK4ZaDITkR3HMQxgE+7
         5yz/Gul/9AiGgo9qCRP+zHgN604hfLohSOuC5CHi8QgjnIKMrrlcadJOkThKl2fXWFPz
         2xDGRk3S0vZfO/JIZ/SiqEGe2r+SqtOSe1mtLzi5JmgUH2mO3M3ByUBDoWNtIHWIF9zX
         AOHg==
X-Gm-Message-State: AOAM5336JRdmdGvGPdMxle16Z1e/Mv0je3kuBowTgVeu2IGMehVOqhix
        A5U6K1GEur8/ZsdaPm9qoSVwtw==
X-Google-Smtp-Source: ABdhPJxJwcInRruKgImZGDpJhn258QZyowR+W944kJ48BLOe+t+aFrBC3nAuZQ4N4NIUDkonajH/9w==
X-Received: by 2002:a05:6808:562:: with SMTP id j2mr15682595oig.1.1606757148425;
        Mon, 30 Nov 2020 09:25:48 -0800 (PST)
Received: from Steevs-MBP.hackershack.net (cpe-173-175-113-3.satx.res.rr.com. [173.175.113.3])
        by smtp.gmail.com with ESMTPSA id s28sm9000438otr.4.2020.11.30.09.25.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 09:25:47 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: c630: Polish i2c-hid devices
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201130165924.319708-1-bjorn.andersson@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
Message-ID: <77abcac1-daf6-adbd-7d02-00cd9b4ddf99@kali.org>
Date:   Mon, 30 Nov 2020 11:25:45 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201130165924.319708-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 11/30/20 10:59 AM, Bjorn Andersson wrote:
> The numbering of the i2c busses differs from ACPI and a number of typos
> was made in the original patch. Further more the irq flags for the
> various resources was not correct and i2c3 only has one of the two
> client devices active in any one device.
>
> Also label the various devices, for easier comparison with the ACPI
> tables.
>
> Fixes: 44acee207844 ("arm64: dts: qcom: Add Lenovo Yoga C630")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 31 +++++++++++--------
>  1 file changed, 18 insertions(+), 13 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index 047ac9c16874..399aef2a0951 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -264,23 +264,28 @@ &i2c3 {
>  	status = "okay";
>  	clock-frequency = <400000>;
>  
> -	hid@15 {
> +	tsel: hid@15 {
>  		compatible = "hid-over-i2c";
>  		reg = <0x15>;
>  		hid-descr-addr = <0x1>;
>  
> -		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c3_hid_active>;
>  	};
>  
> -	hid@2c {
> +	tsc2: hid@2c {
>  		compatible = "hid-over-i2c";
>  		reg = <0x2c>;
>  		hid-descr-addr = <0x20>;
>  
> -		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
>  
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&i2c2_hid_active>;
> +		pinctrl-0 = <&i2c3_hid_active>;
> +
> +		status = "disabled";
>  	};
>  };
>  
> @@ -288,15 +293,15 @@ &i2c5 {
>  	status = "okay";
>  	clock-frequency = <400000>;
>  
> -	hid@10 {
> +	tsc1: hid@10 {
>  		compatible = "hid-over-i2c";
>  		reg = <0x10>;
>  		hid-descr-addr = <0x1>;
>  
> -		interrupts-extended = <&tlmm 125 IRQ_TYPE_EDGE_FALLING>;
> +		interrupts-extended = <&tlmm 125 IRQ_TYPE_LEVEL_LOW>;
>  
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&i2c6_hid_active>;
> +		pinctrl-0 = <&i2c5_hid_active>;
>  	};
>  };
>  
> @@ -304,7 +309,7 @@ &i2c11 {
>  	status = "okay";
>  	clock-frequency = <400000>;
>  
> -	hid@5c {
> +	ecsh: hid@5c {
>  		compatible = "hid-over-i2c";
>  		reg = <0x5c>;
>  		hid-descr-addr = <0x1>;
> @@ -312,7 +317,7 @@ hid@5c {
>  		interrupts-extended = <&tlmm 92 IRQ_TYPE_LEVEL_LOW>;
>  
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&i2c12_hid_active>;
> +		pinctrl-0 = <&i2c11_hid_active>;
>  	};
>  };
>  
> @@ -426,7 +431,7 @@ codec {
>  &tlmm {
>  	gpio-reserved-ranges = <0 4>, <81 4>;
>  
> -	i2c2_hid_active: i2c2-hid-active {
> +	i2c3_hid_active: i2c2-hid-active {
>  		pins = <37>;
>  		function = "gpio";
>  
> @@ -435,7 +440,7 @@ i2c2_hid_active: i2c2-hid-active {
>  		drive-strength = <2>;
>  	};
>  
> -	i2c6_hid_active: i2c6-hid-active {
> +	i2c5_hid_active: i2c5-hid-active {
>  		pins = <125>;
>  		function = "gpio";
>  
> @@ -444,7 +449,7 @@ i2c6_hid_active: i2c6-hid-active {
>  		drive-strength = <2>;
>  	};
>  
> -	i2c12_hid_active: i2c12-hid-active {
> +	i2c11_hid_active: i2c11-hid-active {
>  		pins = <92>;
>  		function = "gpio";
>  

Tested-by: Steev Klimaszewski <steev@kali.org>


