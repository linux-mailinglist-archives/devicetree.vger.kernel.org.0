Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D11AC4FB4F2
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 09:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245493AbiDKHfK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 03:35:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243846AbiDKHfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 03:35:10 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 945743D4A9
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 00:32:56 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id mp16-20020a17090b191000b001cb5efbcab6so5311651pjb.4
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 00:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6Bcipwo2t195QVJFmmzu71Z0FtdQvx0x9uvTartKReE=;
        b=xz0kRGucxrAsw2ENDOBT3/CQ9WGjLIBdTL9q2ce5qSASw2pV2bZWB6F+yDGWkvLf1D
         YxnUb9YnUe3wn7BgQ0ZOs6vfP+ItQdzWbEoFt2nTmyjOi2f5EZx9rJGN94j/ZDnW7zVd
         9pnif/5B0u6JiEal2wcP7UwObcgwinWIvVCjS9xDCU0TV3lbs4LLNddQQPgUsQ4DzFfP
         pXpo0E+nIsC1ZyDewoFR8lVwiGCmGW2zOLmOlaoBMv9TUMGGNHOSBr05gOSU3EeECvDB
         MhJhcKTUGBmoQ0gCOWPkr7M4ZJsmq22zEZ+6KKcDnYoASH4qjp2Te1RbUmyPjBq4PcF5
         Rx8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6Bcipwo2t195QVJFmmzu71Z0FtdQvx0x9uvTartKReE=;
        b=LCbgx55Bcgb8IVhczMdoaoUva+AJAWIGKl5NyAhsC4kde+7vXbeI5Hh28Tx1gelYTR
         4gi9WwULp65AO8ag5JrgWDo3F1bNp4hg1dVLvUk60dffQRR97N458j13cktCh2+CQ6qz
         cLX7Tt+zPGs49ofFMGVQ45nBm9L/5TzlZcZMZbjbUYEU+Z4JuYRuJHyVCLZMBFSFHh2A
         GfEILp3KmEXHBsgXIgYKez/hW5G6ja0urVLE6d4voLXIMYhUT6fQPnKFC5orcPhtxh/d
         Cs/G3syxc2huMtnnqTTw1vMAQhXl6tHI/mbKGZZTWPnd28mn75g+IqiIrgkPa1d54mOj
         C5Dw==
X-Gm-Message-State: AOAM530O6cuSPdWK6zd4edKarW28IdnBUqS6o1qjLSPftZO7q+b/9Cla
        WZKZRaNZNim7YGcBUoBIOwlu
X-Google-Smtp-Source: ABdhPJymDSL0wYm7Gy/Y8s9Ov9nZtnJdrl315iiyAsoeZ3s3YHNZuGUWiSY5ZkcV20aurQGIxbOq8A==
X-Received: by 2002:a17:90b:4b0e:b0:1c6:f499:1cc9 with SMTP id lx14-20020a17090b4b0e00b001c6f4991cc9mr35475405pjb.133.1649662376064;
        Mon, 11 Apr 2022 00:32:56 -0700 (PDT)
Received: from thinkpad ([117.217.182.106])
        by smtp.gmail.com with ESMTPSA id x6-20020a056a000bc600b005058a09f3aesm10186371pfu.147.2022.04.11.00.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 00:32:55 -0700 (PDT)
Date:   Mon, 11 Apr 2022 13:02:46 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, ulf.hansson@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 5/7] ARM: dts: qcom: sdx65: Enable ARM SMMU
Message-ID: <20220411073246.GD24975@thinkpad>
References: <1649660143-22400-1-git-send-email-quic_rohiagar@quicinc.com>
 <1649660143-22400-6-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1649660143-22400-6-git-send-email-quic_rohiagar@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 11, 2022 at 12:25:41PM +0530, Rohit Agarwal wrote:
> Add a node for the ARM SMMU found in the SDX65.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  arch/arm/boot/dts/qcom-sdx65.dtsi | 40 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
> index 632ac78..2481769 100644
> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
> @@ -181,6 +181,46 @@
>  			status = "disabled";
>  		};
>  
> +		apps_smmu: iommu@15000000 {

Please sort the nodes in ascending order.

Thanks,
Mani

> +			compatible = "qcom,sdx65-smmu-500", "arm,mmu-500";
> +			reg = <0x15000000 0x40000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +			interrupts =	<GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 299 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 303 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
>  		pdc: interrupt-controller@b210000 {
>  			compatible = "qcom,sdx65-pdc", "qcom,pdc";
>  			reg = <0xb210000 0x10000>;
> -- 
> 2.7.4
> 
