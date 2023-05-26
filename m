Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1622712343
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 11:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242655AbjEZJT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 05:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242999AbjEZJT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 05:19:27 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7630194
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 02:19:19 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f4b0a0b557so508515e87.1
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 02:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685092758; x=1687684758;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jslW4E/ppqCPwcnCh6m6ETyqJnFvl3piH+x5euK6EVg=;
        b=GygImw7JjgZOhqOMX+Nd4w/evFqww5LioBatQjN1Rre3pjix6/xVxmKGWL8iD133IZ
         /UcnAGQkbwEmm5wVzGRQQYaNL4Ogal0/sFuS9EDvkHo/+A6PnABdmNmW2WHfdKoSi3xI
         Rxg5b35iJAly4ZOAQLTQ/EJLc7PLzsPRmczN4VAHhoHDBJg2krFaMGpj5r2lWw4nK2hx
         Fp/NoIQZ3tGQwymJcHmIFcMMvAGoXSiN6ko3OwWsOE2Auly6/GtBk1R0nfIVHN34FbaN
         6DO9NW3a8+zHse2c7Fdgdqeh8drrnmkL6ywJEiU71tMzV2gYFzHIT93qhbnA9puC/PCL
         6TZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685092758; x=1687684758;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jslW4E/ppqCPwcnCh6m6ETyqJnFvl3piH+x5euK6EVg=;
        b=NIKk6JPpdn05NKO1uyJf1f25gyKJL4Pbph1uLxA65pRD6zwnWp1rTIisxuQTNSqyv7
         q4vCg4lxtA4ToE07AR7Vu8WbmVrh6b4D7OiOqfcIo4m/dYEKhIcA9Tn/ki0tMToofrua
         mhJm2BmyiJFOkAvYcTceKsVHZhCNE7MHaDkS+tFnDidf4FFGl4a4ti7wQ6y2z9z/hrN9
         6bb+jwPvdu5lxUpSvqrWcoQpGZoEnZ2HreieICjahbkf20dEFHwP5HMFx/0ndaQ0PIHE
         j7Kijy6dPyQff3OL2fgjuAx0JGxyRO4BTkHMTdks+R0DtY/WgJY40VCdTd9k7y42XJV3
         8Waw==
X-Gm-Message-State: AC+VfDxxAUfvxUzqdQfxYYyQfMoEvKksxh+v0eyFSsUBoIUEo7mOP7xU
        3/2a8rDIDN5sT6WU3L8fJY09mA==
X-Google-Smtp-Source: ACHHUZ6YTvept+AKcZ0zJtYViavpnfwS8Wd/NdqylduX/PxaV9nTcOECiB+vyugP7w3F1x1aOW5EQQ==
X-Received: by 2002:a19:f00b:0:b0:4f3:822a:786f with SMTP id p11-20020a19f00b000000b004f3822a786fmr337323lfc.57.1685092758202;
        Fri, 26 May 2023 02:19:18 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id p9-20020a05651211e900b004f019d3eab4sm553347lfs.23.2023.05.26.02.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 02:19:17 -0700 (PDT)
Message-ID: <7d14db71-2279-e9b9-012d-47dc50fe797b@linaro.org>
Date:   Fri, 26 May 2023 11:19:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq9574: add QFPROM node
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230526070421.25406-1-quic_kathirav@quicinc.com>
 <20230526070421.25406-5-quic_kathirav@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230526070421.25406-5-quic_kathirav@quicinc.com>
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



On 26.05.2023 09:04, Kathiravan T wrote:
> IPQ9574 has efuse region to determine the various HW quirks. Lets
> add the initial support and the individual fuses will be added as they
> are required.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 1a2c813ffd43..715fe51ff567 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -117,6 +117,13 @@
>  		#size-cells = <1>;
>  		ranges = <0 0 0 0xffffffff>;
>  
> +		qfprom: efuse@a4000 {
> +			compatible = "qcom,ipq9574-qfprom", "qcom,qfprom";
> +			reg = <0x000a4000 0x5a1>;
That's an odd size. Are you sure this is how long the corrected region is?

Konrad
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +		};
> +
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq9574-tlmm";
>  			reg = <0x01000000 0x300000>;
