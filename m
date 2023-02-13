Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCFBC69456B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 13:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbjBMMLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 07:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231215AbjBMMKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 07:10:43 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03F4576A8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:10:26 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso11101457wmp.3
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9MaV0V+7vWugnBV1ToolFUuuNSy4tV5osQNFJ4N+ljw=;
        b=PSq69g92d9LKqQNBdzaFMIQ7WRDNvGmXjHLTpbtOKyT2QNfe95h38EVbbFa2G7UcLy
         zDV/EnTJamYgnLq5t2KbZbVASQKaOmVvWl7MKSQaZ4NgWBpCpDh1unROKzC/rXmx84mx
         /lM82PfGy7AvlhpdvQpFZIg2rLTuo0MLHwI6aI08XH94aIKVl6maSc0h4F+bsxoAeyE/
         NdQ4W8G0uUvEgEWOFdqxXDT+4RzkO4PAlleJ/PD0fsj3fQ6bRnCx4GiYBbU2poycHkyc
         mSzLgbc/xrj83O52tTAIYVsvS/p+Eb5fUubGXsy+2igGi/Uz1SAoiZgTU8NVeEBFuRrC
         7LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9MaV0V+7vWugnBV1ToolFUuuNSy4tV5osQNFJ4N+ljw=;
        b=hDwSQ5ETwZqnISRVNwYExSVvqcUWsUizyUXZsmnuoZerwjnKrYswAKwnpdCqqL9Fsk
         O+Bj3VYU8nR7wmc5jge0RzGQp+njrPIMxfGeFe6WbAou6p740jOEE2Gm9frOKz6yeYJC
         SWvhqLw6axXvxyf8+RBjKMlLq2ls4Q+aVtDp65FkW58pOTGa3vn6ahN26fgND1VBjpos
         ze91M+9s9PPQoNScnm2hE3ORR/sfsf8jaDTGL5I/3LDEjgsy2u/mxY2nIaiQP5oYI8/w
         G9x/9gPowk52PvOOMAYtiLZgbpw4f31rr6HWAb2XGPcOhdSTtB/6qSVoukHbjZk0wjWS
         FVDw==
X-Gm-Message-State: AO0yUKUNNf0o9d6NNYAWhGxAq/OSpxbix2SclU87YMskQN9gnqzzu9Td
        MLqO0uFPB8BPvcY7hg/gnmzY6A==
X-Google-Smtp-Source: AK7set8bQ8INp/EJISlse7CDCP/1ExXeTUzaodeinMKBFLAToTqtqUVeMmw/ZfxSvpikfwKgdgrKsg==
X-Received: by 2002:a05:600c:a295:b0:3dd:1bcc:eb17 with SMTP id hu21-20020a05600ca29500b003dd1bcceb17mr18735513wmb.28.1676290224741;
        Mon, 13 Feb 2023 04:10:24 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c15-20020adffb4f000000b002c5441dae62sm9119007wrs.17.2023.02.13.04.10.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 04:10:24 -0800 (PST)
Message-ID: <dfb765a1-a2bd-c5e3-344a-b368fad6d8de@linaro.org>
Date:   Mon, 13 Feb 2023 13:10:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 02/17] dt-bindings: arm: apple: apple,pmgr: Add t8112-pmgr
 compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>
Cc:     Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v1-0-cb5442d1c229@jannau.net>
 <20230202-asahi-t8112-dt-v1-2-cb5442d1c229@jannau.net>
 <5ebf96d9-689a-f915-29b8-31af891fc63f@linaro.org>
 <20230213115741.GA17933@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213115741.GA17933@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 12:57, Janne Grunau wrote:
> On 2023-02-13 12:10:36 +0100, Krzysztof Kozlowski wrote:
>> On 12/02/2023 16:41, Janne Grunau wrote:
>>> The block on Apple M2 SoCs is compatible with the existing driver so
>>> just add its per-SoC compatible.
>>>
>>> Signed-off-by: Janne Grunau <j@jannau.net>
>>>
>>> ---
>>> This trivial dt-bindings update should be merged through the asahi-soc
>>> tree to ensure validation of the Apple M2 (t8112) devicetrees in this
>>> series.
>>
>> No, the bindings go via subsystem. Just because you want to validate
>> something is not really a reason - you can validate on next. Don't
>> create special rules for Asahi... or rather - why Asahi is special than
>> everyone else?
> 
> We did that 2 or 3 times in the past without commnts that it is not 
> desired so I wasn't aware that this would be special handling.
> 
> Merging binding and devicetree updates together looks to me like the 
> most sensible option since dtbs validation is the only testable 
> dependecy of dt binding updates.

But it is not the recommended practice. Bindings were always going with
drivers and this was said by Rob multiple times.

For sure if there is no driver update at all or subsystem maintainer is
not responsive, bindings were picked up by SoC folks, but it's rather
fallback, not the main path.

> Keeping them together ensures the dtbs validate without delaying 
> devicetree changes by one kernel release after the dt-bindings change 
> was merged.

dtbs will validate on next and in next release the same way if bindings
go via subsystem. I don't see the benefit nor any difference for
validation. What type of delay? Why would you ever need it?

> I suppose it works out most of the time if the merge request is sent 
> only if it validates in next. That still depends on the merge order in 
> the merge window but -rc1 should be fine.

There is no requirement of dtbs_check for bisectability. Bindings are
separate (also exported to other users), thus it is expected to have
here async.

> 
> I'll consider devicetree validation as eventually valid from now on and 
> not care too much about it.

Everything will validate once reaches next as well...

Best regards,
Krzysztof

