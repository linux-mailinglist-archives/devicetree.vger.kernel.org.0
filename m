Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A023A5E9C3F
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 10:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234468AbiIZImc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 04:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233137AbiIZImb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 04:42:31 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 660123AB25
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:42:29 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id y5so9061434wrh.3
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=oSYV8lHWhklBou2859kWQuYGRfIAw0Cpcnif0osGclw=;
        b=EL+KYTVIS/5ysdBqPMxNq4mzPkg0HxVO0hUkUHFg0VZ+ZsN2yuR6c6oZ0WCkdqIMdy
         6YX+6r7JfsgxWD5+ZCi0k9NWb5AugBtdVqB39MM3RyZ3CTvQr3dI51Hzm/z7CJmXZZUM
         W17mRd3PHB/fBf74L+NWAOHGAj0ixjsDqe4gpHdmuwLrillgfqj6oQKjDwrpd6IQ6qPH
         dxvykFTtA080nfe3S5QQJjCMf+x8j1eKm2w9bf8RkhKW4z6AgM8Kpvsqpn8w3ODnMHOl
         K9XACU8RyI5eK7RFTd2n9rn6vfI5Ekiuqm3cn1JZAIG0x3VGwMdE9APr7upxy5R5S7Ns
         h8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=oSYV8lHWhklBou2859kWQuYGRfIAw0Cpcnif0osGclw=;
        b=b+is2yrXAZ51MrKCU1WbFb9uguWMy4Pzi1Zeknnxc1OyqRTwgM8YEGPuVP75el/YvR
         RJBVie4O1iXs+66LErHYg6jvaJsbD9WDoImHowfHvpj8pTI9elucoTTbTe/EDJ3WORH2
         5AblJvtWEHWZmVAcRHLaVL//VQQJmIBwcBIYUIui6q3MclRbxVarVHnoaS7skCZLS6Pp
         gJhZeHffFjnSOEN6gVfhGqa7QgdcSYTYOPvT/1wKV9FZrwX49Rqg3wMgu2Sx+Oizi8pC
         xieq8NvNYLzHcW3zwlaGuBRpde0zqblxh9mgLp7CuVXwFVzlKrkfri+D0/kVufv1Le9T
         E0ng==
X-Gm-Message-State: ACrzQf1zoKbq9nX2k7iXgbM4kU/KiP0GgrD177UzRvXF4ZIe7BqryG5J
        eZ2LCCob3pG6o/yqMYamv6IAiw==
X-Google-Smtp-Source: AMsMyM6a6avRafAH9+dwC45eQitpj1c3EFWkkKa6vYGFLT7jMzWoJfqdzssxb+gso8s0JOZnz8xGoQ==
X-Received: by 2002:a5d:5269:0:b0:22a:e5c9:7749 with SMTP id l9-20020a5d5269000000b0022ae5c97749mr12246063wrc.448.1664181747938;
        Mon, 26 Sep 2022 01:42:27 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id m10-20020adffe4a000000b0022a297950cesm14431670wrs.23.2022.09.26.01.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 01:42:27 -0700 (PDT)
Message-ID: <7f9c6284-1f9e-8ce9-9bec-5f1f6c95fa5e@linaro.org>
Date:   Mon, 26 Sep 2022 10:42:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] ARM: dts: qcom: fix msm8974 tsens compatible
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925161317.76356-1-luca@z3ntu.xyz>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Organization: Linaro Developer Services
In-Reply-To: <20220925161317.76356-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2022 18:13, Luca Weiss wrote:
> Bindings mandate the use of the fallback compatible qcom,tsens-v0_1 for
> msm8974. Add it to fix the warning.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   arch/arm/boot/dts/qcom-apq8084.dtsi | 2 +-
>   arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom-apq8084.dtsi
> index f2fb7c975af8..defc0602d750 100644
> --- a/arch/arm/boot/dts/qcom-apq8084.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8084.dtsi
> @@ -258,7 +258,7 @@ tsens_backup: backup@440 {
>   		};
>   
>   		tsens: thermal-sensor@fc4a8000 {
> -			compatible = "qcom,msm8974-tsens";
> +			compatible = "qcom,msm8974-tsens", "qcom,tsens-v0_1";
>   			reg = <0xfc4a9000 0x1000>, /* TM */
>   			      <0xfc4a8000 0x1000>; /* SROT */
>   			nvmem-cells = <&tsens_calib>, <&tsens_backup>;
> diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
> index 7a9be0acf3f5..cf8af99a4864 100644
> --- a/arch/arm/boot/dts/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
> @@ -1116,7 +1116,7 @@ cnoc: interconnect@fc480000 {
>   		};
>   
>   		tsens: thermal-sensor@fc4a9000 {
> -			compatible = "qcom,msm8974-tsens";
> +			compatible = "qcom,msm8974-tsens", "qcom,tsens-v0_1";
>   			reg = <0xfc4a9000 0x1000>, /* TM */
>   			      <0xfc4a8000 0x1000>; /* SROT */
>   			nvmem-cells = <&tsens_calib>, <&tsens_backup>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
