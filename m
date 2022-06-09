Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF2F5443F1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 08:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239077AbiFIGlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 02:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237665AbiFIGlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 02:41:51 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B732279E42
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 23:41:48 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id u12so45532882eja.8
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 23:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iJ0Au4lK3xvz24v1XJgT8TGa/DQOsCP09lUe7uwWGo0=;
        b=tedgup7BYTuP5EMom3EMey8Xc9+oGM4GBVcJiPlAvJvT/VEXhE2RMxqJkJRQq+skF/
         +C63y971KpBDWt8Bi4ccojLUHI7jhORhBgvl1b3tf0uT4BpEvwVupSX8Kz9DWPuvAYF/
         TU9p4GgPyq3k/wbLblagaRfenF8jULw2gj23mR8s5DGvFWmFPvMNKE3XfRKGfps5AdLG
         OR0+N03gqxKtVxub+/VzM6xLFuxpdc0OSMOPXhFQd7rjZh+Dxm3V6OMoLeWF9oSWfuD2
         ZEFvXCwMR4bAZaWCZ/IEXxohOXNQcqv4UFCrB9kNyXoGRPTrHAkb9jzNx6eiDKVJiSW7
         K15g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iJ0Au4lK3xvz24v1XJgT8TGa/DQOsCP09lUe7uwWGo0=;
        b=G+Cere9F8Jo6ILo136mcxN8bxMO4QON2ZK8i63heN3F4t0UeG3+QJkAdtxTVgrlXg7
         o2Y0xlE2DcCnVMO8iW4o4v/e8/hN+WJujsuBE4UnseLHgtqpG8+t/lseNdpvB8v0s9yo
         wfUSEseZHL/QcWNQeZeUM8+8z7usrrD+BBxeOf13rQ3KIiihSAY1afWsS0ojsE9M5SRX
         eMQxtOGCSRIAFQkaMnQXlnEx6ImT4lcon4PnQ0dqjsKdSfjkj8/sYl0u9VvRzNba/3N3
         GrF4M0ftBP9B4USvso7/xMhrimTFwPDhD+RXir+xUGRbV3KlB5lb5E6xhs3C2HVu4xjh
         OqRA==
X-Gm-Message-State: AOAM531GDtSBmL3s+5SDl9qsZxSTquF+Q2SVQSPM33v7f/tXJ53t7LWt
        zWTqA/BKUKjkyJq8+Aq6Jv8cuhJPw5CtPg==
X-Google-Smtp-Source: ABdhPJyiHWjFlxGf54EJ5A0RRB1OPqqAmO8BOkzYneeDW4fRfqy8cJEm/VKYM6PzX31F4Wj/5hxzzA==
X-Received: by 2002:a17:907:97d0:b0:6ff:e43:2145 with SMTP id js16-20020a17090797d000b006ff0e432145mr34551552ejc.273.1654756906877;
        Wed, 08 Jun 2022 23:41:46 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f14-20020a170906824e00b006f3ef214debsm10203708ejx.81.2022.06.08.23.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 23:41:46 -0700 (PDT)
Message-ID: <fac58827-5b82-81a2-e782-99056180c0ed@linaro.org>
Date:   Thu, 9 Jun 2022 08:41:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/7] dt-bindings: drm/bridge: anx7625: Add mode-switch
 support
Content-Language: en-US
To:     Prashant Malani <pmalani@chromium.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        bleung@chromium.org, swboyd@chromium.org,
        heikki.krogerus@linux.intel.com,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Pin-Yen Lin <treapking@chromium.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Xin Ji <xji@analogixsemi.com>
References: <20220607190131.1647511-1-pmalani@chromium.org>
 <20220607190131.1647511-5-pmalani@chromium.org>
 <fbc48d41-b2cc-86f6-5f1c-7cfcbdb41e46@linaro.org>
 <YqDXfGa9bugnLFGH@chromium.org>
 <CACeCKaeHocnAuY5D-oVt1fhgRGkNT014RcK3JSe6piKoXNtKCQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACeCKaeHocnAuY5D-oVt1fhgRGkNT014RcK3JSe6piKoXNtKCQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 23:56, Prashant Malani wrote:
> On Wed, Jun 8, 2022 at 10:08 AM Prashant Malani <pmalani@chromium.org> wrote:
>>
>> Hi Krzysztof,
>>
>> Thank you for looking at the patch.
>>
>> On Jun 08 11:24, Krzysztof Kozlowski wrote:
>>> On 07/06/2022 21:00, Prashant Malani wrote:
>>>> Analogix 7625 can be used in systems to switch USB Type-C DisplayPort
>>>> alternate mode lane traffic between 2 Type-C ports.
>>>>
>>>> Update the binding to accommodate this usage by introducing a switch
>>>> property.
>>>>
>>>> Signed-off-by: Prashant Malani <pmalani@chromium.org>
>>>> ---
>>>>  .../display/bridge/analogix,anx7625.yaml      | 56 +++++++++++++++++++
>>>>  1 file changed, 56 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
>>>> index 35a48515836e..7e1f655ddfcc 100644
>>>> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
>>>> @@ -105,6 +105,26 @@ properties:
>>>>        - port@0
>>>>        - port@1
>>>>
>>>> +  switches:
>>>> +    type: object
>>>> +    description: Set of switches controlling DisplayPort traffic on
>>>> +      outgoing RX/TX lanes to Type C ports.
>>>> +
>>>> +    properties:
>>>> +      switch:
>>>
>>> You allow only one switch with such schema, so no need for "switches"...
>>
>> See below comment (summary: we'd like to allow 1 or 2 switches).
>>>
>>>> +        $ref: /schemas/usb/typec-switch.yaml#
>>>> +        maxItems: 2
>>>
>>> Are you sure this works? what are you limiting here with maxItems? I
>>> think you wanted patternProperties...
>>
>> Yeah, I might not have used the DT syntax correctly here.
>> What I'm aiming for is:
>> "switches" should can contain 1 or 2 "switch" nodes.
>> 2 is the maximum (limitation of the hardware).
>>
>>>
>>>> +
>>>> +        properties:
>>>> +          reg:
>>>> +            maxItems: 1
>>>> +
>>>> +        required:
>>>> +          - reg
>>>> +
>>>> +    required:
>>>> +      - switch@0
>>>
>>> This does not match the property.
>>>
>>> You also need unevaluatedProperties:false
>>
>> Ack, will update this in the next version.
> 
> Actually, could you kindly clarify which of the two needs this?
> "switches" or "switch" ?
> I interpreted "switch" as requiring it, but I thought it better to confirm.

Depends what do you want to have there. If two properties called
"switch", then "switches" is ok. However old code had only one property
thus switches with maximum one switch is a bit weird.

Looking at example you wanted to switch@[01], so you need to use
patternProperties.


Best regards,
Krzysztof
