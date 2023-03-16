Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5D86BC5DC
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 06:52:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjCPFwT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 01:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbjCPFwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 01:52:17 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1137515CB0
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 22:52:14 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id y2so610562pjg.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 22:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678945933;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eebjIeSF3tSBSkrtu9vrZZuRaWiAHuMSV9kH5TvPW6U=;
        b=TbsZIG1+gvGplBzTyD7cwls8f8sm+eoQeZ2mI6mvb82YrnFUW7uMQo6pSyePOSHN+S
         Jn+BuiAnmxsLvKds/jVVfxMYrj3j1pueHaxmBwCLeLDFfQelEp0gkKAJ4MVRalDvr2+p
         ktUeONPE53oRKKtLgaQazsJFOWGLoA0bhqDedW547KAJYDB3FQPOpZXS3TYQmxyDe9hZ
         91pHvZleThoYqOZp7QF3eaZA5tQDfR5BojOhjUtRESiw1cguF1k/Fz/ZcHFzOB7tSJIP
         26m+IKBFWWvmeSyg2jO02lX+9rH+n7CKvsU4sHdnZlZPILoRrNU5wa/e1OalqxBF9wGx
         NufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678945933;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eebjIeSF3tSBSkrtu9vrZZuRaWiAHuMSV9kH5TvPW6U=;
        b=FH3SuWsL6jedLBz5OP7VJeijnoT7ScBnSH0+w7aHP6TwXJiQJ2JKGo8qwdtIE9VrbW
         k1OUThvfHPGLfu1ixdmLhCegIAa7Xrx/E/sf4dcsmQMXa1YvEVYSEY1LRIFSc+1CW4jS
         dSG+XvR2+OPC+fFYjf1u3YCNuyfp326jDA/fSSoK1eeK4ugyeiJAvngnSqF3U7s7mhtM
         Vxs8w2SrJR0dP+gA3V0S7Px8wfjVedLorA4ocavOlRH7RhDhsoo21C7WUmFNE7achpGG
         DmSZ5y4x55oDEVGGvZsn71+ZT1gLI4sqwe5NTyBn4ZaDhorcYNM1VY9pyZZuGZOYIvg3
         e86w==
X-Gm-Message-State: AO0yUKW6nNiaGCQEf0aadAZ2E1qvE2RQAyNv8WJDaPOB96cuHP6zPPc9
        eYoAsTrPlD4lTIMukxX83QlZ
X-Google-Smtp-Source: AK7set/eNrUKRwKD3v0yvfQDBHe2g1yvMJBTgUUfvvldyX7ByYdlFiGfYj1AcaCi0eMOCi0OIuX0NQ==
X-Received: by 2002:a17:903:2288:b0:1a0:742f:75cc with SMTP id b8-20020a170903228800b001a0742f75ccmr2708450plh.20.1678945933315;
        Wed, 15 Mar 2023 22:52:13 -0700 (PDT)
Received: from thinkpad ([117.207.30.24])
        by smtp.gmail.com with ESMTPSA id d10-20020a170902854a00b001a05bc70e97sm4545002plo.189.2023.03.15.22.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 22:52:12 -0700 (PDT)
Date:   Thu, 16 Mar 2023 11:22:06 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: Remove "iommus" property from PCIe
 nodes
Message-ID: <20230316055206.GA4386@thinkpad>
References: <20230308075648.134119-1-manivannan.sadhasivam@linaro.org>
 <20230316023155.avkvmqrsrys22lge@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316023155.avkvmqrsrys22lge@ripper>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 15, 2023 at 07:31:55PM -0700, Bjorn Andersson wrote:
> On Wed, Mar 08, 2023 at 01:26:48PM +0530, Manivannan Sadhasivam wrote:
> > Currently, most of the Qualcomm SoCs specify both "iommus" and "iommu-map"
> > properties for the PCIe nodes. First one passes the SMR mask to the iommu
> > driver and the latter specifies the SID for each PCIe device.
> > 
> > But with "iommus" property, the PCIe controller will be added to the
> > iommu group along with the devices. This makes no sense because the
> > controller will not initiate any DMA transaction on its own. And moreover,
> > it is not strictly required to pass the SMR mask to the iommu driver. If
> > the "iommus" property is not present, then the default mask of "0" would be
> > used which should work for all PCIe devices.
> > 
> > On the other side, if the SMR mask specified doesn't match the one expected
> > by the hypervisor, then all the PCIe transactions will end up triggering
> > "Unidentified Stream Fault" by the SMMU.
> > 
> > So to get rid of these hassles and also prohibit PCIe controllers from
> > adding to the iommu group, let's remove the "iommus" property from PCIe
> > nodes.
> > 
> > Reported-by: Rob Herring <robh@kernel.org>
> > Link: https://lore.kernel.org/linux-arm-msm/20230227195535.GA749409-robh@kernel.org
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> 

I believe you are waiting for me to respin this patch on top of -next?

Thanks,
Mani

> > ---
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 --
> >  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 --
> >  arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 --
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 ---
> >  arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 --
> >  arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 --
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 --
> >  7 files changed, 15 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 8f4ab6bd2886..9f7269029a02 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -2133,8 +2133,6 @@ pcie1: pci@1c08000 {
> >  
> >  			dma-coherent;
> >  
> > -			iommus = <&apps_smmu 0x1c80 0x1>;
> > -
> >  			iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
> >  				    <0x100 &apps_smmu 0x1c81 0x1>;
> >  
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > index 479859bd8ab3..5f110b0062d9 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > @@ -2319,7 +2319,6 @@ pcie0: pci@1c00000 {
> >  				      "slave_q2a",
> >  				      "tbu";
> >  
> > -			iommus = <&apps_smmu 0x1c10 0xf>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c10 0x1>,
> >  				    <0x100 &apps_smmu 0x1c11 0x1>,
> >  				    <0x200 &apps_smmu 0x1c12 0x1>,
> > @@ -2429,7 +2428,6 @@ pcie1: pci@1c08000 {
> >  			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
> >  			assigned-clock-rates = <19200000>;
> >  
> > -			iommus = <&apps_smmu 0x1c00 0xf>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> >  				    <0x100 &apps_smmu 0x1c01 0x1>,
> >  				    <0x200 &apps_smmu 0x1c02 0x1>,
> > diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > index 13e0ce828606..6a383e918329 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> > @@ -1826,7 +1826,6 @@ pcie0: pci@1c00000 {
> >  				      "slave_q2a",
> >  				      "tbu";
> >  
> > -			iommus = <&apps_smmu 0x1d80 0x3f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1d80 0x1>,
> >  				    <0x100 &apps_smmu 0x1d81 0x1>;
> >  
> > @@ -1925,7 +1924,6 @@ pcie1: pci@1c08000 {
> >  			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
> >  			assigned-clock-rates = <19200000>;
> >  
> > -			iommus = <&apps_smmu 0x1e00 0x3f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1e00 0x1>,
> >  				    <0x100 &apps_smmu 0x1e01 0x1>;
> >  
> > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > index 2f0e460acccd..c7682fda9d8c 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > @@ -1871,7 +1871,6 @@ pcie0: pci@1c00000 {
> >  				      "tbu",
> >  				      "ddrss_sf_tbu";
> >  
> > -			iommus = <&apps_smmu 0x1c00 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> >  				    <0x100 &apps_smmu 0x1c01 0x1>;
> >  
> > @@ -1977,7 +1976,6 @@ pcie1: pci@1c08000 {
> >  			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
> >  			assigned-clock-rates = <19200000>;
> >  
> > -			iommus = <&apps_smmu 0x1c80 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c80 0x1>,
> >  				    <0x100 &apps_smmu 0x1c81 0x1>;
> >  
> > @@ -2085,7 +2083,6 @@ pcie2: pci@1c10000 {
> >  			assigned-clocks = <&gcc GCC_PCIE_2_AUX_CLK>;
> >  			assigned-clock-rates = <19200000>;
> >  
> > -			iommus = <&apps_smmu 0x1d00 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1d00 0x1>,
> >  				    <0x100 &apps_smmu 0x1d01 0x1>;
> >  
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > index 1c97e28da6ad..365b9d773b5c 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> > @@ -1526,7 +1526,6 @@ pcie0: pci@1c00000 {
> >  				      "aggre1",
> >  				      "aggre0";
> >  
> > -			iommus = <&apps_smmu 0x1c00 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> >  				    <0x100 &apps_smmu 0x1c01 0x1>;
> >  
> > @@ -1610,7 +1609,6 @@ pcie1: pci@1c08000 {
> >  				      "ddrss_sf_tbu",
> >  				      "aggre1";
> >  
> > -			iommus = <&apps_smmu 0x1c80 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c80 0x1>,
> >  				    <0x100 &apps_smmu 0x1c81 0x1>;
> >  
> > diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > index 1a744a33bcf4..e3201b1b07a5 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> > @@ -1790,7 +1790,6 @@ pcie0: pci@1c00000 {
> >  				      "aggre0",
> >  				      "aggre1";
> >  
> > -			iommus = <&apps_smmu 0x1c00 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> >  				    <0x100 &apps_smmu 0x1c01 0x1>;
> >  
> > @@ -1904,7 +1903,6 @@ pcie1: pci@1c08000 {
> >  				      "ddrss_sf_tbu",
> >  				      "aggre1";
> >  
> > -			iommus = <&apps_smmu 0x1c80 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1c80 0x1>,
> >  				    <0x100 &apps_smmu 0x1c81 0x1>;
> >  
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > index 25f51245fe9b..6edb3acb91ef 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -1692,7 +1692,6 @@ pcie0: pci@1c00000 {
> >  			interconnect-names = "pcie-mem";
> >  			interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>;
> >  
> > -			iommus = <&apps_smmu 0x1400 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1400 0x1>,
> >  				    <0x100 &apps_smmu 0x1401 0x1>;
> >  
> > @@ -1796,7 +1795,6 @@ pcie1: pci@1c08000 {
> >  			interconnect-names = "pcie-mem";
> >  			interconnects = <&pcie_noc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>;
> >  
> > -			iommus = <&apps_smmu 0x1480 0x7f>;
> >  			iommu-map = <0x0   &apps_smmu 0x1480 0x1>,
> >  				    <0x100 &apps_smmu 0x1481 0x1>;
> >  
> > -- 
> > 2.25.1
> > 

-- 
மணிவண்ணன் சதாசிவம்
