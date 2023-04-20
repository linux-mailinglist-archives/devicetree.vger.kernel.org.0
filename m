Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81C706E9153
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235161AbjDTK7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235206AbjDTK6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:58:42 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EAA1BC5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:56:05 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4ec817060cdso463867e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681988153; x=1684580153;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39KEn0YrQKNu+JfNoAy5DDW/UGTfFOqatf1VXJM6t8g=;
        b=SyQ7EgeOq2aphoUk1AhJ1mg8fwFgOfctW1xYx7ELF2Co15b3Zpd3gpQEw9m2SbfINH
         eXA3TR2TN5LhK3Au8bmn4EbKYOhK9L+gT3eZu7gzgzZOGR7+cznCGHt1jpZUuY/VcwLp
         IpyM/BTO4EjD3Qc/d1Wkk0zRGa7063Df+piL48k/Hv6lgxavJxRSDKxWnhoNUMbEKuQ6
         YJUrJoYhAiArjFaLORT+LMpHrSzZIvD0ysfbCKRRaox5pXvc5RFGPS35IsbUPX7vKeR0
         4hlQ0r2pwj3wcUIcEwXTQ8lTu2R9YJri0Ee/HMs8OAPBmpEYzqyKiaLmcLyIBMCGj/vW
         uMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681988153; x=1684580153;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39KEn0YrQKNu+JfNoAy5DDW/UGTfFOqatf1VXJM6t8g=;
        b=hNmHa0I8mn6tBan6wKZ9H3PfVVQHANs07uh38SDVdRKZNokNcRmtVqWiLhefN/zvf7
         rvh70kP/3v5LQ3UlwU3g+FGauoP2NA38f8LBYvVZX7YVRTDIbLcwyMzu39mFbxYKpd/N
         wT1NFg7GthMm42qL8+oX/iMSC36OvvJtSOUOaVSgFchxhquPoBdb/y5vvdT+2bUimjLp
         vtYiPKk1n/xcomqpHMS/d5RAH9XOhSuLDg8NCcS5+gpfkCcxb1fmaZpEjPFh79pcEVbU
         ScWmgNSQs0haQhE4DWvEu4A3+/RU4PlXVxuI+vGCHtIGKMekS3hVo7C/a4n6BbAtWP03
         6A+w==
X-Gm-Message-State: AAQBX9dULVPrG9MOqHXChr6xOVoRhgUqRoA1Z7eyc7JoDbqwQICj8ZOn
        H6yBl/waNulwJ9rX4DUhtWQiUw==
X-Google-Smtp-Source: AKy350a2kAEH7+WLLI1ITrVWTrZeDXk6p4bqLumrKnIHUbCc8fxKRJ0lw2cmPJs7Tp0LKdtaKFyD2g==
X-Received: by 2002:ac2:48b2:0:b0:4a4:68b9:66f3 with SMTP id u18-20020ac248b2000000b004a468b966f3mr361539lfg.62.1681988153110;
        Thu, 20 Apr 2023 03:55:53 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id x16-20020ac25dd0000000b004eca8c303aesm176388lfq.214.2023.04.20.03.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 03:55:52 -0700 (PDT)
Message-ID: <e8b0011a-712b-e5ea-dc60-9e9ac4041ae4@linaro.org>
Date:   Thu, 20 Apr 2023 12:55:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 15/18] arm64: dts: qcom: sm8350: correct USB phy unit
 address
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
 <20230419211856.79332-15-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230419211856.79332-15-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19.04.2023 23:18, Krzysztof Kozlowski wrote:
> Match unit-address to reg entry to fix dtbs W=1 warnings:
> 
>   Warning (simple_bus_reg): /soc@0/phy@88e9000: simple-bus unit address format error, expected "88e8000"
> 
> Fixes: 2458a305e80e ("arm64: dts: qcom: sm8350: switch to combo usb3/dp phy")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 5ca21cd1cbec..425af2c38a37 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -2140,7 +2140,7 @@ usb_2_hsphy: phy@88e4000 {
>  			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
>  		};
>  
> -		usb_1_qmpphy: phy@88e9000 {
> +		usb_1_qmpphy: phy@88e8000 {
>  			compatible = "qcom,sm8350-qmp-usb3-dp-phy";
>  			reg = <0 0x088e8000 0 0x3000>;
>  
