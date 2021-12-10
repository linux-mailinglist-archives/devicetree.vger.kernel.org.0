Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F12846FDC8
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 10:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234263AbhLJJfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 04:35:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231384AbhLJJfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 04:35:20 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 133DBC061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:31:45 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id c32so16987867lfv.4
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=WMI/y1U0D7nOaSQBJKUvEGaWTKasRYagNwwJMVS/g64=;
        b=aGijpqYEnDCEJDmN+rmKNzRumcgbjubj9rf6I2eyghJ5+P2aQXhcFxSXA05aJIus+c
         YkT9A0OaN6FVS4pHLFXL7yjY6HN+QyUPB0P5uqKanKppOEmVd4eKj8pJWCsiFPqUPyCE
         cb+iQtndSN56T0XtxkmwvXflOMzlRp5/jX6gasgOXstcEKmCy33Ivv7bTlAxmhBL5yDl
         pdeZ3DEyeRE3vZ7B7xtN6gkzFXsK8b2UAP6kyoN5gw2eQAKXOGORg03x4cacOAiJv1Oj
         k0IgWU4XlFz+JiHWDkSKpjtENGFWohIi6uPLXxBn6AtgKfVcMtRSxPGkJ+Bv6y0Fhw/d
         yRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WMI/y1U0D7nOaSQBJKUvEGaWTKasRYagNwwJMVS/g64=;
        b=q4ynjxYgQoSDxDlvfTfGbTrjxaKQ6Inq132YHoaW+i1UrFcl4G6DWHuPkHabqaVe6t
         WD8Iv38zRgTEpnXewwqbnu60kSSdDq5VuvKeN9Mmtu2SMMuz+Icm9bufaIEfyDeMDHRB
         z+rF8138AgSn/+SiD/6cC+PQeuB03JfGrehesDMe8IhOzSZFviMTzRQ2eL4dvli3jIvT
         AarPhptRqwJaWMhcvi97srm3VBvDrFJIdQeEhbOZ4q1lHOmxPxzz/mgks0sEqN5JqdGi
         LWcZy8lDflyQKARsYzmid0co1zqDMwvNSQ2iOdnmqpbjK5a0z+fa4SKboftJrmhpJ5YB
         Kb1w==
X-Gm-Message-State: AOAM533kn4GxakGDPTLLZ/l57yjtofus1fmtM19RQ4vOmIJh058SjO7J
        JK6x/v/I4rpbeeXydJ/LM7o=
X-Google-Smtp-Source: ABdhPJzoRTqVcB69pA97vjriiBVPT/iIhofIFnRsig/MTccZ1qBEwnxfHn3FOxRWxdeadKju++vjtA==
X-Received: by 2002:a19:3846:: with SMTP id d6mr11828272lfj.74.1639128703298;
        Fri, 10 Dec 2021 01:31:43 -0800 (PST)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id s15sm256498ljj.14.2021.12.10.01.31.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 01:31:42 -0800 (PST)
Message-ID: <85b703f6-1e21-46d0-02ae-19e529a635a2@gmail.com>
Date:   Fri, 10 Dec 2021 10:31:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add USB GPIO and missing LEDs on
 Netgear R6300v2
To:     Lisa Hill <f11o1iomh3dmt141n@icloud.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <74E33696-D05A-4009-8C40-927A4DBDD4EF@icloud.com>
 <cc83723a-cf88-66bc-9ab9-101355f3801f@gmail.com>
 <C624909D-1513-4256-BCC1-50C7B43402CC@icloud.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <C624909D-1513-4256-BCC1-50C7B43402CC@icloud.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10.12.2021 10:18, Lisa Hill wrote:
> On Dec 10, 2021, at 15:39, Rafał Miłecki <zajec5@gmail.com> wrote:
> 
>> One more comment on sending patches: please configure your e-mail client
>> to send text only (text/plain) without extra HTML version (text/html).
>>
>> If you can't configure your e-mail easily you can also try
>> "git send-email" command line tool.
>>
>> See:
>> https://www.kernel.org/doc/html/v5.15/process/submitting-patches.html#no-mime-no-links-no-compression-no-attachments-just-plain-text
>> https://www.kernel.org/doc/html/v5.15/process/email-clients.html
>>
>> Also see comments below.
>>
> 
> Thanks for your help. I have noticed the #no-mime-no-links-no-compression-no-attachments-just-plain-text warning from The Linux Kernel documentation. However I sent a Safari-copied html mail by accident which was rejected by linux-arm-kernel@lists.infradead.org. Now I have configured my e-mail client to send plain text by default. Can you verify that on my reply?

It's perfect.


> Should I cc to Florian Fainelli <f.fainelli@gmail.com> and Hauke Mehrtens <hauke@hauke-m.de> any more?  I have noticed your two e-mail clients from commits: rafal@milecki.pl and zajec5@gmail.com. Which one should I use to contact you? Should I cc to another?

Yes, please include Florian & Hauke.
Either of my addresses is fine.


>>> +		};
>>> +		
>>
>> No tabs in empty separator line please.
>>
> 
> I forgot to remove tabs when I made this commit on Github. Sorry for that.
> 
> The linux repo is too big for me to clone. I have to use the fork feature in Github if I want to use git diff to create the patch. That’s why I can’t use "git send-email” which is recommended by The Linux Kernel documentation. Do you have any idea how I can send you the patch directly from Github instead of a 3rd e-mail client?

You can limit amount of cloned data by using --depth. Maybe that will
help.

git clone -–depth 10 git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

I'm not familiar with GitHub, I don't know if it supports sending
patches.


> Since I can’t reply to your comment and provide a clean modified patch at the same time, I will send you a modified patch later.
> 
>>> +		wan-amber {
>>> +			label = "bcm53xx:amber:wan";
>>> +			gpios = <&chipcommon 10 GPIO_ACTIVE_HIGH>;
>>>   		};
>>
>> It's unlikely both WAN LEDs (green & amber) are controlled by the same
>> GPIO (10). Please verify that.
> 
> I did verify that following the "Adding new device support” guide from OpenWrt. It bothered me too since I have never noticed this thing on any other device. I think you can verify that on your Netgear R6250 since they are very similar. I will remove the wan-amber LED later to respond to your concern.

Well, please just double check what *really* happens when you set GPIO
10 to 0/1 value. Which LED does really turn on/off? Please don't just
randomly add/remove info from DT. Please verify it instead and provide
accurate changes.


> However, I haven't verified the vcc-gpio configuration for USB port and I just ported this feature from the dts file of Netgear R6250.

Then please kindly verify that. Please check if USB devices get detected
without this change. Please don't send random / untested changes.
