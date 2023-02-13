Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 946D06942E2
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 11:32:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbjBMKch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 05:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjBMKcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 05:32:36 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A929ED0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:32:35 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id a10so12154442edu.9
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9X23+s7hHlbhB82N6CQ/+F/G2nzZwrS8GJLQ4tLSpRU=;
        b=KkAyOXt0lEnqX6VodSdKJGUKaxxBnGfRxf9K4nXdSnaP6+XrLi32zkyMoP4ktbnEXt
         a7doKUyPyShS25W847vHIs8Cdv3EdoHCrnQfwqQhem8p5kYuLajeei7tkApELtf8+VZA
         dzIaSXsBlJVWfjapc39CKj//4XOMEpedArEUsMP+d92kuS1ROqh4RIqI1dY9a5Zgc3AY
         YGWHPs+o+yrgTWkG0lUVVCprBA0zj4RTPTEGIsCnbfIbMuMIdHqUtqXHRynh86GClreo
         v0TlPDAXMH+B3JmnLX+kOufxBqvYWHwTo+cYfVg3tmXGgcKGYbuZOeyB6xPuVwD35YLz
         3ocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9X23+s7hHlbhB82N6CQ/+F/G2nzZwrS8GJLQ4tLSpRU=;
        b=Jale1/SELZpe9w77hw/xsK8aKl45dn4FeiqDZv6LCcHY/OiPID5JBqulEjDg4GN83q
         vELTQ5Log3BmVqMUHNhLCE9T+1X/L8GeAevM1KV4URF5wa7BZk74Hexz7ApU91MnObk1
         5rSSSKu6oJ3zYeqbSHt9TufAAInjajck4/21vUoLrTBw3UINsDwR+8+YvgKX3FIoT5wa
         zqSPDJxKwbfx3IzDiEuLjkppdArVTUV2PTVZ389JtKYttAwhLLnk6qWK1jxUI2XJaQ/3
         RitaTk3phzy2i86UTXiaS/xWayEqpxIIXfChcYIre09QrTvATbj6XfJgtClQ/RYKkveN
         R9tg==
X-Gm-Message-State: AO0yUKV4K4LYHwFeY2g1f7EFESUyVEsENfoMe32yrZhKcqrChkKh65VP
        AcIW7f6araQ0UbtGh8Jc8evs9A==
X-Google-Smtp-Source: AK7set+B/KZYeFOYcsW0ZdOOknS317xRGbPEC0PbC9tBM+EhTJSs80E57htlVX4975TSOu7YDmXcYw==
X-Received: by 2002:a50:a44d:0:b0:4aa:b7ac:e0d2 with SMTP id v13-20020a50a44d000000b004aab7ace0d2mr22568904edb.19.1676284354401;
        Mon, 13 Feb 2023 02:32:34 -0800 (PST)
Received: from [192.168.2.9] (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id q8-20020a50aa88000000b004acc77efd4asm1214559edc.37.2023.02.13.02.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 02:32:34 -0800 (PST)
Message-ID: <4fc0f90a-36b1-bc48-6842-fb64c3d1b7c5@mind.be>
Date:   Mon, 13 Feb 2023 11:32:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v5 1/2] dt-bindings: leds-lp55xx: add ti,charge-pump-mode
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230213102027.29961-1-maarten.zanders@mind.be>
 <20230213102027.29961-2-maarten.zanders@mind.be>
 <1a8268a1-e656-10b2-8ca5-495867e521e7@linaro.org>
From:   Maarten Zanders <maarten.zanders@mind.be>
In-Reply-To: <1a8268a1-e656-10b2-8ca5-495867e521e7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2/13/23 11:22, Krzysztof Kozlowski wrote:
>
> While technically it is almost equal to BSD-2, any particular reason for
> using different second license than the binding and generic
> recommendation (checkpatch)?
>
>
No, no specific reason. I'm happy to adapt.

Br,
Maarten


