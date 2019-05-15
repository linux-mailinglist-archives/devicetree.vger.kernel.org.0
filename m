Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 415AB1F93F
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 19:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725974AbfEORUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 13:20:09 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46443 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbfEORUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 13:20:08 -0400
Received: by mail-wr1-f66.google.com with SMTP id r7so314061wrr.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 10:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZrGSccPOQF6rOlAuVqsU5NFL5Iw0mprYmWahtp6H7dQ=;
        b=A3NKWiUc9MPhGqjrf+TNbgTgHGbvdvdLa4uw2+p0K9jjNaj95OeNXy82z5uRgT3Hha
         noEHCKaJiNkq/vBw2eLtYUIhzC6SZ1lC6HOWOlHSz61pGV7A4z/OsWzLTq6DNUJI1zJo
         6A29ZjwXl0y5NtJ1426ZR2uZ8CUIv2q42UhFy3nQiZ2eIozWSC5If3yL2XOJW6oO1YXc
         2K1Q2C6mTFoIgj9jmuSXS5OsFnTFJ4b3sJm/IHeE2xYfNx7Phr5oyfjdQ0kAhD47tN7x
         UxcFEiOkScM5YBVueLQ86ptTwh1iee9e5Th98RTQLzcVriyYPs48D9DorrOJ9glAfFip
         BHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZrGSccPOQF6rOlAuVqsU5NFL5Iw0mprYmWahtp6H7dQ=;
        b=EfYjZHgXEWWQl3xOp45+VNrI6+zX/sX69hc09seFrQiVVxt3zRYV9qwt+sj2RPavwX
         /W7zxLcwEjXPX1Ryy7JS77Vz6uYZ2TH+YhAxPWoUaiEgTvxSpSBev2vNVyj6fYAlzqnJ
         PMGTDlWY7mVYb15wxXS9/NwLS4tIUa1Sa+Roj7jKAt4k8cJnPgEgKVyFd/aM3j94IsEU
         SCRsnW+afiYiJJw5oVndt1jBtm3T8nQGLAupU+FTnOxXS1eqq6idxOq6FLtL5BHiwvMA
         w52KTdtrZ2nKJOcA1KqCFzs/xtynp3UN85p4P3Fo6Ld0nZVyqXqXcmuIHAkN7lXTCGQ8
         phEA==
X-Gm-Message-State: APjAAAX9KxcwzDNH1KETf0XpS+Hcq6nnsQ6oC/KJ9DAwNs3htGVnnlf2
        +Yv9d3OZmox0qqbiaw+4vf5cycLoomc=
X-Google-Smtp-Source: APXvYqz+lkfVRwkNbo/qLnLk9lrHJ0I1t07L6bM8YIauVfKH+9VI/IklbZ4puqFVie0FxjhGPQLgtQ==
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr10797003wru.18.1557940343120;
        Wed, 15 May 2019 10:12:23 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id o6sm3874146wrh.55.2019.05.15.10.12.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 10:12:21 -0700 (PDT)
Subject: Re: NVMEM address DT post processing [Was: Re: [PATCH net 0/3] add
 property "nvmem_macaddr_swap" to swap macaddr bytes order]
To:     =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Andy Duan <fugang.duan@nxp.com>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "john@phrozen.org" <john@phrozen.org>,
        "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Alban Bedel <albeu@free.fr>, devicetree@vger.kernel.org
References: <1557476567-17397-2-git-send-email-fugang.duan@nxp.com>
 <1557476567-17397-1-git-send-email-fugang.duan@nxp.com>
 <20190510112822.GT81826@meh.true.cz> <20190510113155.mvpuhe4yzxdaanei@flea>
 <20190511144444.GU81826@meh.true.cz>
 <547abcff-103a-13b8-f42a-c0bd1d910bbc@linaro.org>
 <20190513090700.GW81826@meh.true.cz>
 <8cee0086-7459-24c7-82f9-d559527df6e6@linaro.org>
 <20190513111612.GA21475@meh.true.cz>
 <0c6cb9d4-2da1-00be-b527-5891b8b030a8@linaro.org>
 <20190514174447.GE93050@meh.true.cz>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <a4f6888f-8c3d-f80a-f2b5-f9d8860f0de3@linaro.org>
Date:   Wed, 15 May 2019 18:12:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514174447.GE93050@meh.true.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/05/2019 18:44, Petr Štetiar wrote:
> Srinivas Kandagatla <srinivas.kandagatla@linaro.org> [2019-05-14 16:13:22]:
> 
>> On 13/05/2019 12:16, Petr Štetiar wrote:
>>> Srinivas Kandagatla <srinivas.kandagatla@linaro.org> [2019-05-13 11:06:48]:
>>>
>>>> On 13/05/2019 10:07, Petr Štetiar wrote:
>>>>> Srinivas Kandagatla <srinivas.kandagatla@linaro.org> [2019-05-13 09:25:55]:
>>>>>
>>>>>> My initial idea was to add compatible strings to the cell so that most of
>>>>>> the encoding information can be derived from it. For example if the encoding
>>>>>> representing in your example is pretty standard or vendor specific we could
>>>>>> just do with a simple compatible like below:
>>>>>
>>>>> that vendor/compatible list would be quite long[1], there are hundreds of
>>>>
>>>> You are right just vendor list could be very long, but I was hoping that the
>>>> post-processing would fall in some categories which can be used in
>>>> compatible string.
>>>>
>>>> Irrespective of which we need to have some sort of compatible string to
>>>> enable nvmem core to know that there is some form of post processing to be
>>>> done on the cells!. Without which there is a danger of continuing to adding
>>>> new properties to the cell bindings which have no relation to each other.
>>>
>>> makes sense, so something like this would be acceptable?
>>>
>>>    eth1_addr: eth-mac-addr@18a {
>>>        /* or rather linux,nvmem-post-process ? */
>>>        compatible = "openwrt,nvmem-post-process";
>>
>> I don't think this would be a correct compatible string to use here.
>> Before we decide on naming, I would like to understand bit more on what are
>> the other possible forms of storing mac address,
>> Here is what I found,
>>
>> Type 1: Octets in ASCII without delimiters. (Swapped/non-Swapped)
>> Type 2: Octets in ASCII with delimiters like (":", ",", ".", "-"... so on)
>> (Swapped/non-Swapped)
>> Type 3: Is the one which stores mac address in Type1/2 but this has to be
>> incremented to be used on other instances of eth.
>>
>> Did I miss anything?
> 
> Type 4: Octets as bytes/u8, swapped/non-swapped
> 
> Currently just type4-non-swapped is supported. Support for type4-swapped was
> goal of this patch series.
> 

Can we just get away with swapped/non-swapped by using order of reg dt 
property?
If that works for you then we do not need a special compatible string too.

Note that current nvmem core only supports single reg value pair which 
needs to be extended to support multiple reg value.

> I've simply tried to avoid using mac-address for the compatible as this
> provider could be reused by other potential nvmem consumers. The question is,
> how much abstracted it should be then.
> 
>> My suggestion for type1 and type2 would be something like this, as long as
>> its okay with DT maintainers
>>
>> eth1_addr: eth-mac-addr@18a {
>> 	compatible = "ascii-mac-address";
>> 	reg = <0x18a 2>, <0x192 2>, <0x196 2>, <0x200 2>, <0x304 2>, <0x306 2>;
>> 	swap-mac-address;
>> 	delimiter = ":";
>> };
> 
> with this reg array, you don't need the delimiter property anymore, do you?
> 
You are right we do not need it.

>> For type 3:
>>
>> This sounds like very much vendor specific optimization thing which am not
>> 100% sure atm.  If dt maintainers are okay, may be we can add an increment
>> in the "ascii-mac-address" binding itself.
>>
>> Do you think "increment-at " would ever change?
> 
> Currently there's just one such real world use case in OpenWrt tree[1].

If that is the case then we definitely need bindings prefixed with 
vendor name or something on those lines for this.


> Probably some vendor decided to increment 4th octet.
Incrementing 4th octet does not really make sense!

Thanks,
srini
