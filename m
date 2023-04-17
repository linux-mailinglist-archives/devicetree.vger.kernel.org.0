Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A93F6E4108
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:31:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbjDQHb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:31:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjDQHav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:30:51 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83034C29
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:30:25 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4ec8ce03818so1187267e87.3
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681716624; x=1684308624;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/w3KNIf6Lo6ERSRg71uJEB0w+Ck4o2XMQvRHvyp6BrA=;
        b=WBS+W96hChuHW4d4MC5bEu+d18ewZBvBnzN7b1qs1+mctkxcuBNa0/gOaLuUiyOSgY
         jQ772P5Idu0hn+Ohxp4VAnMQ2hwSK+/toLxR5wXmkTOv75sQ0scnah7Moa8wNyKZXnkW
         WmFP4nOz7Qe/umjGKxro90GZO4xq+4UR3sFLPHZ0rU1AhuQqFQw08yFrfVeK7CeSlXMd
         lHzKcZe9un9uc7QaR7fHfZANEfL87KJt+j7VbaR0hsevZzFaI87cn8k2KKB6WUhdoLZs
         Ka/9lxgfolVYAtqMSBSoq/YQLYvbkNwLm2atlurZ9y8XxcV3fFGGc3Hw7GR1b+/MEZcu
         UR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681716624; x=1684308624;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/w3KNIf6Lo6ERSRg71uJEB0w+Ck4o2XMQvRHvyp6BrA=;
        b=hqRHV3WrVsUH7KgfhwD7f7Uo1W/li3U64cMXM3ACKAPhk3pnFR2X9eoHh9150PuAkN
         4j8h5sywYKQx8f94OSoTKqyxSYnXMJ/yo0v7DSAezQgtQ/cpAwAVHeVT9+YnLsQd7YVe
         62AjIszOQEjsgKmPJHk8efaIWEYurPxHpUwyRMIArRJxYUQIWDFw8Mc3zSlHEuIuHiCO
         eWSn4xi+Yem45M6yKvyM3xqx+POVwuMmZIXwP30Eue5xGvFdMcHHQEFpHc8J0VpJawR0
         cFbD7nVE2KsV8T6e8m1TnCR7+555CMX7iPpVVIoGBe87KoLne4W8olvUEFAQvRTrXjaL
         dMag==
X-Gm-Message-State: AAQBX9eqVkSz0/1TH+fXRr7T3r3pd0JXBmj26m01I+P1TiUeefTWUCqS
        7eEQJv/UA8173FZjqs/dZa68EA==
X-Google-Smtp-Source: AKy350Z6xTd5N42EcWS5IPO0ZqpEtUct7pZCuVOphlZv0eZZfwcizIfdRAZOXioBpzEhrMI2jOS1kw==
X-Received: by 2002:ac2:560e:0:b0:4cc:5e3a:dd82 with SMTP id v14-20020ac2560e000000b004cc5e3add82mr1524305lfd.58.1681716624181;
        Mon, 17 Apr 2023 00:30:24 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id m3-20020ac24243000000b004db3e7dfb8csm1962931lfl.189.2023.04.17.00.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 00:30:23 -0700 (PDT)
Message-ID: <f2ecffe7-9a43-4a77-7721-14c59f2931e6@linaro.org>
Date:   Mon, 17 Apr 2023 09:30:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8250: add missing qcom,smmu-500
 fallback
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230416123730.300863-1-krzysztof.kozlowski@linaro.org>
 <20230416123730.300863-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230416123730.300863-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.04.2023 14:37, Krzysztof Kozlowski wrote:
> Since commit 6c84bbd103d8 ("dt-bindings: arm-smmu: Add generic
> qcom,smmu-500 bindings") the SMMU is supposed to use qcom,smmu-500
> compatible fallback:
> 
>   ['qcom,sm8250-smmu-500', 'qcom,adreno-smmu', 'qcom,smmu-500', 'arm,mmu-500'] is too long
>   'qcom,sm8250-smmu-500' is not one of ['qcom,msm8996-smmu-v2', 'qcom,msm8998-smmu-v2', 'qcom,sdm630-smmu-v2']
>   'qcom,sm8250-smmu-500' is not one of ['qcom,msm8996-smmu-v2', 'qcom,sc7180-smmu-v2', 'qcom,sdm630-smmu-v2', 'qcom,sdm845-smmu-v2'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 7bea916900e2..778fbec9a554 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -5254,7 +5254,7 @@ wake-pins {
>  		};
>  
>  		apps_smmu: iommu@15000000 {
> -			compatible = "qcom,sm8250-smmu-500", "arm,mmu-500";
> +			compatible = "qcom,sm8250-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0 0x15000000 0 0x100000>;
>  			#iommu-cells = <2>;
>  			#global-interrupts = <2>;
