Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 927A9527228
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233450AbiENOqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:46:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233427AbiENOqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:46:23 -0400
Received: from relay03.th.seeweb.it (relay03.th.seeweb.it [IPv6:2001:4b7a:2000:18::164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F8C5AA
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:46:21 -0700 (PDT)
Received: from [192.168.1.113] (abxh168.neoplus.adsl.tpnet.pl [83.9.1.168])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id C481320558;
        Sat, 14 May 2022 16:46:14 +0200 (CEST)
Message-ID: <4f54f28c-e321-5fef-75a7-13362d7df001@somainline.org>
Date:   Sat, 14 May 2022 16:46:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.9.0
Subject: Re: [PATCH v4 05/12] arm64: dts: qcom: sdm630: rename qusb2phy to
 qusb2phy0
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
 <20220514141041.3158521-6-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20220514141041.3158521-6-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 14/05/2022 16:10, Dmitry Baryshkov wrote:
> In preparation to adding second USB host/PHY pair, change first USB
> PHY's label to qusb2phy0.
>
> Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>


Konrad

>   arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi | 2 +-
>   arch/arm64/boot/dts/qcom/sdm630.dtsi                  | 4 ++--
>   arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts   | 2 +-
>   3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
> index 42af1fade461..00baacf28c63 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
> @@ -224,7 +224,7 @@ &pon_resin {
>   	linux,code = <KEY_VOLUMEUP>;
>   };
>   
> -&qusb2phy {
> +&qusb2phy0 {
>   	status = "okay";
>   
>   	vdd-supply = <&vreg_l1b_0p925>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 5be0ec06ed86..eb8504e5735c 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -1250,13 +1250,13 @@ usb3_dwc3: usb@a800000 {
>   				 * haven't seen any devices making use of it.
>   				 */
>   				maximum-speed = "high-speed";
> -				phys = <&qusb2phy>;
> +				phys = <&qusb2phy0>;
>   				phy-names = "usb2-phy";
>   				snps,hird-threshold = /bits/ 8 <0>;
>   			};
>   		};
>   
> -		qusb2phy: phy@c012000 {
> +		qusb2phy0: phy@c012000 {
>   			compatible = "qcom,sdm660-qusb2-phy";
>   			reg = <0x0c012000 0x180>;
>   			#phy-cells = <0>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
> index dcbaacf18f66..9280c1f0c334 100644
> --- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
> @@ -103,7 +103,7 @@ &pon_resin {
>   	linux,code = <KEY_VOLUMEDOWN>;
>   };
>   
> -&qusb2phy {
> +&qusb2phy0 {
>   	status = "okay";
>   
>   	vdd-supply = <&vreg_l1b_0p925>;
