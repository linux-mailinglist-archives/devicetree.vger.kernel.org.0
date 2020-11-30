Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 274F22C8AEC
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 18:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387538AbgK3R0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 12:26:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387405AbgK3R0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 12:26:40 -0500
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C1C7C0613D6
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 09:26:00 -0800 (PST)
Received: by mail-oi1-x242.google.com with SMTP id l206so14954447oif.12
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 09:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Ru7NLccMoPibYPRiKwpFm+Vj44WvO34VSPqaKP+92ak=;
        b=Kh3Kt8oEDlhs3pKFJGJqSbxdh3/n7jwMaX8Vdoy2d4Kkq7FjR4PhSmV/g00+P8RNm7
         +VfgHkuYFsgjU1Gsq/WdWVSio15EzpL+3GQQ/tGGwtXKeVYa260+DildkHcYl6Gwtcci
         g1H9BSZZCS2wB0Ssi3onqx/C1kZwl1YVg63KzhEGhfCZ753gZMtfq+RMIVGw/lmUkuAw
         P6P8Aa3nBiyihnX/eRNo0JUwRh4PA53r5OHzmjc5Wnvm6IwDVLSAGCW3tWE7KLf5kSVf
         FbB+eQdU7R8Rcev7NrSaftTkvRiec89HJrUkhGDHM2jdDE+FPFJf5d1PpkbqHiEQ3LIH
         hBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Ru7NLccMoPibYPRiKwpFm+Vj44WvO34VSPqaKP+92ak=;
        b=ocE+S4GD8WE3+3toc0xzT/s7bcF3TvCF+HIivHj73Tf7sa8qOvEMXW09lvYYPjNNOa
         QR8/h2mjv2nuxY9lG6RDfryQLQt/cFcavu25qrUiFB/MPbhv4Ndf/Qn2r3wxJYQm6/Bv
         0nz7uzHkRtN1JXAOrMOV9/6on54cdrwut/ni36NGd2cf2M5bFTRESj5Aps+PraByHBat
         6LFise+B0yKZ58k3kkFr9NuK72iQkTDUINSN4fpWoWqvMpDDYpHZ9rTjyLtGN50o1zcm
         Eb9yPyI4jyHoLgiwFSsbucs2PyoTQK6QIzNg6ZWT3Md+2tDoGr4nqoNuAMkdKtiD0gu9
         mY0A==
X-Gm-Message-State: AOAM530ODmCtMhnimRlEbUaiL5xwcWtKDVCu0flv1VqHGyVxUu5hY+BZ
        9dA32rUyVlLvfhuf7TfxnXDO4Q==
X-Google-Smtp-Source: ABdhPJyAMv3FHovUbayRLahomb+9JxRUxoLtpBroVudFxPP9U7QGw1edXqxkdwuZCCAsJ/En4ZHrdA==
X-Received: by 2002:a05:6808:8c8:: with SMTP id k8mr15419478oij.84.1606757159932;
        Mon, 30 Nov 2020 09:25:59 -0800 (PST)
Received: from Steevs-MBP.hackershack.net (cpe-173-175-113-3.satx.res.rr.com. [173.175.113.3])
        by smtp.gmail.com with ESMTPSA id e15sm9319333otj.43.2020.11.30.09.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 09:25:59 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: c630: Fix pinctrl pins properties
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201130170028.319798-1-bjorn.andersson@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
Message-ID: <58cf6829-4121-db46-04f7-0dc6c59b2053@kali.org>
Date:   Mon, 30 Nov 2020 11:25:58 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201130170028.319798-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 11/30/20 11:00 AM, Bjorn Andersson wrote:
> The "pins" property takes an array of pin _names_, not pin numbers. Fix
> this.
>
> Fixes: 44acee207844 ("arm64: dts: qcom: Add Lenovo Yoga C630")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index 399aef2a0951..bb314973eb0c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -432,7 +432,7 @@ &tlmm {
>  	gpio-reserved-ranges = <0 4>, <81 4>;
>  
>  	i2c3_hid_active: i2c2-hid-active {
> -		pins = <37>;
> +		pins = "gpio37";
>  		function = "gpio";
>  
>  		input-enable;
> @@ -441,7 +441,7 @@ i2c3_hid_active: i2c2-hid-active {
>  	};
>  
>  	i2c5_hid_active: i2c5-hid-active {
> -		pins = <125>;
> +		pins = "gpio125";
>  		function = "gpio";
>  
>  		input-enable;
> @@ -450,7 +450,7 @@ i2c5_hid_active: i2c5-hid-active {
>  	};
>  
>  	i2c11_hid_active: i2c11-hid-active {
> -		pins = <92>;
> +		pins = "gpio92";
>  		function = "gpio";
>  
>  		input-enable;
> @@ -459,7 +459,7 @@ i2c11_hid_active: i2c11-hid-active {
>  	};
>  
>  	wcd_intr_default: wcd_intr_default {
> -		pins = <54>;
> +		pins = "gpio54";
>  		function = "gpio";
>  
>  		input-enable;

Tested-by: Steev Klimaszewski <steev@kali.org>


