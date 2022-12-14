Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 957C764CCC3
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 15:58:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238207AbiLNO6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 09:58:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237778AbiLNO6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 09:58:04 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38EEC27917
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:58:03 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so10846460lfb.13
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WnLnhyH+qeNBgZwxe9z+4G+3yU+hevVG6WnhaGxuJf4=;
        b=Air4tn236LJXiT/97t9rfo3SZBy5PeH6nshGz3zu+OItD/F+w9xh6fCQpr+oEN9aXp
         xjEDCSunLuVjjDW5IcSrpSlJkAjsitq/D/0DZlqQHkGdp7PvYUnOrXupLNhFjpHxZNa4
         BJoNJjEdPiSDh7RLHwMvVvkOaReTkA2QGDLrTiAazKxtwCDZxVbD26gpEFXPQ7Xlb9WV
         9zV7496979obBkiY3mGz7ZkU8wKkWbTpBfKty4T2BTs3i4NiHn8Hy+Ci3Le87qpmo+7w
         vtTbTzv5Ex9CST63VBtlLKyhArIxV0I124X9xEyvd/z+S3BO3KrbdMKgYXPdQT7oucJ3
         rP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WnLnhyH+qeNBgZwxe9z+4G+3yU+hevVG6WnhaGxuJf4=;
        b=Mf6KFLTpGND1QcBR2IuafUIMZ2Fa2H55kUL6xpxQA/Y47XrlCEQwgQFcQAPOhmGHj/
         9C44NAgZwCX0mI2XV689F19uDLf5ltHOkWDyERUX0sI3XBv/TGRwnIkdoT/DDEeOXXUF
         v2lOeTyJrNSTmmAF9GIhzfhd155Vkvisn09cjm40P1Swjde3jGUunT1EY5kj+nRu+3SJ
         uBSz7LXpAH6lPAfFoLRYqMYJl0R5UqxgNvH8OAn41yxZAV7Z9p001ePBqPGjKvaseJiy
         oFjnpFnnRUJ2ZneokT29sWtTKi0fz1FoxBTgTwTgvT+bnh5/A3t9CiV6CIGwh7gnT0mP
         DyTg==
X-Gm-Message-State: ANoB5pnJhbutNZ2raicFTXsvqKM2Tsw/M9anOe0eDjoCw3qMrVTCxgv1
        3bseS9psinC8Q5JdHcPkJ8WW+Q==
X-Google-Smtp-Source: AA0mqf7Bp/Nce2g7/V9EGE1XxedPEfq71uMCEgxV1nfX2lvUfdF8mH5HhAQFS8oHmJoqqaUMbyXplw==
X-Received: by 2002:ac2:569e:0:b0:4b5:29fe:86c with SMTP id 30-20020ac2569e000000b004b529fe086cmr1554872lfr.17.1671029881628;
        Wed, 14 Dec 2022 06:58:01 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j6-20020ac25506000000b004b53eb60e3csm831164lfk.256.2022.12.14.06.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 06:58:01 -0800 (PST)
Message-ID: <66665839-ebda-7f40-5c94-53683779d5ab@linaro.org>
Date:   Wed, 14 Dec 2022 15:57:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 2/2] dt-bindings: Add Arm corstone500 platform
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-3-emekcan.aras@arm.com>
 <2c799103-3e5f-f288-3c78-6360c17a8e45@linaro.org>
In-Reply-To: <2c799103-3e5f-f288-3c78-6360c17a8e45@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 14:44, Krzysztof Kozlowski wrote:

> 
>> +      - const: arm,corstone500
>> +
> 
> required:
>   - compatible

And this is actually not needed. Most of boards skip it as root-node
schema requires it. This comment can be ignored.

Best regards,
Krzysztof

