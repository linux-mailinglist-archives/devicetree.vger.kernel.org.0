Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 345596921E2
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:19:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232646AbjBJPTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:19:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232563AbjBJPTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:19:40 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB5F57535E
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:19:30 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id sa10so16700283ejc.9
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CeTwCO+icltfJqt/V1wp7H1s0GdXfbjSqmnrKM/ncho=;
        b=ljQLZBHg6ysVbJKex7rMTlVKX3wqnDtggqUJ45ZD3a8nemRTgn6uYbb7GvXU4dW0Uj
         MxOpxTqHxBm4YpYptO5mcKdN1wHVrIUWqKryywiDO+JAncShNJbgokI/csyi25EakSyb
         ErNgRBJlYn2yoC0LaXHt41wX8hLlGvSXkJgaurfn7ChnwNJ0QUGEvblQkaF55reRRqD/
         zFv8VVpHgHxvTRsOjjAilIS726fSPi047OS1K9EtiQ/S7dtTBmuqQPzjRNWOE1j7073V
         j3PRgEd4xMcYMFJ7d6g5zwHolNV58GnFedMbWT62YzWUic4IBYta7h4JrrSTem/df5Lh
         643w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CeTwCO+icltfJqt/V1wp7H1s0GdXfbjSqmnrKM/ncho=;
        b=P66ngHA6xtbbDciuzOXsTsJaGhsyvH9b+cV9BaKHnmRD23nzquwOqpG49vHMJMncf2
         7uBOn4MUdvQnLQi3yagys0yQmH0cknCvo3bOl3Kit/QdBlrQpV0pnFh0L+j2bOJKVKpF
         ES7AzKHZZA3mo0PZMicAL4ux4YiTsKtl/Kp2jRanKqjFVUeQSfAFKpepjF+umZ+t9l6N
         Y89Uve/a5CJy3S//Z7Vk+2QcOr/EPfFRX9b9ePrkJGdQ66H2PWg0M+Kkyl0X+PGR6gus
         +qIExLnsY4a5bZh+6iWBNn6fPuj8J6oxdpslZ8OTcceUz3qGl5r9A4LBl830IV5gQTi0
         bCJg==
X-Gm-Message-State: AO0yUKVfv1l9COW4YTomCY6V8S7bxUX77Ktx5MnuKJVWCdoEVqRS5W1/
        xA8i881hGt/pNGCp/3KNHez58A==
X-Google-Smtp-Source: AK7set+Pkg87K1qOT9b4NSjjYPaBtaGlplEjGfUBr1Ft/IhOCdSDgKMonFy+cXyrtkYq3NLhzWwSlw==
X-Received: by 2002:a17:906:b30a:b0:87d:9447:f7fb with SMTP id n10-20020a170906b30a00b0087d9447f7fbmr17147788ejz.38.1676042369466;
        Fri, 10 Feb 2023 07:19:29 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id lu19-20020a170906fad300b007a9c3831409sm2483441ejb.137.2023.02.10.07.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 07:19:29 -0800 (PST)
Message-ID: <a0dce9eb-8153-3505-e0f0-40921e69b97b@linaro.org>
Date:   Fri, 10 Feb 2023 16:19:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 06/11] arm64: dts: qcom: sm8450: add port subnodes in
 dwc3 node
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
 <20230130-topic-sm8450-upstream-pmic-glink-v2-6-71fea256474f@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v2-6-71fea256474f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10.02.2023 16:02, Neil Armstrong wrote:
> Add ports subnodes in dwc3 node to avoid repeating the
> same description in each board DT.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 1a744a33bcf4..ccda73426ee2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -4155,6 +4155,25 @@ usb_1_dwc3: usb@a600000 {
>  				snps,dis_enblslpm_quirk;
>  				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
>  				phy-names = "usb2-phy", "usb3-phy";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_dwc3_ss: endpoint {
> +						};
> +					};
> +				};
>  			};
>  		};
>  
> 
