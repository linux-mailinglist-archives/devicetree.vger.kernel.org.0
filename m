Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 361DB1C81B0
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 07:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726476AbgEGFjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 01:39:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727030AbgEGFjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 01:39:47 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0973C061A10
        for <devicetree@vger.kernel.org>; Wed,  6 May 2020 22:39:47 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id y6so2145809pjc.4
        for <devicetree@vger.kernel.org>; Wed, 06 May 2020 22:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WQVY27B5Rpvmtpn87gkSnEtPnw+gI7YkKA12CFPExLw=;
        b=GIbdhZ+KwteXNyTV6ZfSKtTmCtmVcng5rL6ARiziorreG+LcFaiXYMaEFyBz4SP4Nu
         yghoxzPjMA0vrhKyNoYQXReqldekiiyZg08B5qiYO/maBmggj8FaKuB2RuRRfwe91IDc
         whXSPkw4wfvvTjnm5XBNAGwXYJkwUCLRWVjifhGe3R7I+HDydszVkzqCx/6WL2MiJvui
         cX50Kb5n+A6ZDxbjM1QIZXc1HJ4EhDRGwQrwDGPvb4KcvA9GJYGm71mUPZ0sGPzoH6Hb
         xZ/L4U6gWJMUV6a8+Ij9oTDpLdWd4mPOgHJvHqcbQRKp5J93BgiitEWyY4hr+Mg+stao
         n3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WQVY27B5Rpvmtpn87gkSnEtPnw+gI7YkKA12CFPExLw=;
        b=rQQLkKLR2gO0XMbHpb4nq0/tinv+hw714wtVtCIde5oLXY71XuVDPhIojZfFF3vkyP
         ZfxmjuLaR72JkCEMhmQOdDLkjHPor5kA0nMwlUBHJD1XsUnu7q409iSAfC1IFotdkaxN
         OTKeTe/mRtrxdXr00Hgi2p4u2nEbuJo5NEMQJNcgWFFRpl3MkpQUVGDnu4jefsy8Ev0J
         58WryaROpX2WYl1X7wwiFWuYFFFV2KCLko2LWeCS4XZDxqORR1c5p76hC/fGuwK2ZEiy
         wrUeuCT6a9oEbrNGkyU570I0+rLbWvV8dr2OmcfSwiHsGIv6FYZ6oiX5GNoR0Ref/SL3
         mrfA==
X-Gm-Message-State: AGi0PuZ0aJKVoZriALPvOJ46RoUV/8zAW2c3i5iv8KpCjeFm61VTIp0A
        ymnId2RXEBDh5nSFpK6O7okJQw==
X-Google-Smtp-Source: APiQypL1KtJ7HbuZvbKeF8aP8D0bfbqa1VkLxxaEGQkY9ikauUgMKVGA2xNu7WDGOFzoaXj9TSevCg==
X-Received: by 2002:a17:902:40a:: with SMTP id 10mr11331781ple.183.1588829986874;
        Wed, 06 May 2020 22:39:46 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h17sm3640500pfk.13.2020.05.06.22.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 22:39:46 -0700 (PDT)
Date:   Wed, 6 May 2020 22:40:33 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: c630: Make i2c devices active high
Message-ID: <20200507054033.GD3236072@builder.lan>
References: <20200406052447.105513-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200406052447.105513-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 05 Apr 22:24 PDT 2020, Bjorn Andersson wrote:

> The two i2c hid devices on i2c3 are supposed to have interrupts
> triggered active high, update this.
> 

While this is what the DSDT says, keeping it as RISING avoids occasional
drops of keyboard entries. So let's ignore this for now.

> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index be6635068dc3..d4cdde496b74 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -338,7 +338,7 @@ hid@15 {
>  		reg = <0x15>;
>  		hid-descr-addr = <0x1>;
>  
> -		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
>  	hid@2c {
> @@ -346,7 +346,7 @@ hid@2c {
>  		reg = <0x2c>;
>  		hid-descr-addr = <0x20>;
>  
> -		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
>  
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&i2c2_hid_active>;
> -- 
> 2.26.0
> 
