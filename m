Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE3172C74F1
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388477AbgK1Vtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732448AbgK1TA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 14:00:26 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6535DC09425D
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:22:21 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id t18so3732561plo.0
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wTbzA6iR4mzei6incKeYJHJJIGSIn2ANMoDLapx2gkc=;
        b=Yd1t4jHAeAViTH29/7/6zw/xKQSYNLtEaCNZFzgCzRnCgo/d85TdJO2jNWRjTp1dC8
         Wd2LsJfDwLQaNfMQqflLT7vl0XF6lZGPCx/DRZRWCgPwzxVKS8ZpX6E5niQcz8Vco4fU
         fmQku7Bw6eLdMcDsc1kG0GBnkQ2FtkDiScxG8vGdUIjOY2EJ9AeU3AK/SUWOOniTIVLG
         NR/qa9mZfM+lR7LPtFrg4edUf3HotwUcjbLE9HI2vO3i+md+Wh/TGfAIxhqedo5oUT2H
         LIPDwn/2Hoce71aGnu7qQZOGSyW22alaQJgMUQwneeWqSUaYuSXGyj+F8FfnA+GkB6b4
         Fe2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wTbzA6iR4mzei6incKeYJHJJIGSIn2ANMoDLapx2gkc=;
        b=IxLRthMIP4txiqjiPYRu40s15tLAKPQspaqY3/yPtNs8ObtTR5btk7sfeswfxwXVzr
         fQoMqFweRUn+rr22NvGc3fvuLh4kcWQNyegmzl1plLhizfjcNmllB6KOu2U+OB7N30bk
         Kyi+kJUUqfnSis2EejO3oFOgr0+Ui+SlnrAGjeKPX5vXFmlI/ip78ncfWIGw5JeIMzl3
         s2GLYkh/cGw0izpBbFqFN3VObCRaWKIfsOWMvv5J2g2gjE1ZaNqxilQG7RegF5zash+M
         KhJ8V1UhVUQbxEU2+/KcyfnFInK6OBO0tXALtTiTz1rUeX4tLXL+Bl/w2Jw99E82ciCV
         7K4g==
X-Gm-Message-State: AOAM530wb8VzJUj2Rvfk56NJy8pvKNr1KqU6S4/H5L9//mPSieSzICKA
        YWmPpSRMrH+Otx4h0Wr3lSXO
X-Google-Smtp-Source: ABdhPJyXvpwdBwsVaHjZK4EeMpg3nkidiunLUTxHK1f0yBOcUxAtgxE6EW4BFH6cEOB5x22Bg/KJ8A==
X-Received: by 2002:a17:902:ba90:b029:d7:e80e:753a with SMTP id k16-20020a170902ba90b02900d7e80e753amr10138545pls.35.1606548140808;
        Fri, 27 Nov 2020 23:22:20 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id bf6sm1696330pjb.25.2020.11.27.23.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:22:20 -0800 (PST)
Date:   Sat, 28 Nov 2020 12:52:12 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/18] arm: dts: owl-s500: Add Clock Management Unit
Message-ID: <20201128072212.GP3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <7c45642753b94e2b2f4fcef0d3206b4c237e3135.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c45642753b94e2b2f4fcef0d3206b4c237e3135.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:55:55AM +0200, Cristian Ciocaltea wrote:
> Add Clock Management Unit for Actions Semi S500 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/boot/dts/owl-s500.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/owl-s500.dtsi b/arch/arm/boot/dts/owl-s500.dtsi
> index 1dbe4e8b38ac..5d5ad9db549b 100644
> --- a/arch/arm/boot/dts/owl-s500.dtsi
> +++ b/arch/arm/boot/dts/owl-s500.dtsi
> @@ -5,6 +5,7 @@
>   * Copyright (c) 2016-2017 Andreas Färber
>   */
>  
> +#include <dt-bindings/clock/actions,s500-cmu.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/owl-s500-powergate.h>
>  
> @@ -70,6 +71,12 @@ hosc: hosc {
>  		#clock-cells = <0>;
>  	};
>  
> +	losc: losc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		#clock-cells = <0>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> @@ -169,6 +176,13 @@ uart6: serial@b012c000 {
>  			status = "disabled";
>  		};
>  
> +		cmu: clock-controller@b0160000 {
> +			compatible = "actions,s500-cmu";
> +			reg = <0xb0160000 0x8000>;
> +			clocks = <&hosc>, <&losc>;
> +			#clock-cells = <1>;
> +		};
> +
>  		timer: timer@b0168000 {
>  			compatible = "actions,s500-timer";
>  			reg = <0xb0168000 0x8000>;
> -- 
> 2.29.2
> 
