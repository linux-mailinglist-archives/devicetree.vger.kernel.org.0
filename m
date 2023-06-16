Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E93732C6D
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjFPJrf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:47:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234267AbjFPJrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:47:10 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E721B5
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:47:09 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51a4088c4ebso84463a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686908828; x=1689500828;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ifjs8IzGG51I99S8/uEN1zbxdqPw85c/zfKSzuZxu0c=;
        b=mYaq4eLXeDX588B7PnPusUgbtP0xodNgXFt+zvt5ErujCNWuo+tV82S7btWcFw5UYC
         aqFGAHxYfrMkqPkz65ye/9gbM7Dohn8bRwQQ8ZN01WfzV50qZhcHw6mf4KNDYGLyVyMi
         bBzpzHvSKdzd3KhjotsSHS4ixZ9CXRetMEPg+DJEJXxQto2tfYMkBRfRinEJMoNKTHJg
         Rr1MeJc35gXBisfwfx+279X34JJthSycH37/+HRN/NgefHIe4g+96ZIXMP/mTzzBoTy1
         JsAoEwQtVLofvAecwmWIaFiuExvgi4xAvpuA89ni+6IuywlH8LF9WQmjgxcAOoma5kFb
         WUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686908828; x=1689500828;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ifjs8IzGG51I99S8/uEN1zbxdqPw85c/zfKSzuZxu0c=;
        b=Dz878Jm3Z/iSC7h1ZXOQL+LAPEBnMqalD3c0Jlrsx8LJh2AUVw2AikRrWtnjwLC2Lu
         86RAIVANHFm97kAMqfrZmhHnOVjXS/M+TZ3htY8RYsKBJ/0jZMczc/WNp3x2Gv5F4V1o
         B0L+D99IbemPTwikTRDDghsB/rDTO2bN5Pb9P77woWw+nabCdYIP+s17l9UOrQ5LVC//
         ltouay/Wu8WgDpQkS4Qd6UuvIBYbt7aGLWtXGdMPHXV++Me5R8QHkH/6rsO4y6hAz5iV
         t5NDTTsmg7HrsTII/+/xMJgP+YqUnul5pLSostpuA6Cp8kQKWJBGv02t7OqzUXlIr0I/
         8nMw==
X-Gm-Message-State: AC+VfDxlG4kPBan87DP4q3yUlvdN7+yQyUC6wQC075U1cLgslIvH/BZ9
        7+Wv77fzrhTt95FIsE9klM62CQ==
X-Google-Smtp-Source: ACHHUZ6HAxVgJx2QSRY/5nUox1m78oic1SYdy3ZwKZhZezMNKwREPHgmZ4rHXvX7m+8NTxphc0GRdg==
X-Received: by 2002:a05:6402:21a:b0:518:7a51:7e97 with SMTP id t26-20020a056402021a00b005187a517e97mr822922edv.36.1686908827946;
        Fri, 16 Jun 2023 02:47:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v15-20020aa7cd4f000000b0051a3f9770dasm212422edw.8.2023.06.16.02.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 02:47:07 -0700 (PDT)
Message-ID: <172e50ef-c516-b992-72b7-dc9ef82a3667@linaro.org>
Date:   Fri, 16 Jun 2023 11:47:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/6] dt-bindings: loongarch: Add CPU bindings for
 LoongArch
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Binbin Zhou <zhoubinbin@loongson.cn>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <c1f86e5d1026937abda331ce564e5ee96b7114c7.1686882123.git.zhoubinbin@loongson.cn>
 <20230616-gallon-shrank-42613cd73666@wendy>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616-gallon-shrank-42613cd73666@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 11:34, Conor Dooley wrote:
> On Fri, Jun 16, 2023 at 02:10:38PM +0800, Binbin Zhou wrote:
>> Add the available CPUs in LoongArch binding with DT schema format using
>> json-schema.
>>
>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
>> ---
>>  .../devicetree/bindings/loongarch/cpus.yaml   | 65 +++++++++++++++++++
>>  1 file changed, 65 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/Documentation/devicetree/bindings/loongarch/cpus.yaml
>> new file mode 100644
>> index 000000000000..c3e2dba42c81
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
>> @@ -0,0 +1,65 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/loongarch/cpus.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: LoongArch CPUs
>> +
>> +maintainers:
>> +  - Binbin Zhou <zhoubinbin@loongson.cn>
>> +
>> +description:
>> +  The device tree allows to describe the layout of CPUs in a system through
>> +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
>> +  defining properties for every CPU.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - loongson,la264
>> +      - loongson,la364
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  device_type: true
>> +
>> +  clock-frequency:
>> +    description: The frequency of cpu in Hz.
> 
> Why don't you just add a ref to the common cpu schema and use the
> standard properties for communicating clock frequencies?
> You then get the standard properties for l1 caches, power management,
> frequency scaling etc as a side effect.
> 

And operating-points-v2... unless all Loongson CPUs work with only one
frequency and do not allow dynamic scaling?


Best regards,
Krzysztof

