Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D09094E8A
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 21:43:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728269AbfHSTnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 15:43:52 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34736 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727957AbfHSTnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 15:43:52 -0400
Received: by mail-wm1-f67.google.com with SMTP id e8so751601wme.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 12:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sUvtR9FU4aRKV7SgEAXHiejDUtQv+K/PtGB87554ptQ=;
        b=tpyGBrXzqgrnpWQJ6cbC8VYrH+o11xOGbjJWQp98kDZ7CZO2V0vEDG/lfwiXEhiUko
         WJQvFzIquEXOOIo58SrvKErci5ofHkwB9CAxNG4BMJ+2O3bZ+yG5rrsxiQT0ORO/wyzi
         E3GCmpmzF/iv1Sw7uBeW/fkNVIlI49XDCTTAReE0C1c01zzWF+7AmD+mJDgpPhZX6ub5
         R0yy8g4MuL5xnI+HGLQVKY/Y6/HYMrQTs5rOzSB7H4qgdm/vuh8v0v6AXBSUy6nTEddT
         SAAMyWxb4TIR0ncFywrhG1ym0JEYwnSSMiI+mxVryruFYLZmj/ks7BBhSpjxbJizWGPQ
         QOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=sUvtR9FU4aRKV7SgEAXHiejDUtQv+K/PtGB87554ptQ=;
        b=KCOlD1tVI0kOrCBxaC9sLYliSnE5Z6sj+YK0drpS9x0GrFg8Sjpb/Fsji2Xns3xZMQ
         kYze3RvOmzWFq1JoeVH8ioGZ1/p2MNDYf/dgEd/gBbdJxIFDwEwlNGep2L5fetJj+vuD
         PR1EA8A2rIu5edY7/AFS3xXIWDcUdxSetw5zyGCs6d36HGdCVwZGqGf/UjfltDBH7Tr3
         2SbJaWUytJsQshaOYOk/UwsUSKstijau4809K60PMEtwUbdvAog9tiNLDWsfOcpQcR12
         /3tvj/jtu2TDAY2WTqxHOxmzhgm44rBt/DVcmTuih3HEX2GmI4J6xSKVPf8ACZ84hkuJ
         2Y3Q==
X-Gm-Message-State: APjAAAUXs7WLMh/yCfKA0VwxiA7RI2+X8kjTX36FiD2qRZFdTg8uzcmA
        noc+m5ZqWLAVTyDlykhuIJSlU5V9+tE=
X-Google-Smtp-Source: APXvYqyQVcaEcuMR/uXEY0eLcxXMjwP9KrA2pCeo2yUMUDZPtiihJ1UFMYdv0UaZynrZojr1mMxicw==
X-Received: by 2002:a1c:c188:: with SMTP id r130mr21184763wmf.73.1566243829446;
        Mon, 19 Aug 2019 12:43:49 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4409:6127:8de8:4f9? ([2a01:e34:ed2f:f020:4409:6127:8de8:4f9])
        by smtp.googlemail.com with ESMTPSA id c15sm42985965wrb.80.2019.08.19.12.43.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 12:43:48 -0700 (PDT)
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, tglx@linutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea> <20190819133058.bujcawpw5rgsfp4g@flea>
 <0e36a6fe-33de-5af5-f4f9-4cedfc9d0cbf@linaro.org>
 <20190819191326.c27vmevrqkmjhfru@flea>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b217183a-33c1-f384-e730-eb1903ca0d03@linaro.org>
Date:   Mon, 19 Aug 2019 21:43:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819191326.c27vmevrqkmjhfru@flea>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2019 21:13, Maxime Ripard wrote:
> On Mon, Aug 19, 2019 at 03:45:40PM +0200, Daniel Lezcano wrote:
>> On 19/08/2019 15:30, Maxime Ripard wrote:
>>> On Mon, Aug 12, 2019 at 01:24:11PM +0200, Maxime Ripard wrote:
>>>> On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
>>>>> On 12/08/2019 11:16, Maxime Ripard wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
>>>>>>> On 22/07/2019 10:12, Maxime Ripard wrote:
>>>>>>>> Newer Allwinner SoCs have different number of interrupts, let's add
>>>>>>>> different compatibles for all of them to deal with this properly.
>>>>>>>>
>>>>>>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>>>>>>
>>>>>>> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>>>>
>>>>>> Thanks!
>>>>>>
>>>>>> Can you merge this through your tree (along with the bindings)? I'll
>>>>>> merge the DT patches
>>>>>
>>>>> patches 1-4 then ?
>>>>
>>>> Yep, thanks!
>>>
>>> Ping?
>>
>> They are applied :)
> 
> Oh, my bad :)

Actually, I should have tell you they were applied.

> Where is your tree these days? I couldn't find it in linux-next either

https://git.linaro.org/people/daniel.lezcano/linux.git/log/?h=clockevents/next



-- 
 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

