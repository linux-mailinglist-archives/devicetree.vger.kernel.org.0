Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5E9C678405
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 19:04:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233549AbjAWSEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 13:04:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233516AbjAWSEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 13:04:15 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 315CC30B15
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:04:01 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so9224512wmc.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=anFXoyEP6MdeJv2aFnOn2djhLdOnRB3KkfZ+i/PHK1A=;
        b=sfPLtClwTP6+bjcDSHDKT76vf1By1orq3gYFqDpSbos1AlpD/W7qTQa1Sc9rXatkjm
         AKFhKnC4oaQrFH9+oSbGVjfMEQTE0+Mz+H9x6A1FVl4OAR3feyHtgC2jqq3ZZpqZ6avy
         J16KzgPnfoK23Lk7G+99caqnxtQzv8fJeUpH0R7SzWFPPHYqwxgwIe7eHtHLHqBCF2Ii
         KMb8r3n99i/YfADB44b89Cwb5nCVn2EyMW55iKSra8LSaQBHenAmCH7ezIlAhvm/a4Ed
         s+4g4Gu3Hx8kwpgY7E5JgfPS7LqmL7XJIMnyC2+avu7riM9hVaN7DMAohHOxju+gGpxp
         02Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=anFXoyEP6MdeJv2aFnOn2djhLdOnRB3KkfZ+i/PHK1A=;
        b=OxYR3GUMbp1X9yf8fbX4Fdwt4f/pzo8sUth8S2Y9D3d9xuzWaL9LVncS0MmpscrNqa
         +VcM+0d1xmpQZ/43Jlclu6vxwzaHs0z+eXqJK4wFql3uue05NzI6/OgyQrrZSkONK86Y
         V2qytuNrRe1AYS2FB4nb/Opmxcjl17FYWJZ5BqHSPf9BLRbUj6qrqLcDLX9XidPrShvj
         UyP/2F0eRS9cMxvjX/FQpm4mcY3IHNq6WseQm5OYcx5kJn8svpALtxAG5iiM1dH+wrDL
         HvYVtNCREoD/w9vPMRrTIEp82lV6aSVnmFZy4+K4GH5npMp4SXsJzpJKfqRguOYZXjKK
         1qpw==
X-Gm-Message-State: AFqh2kqDI4Ypads7RLcGMvJEAeOIQnWgcOalbpOIfawkWVGk7vl1ebVv
        iOsYiXUxPXe3Ziq+OoAys5YXpw==
X-Google-Smtp-Source: AMrXdXsaWqphrHy2nyPW3MYeFGKYcrJ0wH2+cfeuYZdbrMrHnTDgKlWk4k21+0qNhS1zQfj2yHOagg==
X-Received: by 2002:a05:600c:3545:b0:3c6:e60f:3f4a with SMTP id i5-20020a05600c354500b003c6e60f3f4amr25070407wmq.1.1674497039690;
        Mon, 23 Jan 2023 10:03:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f18-20020a7bcd12000000b003db0659c454sm13214506wmj.32.2023.01.23.10.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 10:03:59 -0800 (PST)
Message-ID: <897387b7-e6fa-a49d-f24f-21c7d729f484@linaro.org>
Date:   Mon, 23 Jan 2023 19:03:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/4] drm: panel: jadard-jd9365da-h3: Fix panel vendor and
 model
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Tom Cubie <tom@radxa.com>
References: <20230123164018.403037-1-jagan@edgeble.ai>
 <ae50541f-7456-6088-b310-c67f653176ee@linaro.org>
 <CA+VMnFyfK-eZhneJuf54EngcS8XmhnOPXXzdjzBsiChpJV-7rg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFyfK-eZhneJuf54EngcS8XmhnOPXXzdjzBsiChpJV-7rg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 18:45, Jagan Teki wrote:
> On Mon, 23 Jan 2023 at 22:52, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 23/01/2023 17:40, Jagan Teki wrote:
>>> The initial datasheet claimed that chouzhong designed this 10"
>>> DSI panel on top of JD9365DA IC, but later Radxa mentioned that
>>> chouzhong is the manufacturer.
>>>
>>> So the actual design of the panel, gsensor, and customized FPC
>>> is done by Radxa. The panel model named is Radxa Display 10HD
>>> with AD001 is the part number.
>>>
>>> Fix the binding and panel driver with the proper panel vendor
>>> and model.
>>>
>>> Fixes: <6b818c533dd8> ("drm: panel: Add Jadard JD9365DA-H3 DSI panel")
>>> Fixes: <bb3098eead99> ("dt-bindings: display: Document Jadard
>>
>> Does not look like correct syntax. Did you run checkpatch?
> 
> Yes. I did check with --strict as well.

Anyway, it's not correct. <> are not valid and commit msg should not be
wrapped.

> 
>>
>>> JD9365DA-H3 DSI panel")
>>> Reported-by: Tom Cubie <tom@radxa.com>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>>  .../bindings/display/panel/jadard,jd9365da-h3.yaml  |  4 ++--
>>>  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c    | 13 ++++++++-----
>>
>> Bindings are always separate.
> 
> Correct, but separation here triggers a warning for compatible not found.

Which should point you to the problem - you cannot remove compatibles...

> 
>>
>>>  2 files changed, 10 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
>>> index c06902e4fe70..10ba1b813304 100644
>>> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
>>> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
>>> @@ -16,7 +16,7 @@ properties:
>>>    compatible:
>>>      items:
>>>        - enum:
>>> -          - chongzhou,cz101b4001
>>> +          - radxa,display-10hd-ad001
>>>        - const: jadard,jd9365da-h3
>>>
>>>    reg: true
>>> @@ -52,7 +52,7 @@ examples:
>>>          #size-cells = <0>;
>>>
>>>          panel@0 {
>>> -            compatible = "chongzhou,cz101b4001", "jadard,jd9365da-h3";
>>> +            compatible = "radxa,display-10hd-ad001", "jadard,jd9365da-h3";
>>>              reg = <0>;
>>>              vdd-supply = <&lcd_3v3>;
>>>              vccio-supply = <&vcca_1v8>;
>>> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> index 48c1702a863b..ea89cecad0cf 100644
>>> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
>>> @@ -167,7 +167,7 @@ static const struct drm_panel_funcs jadard_funcs = {
>>>       .get_modes = jadard_get_modes,
>>>  };
>>>
>>> -static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
>>> +static const struct jadard_init_cmd radxa_display_10hd_ad001_init_cmds[] = {
>>>       { .data = { 0xE0, 0x00 } },
>>>       { .data = { 0xE1, 0x93 } },
>>>       { .data = { 0xE2, 0x65 } },
>>> @@ -364,7 +364,7 @@ static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
>>>       { .data = { 0xE7, 0x0C } },
>>>  };
>>>
>>> -static const struct jadard_panel_desc cz101b4001_desc = {
>>> +static const struct jadard_panel_desc radxa_display_10hd_ad001_desc = {
>>>       .mode = {
>>>               .clock          = 70000,
>>>
>>> @@ -384,8 +384,8 @@ static const struct jadard_panel_desc cz101b4001_desc = {
>>>       },
>>>       .lanes = 4,
>>>       .format = MIPI_DSI_FMT_RGB888,
>>> -     .init_cmds = cz101b4001_init_cmds,
>>> -     .num_init_cmds = ARRAY_SIZE(cz101b4001_init_cmds),
>>> +     .init_cmds = radxa_display_10hd_ad001_init_cmds,
>>> +     .num_init_cmds = ARRAY_SIZE(radxa_display_10hd_ad001_init_cmds),
>>>  };
>>>
>>>  static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>>> @@ -452,7 +452,10 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
>>>  }
>>>
>>>  static const struct of_device_id jadard_of_match[] = {
>>> -     { .compatible = "chongzhou,cz101b4001", .data = &cz101b4001_desc },
>>
>> This breaks ABI. When was support for it merged?
> 
> It was merged last year, in September
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=6b818c533dd8615a803a72733eace58fd06e5a3c

So you cannot remove it.

Best regards,
Krzysztof

