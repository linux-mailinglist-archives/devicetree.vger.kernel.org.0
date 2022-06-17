Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4019F54FFCF
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 00:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245202AbiFQWUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 18:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231913AbiFQWUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 18:20:40 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 489E860D98
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:20:39 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id eq6so516136edb.6
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0FaNJE+lr75ejzVVvztY+0mBcP/MiizQX0GBo5NVMPc=;
        b=MOt1ZQNnwWX97OLOYjqJ+zco+V6xWilcf9MPeQw+ytMNa0dLmxg5VYPNkYEGEwdL/t
         PTf0Bg+2NzhAa2fisvtQHtb9Y53oeMjKB9Nt89XiyWh6QR47Gr2fTjNd/PJlaKqkLQxj
         A8hJAM7mDCs+ylIQ+TdywESe4mMg8qiAYTCwiSGTiHQNaiVptewLJE7Xs92anHv9lnFD
         L7xEuidD4VRQYw+yUdpONCmRspsw3zfJXk/sM9jxye6gGbsWTyoqc7B/qRM4zbKpNBBg
         zzVPOIyouZHOGm4+ykuRlT3FTJu1W4p9YOLWa9v+ZQCUaD/ytLKEOW2+Z1TW2WFu0LSR
         tcFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0FaNJE+lr75ejzVVvztY+0mBcP/MiizQX0GBo5NVMPc=;
        b=Ssu5NXlb07q2kpd4XdOwBSHqRc/blByAYns03zdRKRb4GBvoIbNjZ3jAikRsNkGUdQ
         q2fqS5/xVpEWqLz8+AMNqGQKpUrrtsutRHKbhv8mjw/uTyvDGcRKQl/2Nu4WOGTctKok
         svWP3ANgptVPcoYOhp+jP79r4zfLK30UwZmAYyhE3ubxoUMG+0ljrYbQ/PKNOHp4dkkm
         6Y48QkPvoiCSJoiPqV3WI1O41hdit4M3AmQGyKjIawlP2uo8r8jdubS6C2ob7NzVk9DM
         XESMPyOwzWwhu5FcZi9ysWZ8mVYl9xnDdEbR12rcaFADYQ25c2LM6YH8sJOv/v1ZDB9y
         DCpA==
X-Gm-Message-State: AJIora9TGszFGMTT5FL0c68gtZqh1758+UQeK2HCJLOPv3d0/V7dJMm+
        uGT12TFmlj4+HXnY8maqnYc=
X-Google-Smtp-Source: AGRyM1uj0ND/j4hPKAWxCnW1SBkVetnM4CDdSIM5BRET9n6F3yWSk7tK4Du298RuIf3XHTaMSE+TUg==
X-Received: by 2002:a05:6402:5299:b0:435:61da:9bb9 with SMTP id en25-20020a056402529900b0043561da9bb9mr5895299edb.21.1655504437556;
        Fri, 17 Jun 2022 15:20:37 -0700 (PDT)
Received: from debian64.daheim (p5b0d7eeb.dip0.t-ipconnect.de. [91.13.126.235])
        by smtp.gmail.com with ESMTPSA id g10-20020a056402424a00b00435390befe2sm3814700edb.58.2022.06.17.15.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 15:20:37 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1])
        by debian64.daheim with esmtp (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1o2IRy-007alz-Jq;
        Sat, 18 Jun 2022 00:20:36 +0200
Message-ID: <b3296100-0af7-401a-7bd3-4f85c8e6d2e1@gmail.com>
Date:   Sat, 18 Jun 2022 00:20:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v1 2/2] ARM: BCM5301X: Add DT for Meraki MR26
Content-Language: de-DE
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20220611165948.410308-1-chunkeey@gmail.com>
 <20220611165948.410308-2-chunkeey@gmail.com>
 <20220616173040.GA3667029-robh@kernel.org>
 <62a79034-8b77-ed07-8135-a8919e86351a@gmail.com>
From:   Christian Lamparter <chunkeey@gmail.com>
In-Reply-To: <62a79034-8b77-ed07-8135-a8919e86351a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2022 23:52, Florian Fainelli wrote:
> On 6/16/22 10:30, Rob Herring wrote:
>> On Sat, Jun 11, 2022 at 06:59:48PM +0200, Christian Lamparter wrote:
>>> Meraki MR26 is an EOL wireless access point featuring a
>>> PoE ethernet port and two dual-band 3x3 MIMO 802.11n
>>> radios and 1x1 dual-band WIFI dedicated to scanning.
>>>
>>> Thank you Amir for the unit and PSU.
>>>
>>> Hardware info:
>>> SOC   : Broadcom BCM53015A1KFEBG (dual-core Cortex-A9 CPU at 800 MHz)
>>> RAM   : H5TQ1G63EFR, SK hynix Inc. 1Gb DDR3 SDRAM = 128 MiB
>>> NAND  : S34ML01G100TF100, S34ML01G1 1 Gb Spansion SLC NAND Flash = 128 MiB
>>> ETH   : 1GBit Ethernet Port - PoE (TPS23754 PoE Interface)
>>>
>>> WIFI0 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
>>> WIFI1 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
>>> WIFI2 : Broadcom BCM43428               802.11 abgn (1x1:1)
>>> BUTTON: one reset button
>>> LEDS  : one amber (fault), one white (indicator) LED, separate RGB-LED.
>>> MISC  : Atmel AT24C64 8KiB EEPROM i2c
>>>        : Ti INA219 26V, 12-bit, i2c output current/voltage/power monitor
>>>
>>> SERIAL:
>>>        WARNING: The serial port needs a TTL/RS-232 3V3 level converter!
>>>        The Serial setting is 115200-8-N-1. The board has a populated
>>>        right angle 1x4 0.1" pinheader.
>>>        The pinout is: VCC (next to J3, has the pin 1 indicator), RX, TX, GND.
>>>
>>> Odd stuff:
>>>
>>> - uboot does not support lzma compression, but gzip'd uImage/DTB work.
>>> - uboot claims to support FIT, but fails to pass the DTB to the kernel.
>>>    Appending the dtb after the kernel image works.
>>> - RGB-controller is supported through an external userspace program.
>>> - The ubi partition contains a "board-config" volume. It stores the
>>>    MAC Address (0x66 in binary) and Serial No. (0x7c alpha-numerical).
>>> - SoC's temperature sensor always reports that it is on fire.
>>>    This causes the system to immediately shutdown! Looking at reported
>>>    "418 degree Celsius" suggests that this sensor is not working.
>>>
>>> WIFI:
>>> b43 is able to initialize all three WIFIs @ 802.11bg.
>>> | b43-phy0: Broadcom 43431 WLAN found (core revision 29)
>>> | bcma-pci-bridge 0000:01:00.0: bus1: Switched to core: 0x812
>>> | b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
>>> | b43-phy0: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
>>> | b43-phy0 warning: 5 GHz band is unsupported on this PHY
>>> | b43-phy1: Broadcom 43431 WLAN found (core revision 29)
>>> | bcma-pci-bridge 0001:01:00.0: bus2: Switched to core: 0x812
>>> | b43-phy1: Found PHY: Analog 9, Type 7 (HT), Revision 1
>>> | b43-phy1: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
>>> | b43-phy1 warning: 5 GHz band is unsupported on this PHY
>>> | b43-phy2: Broadcom 43228 WLAN found (core revision 30)
>>> | bcma-pci-bridge 0002:01:00.0: bus3: Switched to core: 0x812
>>> | b43-phy2: Found PHY: Analog 9, Type 4 (N), Revision 16
>>> | b43-phy2: Found Radio: Manuf 0x17F, ID 0x2057, Revision 9, Version 1
>>> | Broadcom 43xx driver loaded [ Features: NL ]
>>>
>>> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>>> ---
>>>
>>> |WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
>>> |#89:
>>> |new file mode 100644
>>>
>>> MAINTAINERS has:
>>>
>>>> BROADCOM BCM5301X ARM ARCHITECTURE
>>>> [...]
>>>> F:      arch/arm/boot/dts/bcm5301*
>>>
>>> |WARNING: DT compatible string "atmel,24c64" appears un-documented \
>>> |-- check ./Documentation/devicetree/bindings/
>>> |#245: FILE: arch/arm/boot/dts/bcm53015-meraki-mr26.dts:152:
>>> |+            compatible = "atmel,24c64";
>>>
>>> weird, it should match what is in:
>>> Documentation/devicetree/bindings/eeprom/at24.yaml
>>
>> This checkpatch check is a hack dating back to before we had schemas. It
>> just greps the tree for the compatible string, but that doesn't work
>> since it's a pattern now.
>>
>> What you should pay attention to is 'make dtbs_check' for this dts file
>> though that is still pretty noisy for existing platforms. It will be
>> accurate for what's not documented with a schema.
>>
>> I haven't removed the checkpatch check because I imagine folks run
>> checkpatch, but not schema checks still, and the check also looks at .c
>> files which I don't have a solution for. What I want to do is extract
>> all struct of_device_id instances and compare them against all schema
>> compatibles. I'm not sure how to do that exactly. Use the DWARF info to
>> get all the structs perhaps. Another way is using the modinfo, but not
>> everything is a module.
> 
> Christian, if you can respin quickly addressing Rob's feedback I can take these patches for 5.20, thanks!

The key-restart? yes, I've sent v2. Thank you!

But getting "dtbs_check" to be less noisy will require lots of work.
I see what I can deliver though :).

Regards,
Christian
