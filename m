Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8F153B4A99
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 00:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbhFYWiC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 18:38:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbhFYWiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 18:38:02 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C591C061767
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 15:35:40 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id x17-20020a05683000d1b029045fb1889a9eso10517917oto.5
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 15:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Pmb7A01MDINvz8d62rv5mg4RMeGlJ/Hx32Z2jgV+wqk=;
        b=cXEESSsQgJyck9X1v4UqP/S0l+M78TCVpfxCtDuXB6Ux/dBggrsUW++2aCUYriTgnA
         UVz/x9Vc5RgmYJTOgdQvyI50meELS+ASvBEyo0LBJRFBcwj2n3kOR6EyV10gHowVggFI
         AdNPEca/2HGTQO+fPYgk21EQ6ohPgYi6BiqmazufPdVutgPpk+QJ0kv63iR/5KqywUfE
         mJdGhn7WGUcFvSE4U5MMUe9oVx+0pjBb7u4f2fwWMm3VS1BDnmDMUsvV0aN1K5SKv/yP
         cDT+a/AxWHfdmayQea8SVWbN+LpKl68G+Ox2psGXLfaw2vSqUtZMjaTgrjGZecBejfJ0
         e/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pmb7A01MDINvz8d62rv5mg4RMeGlJ/Hx32Z2jgV+wqk=;
        b=lAWl/q5WH7qsyDw4KoQauy8O5nkuJbJN3WNYzudOIs37NjrcN9nLq4vB8N4/h1Zwl4
         0i8bFLGXW7+bamjSFYTC8H8/2Dk5sQFSqdN1XtuGo0o60XFr1r+AorLTByGDDJ+t3Ddo
         pmsWqN/+/cODYZbpIHzRrcco7xymEPEhULEYwysyb/3vgVfdSW9EmpyxuMipvjbXIIGd
         RLbP/QPPvb2p4kV/LrUcmT4r3ZKa28BhCT5bXTWVXFuAkDjPE89nIe2H+nZt0esP3k4E
         8vSq/9k2FypRU7L3lUikTCYnugVYXXniideW9aX+0KHQbigfhUSOKRFpUFw1mo6Ioa3z
         2dkw==
X-Gm-Message-State: AOAM532A3UtzqZin65ol3i1g6mcKvGIjm793n06IOwwjAnrtQmFmgB0/
        5WFumP8TtcOozNGGh5rrXbIr9g==
X-Google-Smtp-Source: ABdhPJxMZ9tt+AX/ZsFHAh/p7FuunQL7BgYsQ5AY02kgrgK6dxeia6d8tpoxS6EUCKQjMaLbi1Hezg==
X-Received: by 2002:a05:6830:2415:: with SMTP id j21mr11489395ots.224.1624660539393;
        Fri, 25 Jun 2021 15:35:39 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id y6sm1638129oiy.18.2021.06.25.15.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 15:35:38 -0700 (PDT)
Date:   Fri, 25 Jun 2021 17:35:36 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: Use consistent naming for dwc3 usb
 nodes for sm8150
Message-ID: <YNZaOK3XcsQq8H+B@yoga>
References: <20210625220311.527549-1-bhupesh.sharma@linaro.org>
 <20210625220311.527549-2-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210625220311.527549-2-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 25 Jun 17:03 CDT 2021, Bhupesh Sharma wrote:

> The dwc3 usb nodes in sm8150.dtsi are currently named differently,
> leading to some confusion when one sees the entries in sysfs or
> dmesg:
> [    1.943482] dwc3 a600000.usb: Adding to iommu group 1
> [    2.266127] dwc3 a800000.dwc3: Adding to iommu group 2
> 
> Name both the nodes as dwc3@<addr> for consistency.
> 
> While at it also arrange the two usb controller, hs-phy and
> ss-phy nodes closer in the dts for better readability.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 30 ++++++++++++++--------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 612dda0fef43..3be6d093a99b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -2205,6 +2205,20 @@ glink-edge {
>  			};
>  		};
>  
> +		dc_noc: interconnect@9160000 {
> +			compatible = "qcom,sm8150-dc-noc";
> +			reg = <0 0x09160000 0 0x3200>;
> +			#interconnect-cells = <1>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +		};
> +
> +		gem_noc: interconnect@9680000 {
> +			compatible = "qcom,sm8150-gem-noc";
> +			reg = <0 0x09680000 0 0x3e200>;
> +			#interconnect-cells = <1>;
> +			qcom,bcm-voters = <&apps_bcm_voter>;
> +		};
> +
>  		usb_1_hsphy: phy@88e2000 {
>  			compatible = "qcom,sm8150-usb-hs-phy",
>  				     "qcom,usb-snps-hs-7nm-phy";
> @@ -2266,20 +2280,6 @@ usb_1_ssphy: lanes@88e9200 {
>  			};
>  		};
>  
> -		dc_noc: interconnect@9160000 {
> -			compatible = "qcom,sm8150-dc-noc";
> -			reg = <0 0x09160000 0 0x3200>;
> -			#interconnect-cells = <1>;
> -			qcom,bcm-voters = <&apps_bcm_voter>;
> -		};
> -
> -		gem_noc: interconnect@9680000 {
> -			compatible = "qcom,sm8150-gem-noc";
> -			reg = <0 0x09680000 0 0x3e200>;
> -			#interconnect-cells = <1>;
> -			qcom,bcm-voters = <&apps_bcm_voter>;
> -		};
> -
>  		usb_2_qmpphy: phy@88eb000 {
>  			compatible = "qcom,sm8150-qmp-usb3-uni-phy";
>  			reg = <0 0x088eb000 0 0x200>;
> @@ -2344,7 +2344,7 @@ usb_1: usb@a6f8800 {
>  
>  			resets = <&gcc GCC_USB30_PRIM_BCR>;
>  
> -			usb_1_dwc3: usb@a600000 {
> +			usb_1_dwc3: dwc3@a600000 {

"usb@" is actually the right one, per the rather recent standardization
across the dwc3 bindings.

Regards,
Bjorn

>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a600000 0 0xcd00>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.31.1
> 
