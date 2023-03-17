Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96E446BE4D8
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:05:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231315AbjCQJFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232052AbjCQJFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:05:25 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9008AE7EFE
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:04:03 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id r11so17675531edd.5
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679043840;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+9q32H5maQAY7+Dr81+RVllp8r8V/8Ihh6QFteXqFU=;
        b=monslhkk1VBvMFaXE+OmJpTJ7739bvnwzQ1nH76yBk0x2FvUZw9b+Eu8kFOwfvJDyQ
         EMTxv3ziUDzdDYeevUA8okud/BGIBN7JVK/57Q4RaX3SKWkBwygjKPH64x0bG5c0Lgqa
         A4kqEOuXntc2b9UGi+QJj3o814dpeuwV6GV3vpJZSFwr9wuXSnXECIYc+19S8HR2pI/T
         rmOFjTzUfN7KMBXlFGr0glqk4sooxMJ1UYIRmKssQXUXE5z8QSUU/sa5wbNDkK6eDj4P
         bPD/AR27HeaDD9i0DFNqnyU1ZBJnP6W2m6M/Sic6cDta89U0qQxoIDpf8pVcDSlRm+/7
         KR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679043840;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+9q32H5maQAY7+Dr81+RVllp8r8V/8Ihh6QFteXqFU=;
        b=3L9ATx9dPjzPBs9plA0sO9vZfWfxPdtgW5gmjD5Fa12m84fn3FTv26IbgM2TUmKKvN
         K8H7O31L/QA2kg3dT2ru9t1mQs2UVqwz3vqqyD1ijhrVJOo3lZsTYuLfmOObz0vr30Pe
         DORQ9eKXDUOKTBTRMDnYxo9wJzEnsB9HR3oERCyXXKqlpyTCXqXt3rt3rXUgbAvpfjHB
         3Gk2G2vF8eRhukXL4Zzvsbj+d3j3Q86HDlegTTcpe16rJFeCfMU7yCCzEei3LsMarrru
         RqTI8i7nj6X0E/4k2Mh8w336ZzbB56SNy4snf6ZZpfVT/56iksLpLhJ9Bnco3jXIVChX
         PfFA==
X-Gm-Message-State: AO0yUKXa498aFxc9Jd1DJGtJc1ENqUiHWi1fjaWzVrekfR8TS/KkerK5
        utbjCaAgEG2DVrZOuP/mjdzcLg==
X-Google-Smtp-Source: AK7set8bTjVCu5fhcJEjLTpRFEkjqV3j8SkNDWaEpR82X2mKS8ejahTe3YQClj1j5CUX+i8qaGJ3Tw==
X-Received: by 2002:a17:907:9622:b0:932:35b1:47fa with SMTP id gb34-20020a170907962200b0093235b147famr601376ejc.64.1679043840103;
        Fri, 17 Mar 2023 02:04:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id lg10-20020a170906f88a00b008cc920469b5sm744608ejb.18.2023.03.17.02.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:03:59 -0700 (PDT)
Message-ID: <4027714e-b4e8-953b-68e2-f74f7a7f0e8e@linaro.org>
Date:   Fri, 17 Mar 2023 10:03:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Content-Language: en-US
To:     =?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>,
        "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        =?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= 
        <Singo.Chang@mediatek.com>,
        "nathan@kernel.org" <nathan@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "clang-built-linux@googlegroups.com" 
        <clang-built-linux@googlegroups.com>,
        "ndesaulniers@google.com" <ndesaulniers@google.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
 <20221227081011.6426-2-nancy.lin@mediatek.com>
 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
 <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
 <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
 <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
 <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
 <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
 <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 08:55, Nancy Lin (林欣螢) wrote:
> On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
>> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
>>
>>> Hello Krzysztof, Nancy,
>>>
>>> Since this series has reached v29, can we please reach an agreement
>>> on the bindings
>>> to use here, so that we can get this finally upstreamed?
>>>
>>> I will put some examples to try to get this issue resolved.
>>>
>>> ### Example 1: Constrain the number of GCE entries to *seven* array
>>> elements (7x4!)
>>>
>>>    mediatek,gce-client-reg:
>>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>>      maxItems: 1
>>>      description: The register of display function block to be set
>>> by gce.
>>>        There are 4 arguments in this property, gce node, subsys id,
>>> offset and
>>>        register size. The subsys id is defined in the gce header of
>>> each chips
>>>        include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>> register of display
>>>        function block.
>>>      items:
>>>        minItems: 28
>>>        maxItems: 28
>>>        items:                     <----- this block doesn't seem to
>>> get checked :\
>>>          - description: phandle of GCE
>>>          - description: GCE subsys id
>>>          - description: register offset
>>>          - description: register size
>>
>> This is what we would like to have but it requires exception in
>> dtschema. Thus:
>>
>>>
>>>
>>> ### Example 2: Don't care about constraining the number of
>>> arguments
>>>
>>>    mediatek,gce-client-reg:
>>>      $ref: /schemas/types.yaml#/definitions/phandle-array
>>>      maxItems: 1
>>>      description: The register of display function block to be set
>>> by gce.
>>>        There are 4 arguments in this property, gce node, subsys id,
>>> offset and
>>>        register size. The subsys id is defined in the gce header of
>>> each chips
>>>        include/dt-bindings/gce/<chip>-gce.h, mapping to the
>>> register of display
>>>        function block.
>>
>> use this.
>>
>> Best regards,
>> Krzysztof
> 
> 
> Hi Krzysztof, Angelo,
> 
> Thanks for the comment.
> The Example 2 can pass dt_binding_check. 
> 
> But the example in the binding has 7 items [1] and dts [2]. Does the
> "maxItems: 1" affect any other schema or dts check? 

Ah, then it should be maxItems: 7, not 1.

Best regards,
Krzysztof

