Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6F9579287E
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 18:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233557AbjIEQWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 12:22:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353558AbjIEGma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 02:42:30 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA3A7CCB
        for <devicetree@vger.kernel.org>; Mon,  4 Sep 2023 23:42:26 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9936b3d0286so324210866b.0
        for <devicetree@vger.kernel.org>; Mon, 04 Sep 2023 23:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896145; x=1694500945; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7ugyMfJxNvEDJjj/a2Xl7UVxjq+twvGg0NQ9wiJcmDU=;
        b=qByfCK5bKVcWHpUgY+YhvyppRbQqUjIQXvn8tuHvAmsLqHL88eBLUcFj+KlGcPDWe6
         pvHqm0++fPkTM2qMEhzC0AbvrybhSnqzhUGKEX/rUGEY/EDMjEjqscMJS7BypUwERExu
         JR2laMcMLt2BrH0stGbmvFKgf+Yn7R1AVdhCueMhKozGprXX8oVsw4U1xnPuaIiHAlPd
         nELOVtfWVqwZh3TA2AzlyA36PZm+C3UNA6Ix58grVnGCWc+VDgH+Cz6e3AiOBCXCZUwK
         btO7EpIkTC6DYP/0zBcH2oZFKHWT0lpHRHaZk6EZNPmCbRHQviowsdTpJOEW9me9JH59
         sD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896145; x=1694500945;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ugyMfJxNvEDJjj/a2Xl7UVxjq+twvGg0NQ9wiJcmDU=;
        b=RbCQy/r+sXdTvahiioPrNOhTs83+0/jfHR/B4QDp1Ob6EAQFk9wgBCt+TUuCZZYNio
         F+r96YGetqNfRhyf5El2jmXLPfZFiEpg0V5EWBP/YWHXGJVbpV94MAIa4LfcI1lWtgd+
         Wx2614Z/bnPoe/PKYIYsxizMKNgwbTDFuO1DDAmORAJPU6d1LhCOWj2RjdcqubMePbbY
         ALx0bSmazJdfJOrNhKItmpHsPOCfc0F1tLPDVq0tmJnOk4fD3Ls3KVBihih5al3FXAzT
         9QZoFxN4fmzfgSDolVnmAz0c8qo99kvchCG8gvt49vNDBxobaz+RRWhD1MS7yDrcDJKY
         E3GQ==
X-Gm-Message-State: AOJu0Yz9FSW9mR8gTV1FTO1yaPlQrtfVNaToF7tWVWBl1s4Vehvn2VpX
        Ayn2oBOS13bevCmutmBX3yuDdg==
X-Google-Smtp-Source: AGHT+IFSmevS7/xXWVuQyFeT07AMl+yZq3VbNuqQ8OMhjg5tonqxRjiTIhrioHj1GnVBbyaP7zS7+Q==
X-Received: by 2002:a17:906:ef8f:b0:9a5:8eab:49da with SMTP id ze15-20020a170906ef8f00b009a58eab49damr8369843ejb.19.1693896145502;
        Mon, 04 Sep 2023 23:42:25 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id lo6-20020a170906fa0600b0099bd453357esm7077134ejb.41.2023.09.04.23.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:42:25 -0700 (PDT)
Message-ID: <36680e91-f8f2-12e1-900b-48e6166bc7f2@linaro.org>
Date:   Tue, 5 Sep 2023 08:42:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v5 1/3] dt-bindings: hwmon: Add Infineon TDA38640
Content-Language: en-US
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        krzysztof.kozlowski+dt@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230831190731.265099-1-Naresh.Solanki@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230831190731.265099-1-Naresh.Solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2023 21:07, Naresh Solanki wrote:
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        tda38640@40 {

Any reason why you ignored Conor's comment here?

Best regards,
Krzysztof

