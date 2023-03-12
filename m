Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D009E6B6840
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 17:27:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbjCLQ1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 12:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjCLQ1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 12:27:16 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A4F2714
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 09:27:15 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id k10so39446034edk.13
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 09:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678638434;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5FIbyw7Lq952OtVv5bqjHlLASt7e6oZgy6qhaanaKuo=;
        b=i6kMQk1WCB6VZ0H1cGfIz3DtN/NRSIenIMASs+5Z5pgNSzAXtztQ9WrfwI4rXNHGp2
         mZDGU42GlWjzNLJgmgV8VEHHVIogpOZ8OTWjMCx+lN3kqzjr8DhK8DuNKUg8Oszmx0Qq
         DmvnquXqo+NvvXoSOQ7F8OFPAvvFOIDMzgUcw0ym2EMRmtDxx7iYM5r1EasHzSWoBpMJ
         76/RD+fV9qPGavMyzjCwI2xKaLlW+15Gwbsan5p0BuR86CVz/Ob4XYzmz/qcNmTAg8H6
         GPsUk3B/MUjzcAzGVJJQRpl0DWTTr0iLHSxYcJI1VoMbuBjrDCyF+wFftnHN1otcjtrj
         aA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678638434;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5FIbyw7Lq952OtVv5bqjHlLASt7e6oZgy6qhaanaKuo=;
        b=WN+7jiST/e5LtkegI9/85R4WaP7X49TI7kOz23yNpFAlnpuJMR1lIaassqaNyMpq6x
         WrGPvU4MbS4v2j8oAKypGcVLUfU7uk7PoPo70P9TvfTVLhWvN57Qj9G4J61qWGTA1Hbs
         HWXIX8MA/sw2pyFUj4eHRQ95fGk1N+G7PMoNfAzcWOp17UQYj8ZvMDUXfJK3hoPKs3Hm
         UrVdXbVM3XIZ2dC2JMvUOjId73lKt4dHfSqnhVbmkwn4DA6t8Ks8gLQXWOJB/xqJkcxa
         TDYQQULkrhDy0LBD+n7D9Vi5HCIi3D/dH56PvTcNJZbPKjvlKV/TiiOZ0/B43ze9f/jv
         cTPw==
X-Gm-Message-State: AO0yUKV3oXnLMJpaHOftnWimYNuT2Mq2UAXmXMcuCAuCyYNhgjLwDckt
        oIHJyNV+L8Rq3PD1twjakHUONg==
X-Google-Smtp-Source: AK7set9vIzpPBM1LnWSCWT1qTTPdlPM72u/LqmANIAapUJVSLlKL9o5fPHi6BPNOvrew3btHQu5JhQ==
X-Received: by 2002:a17:906:1b19:b0:90d:5f56:b109 with SMTP id o25-20020a1709061b1900b0090d5f56b109mr8038034ejg.2.1678638433747;
        Sun, 12 Mar 2023 09:27:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id z13-20020a170906668d00b008b30e2a450csm2417428ejo.144.2023.03.12.09.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 09:27:13 -0700 (PDT)
Message-ID: <b32f506e-ac08-b883-747f-1f9bca27ab6f@linaro.org>
Date:   Sun, 12 Mar 2023 17:27:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: net: realtek-bluetooth: Fix double RTL8723CS
 in desc
Content-Language: en-US
To:     Diederik de Haas <didi.debian@cknow.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Alistair Francis <alistair@alistair23.me>,
        "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20230312155435.12334-1-didi.debian@cknow.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312155435.12334-1-didi.debian@cknow.org>
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

On 12/03/2023 16:54, Diederik de Haas wrote:
> The description says 'RTL8723CS/RTL8723CS/...' whereas the title and
> other places reference 'RTL8723BS/RTL8723CS/...'.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

