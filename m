Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4BFE72F5A1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233669AbjFNHNT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:13:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232453AbjFNHNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:13:18 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3033198
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:13:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-977d7bdde43so68321366b.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686726795; x=1689318795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39FQc7XYz/GtGHXe+c3n88fRTHbsyrn3HNjXZWiAcAs=;
        b=NwVA56Fn+jQb1rR1S0jXHfbdeJOS5uYQXaBNnwZ2Ru+/OCs2DNOzXaofntk0anDkcS
         D4KmWncBmOTo5JD8RXGlYFsn72VJB4KbsffjlMyqnlM2g1U70QiSKUwBSuYJiFeGncnH
         R7HFWigYPqeBJEeFk2ID/dUN9S3qt0uqNkwFDZaFMGzNDbI9pSyJQl32teGlhZHeFXkh
         sXsRtddWTiI2dqQ7XJXqjnwnSH25kZfrsdnND8WOQikhRhNZxNRRKpOtUhc0fUJIwmG5
         s7ZRUURWzN5NspMRe2XTnGv+igkMgRxkct9JIa3TJxxhK64gorNt9nYYEEr+gv+QwN+4
         UQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686726795; x=1689318795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=39FQc7XYz/GtGHXe+c3n88fRTHbsyrn3HNjXZWiAcAs=;
        b=ZD3O+qoV+rVkAEh0O0euRH5ACuj/iuZy/N9P2AN3IIYqARgnhxaS5lfhkNDYROLPKG
         mmc0Qz/8LIXDf2BOqDbcln7Adwh5tDgCtoWs2gTafY4AqwPVCFiul42yCJt5RbRTSo1c
         fKy5gcF4XTH/0FCbZR7GbhXNdKivR2yOB7PGneQ/Jl2RfHrjSiVUmCeDPJKNrxwxaOZT
         inNYfM7nVwQ9Ges6wsuB6VwUYGF5dho6FLtjnJ33ITUyiZb0K5RcRkzQaOciMn74Pzo9
         v+ComDhUXR1ZHO0zQ+Oa4biOIsT6yDOfWthuVnauOZOBfNBe6G5yiCp6HpTpvBRvUAGc
         CpoA==
X-Gm-Message-State: AC+VfDzf45p9QuikmGlQ8+S170p7YkdDC2pD2fu7YPhP458b1hvjuMZp
        keYhHPgjrKZhpJuM1MW75JH/4Q==
X-Google-Smtp-Source: ACHHUZ6NMpWJyhKT0TuIq4YDgw0CugUjDQ4M9lL7KBJ22jlm/El63ZALGxIQOdbp42ZnqhxO4D9y3g==
X-Received: by 2002:a17:907:3ea4:b0:978:8979:c66c with SMTP id hs36-20020a1709073ea400b009788979c66cmr794971ejc.18.1686726795696;
        Wed, 14 Jun 2023 00:13:15 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.153])
        by smtp.gmail.com with ESMTPSA id o26-20020a17090637da00b009745e1b6226sm7513520ejc.125.2023.06.14.00.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:13:14 -0700 (PDT)
Message-ID: <5a3b770b-45af-5d66-2596-c7d2ef8d70b1@linaro.org>
Date:   Wed, 14 Jun 2023 08:13:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] mtd: spi-nor: Add support for sst26vf032b flash
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
 <20230609144324.850617-3-miquel.raynal@bootlin.com>
 <b3267c392523277bf15fe8d24679add3@walle.cc>
 <9cc52c0a-c765-2cb1-93f2-6f406e676604@linaro.org>
 <6bc68bc829f171dee260d1646ba58c50@walle.cc>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <6bc68bc829f171dee260d1646ba58c50@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/14/23 08:04, Michael Walle wrote:
> Am 2023-06-14 08:56, schrieb Tudor Ambarus:
>> Hi, Michael,
>>
>> On 6/13/23 14:34, Michael Walle wrote:
>>>> +    { "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
>>>
>>> Please try with INFO(0xbf2642, 0, 0, 0). You can also have a look
>>
>> Oh, yes, I forgot about this. Will you send a new version of
>> https://patchwork.ozlabs.org/project/linux-mtd/patch/20220510140232.3519184-2-michael@walle.cc/
>> or you'd like someone else to take over?
> 
> Now that I'm back from vacation, I'll get back to it soon :)
> 

Welcome back! Ok, thanks, we will all benefit of it. Specifying zeroes
is a non-sense, but it helps us when we transition to SFDP_ID macro
(or whatever it will be called).
