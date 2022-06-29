Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A280E5609D0
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230166AbiF2S4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiF2S4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:56:08 -0400
Received: from relay05.th.seeweb.it (relay05.th.seeweb.it [IPv6:2001:4b7a:2000:18::166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB3C22AE24
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:56:07 -0700 (PDT)
Received: from [192.168.1.101] (abxh53.neoplus.adsl.tpnet.pl [83.9.1.53])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id EF63E3F771;
        Wed, 29 Jun 2022 20:56:05 +0200 (CEST)
Message-ID: <e7a465f3-5e9b-39c3-5a07-fa615ac69b61@somainline.org>
Date:   Wed, 29 Jun 2022 20:56:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sdm630: add device node for the
 modem PAS
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
References: <20220521203520.1513565-1-dmitry.baryshkov@linaro.org>
 <20220521203520.1513565-4-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20220521203520.1513565-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21.05.2022 22:35, Dmitry Baryshkov wrote:
> Add device tree node describing modem device found on the SDM630/SDM660
> devices.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 59 ++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 55de345895e6..25b0067a93af 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -1006,6 +1006,65 @@ data {
>  			};
>  		};
>  
> +		mss_pil: remoteproc@4080000 {
> +			compatible = "qcom,sdm660-mss-pil";
> +			reg = <0x04080000 0x408>, <0x04180000 0x48>;
> +			reg-names = "qdsp6", "rmb";
> +
> +			interrupts-extended =
> +				<&intc GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
> +				<&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
> +				<&modem_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
> +				<&modem_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
> +				<&modem_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
> +				<&modem_smp2p_in 7 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "wdog", "fatal", "ready",
> +					  "handover", "stop-ack",
> +					  "shutdown-ack";
> +
> +			clocks = <&gcc GCC_MSS_CFG_AHB_CLK>,
> +				 <&gcc GCC_BIMC_MSS_Q6_AXI_CLK>,
> +				 <&gcc GCC_BOOT_ROM_AHB_CLK>,
> +				 <&gcc GCC_MSS_GPLL0_DIV_CLK>,
Looks like this should be GPLL0_OUT_MMSSCC instead[1][2], this
clock is not defined upstream for some reason..

[1] https://github.com/sonyxperiadev/kernel/blob/aosp/LA.UM.7.1.r1/arch/arm64/boot/dts/qcom/sdm660.dtsi#L1980
[2] https://github.com/sonyxperiadev/kernel/blob/aosp/LA.UM.7.1.r1/drivers/clk/qcom/gcc-sdm660.c#L1756-L1770

Otherwise this looks good!

Konrad
