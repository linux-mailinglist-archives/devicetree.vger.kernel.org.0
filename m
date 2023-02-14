Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63DCA6961E6
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 12:06:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232678AbjBNLG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 06:06:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232814AbjBNLGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 06:06:10 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F19D028848
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:05:24 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id bk16so15187040wrb.11
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 03:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JbZW/ryCmOb+4HZu5OdOAq3/hEZ1xxHDCTWnfkXrY3k=;
        b=by/TofraPp9IUt7aGEfFItarjKGRVgbugjEDMqgg9BTh9gWH5KUIHbjUoZQfCJkKg4
         UvnEnWQHQN4KAaRnkoj1FVN1B+CZI96QiRo6VVEC/vGlwwFcEDoWMm3/JGNAFYXQg7ut
         rMByTlD9Z/0rEXoy+a1Gms5xHQwjhPNMNEDXZ1VhmMPHwEgYZYWrG9DLC0vBPuUD37mt
         m6tz4ES6cWj8HcuatEB3imvwrRGHikaf/B32o6OrHtT4d0yWllceMJh7ZgT/IIh+53uP
         ZHx9W4WNazjJP6zVHmgskgglfbhQYw4k7ZA1F6j6za7cjiYCFHZN7QapCia1ZCFWDj0h
         hH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JbZW/ryCmOb+4HZu5OdOAq3/hEZ1xxHDCTWnfkXrY3k=;
        b=y8mjgD+rgfJ2pVOpnidenRPpMoLaczMtcuJc+kvs4WZuXo0BOnfzlxnh+hwObp3Uyg
         bchgVmuovSX3Usahus1vF4CipUgVrzTzGkUsRADz18ZP4LggzM2onXrkC4dtkyxRqZgc
         KVZ++N6/ION7DoAaYyZcqFza7vgOlfy0T48Qylgb/6wng9kOiFyuNiS0UpntnDLFnvj6
         U0DHX7uP56lhcGstZq7C4Z8YY0d5g88o5Y1/Klxf50YQMamoIGMTmI7rmd30PcCHKMPP
         GuoBldFN8HlhLoFFrAdd3+rH9bdvIH0wnk/W5+vpU9lIcbx6TOf7YX1JKkRjoFNsRHMV
         XvEg==
X-Gm-Message-State: AO0yUKWfQrd9vdnADcl0F9ef87hdEAqsjycRn17F8WPNhlWB2Qs9bSP2
        ZwN7I9QJyH0rt0PU4hKGZ4h2sA==
X-Google-Smtp-Source: AK7set9GFVvfJyWfFfWIB0CylPjOqIzsEfRgnkP4DRKDeU59YuwV843J9dnTP1qklWxjDrhPRu0eVQ==
X-Received: by 2002:a5d:678a:0:b0:2c5:5a6a:72af with SMTP id v10-20020a5d678a000000b002c55a6a72afmr1968087wru.4.1676372721803;
        Tue, 14 Feb 2023 03:05:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d67c4000000b002c56287bd2csm1721951wrw.114.2023.02.14.03.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Feb 2023 03:05:21 -0800 (PST)
Message-ID: <2f6b516f-4ab6-6abe-64dc-4ffa6c258c73@linaro.org>
Date:   Tue, 14 Feb 2023 12:05:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 03/16] dt-bindings: watchdog: apple,wdt: Add t8112-wdt
 compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v2-0-22926a283d92@jannau.net>
 <20230202-asahi-t8112-dt-v2-3-22926a283d92@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v2-3-22926a283d92@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 12:03, Janne Grunau wrote:
> The block on the Apple M2 SoC is compatible with the existing driver so
> add its per-SoC compatible.
> 
> Signed-off-by: Janne Grunau <j@jannau.net>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

