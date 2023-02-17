Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0B569AA64
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:30:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbjBQLaq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:30:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjBQLao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:30:44 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E7F65693
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:30:40 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id t4so386125lfr.7
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+UjwnnvTvMLJ4Y6XS63B/yytwWRXv2XOhJTYsHtcd/Q=;
        b=hGOt/7OwzHwSqQUN3Tzpj+3yaknb8/DjSJB7C42+87giBwwCDuzXKAjOM5Vwgc9AyC
         M6rQSCAC7CjUDRVHzyZXc2WQAiX8WRPW+oO7arWmTc8dJ5oi1rW9/cmcV7O3F5cQSry7
         Zkkcmp8a+lMyaY34bjpQEFgtrkoVXRqvD0oeWzhjH2U9vDXW9xLQF5yGzBw9PQrban8+
         kzJPQcP0z/nK9Qf/2OajBqsFPUhpGPmTFAYMhLbpWNNZuOaDf9kymnlsxhrTSPOHUKpp
         f7FTEr/veTESFn19lGiEQUgkx633n8B3HleRoeVY/dOlrpoiTAJKAMCBImGZhgdS+Lmc
         cN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+UjwnnvTvMLJ4Y6XS63B/yytwWRXv2XOhJTYsHtcd/Q=;
        b=SGHFTLeJ4+wjFy8FkRCGvNpdYo5wxDpExjbeZUIDiFw3NA/CE33iarZCC61/IU3cEw
         REyaJKYmrmb5/Oa5+YNHLv7Pz34t7pbleThhDE1/mZrqwYOD0wwvUwKNAl2U/rm6Iy5Q
         AKOQNyMYlgOb7CUg0d7LFo22zDBRG1xMBEs3u/XpVmj/OJSJu9MdyG3hWr4rcySUSWOG
         XPSlIam+h5aB+rz9ukMjeILOk8B+IND2ssobiofJg8UrRO5efa4w6Lp+7un3aZX2Aj26
         TCKjyobgw60KT8/M36AO9kFk4kgebbkMfjAPvB89oQZ4s7QKkjNnEMVsit+dE5gGmSG0
         WYfw==
X-Gm-Message-State: AO0yUKVktXn4bFqtbxEBryHaJYI4VmBS0uSfRgQ/GHc9g2vLgrZipfE1
        9bljjz2LupvsLv/h11VFwTO7jg==
X-Google-Smtp-Source: AK7set9/oFSncZ7n4xQLDvOgiunaPd7KrfeKbnHML6a2gS6//S6mgs8oyqxmQmKKwh9BQSG1P8JLNQ==
X-Received: by 2002:a19:550b:0:b0:4db:26d3:e2f8 with SMTP id n11-20020a19550b000000b004db26d3e2f8mr2512777lfe.22.1676633438722;
        Fri, 17 Feb 2023 03:30:38 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id w25-20020a05651204d900b004dab932248fsm651981lfq.180.2023.02.17.03.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 03:30:38 -0800 (PST)
Message-ID: <07defd1c-2cbd-f25b-d1f4-824023d27135@linaro.org>
Date:   Fri, 17 Feb 2023 12:30:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: Add MSM8994 watchdog timer
Content-Language: en-US
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        linux-watchdog@vger.kernel.org
References: <20221117105845.13644-1-konrad.dybcio@linaro.org>
 <20221117105845.13644-2-konrad.dybcio@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221117105845.13644-2-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.11.2022 11:58, Konrad Dybcio wrote:
> Document the MSM8994 watchdog timer which is already used in DT.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
Looks like this never got applied?

Konrad
>  Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index d8ac0be36e6c..a1f17c9e02db 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -17,6 +17,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - qcom,apss-wdt-msm8994
>                - qcom,apss-wdt-qcs404
>                - qcom,apss-wdt-sc7180
>                - qcom,apss-wdt-sc7280
