Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2A5E68B8BC
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 10:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229707AbjBFJay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 04:30:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjBFJaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 04:30:52 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64F0D1423D
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 01:30:51 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so10277107wmb.2
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 01:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lB4DhwaSuvhN4P7Fhpq7/qUQ5TChk2PSO58hA8Th51M=;
        b=pNfKCIOjPfs++lNBj7MN3NLWBE1KGv1TjqYwvaHuxFnxTkWBJu8cCNPwsKTgfYFS5S
         7CipaKO32z792vMXEYavV51W4au8Joyub0stOCLvLwXy19iwSyXhDiL6fONUX2Q+WyKN
         eagL3P6LtuFtn3yF3bm1k3vmb3beOUIx6vJmfjYkox7Xtm+ad6/UV6ZVqbHkidSMTHDJ
         4hHLEJbQb0hMQId+inGJlUkBALKUuHJoqK6BlqhQ44/H776cG/exHFUK2ii6gfWiRo+b
         cuDGhdynizFqO9vAP00TN2UoEeaygE1IyA59IHKgDzaZ7WpvWLdAaP4WnT0/cCr03AeM
         krCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lB4DhwaSuvhN4P7Fhpq7/qUQ5TChk2PSO58hA8Th51M=;
        b=Qf9hK2b8yu09dLbKU3nAyhZnqUel3834Yfj7lQ7LDhmWUhV7KDRWLXRusAEp3uw64l
         5Ms1ybZfDl61pZXa+16L87rXj3to5LxoUiNimmHBIi+aV/xNYo+vn3vaHO8E7sRQWhlm
         8iZdRUNXZY74i/77rBqiaCdpcpc9MD1dtVaShbtO10aASqMsmkTf6r+t5tfgNWnxc4od
         4Wof32vveuo5IGYD3nmwL8+ygVC+BteLOQ6E+l8IO/ac2XcmL+Hf0O6pJtHEhUQjsGYP
         VINDwCc/EtywDLXjyeVoBBwZnZcTUXJDU63bMyK8738qDf8zGIhTNQrt6ML+d47KHE4Q
         A9qg==
X-Gm-Message-State: AO0yUKUy+1bQauxFriHGBk2OwZet3rDObwQaFbDEZ2jg+2AOvhxJlw9o
        tlz29hBBj/LAsqTfN5Yx8oIHITdFcOx9Dv2DRyg=
X-Google-Smtp-Source: AK7set/EM6G4iF6XU2ICAX6o4we+sLMP4fWM9bshVgckPfbUtnBscAA1Oeg+itR7t/Aev12+0ww9DQ==
X-Received: by 2002:a05:600c:1e13:b0:3d9:f836:3728 with SMTP id ay19-20020a05600c1e1300b003d9f8363728mr18491159wmb.11.1675675849887;
        Mon, 06 Feb 2023 01:30:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:f03f:3ced:a369:d884? ([2a01:e0a:982:cbb0:f03f:3ced:a369:d884])
        by smtp.gmail.com with ESMTPSA id p10-20020a05600c468a00b003e0015c8618sm2489133wmo.6.2023.02.06.01.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 01:30:49 -0800 (PST)
Message-ID: <2590e80b-2a42-ceff-b3b0-afb616aad43c@linaro.org>
Date:   Mon, 6 Feb 2023 10:30:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl
 binding
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Neil Armstrong <narmstrong.kernel@gmail.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <6dcf6333-f75a-f7ec-8ce9-fbbfb81d1a60@gmail.com>
 <9DA78049-10C9-47D6-B36B-9B7E1067385A@gmail.com>
 <0db3cd05-9a3a-a79b-308a-18ab49d29c17@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <0db3cd05-9a3a-a79b-308a-18ab49d29c17@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/02/2023 17:54, Heiner Kallweit wrote:
> On 05.02.2023 08:57, Neil Armstrong wrote:
>>
>>> Le 5 févr. 2023 à 01:05, Heiner Kallweit <hkallweit1@gmail.com> a écrit :
>>>
>>> ﻿On 04.02.2023 23:56, Martin Blumenstingl wrote:
>>>> Hi Heiner,
>>>>
>>>> On Wed, Feb 1, 2023 at 11:13 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>>> [...]
>>>>>>> +      - items:
>>>>>>> +          - const: amlogic,meson8m2-aobus-pinctrl
>>>>>>> +          - const: amlogic,meson8-aobus-pinctrl
>>>>>>> +      - items:
>>>>>>> +          - const: amlogic,meson8m2-cbus-pinctrl
>>>>>>> +          - const: amlogic,meson8-cbus-pinctrl
>>>>>>
>>>>>> Again, can't have both with and without the fallback allowed.
>>>>>>
>>>>> Hi Martin,
>>>>>
>>>>> meson8m2 is the only chip version having a fallback for the
>>>>> pinctrl compatible. Is this fallback really needed?
>>>>> Looking at the driver it seems that both compatibles
>>>>> are handled identically.
>>>> Back in the day we decided to duplicate the Meson8 driver code just to
>>>> add four new pin functions that are added by the Meson8m2 SoC
>>>> generation:
>>>> "eth_rxd2", "eth_rxd3", "eth_txd2", "eth_txd3"
>>>>
>>>> The compatible string was defined with a similar approach: since
>>>> Meson8m2 just adds a few bits to the Meson8 pin controller it's
>>>> backwards compatible.
>>>>
>>>> If the fallback has to be removed then I'm okay with that but I would
>>>> like to understand it first.
>>>> So far I thought that Rob basically asked to remove the following two
>>>> compatible strings from the enum (as they're listed separately with
>>>> their fallbacks):
>>>> - amlogic,meson8m2-cbus-pinctrl
>>>> - amlogic,meson8m2-aobus-pinctrl
>>>>
>>> Right, this should be sufficient. There's no place where the 8m2 pinctrl
>>> compatibles are used w/o fallback.
>>>
>>> Then the hopefully final version of the binding is almost ready.
>>> I'm just still checking whether there's any way in yaml to specify
>>> a reg-names list with mandatory and optional names. Doesn't seem so.
>>
>> It’s possible with minItems/maxItems and allOf:if/else to specify different min/max for each compatible
>>
> I have a problem here because reg-names is in the gpio-controller child node and compatible is in the
> pinctrl parent node. An expression under patternProperties doesn't see the compatible property of the
> parent node. It would have been better to place regs/reg-names in the pinctrl node.
> Not sure how to deal with this. The easiest would be to just have minItems:2 and maxItems:5 as criteria
> for regs and reg-names.
> 

In this case, either you add 2 yaml bindings with perhaps a common yaml using allOf:ref or
you add some complex matching but I think you should split it in 3 files like:


================================================================
amlogic,meson-pinctrl-common.yaml:
...

properties:
   ranges: true

   "#address-cells":
     enum: [1, 2]

   "#size-cells":
     enum: [1, 2]

patternProperties:
   "-state$":
     allOf:
       - $ref: pincfg-node.yaml#
       - $ref: pinmux-node.yaml#

allOf:
   - $ref: pinctrl.yaml#

required:
   - compatible
   - ranges
   - "#address-cells"
   - "#size-cells"

additionalProperties: true

$defs:
   meson-gpio:
     type: object
     properties:
       gpio-controller: true

       "#gpio-cells":
         const: 2

       gpio-ranges:
         $ref: /schemas/types.yaml#/definitions/phandle

       required:
         - gpio-controller
         - "#gpio-cells"
         - gpio-ranges
...

================================================================
amlogic,meson8-cbus-pinctrl.yaml:

...
$ref: amlogic,meson-pinctrl-common.yaml#

properties:
   compatible:
     oneOf:
       - items:
           - enum:
               - amlogic,meson8-cbus-pinctrl
               - amlogic,meson8b-cbus-pinctrl
               - amlogic,meson8-aobus-pinctrl
               - amlogic,meson8b-aobus-pinctrl
       - items:
           - const: amlogic,meson8m2-aobus-pinctrl
           - const: amlogic,meson8-aobus-pinctrl
       - items:
           - const: amlogic,meson8m2-cbus-pinctrl
           - const: amlogic,meson8-cbus-pinctrl

required:
   - compatible

patternProperties:
   "^bank@[0-9]$":
     $ref: "#/$defs/meson-gpio"

     properties:
       reg:
         maxItems: 2

       reg-names:
         items:
           - const: gpio
           - const: pull

     required:
       - reg
       - reg-names
...

================================================================
amlogic,meson-gxbb-periphs-pinctrl.yaml:

...
$ref: amlogic,meson-pinctrl-common.yaml#

properties:
   compatible:
     items:
       - enum:
          - amlogic,meson-gxbb-periphs-pinctrl
          - amlogic,meson-gxbb-aobus-pinctrl
          - amlogic,meson-gxl-periphs-pinctrl
          - amlogic,meson-gxl-aobus-pinctrl
          - amlogic,meson-axg-periphs-pinctrl
          - amlogic,meson-axg-aobus-pinctrl
          - amlogic,meson-g12a-periphs-pinctrl
          - amlogic,meson-g12a-aobus-pinctrl
          - amlogic,meson-a1-periphs-pinctrl
          - amlogic,meson-s4-periphs-pinctrl

required:
   - compatible

patternProperties:
   "^bank@[0-9]$":
     $ref: "#/$defs/meson-gpio"

     properties:
       reg:
         minItems: 5

       reg-names:
         items:
           - const: gpio
           - const: pull
           - const: pull-enable
           - const: mux
           - const: ds

     required:
       - reg
       - reg-names
...
================================================================

You may even add a 4th file for G12/A1 is reg-names need a different count.

Neil
