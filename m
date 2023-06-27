Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5F773FADC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 13:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbjF0LPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 07:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbjF0LPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 07:15:51 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB3C268D
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:15:50 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b69ed7d050so36910591fa.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687864548; x=1690456548;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nWyqbSkbHZsBM6HPSKKWcCPeFoulHwDVJJqe+vEz7D0=;
        b=L3kXtwUsgMYboLZ0pZo1/N5mnUJZS96RecBU/Zs/JZgI46zKZjnUhElPtaXwn2hnkc
         ErJkUOODJDg4tLCTygenwt6A3FWULhJ6K8y+fqebBFBLdwePu+isiVAUzytJLMzMjA4j
         LhZRi0uPHw7k1oQeH4SJNIHjoPWiBTTFTnJLnofzmsG5eJVoyl1m7zJMpnpN8ZSRSHVA
         8lirQ9PW86fnTsZNFJneMnjVcyA58bcz55cm73ld/O+oplCxMgw8pCrJJ4Hfso9u6Okd
         iQik035dL2JLUAv7caLc+T7ToLXrLy24ACLQ9MyvHjs+IIluWkSv/QtHT3dk7awVcpxf
         e/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687864548; x=1690456548;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWyqbSkbHZsBM6HPSKKWcCPeFoulHwDVJJqe+vEz7D0=;
        b=Sy/ifDypWt7e1qlfhE156/m11TqEf9oopnyNITTH2Rr6pZOihtzj/iU2VEGpUxPA16
         Pum0s5k9dtwsVYRYgXmt14TLdOB5luzYkCoo7cPv8yJ4vNYnrqY7c/NPoogJmrliMcAc
         D+pS2clDUMZczEASvY2fzBXYgJU7RxIGDK8mrqRvY8+gVnhcrx9HvlQMxs/sQTynHPQB
         ZP9qsBUaRXO1CbitPCHvTxS5GEubf1UXX4ydYic4ZvfOzbCGNeO0BjfqXamnEJ8yv5PG
         DAv9nLsc9UJSA7fCJX8/NUbIO5xxLriCi4hWY49WoVske5trDovwk1znSfYdqZ9lILPr
         MGpw==
X-Gm-Message-State: AC+VfDzq/VzYKoD5GHOAkmrwg3EIiFP2+wkmWEaRmf7WFrmuDBN2g+9B
        4TYlTraoDYPe1sxSuLurg1iRCWom80ZVYYddjGE=
X-Google-Smtp-Source: ACHHUZ4S/ZrKesRtVwLtM2STtL6W3klAw98bPn3NpHumYWzUfT+1tmFjSJsZzDW2IsUScQcIzt6acw==
X-Received: by 2002:a19:ca01:0:b0:4f8:56cd:da8c with SMTP id a1-20020a19ca01000000b004f856cdda8cmr8375911lfg.34.1687864548592;
        Tue, 27 Jun 2023 04:15:48 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id u27-20020ac248bb000000b004f861e64f24sm1476422lfg.113.2023.06.27.04.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 04:15:48 -0700 (PDT)
Message-ID: <7b76c5c1-0be3-ad52-49e6-837ed8b7c411@linaro.org>
Date:   Tue, 27 Jun 2023 13:15:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 11/15] ARM: dts: qcom: msm8974: move vreg-boost GPIO to
 board files
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
 <20230627012422.206077-12-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230627012422.206077-12-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.06.2023 03:24, Dmitry Baryshkov wrote:
> The controlling GPIO for the regulator (even if it is unified by design)
> is not a property of SoC, so move it to board files.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
You missed the dragonboard and klte

Konrad
>  arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 4 ++++
>  arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi    | 4 ++++
>  arch/arm/boot/dts/qcom/qcom-msm8974.dtsi                      | 1 -
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts      | 4 ++++
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts      | 4 ++++
>  .../dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts   | 4 ++++
>  6 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> index da99f770d4f5..eccd8f536bce 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> @@ -694,3 +694,7 @@ &usb_hs1_phy {
>  
>  	qcom,init-seq = /bits/ 8 <0x1 0x64>;
>  };
> +
> +&vreg_boost {
> +	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> index 23ae474698aa..c8f914c4ebc4 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi
> @@ -493,3 +493,7 @@ &usb_hs1_phy {
>  	extcon = <&smbb>;
>  	qcom,init-seq = /bits/ 8 <0x1 0x64>;
>  };
> +
> +&vreg_boost {
> +	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> index aeca504918a0..a8f1c5d76bcd 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> @@ -2387,7 +2387,6 @@ vreg_boost: vreg-boost {
>  		regulator-always-on;
>  		regulator-boot-on;
>  
> -		gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  
>  		pinctrl-names = "default";
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> index 24f9521a0be6..ba94186792d5 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
> @@ -461,3 +461,7 @@ &usb_hs1_phy {
>  	extcon = <&smbb>;
>  	qcom,init-seq = /bits/ 8 <0x1 0x64>;
>  };
> +
> +&vreg_boost {
> +	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> index c0ca264d8140..b95fd5f2a481 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
> @@ -510,3 +510,7 @@ &usb_hs1_phy {
>  	extcon = <&smbb>;
>  	qcom,init-seq = /bits/ 8 <0x1 0x64>;
>  };
> +
> +&vreg_boost {
> +	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> index efe21289c9fe..09514324d444 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> @@ -672,3 +672,7 @@ &usb_hs1_phy {
>  	extcon = <&smbb>;
>  	qcom,init-seq = /bits/ 8 <0x1 0x64>;
>  };
> +
> +&vreg_boost {
> +	gpio = <&pm8941_gpios 21 GPIO_ACTIVE_HIGH>;
> +};
