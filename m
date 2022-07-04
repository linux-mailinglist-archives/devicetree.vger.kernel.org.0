Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 501A2565C2F
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 18:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234640AbiGDQdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 12:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234575AbiGDQdv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 12:33:51 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDAD06326
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 09:33:49 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id o10so994249ljj.13
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 09:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=q1HD0A5kU24TJyo0v9/WwH1346YzSsKDc3ygvuFSTIE=;
        b=wnQF5CsUdRA7VlqrYT9hT1a03J7c+NBBv1U0tgs5dYy75GQhbfSnX+fZvRQUrKAGHe
         9ImSSFbNx/ScdabZIXLpTWqNOlAySxpRQFIZpP2OsBSjVGwtJ8Tjk1tLUix5mmMIh6CW
         oPiU8A2PRyxAigSuAe/vMKeqKcMXTZCGSlngT+2AKq7z+7ofcbbshLXTs+KGbKWie3+M
         ERoYa1JQeFQZN7MvgMOn0OhNsRT9L63nLE+24daxtmdPyfCEeCUcKMKdoU0ms6yQX7l0
         gZ0AOrb9bkAiiVSQaLgtbfjiVrXMDyN0i3ktA4kRXZl3KCm/tkOcerg5FDweSI9+eflU
         entw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=q1HD0A5kU24TJyo0v9/WwH1346YzSsKDc3ygvuFSTIE=;
        b=FitwW9GfT09obRgQigwd4lOC/V4U8LDecU3cj55Ai8yoTUZDUnWXFFD2jpDCb5haBv
         ywErsl+FpyeaglDtp0prSeKVeNUGa9+euZ7cFEZvH28KgQT2z2QqJGPADC6ysOxqAPl8
         hZ4MMS4qMXUW2RAn8aVraFkC/bxlKkbMdkDelvRN7pfe8KEwysLuppT1cgt/Xddt0mdL
         Ng1FhjbrAbsw08+/enhBNYZCyATnoadwCTR6RFXCuHfP0tWQPUbxh8kLDsHQSaCv7rc7
         ZRQSyfI3Lg2uJKt0wBqQuV2F1bX0vambYYEKQ7Sfk3rW40bugAT20H9u8xDAKJRJfBd8
         XJCw==
X-Gm-Message-State: AJIora/AUoYd58vDhGpvcxnEJnvorBsfN2T+KyWrY4fT12dznEILe2aU
        RjY5eYv/ug0ix2odNEQ/UkJUng==
X-Google-Smtp-Source: AGRyM1vwxx4ayIih9hulpk+dLXmnSU5ymaZ1H+hTssmSfIz1SDoBXByB+0v8eLMfEID6wMfUhpDZWQ==
X-Received: by 2002:a2e:8748:0:b0:25a:7f54:206a with SMTP id q8-20020a2e8748000000b0025a7f54206amr16085890ljj.14.1656952428381;
        Mon, 04 Jul 2022 09:33:48 -0700 (PDT)
Received: from [192.168.1.212] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c15-20020a056512324f00b00478b95dabb4sm5122623lfr.84.2022.07.04.09.33.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 09:33:48 -0700 (PDT)
Message-ID: <f6c6b58e-b1c7-2a64-b34e-0121dc42166e@linaro.org>
Date:   Mon, 4 Jul 2022 19:33:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/4] arm64: dts: qcom: pmi8994: Define MPP block
Content-Language: en-GB
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220505022706.1692554-1-bjorn.andersson@linaro.org>
 <20220505022706.1692554-4-bjorn.andersson@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220505022706.1692554-4-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2022 05:27, Bjorn Andersson wrote:
> The pmi8994 has 4 multi-purpose-pins, add these to the definition.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   arch/arm64/boot/dts/qcom/pmi8994.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> index b1b50c99ada2..0dfdd42f6f55 100644
> --- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
> @@ -19,6 +19,16 @@ pmi8994_gpios: gpios@c000 {
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
>   		};
> +
> +		pmi8994_mpps: mpps@a000 {
> +			compatible = "qcom,pmi8994-mpp";
> +			reg = <0xa000>;
> +			gpio-controller;
> +			gpio-ranges = <&pmi8994_mpps 0 0 4>;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
>   	};
>   
>   	pmic@3 {


-- 
With best wishes
Dmitry
