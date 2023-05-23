Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A60570E39A
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 19:47:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237984AbjEWRen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 13:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237742AbjEWRel (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 13:34:41 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05D931AD
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 10:34:20 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2af1822b710so1374721fa.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 10:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684863258; x=1687455258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UuEUJc5Uu7upLbzD12JucsewjV94QoElyM4QC/lmx1Y=;
        b=Ue3HAde58nl6v+SfZ833G9quyWVFnnRaUXZEeDrmxe25VwnvnC2ptwz9PRklPErADb
         buAMGVQbWQTNYCCRvfoNG92XOtroQUrt3+co3wQf57QKXCiBI3sNewN1c78rTqfOLwAW
         mxxgu2+Km1pIiYQZHeZTerakpT1w0vKU7i6IB3njaJ5UZeJCjSIzRdT5kBLc7nJQcnzo
         LvJIljdtRth8gZX6RcYbM1GUXbNhyndJl6M82XpS64V1xPNc/uQjl5+XznsD+qCvsOuo
         3nESZdXqRzdGp7JU8uMDT2TVUhLFvqc1ILGaoG8+m/K3N3tG17sL2P9xqx6odu4F9Qqp
         BoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684863258; x=1687455258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UuEUJc5Uu7upLbzD12JucsewjV94QoElyM4QC/lmx1Y=;
        b=GekHlOyCR/XeS2QZcXxphn3xkUfW8IlMx6f5ipjIBLP/vrdiYhYxPYj1JHott0j55F
         07c/No1DCjBev8Am/cwv2m1yVmanlYHlbRBJ38AL6JiO9/5rIzEOZFG0tvgAQhTJFW6q
         xNqMdhhSQu1fVxDy3Fwy1vOXfEuAOSs9ElPxzHvjapc3Rpw9b2cWcC7hX1c+BVNjTheq
         iaN2VGdbcHtgTzyAlIqrEw+jrIx60y/P4NMJ7TgFhvUCpR5hm9yRG+Y+MH3ZspyadK5B
         J8ToC8CygxvvzYn0FeuRzACrKraW5mBoiOneFf5CzZ7WC0eKdfW5zljQOFtI/bAnpxhj
         NdHA==
X-Gm-Message-State: AC+VfDyVUYNh4W1NX+pFT6cEK1LJ6EBsIHCrMWIljwCXnnBrOWtBatYm
        iUZdOSDwZMMWGHy7zi9237m7gw==
X-Google-Smtp-Source: ACHHUZ4vAOydSoBLnatOMKsxMaPzl3jKF7ccckN3hW6yuQOTGPgTJlF3W4Peg3KEbvGUfNZFQy9hyA==
X-Received: by 2002:a2e:9bca:0:b0:2a6:18c0:2b35 with SMTP id w10-20020a2e9bca000000b002a618c02b35mr5059615ljj.0.1684863257758;
        Tue, 23 May 2023 10:34:17 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id b9-20020a2e9889000000b002ad8fc8dda6sm1708771ljj.17.2023.05.23.10.34.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 10:34:17 -0700 (PDT)
Message-ID: <097015a7-8363-988a-b4a5-d5f5fa158d83@linaro.org>
Date:   Tue, 23 May 2023 19:34:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to
 new style of bindings
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-5-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230523140622.265692-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23.05.2023 16:06, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index b150437a8355..58c7a52ea8d6 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
>  			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
>  			reg = <0x01da4000 0x2500>;
>  			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> -			phys = <&ufsphy_lanes>;
> +			phys = <&ufsphy>;
>  			phy-names = "ufsphy";
>  			lanes-per-direction = <2>;
>  			power-domains = <&gcc UFS_GDSC>;
> @@ -1021,11 +1021,7 @@ ufshc: ufshc@1da4000 {
>  
>  		ufsphy: phy@1da7000 {
>  			compatible = "qcom,msm8998-qmp-ufs-phy";
> -			reg = <0x01da7000 0x18c>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -			status = "disabled";
> -			ranges;
> +			reg = <0x01da7000 0x1000>;
>  
>  			clock-names =
>  				"ref",
> @@ -1037,14 +1033,8 @@ ufsphy: phy@1da7000 {
>  			reset-names = "ufsphy";
>  			resets = <&ufshc 0>;
>  
> -			ufsphy_lanes: phy@1da7400 {
> -				reg = <0x01da7400 0x128>,
> -				      <0x01da7600 0x1fc>,
> -				      <0x01da7c00 0x1dc>,
> -				      <0x01da7800 0x128>,
> -				      <0x01da7a00 0x1fc>;
> -				#phy-cells = <0>;
> -			};
> +			#phy-cells = <0>;
> +			status = "disabled";
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {
