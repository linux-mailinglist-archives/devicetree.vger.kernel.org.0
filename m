Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17CBB2AF4C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 16:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726338AbgKKPeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 10:34:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726136AbgKKPeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 10:34:02 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE07C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 07:34:01 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id r186so1681418pgr.0
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 07:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aKu2Cp+BR7egmkyy6gtAI7Libyaz8Ov6ncTHEd23iuY=;
        b=ZwA/TD5l71yC02eoUv1QvNlw/SKhbJS4aYBX6zX/2OTz2g3j20S81tq4x0ux6Lksn4
         88rzsfF3O71rmE/FMaAhLjB9Cn3/IzZaFMiRAn1mvafP/d9727mk+vxjsD3kv+0sq/SK
         licWmXUrrbtxtwTr1LAH24hHAI3oz6rUmXFqXbmpLP+MpxY0a/v1nsojm44fo/3uWtkx
         1a18NIrkc0mGmNf1MDhCDErjekzqDrMVAvX5NaraO1N6D4wTmPBzrpz9AkT4b4leBDsd
         5bCgBZkPT17G6plvjG0ovo7x9WcfMrAXQBAYW+2Oiali1iqaOL14m+2TZVHxWrPAfFg7
         5DbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aKu2Cp+BR7egmkyy6gtAI7Libyaz8Ov6ncTHEd23iuY=;
        b=CCP1gI08cBp3QWZe4QlLotge687Kl+/4ieK2uxuHjScCi8QQjv47juVV1KhyguCv12
         cxwFm3pl+KHYrEwRaBWBLno6v255UHfVHOBotYE8GR+7xKtM8EJ8jRnvAUdrdWpOHQbB
         lekwc9rhx0mVbAvUjPTTsOM3QUbRL0HhJV4TDyJjHu/Ps5SyGyxwrOBujhL9/YJ+NTwt
         3dWxSy0ULok+ajoiG2C5g5/pIRTSH2taB1GKBf7ZOCi+26gsAPd/K6f7+h7jln7gye+X
         /bPcEEYV3b55K7JdXjrzf6J/emA0C2aqkKmMphWdiXsE4/3BY+SHW5TxffRssibPfpCy
         XINQ==
X-Gm-Message-State: AOAM531tlllwZ9lDBkCRYs4IjswaE+Vs+4JZqAwiUTVeVoBtuEqqoxsb
        eCdRN2+w43VRFs9G0JA2Kw0=
X-Google-Smtp-Source: ABdhPJw1ZlaEQomBPdojzSnQm1sm1NUkcyfUicIhWsJ66shhD/HRdcE1o5712cfmGce7vIZrmOj88w==
X-Received: by 2002:aa7:9601:0:b029:18a:e777:dac1 with SMTP id q1-20020aa796010000b029018ae777dac1mr23185330pfg.4.1605108840920;
        Wed, 11 Nov 2020 07:34:00 -0800 (PST)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
        by smtp.gmail.com with ESMTPSA id x123sm3042215pfb.212.2020.11.11.07.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:33:59 -0800 (PST)
Subject: Re: [PATCH V2 2/2] arm64: dts: broadcom: add BCM4908 and Asus
 GT-AC5300 early DTS files
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201105085458.21121-1-zajec5@gmail.com>
 <20201105085458.21121-2-zajec5@gmail.com>
 <a4a1d02f-c950-62ab-fb49-b5819cf1cd11@gmail.com>
 <1d62eeca-dc09-866c-85c7-235144f8e782@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1d21b0ee-f880-746f-5dc4-5290aec1eb7e@gmail.com>
Date:   Wed, 11 Nov 2020 07:33:58 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <1d62eeca-dc09-866c-85c7-235144f8e782@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/10/2020 9:59 PM, Rafał Miłecki wrote:
> On 11.11.2020 02:04, Florian Fainelli wrote:
>>> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>>> b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>>> new file mode 100644
>>> index 000000000000..3bbefc86b978
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
>>> @@ -0,0 +1,188 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>>> +
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +/dts-v1/;
>>> +
>>> +/ {
>>> +    interrupt-parent = <&gic>;
>>> +
>>> +    #address-cells = <2>;
>>> +    #size-cells = <2>;
>>> +
>>> +    aliases {
>>> +        serial0 = &uart0;
>>> +    };
>>> +
>>> +    chosen {
>>> +        bootargs = "earlycon=bcm63xx_uart,0xff800640";
>>
>> We talked about it before, but the earlycon should be dropped from the
>> .dtsi file, it does not really belong there.
> 
> I asked the following question that you probably missed, could you check
> it, please?
> 
> On Wed, 4 Nov 2020 at 09:02, Rafał Miłecki <zajec5@gmail.com> wrote:
>> Can you explain why, is that some kernel rule I missed? That's
> extremely helpful for debugging.

It's useful for debugging but because it is meant for debugging it does
not really belong in a .dtsi which gets included by a board level .dts
file and I would argue that it does not belong in a board level .dts
either. This is something that you can and should keep locally while
debugging and remove for "production". That is not a rule that is
written somewhere, and there are certainly cases of .dts files in the
kernel containing "earlycon" for better or for worse.
-- 
Florian
