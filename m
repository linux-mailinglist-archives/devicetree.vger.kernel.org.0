Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71E623CE815
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 19:27:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352214AbhGSQhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 12:37:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242591AbhGSQd1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 12:33:27 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A97C04E2F0
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 09:38:16 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id o17-20020a9d76510000b02903eabfc221a9so18931665otl.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 09:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Ry+sVYKTboeamsKLUVaGSd3ZgtEYvyAeKwrS0YX7wmw=;
        b=yuPUJBBbiFKRh8m2AuFYgk/WYgK/rqBTZ3l0AaAtJDSt34mGhcUZQd4xEN5Z9WzctW
         j4PwaC+EdgNZj0VMKJTHHB0YRVNGLILCW5fDlgaBYko0o2t9PkIxocIV56M6VHXNF/R+
         ABvScaURx5htuglmGF0cEEoIQ2RvON8G6Xctorzl6aYv0UjD86ZWrzDCX/68SSnyc7h7
         gr7ibMxWeanUU8N8X62OwV8JEBRPdlLGCgSGGfMrmm6aTi2x4jKgpQsLrCB6UCh6hmgY
         ZTIdi3uQbM3JYhcvhYO5o368KN/RrqkL2Zd3WIEg0/hJX3ONY2N4v4cYlrat6N0Zn+50
         4+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ry+sVYKTboeamsKLUVaGSd3ZgtEYvyAeKwrS0YX7wmw=;
        b=uZLTDXWdvU+Bhz5ULzaRZdlMyXPqClBy51Sly3clQfUOj0124pAbopTjOd/jStA2To
         I/IVp5bGNNRWYJ7iijREE9olO5SPWtV6aFSydDdaJlI3DrWVGwKAubAf04g557a4b/Dy
         Lrqu1tJKkj4Ko07S7UQTVeLFGaKpEQC0S67YzamN6gyeZl74WXcUEN4hqwEkvl2LVOZQ
         /CZm0sxya76IxG7PZVlGTxxYkadYOy/gwb2AZMcAr0rhsrlZkWQ7GKR79MACTfU2WKCf
         DWjM/gOBJNALc5C0pTPOmMYSGA2mdhsYURRZ8WYSnU/OZ5qkEcM1zSJvm0kGq5qjl4pT
         c8IA==
X-Gm-Message-State: AOAM530jzgGRAjMXacWp4byMSxt+/DMzOBQxoqzlGuiMI/z6gK1yhr+N
        63mZ9mqH2mW1PqUy+PuRUZObnw==
X-Google-Smtp-Source: ABdhPJzcI+ENiesNuBuNG264vmKChBqOkjftwnhfTgn9XByTraOJ17aXW/oiNPXjbt/YEAtz0dNgKA==
X-Received: by 2002:a9d:8a3:: with SMTP id 32mr19520819otf.277.1626713962343;
        Mon, 19 Jul 2021 09:59:22 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a137sm3303608oib.0.2021.07.19.09.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 09:59:21 -0700 (PDT)
Date:   Mon, 19 Jul 2021 11:59:19 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        balbi@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org, agross@kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Cosmetic changes - arrange USB
 nodes together in sm8150 dts
Message-ID: <YPWvZzkYm2jrPaIa@yoga>
References: <20210627114616.717101-1-bhupesh.sharma@linaro.org>
 <20210627114616.717101-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210627114616.717101-3-bhupesh.sharma@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 27 Jun 06:46 CDT 2021, Bhupesh Sharma wrote:

> Arrange the two usb controller, hs-phy and
> ss-phy nodes closer in the dts for better readability.
> 

The nodes are supposed to be sorted by address, then alphabetically by
name and lastly when referred to using the &label by the label.

As such the two nodes should live after &usb_2_qmpphy, so I took the
liberty of adjusting your patch to resolve this.

Thanks,
Bjorn

> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 9c931beeb614..163eb430eb1e 100644
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
> -- 
> 2.31.1
> 
