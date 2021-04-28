Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1E7136D26B
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 08:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbhD1Gu3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 02:50:29 -0400
Received: from smtpcmd14162.aruba.it ([62.149.156.162]:36363 "EHLO
        smtpcmd15177.aruba.it" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S229643AbhD1Gu3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 02:50:29 -0400
Received: from [192.168.1.128] ([79.0.204.227])
        by Aruba Outgoing Smtp  with ESMTPSA
        id be10llHLS1C4Obe10l2TNo; Wed, 28 Apr 2021 08:49:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1619592583; bh=CxDkLHIvfdjq9RtUwISzz5725UwmEG/UTPUIsRJBBZ8=;
        h=Subject:To:From:Date:MIME-Version:Content-Type;
        b=hQypHoIvW3YMywMeYXlLdQfxCc778G0rt2VBY/Hm2ZKlPTpyyPzHi3Zl1m0Si0Llw
         IWCTbxwYjz3OaQFgFz/+VzPq2tsxF7Tk7fcqk2anlBKpf8ZKhVRGahMQXMUPcpWFpy
         LrmS8DNUAgpEoILi6FYQelyViUDrE6+CONJwk5TRgbVMtDe2Th9sJkHwzSl+I3qX5g
         x2/JFDmrvFMlzcFQUa4Mkd9UAMWpbs1I4tiiIpLlfAQe5WNyNHLUlcrqi/g+Oj36Dw
         Gt+ceCzbYNLIKYS9KsIXEv2zKYnEwHjW2AVruoAq/zwKj3NAkAIys3xnhB7v0q79zJ
         4r6+6uTvYqIXQ==
Subject: Re: RFC v2 GPIO lines
To:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
References: <24ea6492-a39c-fd0f-abf4-dbb65f8d703e@enneenne.com>
 <YIjqaOrl4JEa+XmN@ada-deb-carambola.ifak-system.com>
From:   Rodolfo Giometti <giometti@enneenne.com>
Message-ID: <bd42a1ae-38eb-47e7-56a1-d4cc1290d5e0@enneenne.com>
Date:   Wed, 28 Apr 2021 08:49:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YIjqaOrl4JEa+XmN@ada-deb-carambola.ifak-system.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfM4McCGzDR+G7FjkqUyRuqGdLcvP9z51xYPBom+Nyd7xzJDjkM2mhnZXzI1XlS8TLR5fJ9G/NJxB2L3YNkn378Btwza7CmxWBFqb9xlQcaGDxYqnASgm
 zw+9HILn9ws1BWXdMrU2z2mhIaEdb+9ZnG9KhCsgGuC6Ud4IaHdr+1g6ILFQ4kEF4fSWrzeso6/qwe0HZl9SDDH2gC6cSc47k0JAJt5igFBT9iSr3rCYDquE
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/21 06:54, Alexander Dahl wrote:
> Hello Rodolfo,
> 
> I might have had a similar problem, so if you don't mind me entering
> the discussion …

Welcome. :)

> Am Tue, Apr 27, 2021 at 05:30:34PM +0200 schrieb Rodolfo Giometti:
>> at the moment if a developer wishes to use a GPIO as output or input with a well
>> defined name from userspace via the sysfs interface he/she can use,
>> respectively, the gpio-leds or gpio-uinput devices. However, IMHO, this is not
>> the best nor a proper way to do it, that's why I'm here to propose this really
>> simple interface named GPIO_LINE.
> 
> What's the reason to use the sysfs interface instead of libgpiod and
> the modern character device based interface?

This would not replace libgpiod and the associated character devices but just
allowing developers to easily access some well defined input/output lines as,
for example, sensors, etc.

So, the question is: why a lot of devices can be read/written via the /sys/class
interface and gpio lines can not? :-D

>> Note: This patch has been already discussed on linux-gpio@vger.kernel.org
>> mail-list (that's why RFC "v2") and, as suggested by Linus Walleij, the
>> discussion has been moved here to see what you think about this proposal. You
>> can see the discussion here: https://www.spinics.net/lists/linux-gpio/msg50482.html
> 
> Then, I think you should still Cc the linux-gpio list.

This mail-list has already discussed about this interface and I whould avoid
cross-posting on mail-lists.

>> # cat /sys/kernel/debug/gpio
>> gpiochip1: GPIOs 446-475, parent: platform/d0018800.pinctrl, GPIO2:
>>  gpio-446 (                    |usb3-vbus           ) out hi
>>  gpio-447 (                    |usb2-vbus           ) out hi
>>  gpio-448 (                    |iso_out2            ) out hi
>>
>> gpiochip0: GPIOs 476-511, parent: platform/d0013800.pinctrl, GPIO1:
>>  gpio-488 (                    |ftdi                ) in  hi
>>
>> The End. :)
> 
> Defining line names for GPIOs is already somewhat possible. We talked
> about this few weeks ago, when I tried to set line names for a SAMA5D2
> based board:
> https://lore.kernel.org/linux-gpio/946021874.11132.1615900079722@seven.thorsis.com/

I see, but my idea is also to easily manage these lines.

Ciao,

Rodolfo

-- 
GNU/Linux Solutions                  e-mail: giometti@enneenne.com
Linux Device Driver                          giometti@linux.it
Embedded Systems                     phone:  +39 349 2432127
UNIX programming                     skype:  rodolfo.giometti
