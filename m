Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 765736D8271
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 17:47:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239044AbjDEPrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 11:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239041AbjDEPrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 11:47:32 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13DFA5FD8
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 08:47:07 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id o20so34830998ljp.3
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 08:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680709617;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dxSZTYnDcq5s93QjGt0L3XgCVNV0CavkH4ScS09zEU8=;
        b=xmb9RSub4xOC3+mtoNF99fZ6KiHrpV6FrYFEALIIG0bYj1LKC7/mqZg9F9a6rnqsNX
         Ha5rht9rzSAvwtTbiRg35h2tGPRgWH/9K6YyN3tDojfpBMi/XhKwiW8pyZrMcqHO6GI7
         eGGJRe+atnga41rSRnRd29rbg/+N0DtPowse9SH+j1zrARQ1vkz6h4pZDt1tl+SyFNhW
         vqpN3V/H2+HcDhZ74UqWm+sJ3I6KAcLovNLJuqf+COCHb/LpaEpXtOvtzP5HexzKstm0
         Pl1he+1oK9i9x0A8frK7bV0Ix6SFwXyNhct3lKNM9iioRRWS8Xahq0IgJhFtdZA2P0o5
         qL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680709617;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dxSZTYnDcq5s93QjGt0L3XgCVNV0CavkH4ScS09zEU8=;
        b=esaH164mBUf1ygqGON4MG7SuDPfbjKxgGBy/yXzamfPAocZUd5QsBMI2UhL8XY5bsd
         DthRcI1CgZJKaXRCgaCV/EpIU9tz1dFhcmu28BKu4cBq/NOv83vdsxelAhr266oUvX8v
         KuhN91mkhNL85uh5kQrFkCNqgQ1gABe0ej+l87eGcyFja2FdZvK28YN/Y2O8XSe2LzgX
         OCOCYpXMafq7JCmUXUoF0YWbJlggw9SieO4/KF+abOzAp0ix/kBXtDFTjVhMumyqLtFx
         v7EAHh7NYkd5c5UfvTpJcZioHhAayrPxtE9udp0KgDPZlBYIMlp0y7W5uzF0EMUoy5ck
         Iw3g==
X-Gm-Message-State: AAQBX9ctP4Hrm45j3aY/vsOgtgCOThFP52zMg2YB5idtSqMqZZncEQb4
        XH9C41VISD/b1z1bF900T5EuNw==
X-Google-Smtp-Source: AKy350YnAa/sHazifyT3J9hcsEFG1SqVCFTYFoilpzg/MpP/TjDc1+ftvez2CGD5umA6Eq+UEcNEYg==
X-Received: by 2002:a2e:9bd8:0:b0:2a6:23ac:4e70 with SMTP id w24-20020a2e9bd8000000b002a623ac4e70mr2383740ljj.14.1680709616858;
        Wed, 05 Apr 2023 08:46:56 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id i19-20020a2e8093000000b0029f3e2efbb9sm2905499ljg.90.2023.04.05.08.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 08:46:56 -0700 (PDT)
Message-ID: <4feaadbe-966d-0c2a-d502-e758194bba5f@linaro.org>
Date:   Wed, 5 Apr 2023 17:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sc8280xp: label the Soundwire nodes
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230405060906.143058-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230405060906.143058-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5.04.2023 08:09, Krzysztof Kozlowski wrote:
> Use labels, instead of comments, for Soundwire controllers.  Naming them
> is useful, because they are specialized and have also naming in
> datasheet/programming guide.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index cd38320dafda..c195a57fd180 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -2497,7 +2497,6 @@ rxmacro: rxmacro@3200000 {
>  			status = "disabled";
>  		};
>  
> -		/* RX */
>  		swr1: soundwire-controller@3210000 {
>  			compatible = "qcom,soundwire-v1.6.0";
>  			reg = <0 0x03210000 0 0x2000>;
> @@ -2572,13 +2571,13 @@ wsamacro: codec@3240000 {
>  			status = "disabled";
>  		};
>  
> -		/* WSA */
>  		swr0: soundwire-controller@3250000 {
>  			reg = <0 0x03250000 0 0x2000>;
>  			compatible = "qcom,soundwire-v1.6.0";
>  			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&wsamacro>;
>  			clock-names = "iface";
> +			label = "WSA";
>  
>  			qcom,din-ports = <2>;
>  			qcom,dout-ports = <6>;
> @@ -2600,7 +2599,6 @@ swr0: soundwire-controller@3250000 {
>  			status = "disabled";
>  		};
>  
> -		/* TX */
>  		swr2: soundwire-controller@3330000 {
>  			compatible = "qcom,soundwire-v1.6.0";
>  			reg = <0 0x03330000 0 0x2000>;
