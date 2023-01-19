Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54D8C673973
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:07:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230418AbjASNHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:07:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbjASNHM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:07:12 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AECA75A2B
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:06:30 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id x10so2746941edd.10
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1gPTT8pbx6iE/epEHJkHt7/bEhvcngYyFc03+y1Cxk4=;
        b=UOedtTtuqugeKVm2m6LJeaG3jrdknha6dCHm+x9B6ll8yvcShFUn/RjhmIrVM5Rs3u
         8iClmvOLPN/OndVQG+dVnvpmfz/5Jd4eJiumEa0vzs1DVKqNIw+v7rB1wUSCCAP8y8pR
         K2eBjD0CLQWxdthY06rYB9nOMhqRpvAVuyiT4l1y2i8Djzpiv5mTsYWI8LGjpOydguxp
         Lj3Qf0hgsH+i849vqtbdbWSrn0hfmDKLx4xW9wH806Bint86r74FqR8vle5J/0Ws/Qa9
         q98xRLJicvygDHh4lu+MY5XeVSM77P4pFX557Gyrxrb8bHMjN977YMPeeWQV3itvm//f
         e1lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gPTT8pbx6iE/epEHJkHt7/bEhvcngYyFc03+y1Cxk4=;
        b=5m2vTH2h1R/JI9xvIVsxYTJyVz+LmnBm/hzYVxOTQ6L9f2Oajbc4HihyLaYrW+S9ZQ
         rqGmFB5iQrsjNzMuEN1DGi+YiHVSBzxkVTLFNSx8yHGXw7hLygjvvYpqah4SrqMjZbdT
         Nzpksn1lafKCzCt+KKgSND3OIx/Frv80cFzE/VLTqKrAzlNzueRDsnhVaWwAa2C+nUMr
         vE88BiUmXnC7kSSgyK3JwkhrRcE2ak4W+cf1qY3FgrAfDFHyBTET2r3NJTZOT3ybQTiI
         OFkuUINbIJkrTFUVkVt2vWuP8BHZJwOiJOe8SYScnHTk+Xub8qkNQDxIBOvtLu1o13eL
         XNHw==
X-Gm-Message-State: AFqh2krAnmVgMuaXOMX1ljEwSH23zGcNRFfLlgc6X5XRL2rLTabI373i
        Ohg0ab2RahYfZQw8atpBLaWsug==
X-Google-Smtp-Source: AMrXdXsRXs2vwIf3bke14eSVJkGfxbho6m8PLUIx1vhOYyZ+uCnw2rzb6JZEA+BgQ38jvhlnv2XVEQ==
X-Received: by 2002:a05:6402:159:b0:49d:a87f:ba7b with SMTP id s25-20020a056402015900b0049da87fba7bmr10572271edu.39.1674133589027;
        Thu, 19 Jan 2023 05:06:29 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d3-20020aa7d5c3000000b004835bd8dfe5sm15787673eds.35.2023.01.19.05.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 05:06:28 -0800 (PST)
Message-ID: <0497ba61-7646-91bb-291c-0b437c18434f@linaro.org>
Date:   Thu, 19 Jan 2023 15:06:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: Add interconnect nodes
Content-Language: en-GB
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        konrad.dybcio@linaro.org, a39.skl@gmail.com, andersson@kernel.org
References: <20221130104519.2266918-1-bhupesh.sharma@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221130104519.2266918-1-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 30/11/2022 12:45, Bhupesh Sharma wrote:
> Add the interconnect nodes inside SM6115 dtsi.
> 
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
> - Based on linux-next/master
> - Depends on the SM6115 dt-binding and driver patchset, which can be
>    seen here: https://lore.kernel.org/linux-arm-msm/20221130103841.2266464-1-bhupesh.sharma@linaro.org/
> 
>   arch/arm64/boot/dts/qcom/sm6115.dtsi | 51 ++++++++++++++++++++++++++++
>   1 file changed, 51 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index e4a2440ce544..dad5ab3edf0e 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -485,6 +485,57 @@ usb_1_hsphy: phy@1613000 {
>   			status = "disabled";
>   		};
>   
> +		snoc: interconnect@1880000 {
> +			compatible = "qcom,sm6115-snoc";
> +			reg = <0x01880000 0x60200>;
> +			#interconnect-cells = <1>;

Should we use 2 here as we do now for most of interconnect drivers?

> +			clock-names = "bus", "bus_a";
> +			clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
> +				 <&rpmcc RPM_SMD_SNOC_A_CLK>;

-- 
With best wishes
Dmitry

