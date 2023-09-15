Return-Path: <devicetree+bounces-376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 581E37A16D3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 314F71C212A8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B2963D0;
	Fri, 15 Sep 2023 07:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3B03201
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:04:18 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08B5CE6
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:04:16 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5009d4a4897so3099697e87.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694761454; x=1695366254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xHiiw2zLmDDKdBpJJDRZPiiiZQs08sZNPmWWWLIoN4o=;
        b=RrgEbkwA2AVjCwnK3qad1t0RKawdDXzgVP9FM1Q7Ebe7TGbAJd1nQVrWMMECDoMHJs
         rLrCD07B8W06Wy5bL8CDSN+EeBssTIuUbZRXA4+NNJrNtO7NB1DYNm6R795Ow5PA7OK0
         +3dFwej10XHCKjHr1BbRFp+XBa+xkVjXUcuOQl8NC1CFjbwidrDOkjIdoVLifBeUJakb
         YKXY4r1DHd9FZ4DmMrHZiyJItDjSE0WOmqCR8X271MBDcNfS65uYB1BiST7nojY9w+VS
         XS8GbcSjrXN1h2IgAvmgqcMZMnwGCqqFYvfbvEGnqAC2IfnZc/UiTTgykRoxAp6i0JaC
         28og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694761454; x=1695366254;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xHiiw2zLmDDKdBpJJDRZPiiiZQs08sZNPmWWWLIoN4o=;
        b=VBKR4d5dmnDKot8nCpkaEjOn4gc7/zmWKRkjWSfTjTeZG1AotHTkP9IAat2zug8zP7
         tVLH7U1oTp96mRWn1/MAJ5K6UFizAD/UxboTlWrkDPj7OMdiKyqB1xaV48Y7xFPEVbPw
         Gat4O5SIoWqh1qI7OPA0UdaN9cBNeJ21Pw1ITXQuh2azbOe05nHeauoVZ8DM0t5PNwh3
         BBJ9n1iJ+4UykpGJJNs4lshqmJrRb0e5WB3YXTcwLtF52i/tL1H4hjsduxXsbitEw4Yb
         EsAQ8Rx+8vIwQx8TIhD3PyPyOZjhsM2+YXlA6363ghe0uzM84nSKhqJiXcmlu/uEWiNy
         s2mA==
X-Gm-Message-State: AOJu0YynHGJhY48MKfJEPGax8ZkrA/xn+T+t8vERJ+djQq3Mepa6JWJG
	Ds4PJz0Cprm8iNtN+4ETbN/V1A==
X-Google-Smtp-Source: AGHT+IHg6sh6ARvRYSwuyoF2hmtnjsmopqC9TmkEeYtf8f4hqHAhSC4oiX7GDCdXqzTzoglQYBrSmQ==
X-Received: by 2002:a05:6512:2082:b0:4fb:772a:af12 with SMTP id t2-20020a056512208200b004fb772aaf12mr617044lfr.21.1694761454189;
        Fri, 15 Sep 2023 00:04:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id v21-20020aa7dbd5000000b005256771db39sm1818148edt.58.2023.09.15.00.04.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:04:13 -0700 (PDT)
Message-ID: <6f40ee72-b763-c58d-44df-ea40d1309820@linaro.org>
Date: Fri, 15 Sep 2023 09:04:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: Add SM4450 pinctrl
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
 agross@kernel.org, konrad.dybcio@linaro.org, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 kernel@quicinc.com
References: <20230915015808.18296-1-quic_tengfan@quicinc.com>
 <20230915015808.18296-2-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915015808.18296-2-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 03:58, Tengfei Fan wrote:
> Add device tree binding Documentation details for Qualcomm SM4450
> TLMM device.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>

...

> +
> +patternProperties:
> +  "-state$":
> +    oneOf:
> +      - $ref: "#/$defs/qcom-sm4450-tlmm-state"
> +      - patternProperties:
> +          "-pins$":
> +            $ref: "#/$defs/qcom-sm4450-tlmm-state"
> +        additionalProperties: false
> +
> +$defs:
> +  qcom-sm4450-tlmm-state:
> +    type: object
> +    description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
> +    unevaluatedProperties: false
> +
> +    properties:
> +      pins:
> +        description:
> +          List of gpio pins affected by the properties specified in this
> +          subnode.
> +        items:
> +          oneOf:
> +            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9])$"

This is still wrong. How many GPIOs do you have? Please open existing
bindings for recent device (e.g. sm8550) and look how it is done there.

...


> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    tlmm: pinctrl@f100000 {
> +      compatible = "qcom,sm4450-tlmm";
> +      reg = <0x0f100000 0x300000>;
> +      gpio-controller;
> +      #gpio-cells = <2>;
> +      gpio-ranges = <&tlmm 0 0 137>;
> +      interrupt-controller;
> +      #interrupt-cells = <2>;
> +      interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;

Missing example pieces. Again, please base your work on other recent files.

> +    };
> +...

Best regards,
Krzysztof


