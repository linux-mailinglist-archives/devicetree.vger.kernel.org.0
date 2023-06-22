Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0383F73A230
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 15:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjFVNvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 09:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbjFVNvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 09:51:09 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A7D81994
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 06:51:07 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b46cad2fd9so79916771fa.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 06:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687441866; x=1690033866;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IeSbPg4ZIVu85Aig3buKlFPPdDBd8bIr1LgjNoNCfVk=;
        b=cltVl1bLV6D0wwr/IhxvmEkAVZ0UkptHZRIIhZrDKqR88upROqWz0lTQy1FY+SFwl6
         Z7JJvbeBn84dbj6E/gbdBj+sivPejDW9OeRikMtenMWMOpFSP0WCiBFjjczDLzfysFBC
         q8c8++3BYSuqz5IwxOOnMac6WTn97wNcPYvggFLv3iDVB0/tjbcR2pBAIxIhAxZCRd1s
         +0Caf70RkQUzUSj0mPxsIQNUlfdVpXRcV3a2HzT0XF+AuC5+aD6LmO4wSBnvzrFW9dE/
         6DYWGWgHUNc+l6Sd8hzp87i1Qsb0x/w7WxNlb6eQzmIMyJfX3cdnbTi9JNF13SUPo0wm
         eu6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687441866; x=1690033866;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IeSbPg4ZIVu85Aig3buKlFPPdDBd8bIr1LgjNoNCfVk=;
        b=WcUY08jbRAze+26w1cwsct1dXx+kKDHrZZg8xIvnkafj9MVo84IF55Ic+p6l9I/hFT
         bKh5r1+7kBo6rsnMdB8Q8EFkzi7kWvGfLseVSYzVbdfe79a2bw9WzHCI/4XANcv2h0nc
         9W9NB2i5Y8zzQ/vWEEC8MvbQqirmtvEfz0SY1r3Busiy0+txdapVsLw282BEFOjEYYx1
         vsfIEByvont+kVyTsE/4p8NW2TfEFahnfNbm4JlpdDs9D7Vw0GgmkOaP8Mvk0to8f/ii
         nFWQrJ4a1LFXu3asEgq36DlxTcPXJc01kt8adK0637WqTU1ntfI3PNgFllZs6/jqLzmP
         N9Zg==
X-Gm-Message-State: AC+VfDzNR1ZhhNZUpUim0NKZNEk6qO6j5xm2RyonZ1PSW75Fo8q9201u
        qijp6khpjKf88nkIl7v9iZHG
X-Google-Smtp-Source: ACHHUZ7JOp4XzRU7Tu08nNDLkjzkmR9cW6tj2MYtZ4uxvW09KgxaFEH4yAsowrkNCrMvjaKqyOViWA==
X-Received: by 2002:a05:6512:3d90:b0:4f8:58ae:8ea8 with SMTP id k16-20020a0565123d9000b004f858ae8ea8mr11196655lfv.58.1687441865729;
        Thu, 22 Jun 2023 06:51:05 -0700 (PDT)
Received: from thinkpad ([117.217.178.216])
        by smtp.gmail.com with ESMTPSA id q16-20020aa7d450000000b0051a409e752asm4034616edr.17.2023.06.22.06.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 06:51:05 -0700 (PDT)
Date:   Thu, 22 Jun 2023 19:20:54 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8350: fix BAM DMA crash and reboot
Message-ID: <20230622135054.GA69564@thinkpad>
References: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 21, 2023 at 04:36:27PM +0200, Krzysztof Kozlowski wrote:
> SM8350 HDK and MTP boards were silently dying and rebooting during BAM
> DMA probe:
> 
>   [    1.574304] vreg_bob: Setting 3008000-3960000uV
>   [    1.576918] bam-dFormat: Log Type - Time(microsec) - Message -
>   Optional Info
>   Log Type: B - Since Boot(Power On Reset),  D - Delta,  S - Statistic
>   S - QC_IMAGE_VERSION_STRING=BOOT.MXF.1.0-00637.1-LAHAINA-1
>   S - IMAGE_VARIANT_STRING=SocLahainaLAA
>   S - OEM_IMAGE_VERSION_STRING=crm-ubuntu77
>   S - Boot Interface: UFS
> 
> It seems that BAM DMA is locally controller (not by firmware) and
> requires proper initialization by the driver prior to use, at least on
> HDK8350 and MTP8350, but probably on all boards.
> 
> Fixes: f1040a7fe8f0 ("arm64: dts: qcom: sm8350: Add Crypto Engine support")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> 
> ---
> 
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 88ef478cb5cc..b382ce66387e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -1741,7 +1741,6 @@ cryptobam: dma-controller@1dc4000 {
>  			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>  			#dma-cells = <1>;
>  			qcom,ee = <0>;
> -			qcom,controlled-remotely;
>  			iommus = <&apps_smmu 0x594 0x0011>,
>  				 <&apps_smmu 0x596 0x0011>;
>  		};
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்
