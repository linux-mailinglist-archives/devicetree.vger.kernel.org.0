Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8EB26753D4
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 12:51:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbjATLvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 06:51:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229810AbjATLvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 06:51:19 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA6B2123
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 03:51:16 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id az20so13351068ejc.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 03:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yAOWEAHcWZKvwB5s31z3eVR8x165Zd1BA7kDlUH7vNY=;
        b=fTpvpqNjrrTD0ROG/hoy0ORyqT07pqrgL9QCPJg6D/6y44qzTyyKjzi3ZjTH7fhjog
         C1b2DYzhdnhKUiacg/XRbyw8jMRgu89cRdv3bzh6XZla8DO+oKMlxjJQ/Bzmg6ggf+o0
         DPnzFHl/77Dhtdh3nO/JLYqoxXAXnz0+0aeFQBl0sHciOwx8cnjfL9pnUyTPwF1CIhs1
         YKnSfVwgQbMicNgwWzl2OyynhSVM5yhuL1HxaZpeDv2jiw0COk43EdYWJC9rT03pZCtl
         8DRfLnv+RW8Xk5F5WCi0NwGgildFQn9rTodOPphB9RCSnigLsx3hjR0rVR60LWsUN5TR
         h5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAOWEAHcWZKvwB5s31z3eVR8x165Zd1BA7kDlUH7vNY=;
        b=IMiZTbofynXEzDN5O575THABHh8psyOl9vgI0UsKXWbj41YBMQDBIipjSZY7OfED3I
         pKBvIE8m5WG2JTXrelfex2gFD0pFIhcGzGfLFg1bIzrGDcE2e/PkLdp9YT+ILL/ovQwJ
         1Yd1338EcoZVFy0MUjhG74LOPuTc+fEGMByazXTS028dXfa8fosu4T32qbyG6kMeO550
         SwQViYqi076hcbRjsEhyVT0QhoxzMA9GGUk2fZFogtsZ9Kv0rvpDLjN+qs211X4HFGPu
         X+wGqNw70NXGL26GQcgkQ8QueLLdYjy92v9CtbWMtzX9Lok8w3CtnlKEVcvaVyiIfkMS
         z7AQ==
X-Gm-Message-State: AFqh2krwVyamzHqyIiPzEXnke57AtBTl74eF9+lxpi9tYrDmJ5ehs8cv
        vUcLY/SKeW/NO/IFOYJkccdx2Q==
X-Google-Smtp-Source: AMrXdXseCQ4clpFFNUYVGUfY0TmF8ZEYfXeLg56C3XNa0tl9x6RlEXDgOFRgfmfk1M5XcJXf/x45gw==
X-Received: by 2002:a17:907:7e9c:b0:84d:363c:888b with SMTP id qb28-20020a1709077e9c00b0084d363c888bmr18924806ejc.58.1674215475150;
        Fri, 20 Jan 2023 03:51:15 -0800 (PST)
Received: from [192.168.1.101] (abyk37.neoplus.adsl.tpnet.pl. [83.9.30.37])
        by smtp.gmail.com with ESMTPSA id kz22-20020a17090777d600b007c1633cea13sm18065643ejc.12.2023.01.20.03.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 03:51:14 -0800 (PST)
Message-ID: <5275d592-56f5-bc99-c4c2-d723c949265e@linaro.org>
Date:   Fri, 20 Jan 2023 12:51:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sm6350: Add camera clock controller
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221213-sm6350-cci-v1-0-e5d0c36e0c4f@fairphone.com>
 <20221213-sm6350-cci-v1-2-e5d0c36e0c4f@fairphone.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221213-sm6350-cci-v1-2-e5d0c36e0c4f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.01.2023 12:11, Luca Weiss wrote:
> Add a node for the camcc found on SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 8224adb99948..300ced5cda57 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -1435,6 +1435,15 @@ usb_1_dwc3: usb@a600000 {
>  			};
>  		};
>  
> +		camcc: clock-controller@ad00000 {
> +			compatible = "qcom,sm6350-camcc";
> +			reg = <0 0x0ad00000 0 0x16000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sm6350-pdc", "qcom,pdc";
>  			reg = <0 0x0b220000 0 0x30000>, <0 0x17c000f0 0 0x64>;
> 
