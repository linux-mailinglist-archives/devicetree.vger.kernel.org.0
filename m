Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECA1867581D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 16:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230342AbjATPIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 10:08:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjATPIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 10:08:06 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5026BC1302
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:08:02 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id kt14so14730075ejc.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZloHG/b+aUSzeESbN9+Hbz6Kz4K6ar0eODA3eSRcTt4=;
        b=fvjOJbmCatrxy3kmbDBZkiCSxXkDHf81I9S8cORViLbYbRvNcqC2+otHYyYn9X+aVB
         oPokIWUIX4sLJ9LLOPPhZBaI6w13WWbmZw7pxTlsCG+lfXt+mU2TJGL1JDsQo9BiaMQb
         UxC0G8MyNtNTvKIH0NF0ahNh051Gb3MJmiscczuo9CVFEsH/bg5FDGhZh3cv850wCXW1
         P2CgPh/r8NOm36lJO1SZUyCR+UwjOVhuc6Wg/AucFHTzmDL/W7CNF41JFTAUZOZYKlN/
         vVtvXoavDpptLy06mG4tXpvtDLkhYe+TJV28PgwVEKb4y/dNlu4JNW9WN/l2/L/jJSdZ
         LSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZloHG/b+aUSzeESbN9+Hbz6Kz4K6ar0eODA3eSRcTt4=;
        b=VmmWrprRgUcnWBVdrqlUBihZ8Kj3opAM2eQBo5iFfKS+jEYXOb4/LlbGuWxl+JQDjm
         WShtiX687oDOYWT3wMSlljigxyCSLdJnLH4KC9O/kds0kv+SrfxvrhrFGKMS0038Lujh
         5w09VqpZk38CuMcqKdCO0RVFKI4x4Z0t/PeuDTSAD3jytEEtezHWvzd8j4Z6TRPXEck7
         uUEPXtFhod2KlD6I/7JbtNKM7+IPhtoRTDdgurmK45Rm4TJ4aM8j1NiYG3np+XIYAo/r
         dq+Lp0hMSS1vZe/+7yVEldE3d9w2u/JNr/zsRIb+W8LEY+2Or/tfZegvIIdhLR4Vc31j
         ZUXA==
X-Gm-Message-State: AFqh2kr3CrOMKn8a0dCJoSaa8DdV/9nxJeBRK9df788P3aEM86tYoRTv
        1VpCgWqKIUvbpZ6HQk/qmOd43g==
X-Google-Smtp-Source: AMrXdXu0TCIsz6KA4nidb34t6GeimnrRJpKQf8lbl0ED3lMO7EjYah3chjPsQGur8g3vZ3FUlgjSRw==
X-Received: by 2002:a17:906:a898:b0:820:4046:1586 with SMTP id ha24-20020a170906a89800b0082040461586mr12094672ejb.12.1674227280837;
        Fri, 20 Jan 2023 07:08:00 -0800 (PST)
Received: from [192.168.1.101] (abyk37.neoplus.adsl.tpnet.pl. [83.9.30.37])
        by smtp.gmail.com with ESMTPSA id fs37-20020a170907602500b0086ffe3a99f9sm7756004ejc.82.2023.01.20.07.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 07:08:00 -0800 (PST)
Message-ID: <ebde7290-e99c-eb91-d96e-ada60a43b06d@linaro.org>
Date:   Fri, 20 Jan 2023 16:07:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: msm8226: add clocks and
 clock-names to gcc node
Content-Language: en-US
To:     Alexey Minnekhanov <alexeymin@postmarketos.org>,
        Rayyan Ansari <rayyan@ansari.sh>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230119190534.317041-1-rayyan@ansari.sh>
 <20230119190534.317041-3-rayyan@ansari.sh>
 <e079e820-2df0-3c95-10ef-527020b97f5d@postmarketos.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e079e820-2df0-3c95-10ef-527020b97f5d@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19.01.2023 22:42, Alexey Minnekhanov wrote:
> Hi!
> 
> On 2023-01-19 22:05, Rayyan Ansari wrote:
>> Add the XO and Sleep Clock sources to the GCC node.
>>
>> Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
>> ---
>>   arch/arm/boot/dts/qcom-msm8226.dtsi | 6 ++++++
> 
> Should the same be done for msm8974 dtsi as well?
yes

Konrad
