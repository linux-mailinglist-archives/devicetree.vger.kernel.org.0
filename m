Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5336A3DF5
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 10:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbjB0JMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 04:12:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbjB0JLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 04:11:53 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4028C23DBB
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 01:03:56 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id g18so3511539ljl.3
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 01:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677488625;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5cnbxDoA2z8MMgKZ1eEkxvfArrqRjqqI/vz4psVOcA=;
        b=O8xluWvcpiRHkyN3GFrKMCUf46eDUrjo/oGLLib8wBOLX590DS7hXOP3emhn5IR2EO
         3yQXr35a0493hUaDSJwkLs/1PsFUIz10ldLYDr0Dvw/rEGpI+czlq5HeHAFmzTiIWve2
         9/8rsmcU/8vNam6TeBf6dR2exaa4HS5zfehvU1X8ZX11XboG7rqoHCtW31fJ86QFV6Qk
         iqamwTjLrZsjd6KJ4xY5hXbXbqAMu6IWTAf5yHbWcGQ7XxURzrVM/OxoUSXgoqQZKO+f
         r7Fj7bK2s7O/pyFE3zcP6l6LHypX7bWcJ3ItFW+jUs7qqwbsja2rRZZ7AsfMZ6KR+aRx
         zS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677488625;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B5cnbxDoA2z8MMgKZ1eEkxvfArrqRjqqI/vz4psVOcA=;
        b=EqBlHDUe3gZqpZwY9XUcpam32iRjc/kfyDaYTjEnlI3PlAkPCvVBAe24V+DpdAPs00
         zpV8BKuvKFU4emEXDUnfawko0jW4Q5O8XR7VDgaGVucNIRxFUnemTz5dTwg5/qbzfaD4
         XQS1UMKH49j8TxH93ETAd1pMDAucsnf4nVQ/4KvL5GPPcPPQdbN49ZyQ5i2q1GKcwsSQ
         5J14U26EFW2UkomMOxFI9He8FWvp23GfA+oDzcLUaOqCpDXsoL0CW2C8Z0jY0ea32ju4
         uvHFeIbBSyXl9nW13zGMlP9SYonmiEthxaK8EK6s2FbsXict6dVX1luWqcC0lvAMR2ry
         1Skw==
X-Gm-Message-State: AO0yUKVXTGPGDCSZxA6iSDTz7DQc8dxtPPRsOLwb65unT/xm/ts0wDVV
        JL2POuMpfiCdaHKK1VfGqG9b2h5G337jYTUo
X-Google-Smtp-Source: AK7set+uDR44/fHZYQGtb1Be/hr0MUEZ7D+9d8xERTULeFzAjJTqVdI2RwfOqTEFNKv2uNDRqSPsPg==
X-Received: by 2002:a05:6512:684:b0:4db:971:82cd with SMTP id t4-20020a056512068400b004db097182cdmr2258950lfe.17.1677487562589;
        Mon, 27 Feb 2023 00:46:02 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id q10-20020ac25fca000000b004dafde0e7b7sm827471lfg.279.2023.02.27.00.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 00:46:02 -0800 (PST)
Message-ID: <cb50e3a9-0187-5894-cb0f-de477713922b@linaro.org>
Date:   Mon, 27 Feb 2023 09:46:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 07/13] ARM: dts: qcom: sdx55: Add support for PCIe RC
 controller
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
 <20230224105906.16540-8-manivannan.sadhasivam@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230224105906.16540-8-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 24.02.2023 11:59, Manivannan Sadhasivam wrote:
> The PCIe controller in SDX55 can act as the RC controller also. Let's
> add support for it.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55.dtsi | 82 +++++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index a1f4a7b0904a..b411c4ae34c3 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -303,6 +303,88 @@ qpic_nand: nand-controller@1b30000 {
>  			status = "disabled";
>  		};
>  
> +		pcie_rc: pcie@1c00000 {
> +			compatible = "qcom,pcie-sdx55";
> +			reg = <0x01c00000 0x3000>,
> +			      <0x40000000 0xf1d>,
> +			      <0x40000f20 0xc8>,
> +			      <0x40001000 0x1000>,
> +			      <0x40100000 0x100000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x40200000 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x40300000 0x0 0x3fd00000>;
> +
> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "msi8";
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 141 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 0 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 0 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 0 0 144 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			clocks = <&gcc GCC_PCIE_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_AUX_CLK>,
> +				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_PCIE_SLEEP_CLK>;
> +			clock-names = "pipe",
> +				      "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "sleep";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			iommus = <&apps_smmu 0x0200 0x0f>;
> +			iommu-map = <0x0   &apps_smmu 0x0200 0x1>,
> +				    <0x100 &apps_smmu 0x0201 0x1>,
> +				    <0x200 &apps_smmu 0x0202 0x1>,
> +				    <0x300 &apps_smmu 0x0203 0x1>,
> +				    <0x400 &apps_smmu 0x0204 0x1>;
> +
> +			resets = <&gcc GCC_PCIE_BCR>;
> +			reset-names = "pci";
> +
> +			power-domains = <&gcc PCIE_GDSC>;
> +
> +			phys = <&pcie_lane>;
> +			phy-names = "pciephy";
> +
> +			status = "disabled";
> +		};
> +
>  		pcie_ep: pcie-ep@1c00000 {
>  			compatible = "qcom,sdx55-pcie-ep";
>  			reg = <0x01c00000 0x3000>,
