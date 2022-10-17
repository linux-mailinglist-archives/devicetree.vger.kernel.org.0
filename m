Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 636B9601724
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 21:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230283AbiJQTOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 15:14:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230165AbiJQTO3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 15:14:29 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [5.144.164.162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7443415711
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:14:24 -0700 (PDT)
Received: from cp.tophost.it (vm1054.cs12.seeweb.it [217.64.195.253])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 3220A1F556;
        Mon, 17 Oct 2022 21:14:22 +0200 (CEST)
MIME-Version: 1.0
Date:   Mon, 17 Oct 2022 20:59:49 +0200
From:   konrad.dybcio@somainline.org
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3] arm64: dts: qcom: pmi8998: add rradc node
In-Reply-To: <20221017190902.2282899-1-caleb.connolly@linaro.org>
References: <20221017190902.2282899-1-caleb.connolly@linaro.org>
User-Agent: Roundcube Webmail/1.4.6
Message-ID: <7ac1f02fed4aae6545df62a2c39570e5@somainline.org>
X-Sender: konrad.dybcio@somainline.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-10-17 21:09, Caleb Connolly wrote:
> Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.
> 
> The RRADC reports PMIC die and skin temperatures, as well as
> battery/charger thermals. It also reports USB and DC charger voltage 
> and
> current measurements.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> This patch introduces a new dtbs_check warning which will be fixed by
> https://lore.kernel.org/linux-arm-msm/20221017185105.2279129-1-caleb.connolly@linaro.org/
> 
> V2:
> https://lore.kernel.org/linux-arm-msm/20221017185609.2280067-1-caleb.connolly@linaro.org/
> Changes since v2:
>  * Remove 'status = "okay";'
> 
> V1:
> https://lore.kernel.org/linux-arm-msm/20221016180330.1912214-1-caleb.connolly@linaro.org/
> Changes since v1:
>  * Change node name from adc@ to rradc@, see linked patch
>  * Enable the RRADC by default, rather than per-device
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Konrad
>  arch/arm64/boot/dts/qcom/pmi8998.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> index 6d3d212560c1..08c9ec2cafa6 100644
> --- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> @@ -18,6 +18,12 @@ pmi8998_gpio: gpios@c000 {
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
>  		};
> +
> +		pmi8998_rradc: rradc@4500 {
> +			compatible = "qcom,pmi8998-rradc";
> +			reg = <0x4500>;
> +			#io-channel-cells = <1>;
> +		};
>  	};
> 
>  	pmi8998_lsid1: pmic@3 {
