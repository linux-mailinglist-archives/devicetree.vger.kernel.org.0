Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4846CC0C4
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 15:29:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232433AbjC1N3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 09:29:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231238AbjC1N3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 09:29:07 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48EE69EF2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 06:29:04 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a21so5378126ljq.10
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 06:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680010142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AYY5Dr1Z1I9hb8CrXHC9U6DlzlFB2ypBISlRnxmPY3I=;
        b=LSUtWT/AWGybRwLerH/91aATgi4rurZprloou1LoGbGck955eT2qPbsBESu3GGovM1
         Ef82KFLSrfncXdZPa+HO0VHz6/FWeQDOYPZtXTBvOcftd29V/kbshbm89jeOhdgNv72z
         tIBltFQthZyxbP6DnlXHUCQvj7zsXrtmWMZmNso1w1Vz49P7zG/ASg7HQ7r4ifogj/ws
         eRl3o9x5JWVcUPqx5/Wt8dKS6a6guAPmnjP/QFyjmsxcN542w9RqBqdCOFTBbSRGNeMg
         tJ/FR4tWEHOoOd6iME5heju7i64W4GuYfqI6w2KVY5O6997+lc7nztRn7DyHHjQcYCvg
         3g2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680010142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AYY5Dr1Z1I9hb8CrXHC9U6DlzlFB2ypBISlRnxmPY3I=;
        b=tlZPUYiExbNdiGfl9xLCwi8ytUySU3zWj/mePy+zBpcv6hD0Ujm0GP0pxl+op6/p1G
         n3j/Sv2qX92K9S2/oZsXQFQ5a0Y8m16E0f7Gw3gsORv+wBAAmkyk9X43pF6YQycFjUIu
         yT5z27kVx17lxl/shK4/lakKdd32+6aWNZxwbI3+ll5FY1B0kswCw/i4/mRRGb7XcvwC
         pehDl0n3ula1CbgnAjywu70dHclBJGEK2/E9z1lkO1uvVT/d9OLBe0HcpJk2sxliMyqF
         5vV8T16MGJGFHEv4JRKAOzKhL6quMz0LK5uwPwu0z4Tcl/4fi0PA7w/0sgL5dZwPi9it
         yDSg==
X-Gm-Message-State: AAQBX9fmcgqAc/jtKsKDCow/64bzY2080gCvA62btu3S7H9LlsFk4f8u
        fWZJL8dD/3d5/zYjs2VywMeR1Q==
X-Google-Smtp-Source: AKy350YAExXR6RZ2krFV7pgEcgdlDZBlWD13Eq4CYLuYxlMIcsU/t+DkcS1rzXhKdXibAB8k4462cA==
X-Received: by 2002:a2e:9a8e:0:b0:2a0:7d07:edba with SMTP id p14-20020a2e9a8e000000b002a07d07edbamr5228469lji.43.1680010142574;
        Tue, 28 Mar 2023 06:29:02 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e904c000000b00299f0194108sm5049811ljg.31.2023.03.28.06.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 06:29:02 -0700 (PDT)
Message-ID: <76c5b46c-82d6-847c-aaca-7380d310d012@linaro.org>
Date:   Tue, 28 Mar 2023 15:29:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 2/5] ARM: dts: qcom: sdx65: Add support for PCIe PHY
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mani@kernel.org,
        lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
        manivannan.sadhasivam@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <1679036039-27157-1-git-send-email-quic_rohiagar@quicinc.com>
 <1679036039-27157-3-git-send-email-quic_rohiagar@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1679036039-27157-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.03.2023 07:53, Rohit Agarwal wrote:
> Add devicetree support for PCIe PHY used in SDX65 platform. This PHY is
> used by the PCIe EP controller.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx65.dtsi | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
> index 192f9f9..084daf8 100644
> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
> @@ -293,6 +293,37 @@
>  			status = "disabled";
>  		};
>  
> +		pcie_phy: phy@1c06000 {
> +			compatible = "qcom,sdx65-qmp-gen4x2-pcie-phy";
> +			reg = <0x01c06000 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_AUX_PHY_CLK_SRC>,
> +				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>,
> +				 <&gcc GCC_PCIE_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe";
> +
> +			resets = <&gcc GCC_PCIE_PHY_BCR>;
> +			reset-names = "phy";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc PCIE_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		tcsr_mutex: hwlock@1f40000 {
>  			compatible = "qcom,tcsr-mutex";
>  			reg = <0x01f40000 0x40000>;
