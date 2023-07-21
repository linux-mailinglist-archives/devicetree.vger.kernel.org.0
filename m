Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B31BC75C16F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:23:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbjGUIXS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:23:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbjGUIXF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:23:05 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84AC30E1
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:22:58 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9891c73e0fbso355845866b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689927777; x=1690532577;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U3gWVnV/hO3FNFQifJeUbwGm90QsBerXmMKobezGqYQ=;
        b=UIrgACagw3hOXCLO3SdYeeTu7nDqhPXekm2ufTSOYQrYEhjyRFSA+MF8i1tqmEH1YD
         W2FrjLKzqONx/0WR3wCWAZRfZ9AFq9VtEmG/bCZmcgDqS7xJV3bWV0lnaKiAxjktj+dK
         fo5Q6r//dOfl/kQsS013lXbl3PQImpMlg9Xn9357AKVUfwyVPcjsjqkbbo04tXfcPvOg
         Bz1CQUwsJfDdOCtHkcuJFsTIEGmE1GkkQ39Gvg2vCs9DC1EoSTXCY/86jDtsHWxDYPp1
         jL1vd+hCarPB6bfTnuAb5FRIdQgLa96yY5Iagpin1AGjs8G6oCVFIByIsWPVuMz95GiU
         Jjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689927777; x=1690532577;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U3gWVnV/hO3FNFQifJeUbwGm90QsBerXmMKobezGqYQ=;
        b=HTcECplySXMxcFUsR7rD9kyBZH+8oetNlwL9b+Q0nSSRp8OhzBT27i7Eudn+62vFAj
         hRzjDfM6oXpsNxF8ALPlaOsT2bT6U7HxkA5Edfw6YTENsing0ewMHkfctZzgflUt6hj+
         VcIZeZ+uF07WWFq/LM+fCfZq9npFtH0K9UIpHaPdGiX9rvU3lYXrllXafGIb7lnEoJ5w
         6SO9KLzUJqLjmRVtTT7euqcRe59aPifWKS7KiuL0iv8IUS/x6fLgFNiuf8H7zz63II/o
         1qg2mc9xCXFX9P9DfCD7EIqL/69QHGDo1q0wrN/Lr6SdeBUpewXaCCXk66v8fBeKyH7E
         kaKQ==
X-Gm-Message-State: ABy/qLbNp+CNvKcLyuo5nVYXb9TM9GqTNq411NEdLCDXba8JRq10HTkw
        I+Xrhi/6jtLHDamsm4J5NxmQMg==
X-Google-Smtp-Source: APBJJlE0QSteAu+Es7qkLrRxrkP7EA7T87AT0f9kkdWVCrdxgcLjomp9RlAZfiFhLG3ELxlltpFs9A==
X-Received: by 2002:a17:906:7381:b0:994:13c3:2f89 with SMTP id f1-20020a170906738100b0099413c32f89mr1333198ejl.27.1689927776949;
        Fri, 21 Jul 2023 01:22:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id a6-20020a1709062b0600b0099297782aa9sm1803681ejg.49.2023.07.21.01.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 01:22:56 -0700 (PDT)
Message-ID: <fe062725-e9b5-bcc6-d515-8e2d4989301a@linaro.org>
Date:   Fri, 21 Jul 2023 10:22:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: dac: add mcp4728.yaml
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrea Collamati <andrea.collamati@gmail.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <cover.1689857295.git.andrea.collamati@gmail.com>
 <9816cd272d19802ec6eeff0c7c29e85d4a0ade88.1689857295.git.andrea.collamati@gmail.com>
 <4898bc33-5245-8fb2-e5e6-8ea1a8f32e1e@linaro.org>
In-Reply-To: <4898bc33-5245-8fb2-e5e6-8ea1a8f32e1e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 10:21, Krzysztof Kozlowski wrote:
>> +  - |
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        mcp4728@60 {
> 
> The same... Probably more comments were ignored, so:
> 
> This is a friendly reminder during the review process.
> 
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.

Damn, this is my third comment about the same. Here was second:
https://lore.kernel.org/all/5e5d1a1e-f106-9dd6-c19e-f933e8e70dd4@kernel.org/

so you nicely ignore feedback. NAK.

Best regards,
Krzysztof

