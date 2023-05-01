Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5726F309B
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 14:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232463AbjEAMJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 08:09:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232430AbjEAMJI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 08:09:08 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ACEE19A
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 05:09:06 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f109b1808so490561866b.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 05:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682942944; x=1685534944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gG7AJoEMw0rRspVk4H1YTti4Qp6HxLF9oYggD49na4g=;
        b=yAYB56ZGD8i0s28msYYig6NEyd8G3EXeKQDSXAbOuli+5zy6woOEOT2bELIEHlG0k3
         DcYo64KI9OwU1BpALLTQYNszeDR4mLbfagvuP6ki7fUfDSDpuXTfGe5Qhicd0BIA4S+8
         5AjMnj/k2SMQ+YUyh0TTuYf6fYUHRqoivLkzUCGKBcVuNBFetGi6X4Vdk8TKTQFgMcjR
         XVIEatfIDnkEdatudJRChSKCzqouLqPo5Wr15R6PBb+VY3OMlx6RNLqBf7dt6aJA73EK
         Sfr75d6S+Bpj2+WScnIwTCe2M97f5QOXMump0vlyonLlXSwt/nMjuqBXBNw2XAquZqDu
         C0tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682942944; x=1685534944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gG7AJoEMw0rRspVk4H1YTti4Qp6HxLF9oYggD49na4g=;
        b=HD4kXRYTCWd6YBy/SCxYnuZXdPkm+YJAHwH6pXuwXs5pv2/V37qfIsD3igupVj4AER
         Ryf1UgJxqtKpa0DsbzlThQfOYvZ1BQcpRVXL+i3dUaIu8y2LBoXT0lK4bZXlWohFjTnR
         XYkK2yF4xYWLJ6AaOOIMgpaRtMMpVxPIJbeWspfxi0P5UWcx1EiN7ZqPB3Q3qykw3djI
         zvHbypYfcupMsupMDWRJxb4YgNE7PQYIKaAQcFUrp2BXgsBkqd9JZqFkMrz0DoAs4AG6
         KUbK30F1rNSxeiOHjjIK5viwMXP5qdkvfEee5wvI7xsnKLamzGRi2lqVSZVbJgDc4NzD
         G/gg==
X-Gm-Message-State: AC+VfDx5m7v1Wlfs9yghevuiAalSOUD1SWuFhtcXx9nQZAgq89I951JO
        2XCZnU8GtXLMgfgx+UHsMGi9Hg==
X-Google-Smtp-Source: ACHHUZ4X5StXV0KODOMIVGaetq7o+934RXdaULRDFcBOof+98iIbj1SLCeEnCqQB8aaaklMV3yG/6A==
X-Received: by 2002:a17:907:a410:b0:94e:dd68:aba1 with SMTP id sg16-20020a170907a41000b0094edd68aba1mr12205032ejc.67.1682942944567;
        Mon, 01 May 2023 05:09:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:637a:fd0c:58fd:9f00? ([2a02:810d:15c0:828:637a:fd0c:58fd:9f00])
        by smtp.gmail.com with ESMTPSA id lh11-20020a170906f8cb00b0094a789256dcsm14815590ejb.111.2023.05.01.05.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 05:09:04 -0700 (PDT)
Message-ID: <03806421-73ac-0d82-f1cb-e54c2e8f27e9@linaro.org>
Date:   Mon, 1 May 2023 14:09:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/2] docs: dt: fix documented Primecell compatible
 string
Content-Language: en-US
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alex Shi <alexs@kernel.org>,
        Yanteng Si <siyanteng@loongson.cn>, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
References: <9e137548c4e76e0d8deef6d49460cb37897934ca.1682333574.git.baruch@tkos.co.il>
 <878regbbr7.fsf@tarshish> <9569ef0d-0d94-3ff9-468b-152fe949e7b5@linaro.org>
 <878re8741n.fsf@tarshish>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <878re8741n.fsf@tarshish>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 12:01, Baruch Siach wrote:
> Hi Krzysztof,
> 
> On Mon, May 01 2023, Krzysztof Kozlowski wrote:
>> On 25/04/2023 10:31, Baruch Siach wrote:
>>> On Mon, Apr 24 2023, Baruch Siach wrote:
>>>> Only arm,primecell is documented as compatible string for Primecell
>>>> peripherals. Current code agrees with that.
>>>
>>> Once again my patches do not show up in patchwork. But they do show in
>>> lore:
>>>
>>>   https://lore.kernel.org/linux-devicetree/9e137548c4e76e0d8deef6d49460cb37897934ca.1682333574.git.baruch@tkos.co.il/
>>
>> You used subject prefix which targets Doc subsystem, but did not Cc Doc
>> maintainers (get_maintainers do not print them). If you target Rob's
>> Patchwork, probably you need to fix subject prefix. There is no "dt" prefix.
> 
> Thanks for the tip.
> 
> All previous commits touching Documentation/devicetree/usage-model.rst
> use 'docs' for subject prefix, including one from Rob. I followed this
> example.

Hm, I see Rob and others indeed used "dt:". I guess Rob's filters might
need some updates?


Best regards,
Krzysztof

