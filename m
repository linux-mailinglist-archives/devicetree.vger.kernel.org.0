Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D3237498DD
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 12:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231909AbjGFKBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 06:01:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbjGFKBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 06:01:44 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7546A19B7
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 03:01:43 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4faaaa476a9so636801e87.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 03:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688637702; x=1691229702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XT60ydGbek1AFjPkAEjevV8MYxSepx4EylzL/gQ0j8Q=;
        b=teFm+rkwOF4Fscx6FU5McwhsHg+3oRElnEWE9vJpbTvsJ92FFxKspLKWyi3SnfdOyn
         Q77e4UPLlwWG95SIw0plNmt/BGzuYK5MKz3mLAGUnODGEvu7xhULrbzoeA9eF/5cLAqs
         LWvIGAVwI+C0wG5w0SruZQ7MavLr6QszRrzLlgAnKfnAzO1GP718EIK602Rjhm9D+tgC
         I2pinO5tdVG7BX0tBYR+q/7Dbd9oEYQJ3QrAL6urFjqP+S05NzKckDgD9a0h1F8nSp7V
         1vYaHT6kkSEFWuvPHAAkC/gGZLot4KOpth2/XZRS0YjWgGcWvOLXdX4c08n3eAEdFWVv
         HNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688637702; x=1691229702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XT60ydGbek1AFjPkAEjevV8MYxSepx4EylzL/gQ0j8Q=;
        b=XPgGKjZKzO9n1kwdw5fXHRrgXBpZuou52ILRPzT6B4TolAVYpxqSzXHqRwklHqaooV
         xcpAocUR2svXjUGSx5Ig5MATskxHBnKFx9zNXcrhRT9M9Vul7B1T0nWkA9TtMFDYmkhS
         Aa9qH2krRolIcMugJhaAxXA/9ptQTjuvw1c0iRKNye3qoZK4ps9fWnytXSGbX8jYl6NJ
         j356VqkgTba3pUOIqY5rsaUE4uK3LH9G57LLrzPJiRiF6mPGcPsYexWBqCg4OYdfM44f
         /jK3wRWEj/yk4EIjTpSucYYrwwaF7ZxRB42roGxc4ke/4JLsx/X/qqD2CdIXlPLy/hrM
         wJuQ==
X-Gm-Message-State: ABy/qLaKRwgZRUETWctRHCGbhcadl43J4Yn6oEJlmar9it+CnQlzsPla
        Drni9YLg9rucQFxUoNg8WqGTHw==
X-Google-Smtp-Source: APBJJlHtbIbK40+kpbF5561nZK98zdUI+BAnFKMpIjZfYgqBtLSrABL4QxB7dMwedNHt3vfsOGhFsA==
X-Received: by 2002:a19:2d4e:0:b0:4f8:7734:8dd0 with SMTP id t14-20020a192d4e000000b004f877348dd0mr1058895lft.2.1688637701624;
        Thu, 06 Jul 2023 03:01:41 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id y2-20020ac255a2000000b004fb88fffd19sm188136lfg.146.2023.07.06.03.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 03:01:41 -0700 (PDT)
Message-ID: <e31564e1-31cf-2cda-df6f-6210e6a1c1fc@linaro.org>
Date:   Thu, 6 Jul 2023 12:01:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 5/6] arm64: dts: qcom: sa8775p: Add pcie0 and pcie1
 nodes
Content-Language: en-US
To:     Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mani@kernel.org
Cc:     quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5.07.2023 10:17, Mrinmay Sarkar wrote:
> Add pcie dtsi nodes for two controllers found on sa8775p platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---[...]

> +	pcie1_phy: phy@1c14000 {
> +		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
> +		reg = <0x0 0x1c14000 0x0 0x4000>;
> +
> +		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +			 <&gcc GCC_PCIE_CLKREF_EN>,
> +			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
> +			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPE_CLK>,
> +			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
> +
> +		clock-names = "aux", "cfg_ahb", "ref", "rchng", "phy_aux",
> +						"pipe", "pipediv2";
> +
> +		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
> +		assigned-clock-rates = <100000000>;
> +
> +		power-domains = <&gcc PCIE_1_GDSC>;
Please check if it's the correct power domain. I've heard that the PCIe PHY
may be hooked up to something else but have no way of confirming myself.

Konrad
> +
> +		resets = <&gcc GCC_PCIE_1_PHY_BCR>;
> +		reset-names = "phy";
> +
> +		#clock-cells = <0>;
> +		clock-output-names = "pcie_1_pipe_clk";
> +
> +		#phy-cells = <0>;
> +
> +		status = "disabled";
> +
> +	};
>  };
