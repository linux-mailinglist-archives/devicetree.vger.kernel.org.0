Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9E8C7015D0
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 11:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237878AbjEMJfQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 05:35:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237479AbjEMJfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 05:35:14 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D00335A2
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 02:35:10 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-966287b0f72so1564040866b.0
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 02:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683970508; x=1686562508;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dY3lFIjNEelBviTPNoPhSs/VKfnEIsYSNc20Ac/BLxs=;
        b=sPhdxui1UQkP/sVipgBFi2xh03YenL3zBNZkC11lrroV4HiJb4ZEbgpc9wi4SwoKCE
         HJtcUv82RYi2h0lxOaU8ILbHO+NL0xOfU123prFnqCh9momIkPHqz7rGJe2ApbX63FYy
         HsqoWBa/l7EGZ7UAgfa6FqddEL053GQP/5m2PBcKTC8kdq5TNQwLZ5fpUSBcedoEsSWe
         S5++OirIAAv36F+5pmySd2mCKHpIKTUNLo9qwUFIauq9Y7XZreAIoSZpOK7qYHOmr3Dj
         V/l35gonHGIIECzB1+RoqHgz81JO3ANwMrzZ4RL39C2Xl8XlBGkZ307uuYVCnEg4Aczg
         ugjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683970508; x=1686562508;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dY3lFIjNEelBviTPNoPhSs/VKfnEIsYSNc20Ac/BLxs=;
        b=Avc2zeX7TdMxusM/pjO+MP0bdrKzcUhjXh5uSFWBCKOHe2MtifsrDLQXHcPZeM6c3I
         z3hWuZ4IyHTq66/IpJ3jB24fP9lMFD+RiVDwimX/UnsHUZCyiWhRMMytK7q106GBtf/q
         jPJNlpm4zsRtywZ5bxvb2O/tb0TpNPeOTVMKyEuwYlC3x7+O6grH9ZtJxsseTrFSM93o
         C/8dQcoY87Ef+EsaM2vcokuAh0E8gOocIekD/7dwgDkQA3U4GLF45mSpZQHkiRAkFVrW
         vI5pkFfjnc7XefTlA/yvlVePBSP8jrzKnDtHlb0VxpSLQs8lITJXGhAeKW6UchSG/wez
         93+g==
X-Gm-Message-State: AC+VfDydT9vv0kcsTZP3BBtKHllkX6YjX9KD6YGTzwEksTSQ7xrXIgGK
        flaQfr1AihNqp+RfHS+ocDGU7g==
X-Google-Smtp-Source: ACHHUZ40NU1D+qVy8zLkCSmbvvi0b/Togzsd+2MHJ7qzsnk2v20TMfUd86Q1kkNWszT4CZ4sjbw7rw==
X-Received: by 2002:a17:907:3e82:b0:966:2aab:ae5c with SMTP id hs2-20020a1709073e8200b009662aabae5cmr23533331ejc.38.1683970508457;
        Sat, 13 May 2023 02:35:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1d0:810a:586c:c5ba? ([2a02:810d:15c0:828:1d0:810a:586c:c5ba])
        by smtp.gmail.com with ESMTPSA id h9-20020a170906584900b0094e597f0e4dsm6500274ejs.121.2023.05.13.02.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 02:35:07 -0700 (PDT)
Message-ID: <49543489-b96d-ca45-f806-eec06accc096@linaro.org>
Date:   Sat, 13 May 2023 11:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 2/3] dt-bindings: timer: Add Loongson-1 clocksource
Content-Language: en-US
To:     Keguang Zhang <keguang.zhang@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Stephen Boyd <sboyd@kernel.org>
References: <20230512103724.587760-1-keguang.zhang@gmail.com>
 <20230512103724.587760-3-keguang.zhang@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512103724.587760-3-keguang.zhang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 12:37, Keguang Zhang wrote:
> Add devicetree binding document for Loongson-1 clocksource.
> 
> Signed-off-by: Keguang Zhang <keguang.zhang@gmail.com>
> ---
> V3 -> V4: Replaced the wildcard compatible string with specific one
> V2 -> V3: None
> V1 -> V2: None

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

