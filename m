Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D720B6E90A4
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:45:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234518AbjDTKpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:45:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234646AbjDTKp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:45:27 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D06294C1A
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:44:34 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4eca19c3430so462848e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681987470; x=1684579470;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pCn/da6ocAXeb1QA0QmBOv/WxfyWkPCJegLQ2Kkb3CI=;
        b=ARr7cbpFtk0xpBjH3hcJVqft7OvkZva2nwW1evtJjE8N88vG3tEYqmaK+8+b/64VVD
         X5xBzlX/Aqav4IHQvdY8i8ltUOo7fG8fqLFDazYyyIFGM8pLP+hKvooW3vSUvO7ugstM
         Uv39HipsSgmkhqNtBaQCOnDEeWjLGP8wD7dIK4fjjEWoos0gSnI13m3Zs5h0dulLom2b
         AC4e64JSkjyRv76XYV8lOg5zqQt8VysSJ2zgFh80b5h/xmyTD1ccPmVec9DQO6f1HwS3
         u/rqSqTBSUC+0o4RBqgBcQsv12YlOnziUaIqqpi3ACnXmFe9krx7MM+885NeWGi2TwgM
         v8qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681987470; x=1684579470;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pCn/da6ocAXeb1QA0QmBOv/WxfyWkPCJegLQ2Kkb3CI=;
        b=DMIKHfAYpwnCZyEU05NYrZGCftsoFqcClo3G+AWbMC9SdQU4GCRY0XpEJgpiHLQB9m
         5nlhbS7YHmBDwPcuxQZBY7YTbd19OmGC3K+GkKrKKuyN0/aXOqh38nPStMdV1Hwo/T5I
         Ngq7roJj8eHNkpcyl9XRybJ+HDgssyNfoeWopPXgXlDEYT2OgAnIkWqpiI11bNGEtbrq
         d05nHc9wSoYgh60puCk8mryMF7X2pshT594rQ0uVZMEPz44VOWk/k+NdA887gZuAjPVH
         pX3JaeigHZyl0Q64El95soZnN9xosj1QhQnf1m6a+V50p9XUN/ShUfB/fYFYo73Rimcm
         eyzg==
X-Gm-Message-State: AAQBX9cFdi5G/M0NM0Ofq19Ne5GOpX6/qcNFL1fsp0OhN3+3oqjElsgr
        eD7LLKAtCRaN8G/yIXykRo/c1g==
X-Google-Smtp-Source: AKy350bmQTu7ioRZDwd9WfVFUiDJn0hmUb4sc+eJ77GeLpA8LMfVFyohqt6vlTUCwNg+zWNQurlXFQ==
X-Received: by 2002:ac2:5ec4:0:b0:4ec:9368:cb55 with SMTP id d4-20020ac25ec4000000b004ec9368cb55mr318075lfq.64.1681987470467;
        Thu, 20 Apr 2023 03:44:30 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id x24-20020ac24898000000b004edc7247778sm174138lfc.79.2023.04.20.03.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 03:44:30 -0700 (PDT)
Message-ID: <09afbdf9-9eef-0259-e363-fce9c8c73f08@linaro.org>
Date:   Thu, 20 Apr 2023 12:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/7] arm64: dts: qcom: ipq8074: add unit address to soc
 node
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230420063610.11068-1-krzysztof.kozlowski@linaro.org>
 <20230420063610.11068-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230420063610.11068-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.04.2023 08:36, Krzysztof Kozlowski wrote:
> "soc" node is supposed to have unit address:
> 
>   Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> index 84e715aa4310..c9d679bfc10b 100644
> --- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> @@ -105,7 +105,7 @@ scm {
>  		};
>  	};
>  
> -	soc: soc {
> +	soc: soc@0 {
>  		#address-cells = <0x1>;
>  		#size-cells = <0x1>;
>  		ranges = <0 0 0 0xffffffff>;
