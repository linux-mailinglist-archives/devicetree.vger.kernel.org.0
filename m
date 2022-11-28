Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0796A63A3B5
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 09:56:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbiK1I4x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 03:56:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbiK1I4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 03:56:52 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 061FD13D04
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 00:56:51 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id j4so16319680lfk.0
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 00:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D5siiJDoRIAOF39knI4tqWTeaxJvYi2r1y96IaUjjjc=;
        b=uOkT+Rvio3dVgX42n1Fef7t34vXYszKhv5Bo+rDzTGwuDX5wB/nvTG1GGxdM49f9La
         QN5stQtOiDZLtkO/Eo9CKI3u8PHYqWP4X7q+qUa+nalsbbUsxbvtv5QZszrOCLHXm652
         coTNxXiFOuC6Q+Vl89nq5mA8eWZiCGM9dEvhfS0rCDBdfRYlgms58sUAostHo1h40J1q
         w3Hr6dXUj+P8Kr5nnMCjqK9Rk/oUL6Ij9ldL+D7k43bg6/qbcfXlF2AUrH0UTe6vU4qa
         ydgecyUwIGtfpjNBPPxdE9tbKRZhafnjiJ1W1OQuvrLx+Epae68RvS4VOsXGZ9PqkT1U
         tnVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D5siiJDoRIAOF39knI4tqWTeaxJvYi2r1y96IaUjjjc=;
        b=GV0aqXrqNozCECnVeVwFxjCeuPAEiMxyYjfF11KAChEZROtp8EpFHhTF9Hzh+9lFzh
         yM9hV45X7h/X+xJeIxqN5vCYrqS+QhyyvSSxiLxS0jZ5Rz848l+WUaNOM+E2bUbAQ4Ig
         L0/OyjtQ0pSwiXMr6XhEezm97Leo4yJVWkbAagZdS/vch55eKsZn8WawmevmiqF2/NV6
         PRg1q6Fhopgxvj3jZBWuSVG73Xw+Cbt0fZQTo49mX1bbc9103OpAJzqxlb4JuJXMdq0V
         AG6Dm5O7+uShTyhTH46+ZnHR+nalUstQBCuNsIonnd21i4xV0hI2jVnDcw99WHL7MxGw
         adVA==
X-Gm-Message-State: ANoB5pkITepYQEbN7VllBBna9HCD3/HQ+wQIaeobYvGbjWOgh0b+PSiA
        pBMd0MlpfeYWD1mCHNnRThzJVIBHORNBagiu
X-Google-Smtp-Source: AA0mqf6E6l9EJZ65CwSo8yBOIegVvkba1XJaqyJ7eeGz9g+w9kgeSearXacg0jXlN6vc7Uhz4Ta9lQ==
X-Received: by 2002:ac2:4117:0:b0:4a2:6c6e:e1d7 with SMTP id b23-20020ac24117000000b004a26c6ee1d7mr9622155lfi.185.1669625809397;
        Mon, 28 Nov 2022 00:56:49 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a2-20020a2eb542000000b00276ff51649csm1166882ljn.43.2022.11.28.00.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 00:56:48 -0800 (PST)
Message-ID: <43c24e7e-49b6-ff46-2f40-9413af7ac252@linaro.org>
Date:   Mon, 28 Nov 2022 09:56:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-wingtech-wt88047: Add flash LED
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20221128051512.125148-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221128051512.125148-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 06:16, Lin, Meng-Bo wrote:
> WT88047 uses OCP 8110 Flash LED driver. Add it to the device tree.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  .../dts/qcom/msm8916-wingtech-wt88047.dts     | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> index 166bed05996f..a87be1d95b14 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts
> @@ -23,6 +23,20 @@ chosen {
>  		stdout-path = "serial0";
>  	};
>  
> +	flash-led-controller {
> +		compatible = "ocs,ocp8110";

The compatible is not documented. Checkpatch warns about it. You need to
document devices before using them.

Best regards,
Krzysztof

