Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7C9E5F8696
	for <lists+devicetree@lfdr.de>; Sat,  8 Oct 2022 20:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbiJHS1N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Oct 2022 14:27:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230444AbiJHS1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Oct 2022 14:27:12 -0400
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [5.144.164.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3C1D37F95
        for <devicetree@vger.kernel.org>; Sat,  8 Oct 2022 11:27:11 -0700 (PDT)
Received: from SoMainline.org (94-209-172-39.cable.dynamic.v4.ziggo.nl [94.209.172.39])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id C36BD20078;
        Sat,  8 Oct 2022 20:27:09 +0200 (CEST)
Date:   Sat, 8 Oct 2022 20:27:07 +0200
From:   Marijn Suijten <marijn.suijten@somainline.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        jamipkettunen@somainline.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8250-edo: Add NXP PN553 NFC
Message-ID: <20221008182707.7jahqbp3fvudhp7f@SoMainline.org>
References: <20221008181714.253634-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221008181714.253634-1-konrad.dybcio@somainline.org>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-10-08 20:17:13, Konrad Dybcio wrote:
> Add a node for NXP PN553 NFC, using the nxp-nci driver.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

[On Sony Xperia 5 II, pdx206]
Tested-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

> ---
> Changes since v1:
> - dropped useless label
> - use generic node name

Thanks!

> 
>  arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
> index f7d7f502f48b..ae94065c6daa 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
> @@ -462,7 +462,16 @@ &i2c1 {
>  	status = "okay";
>  	clock-frequency = <400000>;
>  
> -	/* NXP PN553 NFC @ 28 */
> +	nfc@28 {
> +		compatible = "nxp,nxp-nci-i2c";
> +		reg = <0x28>;
> +
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <111 IRQ_TYPE_EDGE_RISING>;
> +
> +		enable-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
> +		firmware-gpios = <&tlmm 110 GPIO_ACTIVE_HIGH>;
> +	};
>  };
>  
>  &i2c2 {
> -- 
> 2.37.3
> 
