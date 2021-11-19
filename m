Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD74E4568BA
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 04:46:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233946AbhKSDtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 22:49:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233575AbhKSDtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 22:49:14 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A8CAC061748
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 19:46:13 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id a23-20020a9d4717000000b0056c15d6d0caso14707582otf.12
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 19:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QDGlhur1LDp0iQ8sP29bfWWG+u0wWLEJ+COS9QVuvVE=;
        b=thIfDa7PhWhV/3oolCrulY9cXjvaOE6S2AhUYeqhI66+jVv5x1bVZHRU945I+1lGis
         EyslYZGHQcnUfPPRo5aVhUAS+lyWt1++6X0LKD4foRZkPeiKE5H2n6ReIcH+9F8qm5mE
         yscn1CImaGeNrEDy8slxCENMvFtuss4PwAvZFXVMhEo0GZqsERFKfNUEpdT/HCpm1W70
         bHwUlU+wvvNF66vtPgM0ThKR7dhXQAw7jcd3OSAZT+sWhGjldFy7nTLAKK5Q9FXPq7oq
         sQb33Js4aMRXpn7sN2dPEyoWlx1lqVcVsKRvpKdCLN3JhHfPQP68nTmq+K/iGVVn36ji
         Mgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QDGlhur1LDp0iQ8sP29bfWWG+u0wWLEJ+COS9QVuvVE=;
        b=6iR6C83No8qUbx1WEXcDBi/+ua8jU/g22Zg7xxhIBmAwYEart2zP6wSlaF1wl6Sx+w
         ONecb+NvltvrNjowRhPJA/QidkjQUJe+OGb2NLVUnJ3arAcHBKWn64BSQlNlPcvH5AlJ
         VfnGeW88Tpf0ZYyPEjz3aSQxD1gPFdZQQxgUH2GwSqTsJNTw1J9lLnISPq0AgtgJ1Ro8
         0jr2FlqMUbaxdy1rv/1K8bshITs7QWJKbfaKwnKukQQM6BvP79tccYr8w4p1CMP6Ru5B
         CaKG+WQmxVUil2s6F+8kuSknuyRmHMwrwTp5qTjBLRIhUpazlpwqSWXy8knm4OxLrl01
         swUw==
X-Gm-Message-State: AOAM5339j96amN2q7aHzSUc4ouBinbWV7CbhLptFUuBd5M2deo94TCTu
        MOxb+krAIJMbieFuCEWM9GN5Sg==
X-Google-Smtp-Source: ABdhPJzOq6kDagn/oW90r+TR0sRyaFL2ocMMx6o4Tc7KUvUsSpFDASk+Hxv7TSkWayCsKUwwK+KPqg==
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr1973300otq.337.1637293571470;
        Thu, 18 Nov 2021 19:46:11 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b22sm432549oib.41.2021.11.18.19.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 19:46:11 -0800 (PST)
Date:   Thu, 18 Nov 2021 21:46:06 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Katherine Perez <kaperez@linux.microsoft.com>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Felipe Balbi <balbi@kernel.org>
Subject: Re: [RESEND PATCH 2/2] arm64: dts: sm8350: fix tlmm base address
Message-ID: <YZcd/lFm8HgQ8SLs@builder.lan>
References: <20211116235045.3748572-1-kaperez@linux.microsoft.com>
 <20211116235045.3748572-3-kaperez@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116235045.3748572-3-kaperez@linux.microsoft.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 16 Nov 17:50 CST 2021, Katherine Perez wrote:

> TLMM controller base address is incorrect and will hang on some platforms.
> Fix by giving the correct address.
> 
> Signed-off-by: Katherine Perez <kaperez@linux.microsoft.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index d134280e2939..624d294612d8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -960,9 +960,9 @@ spmi_bus: spmi@c440000 {
>  			#interrupt-cells = <4>;
>  		};
>  
> -		tlmm: pinctrl@f100000 {
> +		tlmm: pinctrl@f000000 {
>  			compatible = "qcom,sm8350-tlmm";
> -			reg = <0 0x0f100000 0 0x300000>;
> +			reg = <0 0x0f000000 0 0x300000>;

There's a group of register blocks related to TLMM starting at
0x0f000000 and then there's the register block that is relevant to the
OS that starts at 0x0f100000.

Downstream uses the group, while upstream describes only the hardware
block that's relevant to the OS. Unfortunately it seems that the shift
was missed for the UFS and SDC pins as the driver was upstreamed.

So I recently submitted this patch, which I expect would help you:
https://lore.kernel.org/all/20211104170835.1993686-1-bjorn.andersson@linaro.org/

Please let me know if that's not sufficient, or if I'm missed something
in my analysis.

Regards,
Bjorn

>  			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
>  			gpio-controller;
>  			#gpio-cells = <2>;
> -- 
> 2.31.1
> 
