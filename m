Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEB8D79B00A
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:48:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233298AbjIKUsE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:48:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236055AbjIKJtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 05:49:49 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326E0E4E
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:49:44 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-31f853f2f3aso1355532f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694425782; x=1695030582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=52mNZ5NlQdO30lUKqzJP0EsYifT5Awt2SM2gJLbTQfs=;
        b=m4zTGgmvZxY+i2pIswtAgWnD5p2EkmeN8xrqWqqaYQFLJKvUuX5QO0tArnqeCvCrap
         1qz82SEyUZGg52GYpCpzviEOhHvHWJifNPO4XdvBBslbFrqpVFNj9ZGcF8z93fc1dkMi
         68f189hl43JIAPePPkTARsjpVZUy/RcBwr7Vn3efWCWScEf1LQaX4iyhrpTE8FTzKyRe
         fwub0WYNDx0BSkMQ3XV/mSxZTITjXCHPzC2A4mOPOU7Fn8i2qO5hjcrafs1SxOFYgxjH
         Qxpv0rhxpHQtg3POSiWmoxd6IL3kh+hRFw6MWPWJXJVQwV/vuV4pv223ErxeE4hf138m
         /x2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694425782; x=1695030582;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=52mNZ5NlQdO30lUKqzJP0EsYifT5Awt2SM2gJLbTQfs=;
        b=WVm6JAvF3o16S+tTiaa9ko15JgQKP9ktVyvU2DHZ3UeCdO3qyp2mTcHWhIGosxfR1d
         OQwmEqSjlQfWO17M0AwY92botv1+6qYrGKrNdeJ/3AtmLMArCqb6SkVFeJ/7OL9cIiwC
         uZ7pmmVp2HfwKe0SNVQ0/U6eBf1pc3tIq332QUeijSY8qmJert7i7GlpuY2r3DsKO4pG
         DEOGCAF5ySJ0c9NDYQ+ptdaGihi1nN87VmAO05vA+bStbfSf0tMKRMiwyEQbYAPKkocT
         k7IoMMbexJdzqdOKJSjivb/IAmWqZBOOrBurwycuFDbPFcDw/Mqx3Llg7JoZ7rCFZr6v
         cs1w==
X-Gm-Message-State: AOJu0YwgO1fwU2sx9mhbi4uJEB00gKbbTPYBysRHNqmZaTWucDesLvg+
        f3WzFK67Le1Q0mWYQKAK1nhPyA==
X-Google-Smtp-Source: AGHT+IGPQ0Wdf1DDEIFakB1U1w5I/QQ08GV9TuR4tNS2Sz0KeCGoCbjRcpYN6Mj1gI9j1EOMWwNYlw==
X-Received: by 2002:adf:cf02:0:b0:30e:56b3:60fe with SMTP id o2-20020adfcf02000000b0030e56b360femr6104736wrj.4.1694425782666;
        Mon, 11 Sep 2023 02:49:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z2-20020a5d4c82000000b0031aca6cc69csm9574308wrs.2.2023.09.11.02.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 02:49:42 -0700 (PDT)
Message-ID: <9959a8b3-6fc7-6de2-fc2e-d5e8ebfefc34@linaro.org>
Date:   Mon, 11 Sep 2023 11:49:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: arm64: dts: mediatek: add description for
 mt8365-evk board
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>
References: <20230910062852.15415-1-macpaul.lin@mediatek.com>
 <f8864242-daa1-e72f-4759-aac3fa1bbcf2@linaro.org>
In-Reply-To: <f8864242-daa1-e72f-4759-aac3fa1bbcf2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/09/2023 11:09, Krzysztof Kozlowski wrote:
> On 10/09/2023 08:28, Macpaul Lin wrote:
>> Fix the missing description for Mediatek mt8365-evk board.
>>
>> Fixes: 4f5fc078ac6f ("dt-bindings: arm64: dts: mediatek: Add mt8365-evk board")
> 
> There is no bug here. Drop.

So you decided to ignore this one?

Best regards,
Krzysztof

