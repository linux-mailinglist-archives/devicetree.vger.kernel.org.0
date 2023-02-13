Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5501B6943DD
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 12:08:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjBMLIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 06:08:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbjBMLIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 06:08:34 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21797D529
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:08:31 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so8696088wmb.5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ci7SGpz5xwcVvCeC2hns6KTay+j1oi3+2QU9QteusJ8=;
        b=tEnyfhSwXOZZy8qLrmPSapSq6NAsSpelq2RSYh2KsdRQ0jDUnBssqht3mhcl5zE2Ek
         JLbGWbsH6NBGpsaaUFpEep0Jsab6adVER3B2HXFXAKGvOPuPNRX2XdKVAMywNuZ8brxc
         lZuvwsDYFCejfGzANCNvp4M/Go6UAb/JkCQAdM9sZ3I8Q0WnjXLsMlo076LVDNIk6lNR
         WjpxSjhDCN772I+GDjsS9aqw0pSGAcoMOJ7A6dc4kdAGxMYyWxFl/t/uWzpArXs49u4S
         B2WKQXwmNms2PUZAZW1yie3LmVJzBqxIuMAAEqLKVbE2/ygyYAF736HvRg0VPOWgOpBN
         vuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ci7SGpz5xwcVvCeC2hns6KTay+j1oi3+2QU9QteusJ8=;
        b=2by/UYHI/hP1tgptTmKwJbW6E6jwqY3FvZq5tgxd0zZ0NHJ5aVt5xWULol28uLcHct
         tJbGPo9DC1lWyqWb2FQ3e2/Dl06ToC5pN6Uu2gYlOuXTf4q1GCLYd6lpP9+cfA6JogBK
         jRkNyoMfIM5ZxcpVeYmDZbEawCP4tDF0pAyThWZaBS6+ngvyizC4TD/f7sERgF51i0oh
         +WrQ/sVFnSX329Rf5iEK2lOWDsw8yA+avt8JZz288Js5VPhCxyI7+BarEd5ratHDO5L+
         2+E4ZXJj+TTrZ5s3qi+vDRCzrubuvo4CNEM03GvKgikzAbiwzBY9s6uSQQGkNzJKvNQ1
         OoUw==
X-Gm-Message-State: AO0yUKV9TR78IkTdgIxC10Qncl4QrMi/2qH3jih2yleT4Jxj6e4jJup7
        uXzm4a9H+5K9BenQqHkg8InXfg==
X-Google-Smtp-Source: AK7set8zGnBL7fWkj1f+KORxV7qKneEFzwp0gQJb+tFbe8XnmCznu6V3D422grwPOLw/8N1rXOh77Q==
X-Received: by 2002:a05:600c:4485:b0:3e0:185:e93a with SMTP id e5-20020a05600c448500b003e00185e93amr18997485wmo.25.1676286509649;
        Mon, 13 Feb 2023 03:08:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600c46ce00b003db12112fcfsm14925223wmo.4.2023.02.13.03.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 03:08:29 -0800 (PST)
Message-ID: <ad5dd369-842f-7301-e57d-d0445f0a5268@linaro.org>
Date:   Mon, 13 Feb 2023 12:08:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT36523
 bindings
Content-Language: en-US
To:     Jianhua Lu <lujianhua000@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230210161925.32343-1-lujianhua000@gmail.com>
 <6cffa875-d8cc-a4fe-e18d-2e24c28a49d8@linaro.org> <Y+oZOXyE8/a+vreS@Gentoo>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y+oZOXyE8/a+vreS@Gentoo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 12:04, Jianhua Lu wrote:
> On Mon, Feb 13, 2023 at 11:45:23AM +0100, Krzysztof Kozlowski wrote:
>> On 10/02/2023 17:19, Jianhua Lu wrote:
>>> Novatek NT36523 is a display driver IC that can drive DSI panel. It
>>> is also present in the csot and boe video mode panels. It is found
>>> in Xiaomi Mi Pad 5 series.
>>>
>>> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
>>> ---
>>>  .../display/panel/novatek,nt36523.yaml        | 101 ++++++++++++++++++
>>>  1 file changed, 101 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
>>> new file mode 100644
>>> index 000000000000..a7098d0ce7e1
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
>>> @@ -0,0 +1,101 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/panel/novatek,nt36523.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Novatek NT36523 based DSI display Panels
>>> +
>>> +maintainers:
>>> +  - Jianhua Lu <lujianhua000@gmail.com>
>>> +
>>> +description: |
>>> +  The nt36523 IC from Novatek is a generic DSI Panel IC used to drive dsi
>>> +  panels.
>>> +  Right now, only support cost and boe LCD display panels with the
>>
>> boe? both?
> Boe Technology Group Co., Ltd

Then what is "cost"? If both are names, then they start with capital
letters or how the company officially spells itself.

>>
>>> +  resolution of 1600x2560. It is a video mode DSI panel.
>>
>> The binding or hardware supports only 1600x2560? The how it can be
>> "right now"? It's defined, isn't it?
> Yes

What yes? How it can be "right now"? It implies it will change, so how
hardware can change?


Best regards,
Krzysztof

