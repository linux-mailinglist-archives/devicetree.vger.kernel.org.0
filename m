Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01E4D649B09
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 10:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiLLJYX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 04:24:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231877AbiLLJXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 04:23:33 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBD4BCD
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 01:23:30 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id q6so7448602lfm.10
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 01:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O5Xz0UjmZO33d9kwCYmG2a788s0KOQR2cAx6RTAdVUY=;
        b=j4OuqzbzvhrZTlhV4C0BdFHOs6n4WWdaUMDXRB+LUUfnAwdjJrO8ocTMF5doVn36I9
         JfVPlD7a+3OtCGKAYZMeeGCiu5q1x+3Q/0OYcHQ82Tz1gHZlx97s8UsZEAGEhuCYur9w
         /sxkM1pC9I4ICn48DmnI+7BSy867EyZiJas/mzo+I0NmDt48xLqmBQUXiP/0oqKGEJ5N
         rkjjWZDBaryrMF6D43Eur/iN97pbgrvFBHqIZ/+eZMUeqMUqDB1yso612fWbFBAyooeU
         vReXnoBaQv101czcoK4bQp0fIgulKQiKMzQMqjlqYR+SdgQc3o2ZVTN+bZLrCqAZQ3H4
         D+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O5Xz0UjmZO33d9kwCYmG2a788s0KOQR2cAx6RTAdVUY=;
        b=26/R3POg5WKgwXOG99BZTf0G2esWh7ifJD3Wp6IN52qQ05hbH9ZmmrU69G6VL3lCXV
         yNCmKUfRCoEEuLiw394Dube2VYd07JYI7GKTvaCDtn21CqcL0svekYZ8Cgb2Dymrg8oV
         57MES6skn3303vv0Nqriy4vyQrNJGm0Re3vXoSXhIRC+QMu2A6cVo2bP+aB99yVWPRLn
         8C1tWK5P+Bs7Szn+KoQSESN28VSs3EtDCIq5BdKhLK2QQN4vUR1AD9EnFYMrPC1nyJRi
         N0eBHvmHojljoZvT3EA//h5Flr9ugIMFUy6eTu5q0DD+LjP62E3kqe31Zey5M19/I25v
         QdSg==
X-Gm-Message-State: ANoB5pn84PJH4hRO3ZzR5PmlFlD5Pjz/IzLRX2apKU3TeOUJC4GYKiMX
        7AJQU83bBb2/uAsbmqbgS4MzaA==
X-Google-Smtp-Source: AA0mqf4StnPxyrh9hAdG+5R1WUC0F7PP+Ys0QmLS9km4WUGJ4bpAvBzPCgyJL6Krmmi6LuiVeYADFQ==
X-Received: by 2002:a05:6512:2382:b0:4a4:68b8:9c36 with SMTP id c2-20020a056512238200b004a468b89c36mr6486168lfv.30.1670837009074;
        Mon, 12 Dec 2022 01:23:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c6-20020a056512324600b004ab52b0bcf9sm1558968lfr.207.2022.12.12.01.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 01:23:27 -0800 (PST)
Message-ID: <5f61cc70-9501-ee4e-010f-5188f87e3ef1@linaro.org>
Date:   Mon, 12 Dec 2022 10:23:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
Content-Language: en-US
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <45157029.fMDQidcC6G@steina-w> <6da2330d-516e-7dc4-a000-1e68c7f7887e@denx.de>
 <2735716.BEx9A2HvPv@steina-w> <c6f2cc52-41c6-028f-4d3f-e8a4d5d73dcd@denx.de>
 <9f8b1c17-0bc5-ae99-b7b1-cb2f52f9310d@kontron.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9f8b1c17-0bc5-ae99-b7b1-cb2f52f9310d@kontron.de>
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

On 12/12/2022 10:09, Frieder Schrempf wrote:
>>>> This does seem like a hardware bug right there, can you double-check
>>>> this with the hardware engineer ?
>>>
>>> Yep, checked with hardware engineer. An 470nF is attached, together
>>> with an
>>> open drain output and only the internal pull-up. So yes ~113ms rising
>>> time
>>> until 0.7 x VCC.
>>
>> I don't suppose you can have that capacitor reduced or better yet, some
>> external pull up added, can you ?
> 
> Actually our HW engineers have implemented a similar RC circuit to
> provide a hardware delay for the EN signal. I think this is due to a
> design note in the datasheet (see chapter 7.4.1) and therefore it's
> probably widely spread.

If I read section 7.4.1 correctly, it would be enough to just add delay
Ten=1ms instead of the capacitor, right? And that would be
device-specific. But if one chooses the capacitor solution, it becomes
now board specific.

Best regards,
Krzysztof

