Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23893700388
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 11:22:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240178AbjELJWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 05:22:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240054AbjELJWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 05:22:05 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9870DE713
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 02:22:03 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-965c3f9af2aso1468401866b.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 02:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683883322; x=1686475322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XaOFds0l5Ck5Fhtl3tYvXoHE2wUSuYWOUmGFdptZZRc=;
        b=a9VGDSrb5b1a1+bIIcNmj26BHuadFcyooeqionjk9XEDea6C1JjuXB7vB00CAprK4p
         e/ZbVtsVDvP9QjDY3BgbW5Ru2RqfZlHRggwBJ4msTbxFPzy1+Pl+nA6Y3PHbbtaLpkxw
         LhUggjpJVYfG+T+Oe2e5AgoW5XPrrR4PRETN/TskrOhUFSGzWcStCwOvBiXoyhhcbc/e
         d8AD90ZeJ4v273YsCO+j/24EEf8MTcTts9ME71RV0/UgYjAuQzou9ri/0cQEAsvUvvPw
         Jh3vyCj9PK941+bkrBI5CWyPmXUi3YsJBWgXP10aQU1xddSR+BUiJqJzApcM1jDYauKG
         jCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683883322; x=1686475322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XaOFds0l5Ck5Fhtl3tYvXoHE2wUSuYWOUmGFdptZZRc=;
        b=WxSoS63NHn9WEO0qDMm7uvFQzUJ9dcFd/tcDJHIrHGuY9TLi4N9SPMlXt2LBOU/PAC
         AXr2PdzvG4W6z8wX8RZWkszPuW1xidNHCX33pbNCSLtznyTYBLkomEfHzMNnynZAmgln
         n5UZAWGnM+OiOoMehCiswGqxS6OYsd7+GEeZkO3tIlAIKNpSzt/TEOW9Lcwe9tLnkUF1
         u1Xt56eMMZu1sKHml5K+aKBChk5s1LmZzqEi73C3Jmdm7h8POG2PtE3pczf8xxmo0+ES
         VOEDrsC9/WNTTs+6ifu3lERIhbekg+ZKBVZgwBrsTKk1kWKUCmrgwhr9FHXTafq+htZv
         gLMQ==
X-Gm-Message-State: AC+VfDzm3qoHhK4qyslfBOhZw0Evhoes5IlApPRCBdTFc7nz/wv/7NN/
        gTz+Lu1xwDSdG2Zgggo9X5g6og==
X-Google-Smtp-Source: ACHHUZ7/NX1sqJLN2Di5caAqGxSNFPbL55veYHgJv7MDjiIqNglR1DvFCYW35GTFq02CS7EjI+F3TQ==
X-Received: by 2002:a17:907:934a:b0:958:772e:e926 with SMTP id bv10-20020a170907934a00b00958772ee926mr21059260ejc.24.1683883322001;
        Fri, 12 May 2023 02:22:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id mm30-20020a170906cc5e00b0096595cc87cesm5166105ejb.132.2023.05.12.02.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 02:22:01 -0700 (PDT)
Message-ID: <845fc080-154f-6799-65e3-a62fc8652b80@linaro.org>
Date:   Fri, 12 May 2023 11:22:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: ipq9574: Enable crypto nodes
Content-Language: en-US
To:     Anusha Rao <quic_anusha@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_poovendh@quicinc.com
References: <20230512090134.9811-1-quic_anusha@quicinc.com>
 <20230512090134.9811-3-quic_anusha@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512090134.9811-3-quic_anusha@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 11:01, Anusha Rao wrote:
> Enable crypto support for ipq9574.
> 
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index fea15f3cf910..3cda5aa8d03c 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -123,6 +123,26 @@
>  			clock-names = "core";
>  		};
>  
> +		cryptobam: dma-controller@704000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0x00704000 0x20000>;
> +			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,ee = <1>;
> +			qcom,controlled-remotely;
> +		};
> +
> +		crypto: crypto@73a000 {
> +			compatible = "qcom,crypto-v5.1";

This compatible is deprecated. Take a look at the bindings - I think you
miss bindings for your SoC, which you should then use here.

Best regards,
Krzysztof

