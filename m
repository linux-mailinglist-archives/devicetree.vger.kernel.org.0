Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9AF740B448
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 18:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232442AbhINQP5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 12:15:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232400AbhINQP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 12:15:57 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5044C061762
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:14:33 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id v2so19732239oie.6
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Bayy++x+q4ZvPh0XfqtGYK+C1gpsHQlhZj47g4V8IeQ=;
        b=An8f7RFCD2w7aWPhrfYgWH7oUfRSscFDHWB2hOayxWdmgE2vuQZi8tael3xG5oiEll
         MAeXeu6QkjyCEaTO18HrHbmfc22UNkBHglkKJCr4h2EaAlRkdzcLQdLV6eU2JxJsMokx
         vmFWNMXE3vS2rSh7VBbMXATTCgbR/rHQxetoKudb/YxuOgSh8BabqKLNoA1U8seoUJvb
         xJ0GHzBPjYFUVaFTczXLYlh4reIiNZvHMBLU4osF6gZodsSOMv76BlW62cpy1MeqcDMw
         KhV2MOxsIeFHNMHSZ4cS8VhnvhWoMKTw2vwvglJlSkgmLlTCGxtBLURvZMnRHHQhgVFi
         eHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Bayy++x+q4ZvPh0XfqtGYK+C1gpsHQlhZj47g4V8IeQ=;
        b=oNwQFUktELLB9H5nLliI59zkuaZ7xrhU04KgJdOizUIMVkYblIYvTAZgri9puqbMjT
         KHNBLCsfcwVhVSLg6BVPAZkTgdTuUd3Gb337YmVZNqXT7gKKx3UsFCwx8FKUIYiSMytl
         2FZGBi0y7WM7bUvqcKkDwNVMZSEWeLzXUiOYayaYysndclWjDaP0fm/sxG7z+Ld+PJqZ
         m9o1ubxIWuqCSsIgKlP1udS43qCYbPbf4G+puEfB6F1NsDMNtQcHXxSCIbcADXm609nZ
         3IKLnJPcrXQStpfk1xTF4lzogWfh+OMjsjYkT9kaqGYEwY4T/CU+ilu3wj/YyPVUSHLo
         UKsg==
X-Gm-Message-State: AOAM531+QaTgITMHY52aiK87jKjcNZ918cAxOc9F/ma3eEA0xKyTHmgA
        dOXWw6sc1XtzEuuYT88C//qxnQ==
X-Google-Smtp-Source: ABdhPJycW74bahLCuLxw+NBWjUNIBq41E4aq+9jVnngqziSSjBuWG+6vsk4fiI85MbLzijc5BJ9qfA==
X-Received: by 2002:aca:220a:: with SMTP id b10mr2024338oic.101.1631636072753;
        Tue, 14 Sep 2021 09:14:32 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id y138sm2523722oie.22.2021.09.14.09.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:14:32 -0700 (PDT)
Date:   Tue, 14 Sep 2021 11:14:30 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Hector Martin <marcan@marcan.st>,
        Vinod Koul <vkoul@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 16/18] arm64: dts: qcom: sm6350: Add iommus property
 to USB1
Message-ID: <YUDKZh5bEiXUspFV@builder.lan>
References: <20210828131814.29589-1-konrad.dybcio@somainline.org>
 <20210828131814.29589-16-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210828131814.29589-16-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 28 Aug 08:18 CDT 2021, Konrad Dybcio wrote:

> This is required for us to be able to access the associated registers, which
> are (on at least some devices) gated by default.
> 

Please either merge this with the patch that introduces the SMMU (which
I presume causes this "issue") or introduce the SMMU earlier in the
series.

Regards,
Bjorn

> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index a3a1f0e63ace..95e69d9f8657 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -584,6 +584,7 @@ usb_1_dwc3: dwc3@a600000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a600000 0 0xcd00>;
>  				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0x540 0x0>;
>  				snps,dis_u2_susphy_quirk;
>  				snps,dis_enblslpm_quirk;
>  				snps,has-lpm-erratum;
> -- 
> 2.33.0
> 
