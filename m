Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BE8975E10C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 11:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbjGWJwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 05:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjGWJwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 05:52:40 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8003910D7
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:52:39 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9924ac01f98so586065266b.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690105958; x=1690710758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3VrvByN/8nuSLSqkqBQiwTi662+hO3SXTsNA8vy2Xio=;
        b=g7VlPFJCUqoeAsUwdWUwZXDiwebB6RLPRNg7JFu/cg81RO+ra054ls+7M7/eJPwEOZ
         Y/YobxCG7FYjZfHxGCiKq4gv0zv0uwpLcwVZzXLsM1UkmL9xZNyfGibPVv5pccyq0ff8
         wLGwQ39cJfIsOG+H/4cBzZAHrUZz6hswq8Jm/Pw6tMsDY9EVhVgCLwcSd8OhhdnH5l80
         AwGJXD7YqocARXvzy+7Axkid95cWUZY1I6udTFf0HBivp2APV414PkYqdM/EukwYEpkL
         KMPuuOBsMa2HidWqIdjlvzj1/m64dHXcicv8PxY4iyADIotlMd8T1faEgZZPpZZs7DN7
         RXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690105958; x=1690710758;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3VrvByN/8nuSLSqkqBQiwTi662+hO3SXTsNA8vy2Xio=;
        b=imagd326/ryQiBChSYMnqJ0FKAxGmOsRh1AS7Fj8JF8braCcyWlBgoZV+eKeC7WmNu
         o/C5Co3c7f9+T/MNUHkaA/HyjQjWhUQ4I3Am8CdGu+5m6dSS2LrTin3JgSzAxG3xJ05M
         YxkXpgp/0TZurumroJQppP0Ptk544lFuXiz+qSloDScA5A2+rWYIjAc7TSAOhncbbX8F
         D68VVA3aIMdxWPW+67xcj146fLzEEkKrCaVLmqzCLbR1aa/QW/Xit1qANbbxIjWY+00y
         SfvQ3szLowuEV3CnGBrNMSq+34qadg+tKREBxIvM22IwfhBvVbrG3HLZpBXt7wtw/Ln/
         OL0g==
X-Gm-Message-State: ABy/qLbvPZ8qF/KEVzU1kjX7tjMX9OyF5umNJ6l1a8X2tmxAr3Pe9OOn
        rkf3B/K5j8XePWxKAlafWi4dS6vIjoXLyvrukII=
X-Google-Smtp-Source: APBJJlGYHC/lniVtA/t7I3Ixv+3Xx7qz3wksoy9sBvq5H6hmO5tjSlYOn2P07wnrhmxZZhyNtdML8g==
X-Received: by 2002:a17:906:3f56:b0:99b:5445:10d3 with SMTP id f22-20020a1709063f5600b0099b544510d3mr7020881ejj.75.1690105957975;
        Sun, 23 Jul 2023 02:52:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id jj28-20020a170907985c00b0098d93142ce1sm4891371ejc.109.2023.07.23.02.52.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jul 2023 02:52:37 -0700 (PDT)
Message-ID: <66fc3434-8cc4-3316-ffda-2ffa08cce0f6@linaro.org>
Date:   Sun, 23 Jul 2023 11:52:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: display: add bindings for pcd8544
 displays
Content-Language: en-US
To:     Viktar Simanenka <viteosen@gmail.com>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230720124026.356603-1-viteosen@gmail.com>
 <5b9ceb0e-b7e4-d4b3-461e-c70f4a01fa5e@linaro.org>
 <CAFQqR8-O+w-RQnLUSvyL-4h78pJ1cSr67Chce03+tLCTYP7YWg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAFQqR8-O+w-RQnLUSvyL-4h78pJ1cSr67Chce03+tLCTYP7YWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 14:25, Viktar Simanenka wrote:
> On Fri, Jul 21, 2023 at 11:42 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 20/07/2023 14:40, Viktar Simanenka wrote:
>>> +allOf:
>>> +  - $ref: panel/panel-common.yaml#
>>
>> This is not a panel, is it?
> 
> I can't clearly tell the difference between LCD display and panel.
> I've added panel-common because of 'backlight' and 'reset-gpios'
> properties. I've looked at 'sitronix,st7735r.yaml',
> 'ilitek,ili9486.yaml' as examples. SPI controlled LCD displays, but in

Probably your device is not a panel (datasheet says: LCD controller),
thus it should not reference panel-common.


> color.
> In fact 'reset-gpios' is already in my yaml. I might just add the
> 'backlight' property explicitly and remove this dependency. Should I?

Best regards,
Krzysztof

