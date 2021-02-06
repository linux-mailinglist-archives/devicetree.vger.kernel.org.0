Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56CEA3118CF
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 03:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhBFCrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 21:47:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231749AbhBFCnj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 21:43:39 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60AEBC08EE24
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 16:31:51 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id r20so6394917qtm.3
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 16:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F+SY9eK3XDXeBXzsdGe1L5Qvg1tCpCGMdSMejg6tzVs=;
        b=Mn+/YmKCJze+tIuCNwRzJzh3WzYLX+YEiE2Qf8KN7jgKBM6IOdhE142hc5Viqualvt
         s6dZWmGmom5ANYXCspiFKBdxMvA3U1dFa6+H/77fbqxNFPXIihA7W+bZvptSk1ptCSrL
         2CR7ta7FYm5sSQJFfNCVp0DsuTMaimQUGaAl8HRrxFMSqqFnYUgmxph1xgSwE41rHS/o
         vFagQmdc8nD3QxAJ3Rxsr85Lj2wQdl6pwrAlETPK3mf8WKcnGd1oM6iWohnuyQwo+8Fn
         wcPw3kskH7InrWkPhzkvMBgE1anSXkXX+mbihAdeCxkRPpPT3Tvoek6sBU5UOVy9op6h
         2EnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F+SY9eK3XDXeBXzsdGe1L5Qvg1tCpCGMdSMejg6tzVs=;
        b=l6I1s/n8DSgG81tGj1n1LQ2052ErcMie+8msIshjxGsOLU4wreuHhQL8uf9QyKNI92
         7EIYaAiVy4na/KD4wN/zBDFKHgM7ygewO6PRiHuJN4ncoDncO3xhIwhV51njJNu/D3jT
         GZX0IQ49asfhnH98rafqaQTCe3aLgrqJjMdyijEw23AY6vFapBASTp9vNIFVXxD2fv9Z
         b5oTKeQlQO7qFLdvDQ39+S5Xq52RPOrVaTWKKPIrLXd/sq2I4hEQPlJU6SWVxAlUSs+Y
         iXagqBeBDlaTs8eU0gq603AkuJ63P/RE6KWCNpSpJ477/mabwktKsIJJ5lClSCA4qjsY
         yj9w==
X-Gm-Message-State: AOAM531wdD8z4SA09jceFNi2tD07OwfW0TauI35ZOZhn6xEe6LNGka0w
        epT4StoOI91fXLxolz2TmLUi1Yz7n1I=
X-Google-Smtp-Source: ABdhPJzZw32OhRkgZbWp1oyQlI9huQfuTQ8fJJ/4/YbX3IMr1wcRsav642KJ1jebtZYtl/5d2yyjyw==
X-Received: by 2002:ac8:78d:: with SMTP id l13mr6489351qth.278.1612571510570;
        Fri, 05 Feb 2021 16:31:50 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id f14sm10769582qkl.76.2021.02.05.16.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 16:31:50 -0800 (PST)
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Damien Le Moal <Damien.LeMoal@wdc.com>,
        "robh@kernel.org" <robh@kernel.org>
Cc:     "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Anup Patel <Anup.Patel@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <89cccbae5add85c7bd811f3819ea3db7061e928d.camel@wdc.com>
 <CAL_JsqJeF364bPSNQLGujNHDkA7x8H_H7YXQFNZQ7vDzdAevcA@mail.gmail.com>
 <c9d273c87815a89be314e4e824a365313be0d677.camel@wdc.com>
 <CAL_JsqKnAQ+ngNkaKkDAO5Bqd=ZwNm5A4VhxvuVZxgLdxxxpSg@mail.gmail.com>
 <6351faa35c175d38e033ce433780c03c141c0ddf.camel@wdc.com>
 <c170e192-9e3f-5682-5a7f-ac9fc573fd9d@gmail.com>
 <f0b7df37e67151dab5699923549de6b3fbe30367.camel@wdc.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <1726dceb-868e-68a1-38df-2f80ee233ed1@gmail.com>
Date:   Fri, 5 Feb 2021 19:31:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f0b7df37e67151dab5699923549de6b3fbe30367.camel@wdc.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/5/21 6:32 PM, Damien Le Moal wrote:
> On Fri, 2021-02-05 at 17:55 -0500, Sean Anderson wrote:
>> On 2/5/21 5:53 PM, Damien Le Moal wrote:
>>> On Fri, 2021-02-05 at 14:02 -0600, Rob Herring wrote:
>>>> On Wed, Feb 3, 2021 at 6:47 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>>>>>
>>>>> On Wed, 2021-02-03 at 14:41 -0600, Rob Herring wrote:
>>>>>> On Wed, Feb 3, 2021 at 6:52 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>>>>>>>
>>>>>>> On Tue, 2021-02-02 at 13:02 -0600, Rob Herring wrote:
>>>>>>>> On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>>>>>>>>>
>>>>>>>>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
>>>>>>>>> interrupts property description and maxItems. Also add the standard
>>>>>>>>> ngpios property to describe the number of GPIOs available on the
>>>>>>>>> implementation.
>>>>>>>>>
>>>>>>>>> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
>>>>>>>>> of this gpio controller in the Canaan Kendryte K210 SoC. If this
>>>>>>>>> compatible string is used, do not define the clocks property as
>>>>>>>>> required as the K210 SoC does not have a software controllable clock
>>>>>>>>> for the Sifive gpio IP block.
>>>>>>>>>
>>>>>>>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>>>>>>>>> Cc: Rob Herring <robh@kernel.org>
>>>>>>>>> Cc: devicetree@vger.kernel.org
>>>>>>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>>>>>>>>> ---
>>>>>>>>>    .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
>>>>>>>>>    1 file changed, 18 insertions(+), 3 deletions(-)
>>>>>>>>>
>>>>>>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>>>>>> index ab22056f8b44..2cef18ca737c 100644
>>>>>>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>>>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>>>>>> @@ -16,6 +16,7 @@ properties:
>>>>>>>>>          - enum:
>>>>>>>>>              - sifive,fu540-c000-gpio
>>>>>>>>>              - sifive,fu740-c000-gpio
>>>>>>>>> +          - canaan,k210-gpiohs
>>>>>>>>>          - const: sifive,gpio0
>>>>>>>>>
>>>>>>>>>      reg:
>>>>>>>>> @@ -23,9 +24,9 @@ properties:
>>>>>>>>>
>>>>>>>>>      interrupts:
>>>>>>>>>        description:
>>>>>>>>> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
>>>>>>>>> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
>>>>>>>>>        minItems: 1
>>>>>>>>> -    maxItems: 16
>>>>>>>>> +    maxItems: 32
>>>>>>>>>
>>>>>>>>>      interrupt-controller: true
>>>>>>>>>
>>>>>>>>> @@ -38,6 +39,10 @@ properties:
>>>>>>>>>      "#gpio-cells":
>>>>>>>>>        const: 2
>>>>>>>>>
>>>>>>>>> +  ngpios:
>>>>>>>>> +    minimum: 1
>>>>>>>>> +    maximum: 32
>>>>>>>>
>>>>>>>> What's the default as obviously drivers already assume something.
>>>>>>>>
>>>>>>>> Does a driver actually need to know this? For example, does the
>>>>>>>> register stride change or something?
>>>>>>>>
>>>>>>>> Please don't add it if the only purpose is error check your DT (IOW,
>>>>>>>> if it just checks the max cell value in gpios phandles).
>>>>>>>
>>>>>>> If I remove that, make dtbs_check complains. Looking at othe gpio controller
>>>>>>> bindings, they all have it. So isn't it better to be consistent, and avoid make
>>>>>>> dtbs_check errors ?
>>>>>>
>>>>>> That would mean you are already using 'ngpios' and it is undocumented
>>>>>> (for this binding). If already in use and possibly having users then
>>>>>> that changes things, but that's not what the commit msg says.
>>>>>>
>>>>>> Not *all* gpio controllers have ngpios. It's a good number, but
>>>>>> probably more than need it though. If we wanted it everywhere, there
>>>>>> would be a schema enforcing that.
>>>>>
>>>>> If I remove the minimum and maximum lines, I get this error:
>>>>
>>>> I never said remove minimum/maximum. The suggestion is either add
>>>> 'default: 16' or remove 'ngpios' entirely.
>>>>
>>>>> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml:42:10: [error] empty
>>>>> value in block mapping (empty-values)
>>>>>     CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/sifive
>>>>> ,gpio.yaml: properties:ngpios: None is not of type 'object', 'boolean'
>>>>>     SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/sifive
>>>>> ,gpio.yaml: ignoring, error in schema: properties: ngpios
>>>>> warning: no schema found in file:
>>>>> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>
>>>> ngpios: true
>>>>
>>>> or
>>>>
>>>> ngpios: {}
>>>>
>>>> Are the minimum valid values for a key. (Though not what should be done here.)
>>>>
>>>>>
>>>>> If I remove the ngpios property entirely, then I get a hit on the device tree:
>>>>>
>>>>>     CHECK   arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml
>>>>> /linux/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml:
>>>>> gpio-controller@38001000: 'ngpios' does not match any of the regexes: 'pinctrl-
>>>>> [0-9]+'
>>>>>           From schema:
>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/sifive
>>>>> ,gpio.yaml
>>>>
>>>> That's not upstream, right? Then fix it.
>>>>
>>>>> Now, If I change the property definition to this:
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>> b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>> index 2cef18ca737c..5c7865180383 100644
>>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>>> @@ -40,8 +40,11 @@ properties:
>>>>>        const: 2
>>>>>
>>>>>      ngpios:
>>>>> -    minimum: 1
>>>>> -    maximum: 32
>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>>> +    description:
>>>>> +      The number of GPIO pins implemented by the controller.
>>>>> +      It is 16 for the SiFive SoCs and 32 for the Canaan K210 SoC.
>>>>> +
>>>>>
>>>>>      gpio-controller: true
>>>>>
>>>>> Then all is OK.
>>>>>
>>>>> Which option should I go for here ? If we want to avoid a dtbs_check error, as
>>>>> far as I can see, we can:
>>>>> 1) Remove the ngpios property and remove its use from the DTS, which is not
>>>>> nice in my opinion
>>>>
>>>> Again, it depends if there are users depending on it. A user being a
>>>> GPIO driver somewhere, not a DTS file. The GPIO driver in the kernel
>>>> doesn't need it. So u-boot? BSD?
>>>
>>> The Linux driver uses the number of interrupts for the number of gpios but
>>> upstream U-Boot uses the ngpios property. So I will change this to use
>>> "default: 16" as you suggested.
>>
>> There is no reasonable default for this hardware. I would much rather
>> you keep the schema as-is, or at least go with the second option.
> 
> Since the SiFive official doc seems to say "16" as the number of gpio for this
> controller, we could assume that to be the default. No ? But I agree that
> clearly, the implementation can be hacked to have any number of GPIOs...

Keep in mind that those docs are for SiFive's particular instantiation
of that IP, not for the IP in general. Although some parameters (e.g.
dsWidth) have defaults, width does not.

--Sean

> 
> 
>>
>> --Sean
>>
>>>
>>> Thanks !
>>>
>>>>
>>>>> 2) Use the modification proposed above
>>>
>>
> 

