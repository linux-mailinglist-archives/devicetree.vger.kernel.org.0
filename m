Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EC5070C3CD
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 19:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232747AbjEVRAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 13:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbjEVRAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 13:00:02 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A702CD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:00:01 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f3edc05aa5so2013855e87.3
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684774799; x=1687366799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8aNDm+cq25IEEnvkBipmOmSDadWxFkNtAaZWIaFaUc=;
        b=ZtfIFXXCKoPm2qQgYLqZ/3mF0vRvc1RMiLS/Ljm+c7LS2RzmMy7OEvfRnAq8zPKk7e
         cGHxw+xyOmrdYLMsMbYMh3Hv+V9qfe8qAHxENiSxecX6CW6yItYged2prrVeDtW9L/e6
         DRtlCSOICzFCtw8VjK/dFof32T+WHvj/pPEu3YltwXCw4f7qyntAHg99/sF4S/SSqoac
         7FO7NIvawT3u1rz3EL3LYiJSsToubb88/Gm5Gl5MAe1qOReTTRXxLQXKyvVmkFaYbE09
         RgW4W0iMogduMxnDk2scAo8PgzHJ8qorIfMqddLUNhWj27R1nbKwvPxx35DU1Pv4c/ST
         AnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684774799; x=1687366799;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8aNDm+cq25IEEnvkBipmOmSDadWxFkNtAaZWIaFaUc=;
        b=DhNFpmR+6mKpk5gyM6UfAClB/Bouum13h8/E91vG8C+4FUZDDCn8j/k0nP7A5kCB4y
         8kye4I5DWpK7BaZFlhKXgyFp7hvb/wUH8+plm8NsBm9ilDBbLcgaG81H54ZJzqT1RTxo
         oMKkYvmPWD72di09pfiXnyJndkw8yKCbXR0+EbhjvPcZ8G8Hrg2qUyVeQXnz4HHkrb7K
         6pIQLmbQYmSLAPIj0RP2HszJv5sduZgQU9EuvarAHFPcmIX/ClcrVsCCqqwgvZzKVNAs
         Hrqd/dC4YErL2noucgr3KPcyvzDsKkolE22/OJM7BeQWACVwwqWdewR4xdZ5pvsFwWbs
         Gffw==
X-Gm-Message-State: AC+VfDyyuq13dJPqoXMiGVk2aRwLpsg/76mlpG7RqqtVLJBCqjVJLWkE
        rTs5nJhyHpj4U9caACM9YkFN+A==
X-Google-Smtp-Source: ACHHUZ5Ydfab2mUL/eocLrebhQ+17lOdwCLKydwVDc7Tibc5AZsbmKPr7jUD1vCqBrmrQMtJCyk8Zw==
X-Received: by 2002:ac2:4465:0:b0:4f0:ff66:b4f1 with SMTP id y5-20020ac24465000000b004f0ff66b4f1mr3088648lfl.22.1684774799483;
        Mon, 22 May 2023 09:59:59 -0700 (PDT)
Received: from [192.168.1.101] (abyk97.neoplus.adsl.tpnet.pl. [83.9.30.97])
        by smtp.gmail.com with ESMTPSA id q9-20020ac246e9000000b004f256fed9e8sm1040768lfo.145.2023.05.22.09.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 09:59:59 -0700 (PDT)
Message-ID: <37f97ffc-01c1-797c-f50c-1680f666d79d@linaro.org>
Date:   Mon, 22 May 2023 18:59:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to
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
        devicetree@vger.kernel.org, Johan Hovold <johan@kernel.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
 <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
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



On 21.05.2023 22:38, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index b150437a8355..848fbd2cb3f8 100644
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
> @@ -1021,11 +1021,8 @@ ufshc: ufshc@1da4000 {
>  
>  		ufsphy: phy@1da7000 {
>  			compatible = "qcom,msm8998-qmp-ufs-phy";
> -			reg = <0x01da7000 0x18c>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> +			reg = <0x01da7000 0x1000>;
>  			status = "disabled";
> -			ranges;
>  
>  			clock-names =
>  				"ref",
> @@ -1037,14 +1034,7 @@ ufsphy: phy@1da7000 {
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
Looks like that will make status not-last?

Konrad
>  		};
>  
>  		tcsr_mutex: hwlock@1f40000 {
