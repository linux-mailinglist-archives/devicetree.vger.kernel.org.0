Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B237A54FF7F
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 23:52:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236166AbiFQVwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 17:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbiFQVwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 17:52:53 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E29DDCE05
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 14:52:52 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id mh16-20020a17090b4ad000b001e8313301f1so7925568pjb.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 14:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LpasxRVJFA3lNNA5xGP6qHKzMkN81AJLHeyVQTgYCio=;
        b=QTb0n3kP/UzZgDKI2dbdc6v8zDefgPI2VALCQQpKL0azFOHQAVsLY4i66U8VkJIWH8
         rULIiHMODTd63PTM58HWdQMcFG/nJMpzOBPgsWas50f2xYptYc85SkqG7UtKsKLr05Sw
         HLiFPo7n8agxi+FYQqZAvv70jJ7H9dO7vog1TvQZMD/DPYSutHkO5HM7VJ5/XVBoZFIF
         8GWaNDqqY+N4quZTUhgDJf8Wc+Bi7uI7n0p1l8CsqipG53s02HmTSGP7PI9H1Qp+pXJ8
         v0j0+63FCVGS39ZoFZXAunz0z3kATF5c4i44sTw41TRXWRpsPAymokPksZFAU89iwI16
         qqmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LpasxRVJFA3lNNA5xGP6qHKzMkN81AJLHeyVQTgYCio=;
        b=VrrdZs1pIpgaDAeljUeGuI7ugz53+hDjfBz/jcNPgeEJPolnbX7lMCwoUlwMOaer5z
         tuFpq5bodrbWRq7pNUvL3gQCJkUUesY1u3hM5ut3J43w03vROwf0N5X+xKIuQthe/+xB
         bFNkVUmj2QiiIUU1vJh8YdJjypAkJWkV3vpYEc4lyUVjcfgsYQjq9/Y3lp2hsq21qcDP
         k++K3dmaJyYjCj3jss1MSlyRhPLal5P+hKoQ5Q60qJ0M54vGAcRgnph553pj750+nCV/
         Q2aQV2dGapvdLePYpdx0ud1kpYh234w7qBOcZctMOEuCB+bGGm0K9HuItcDv5espzVum
         clhQ==
X-Gm-Message-State: AJIora9q3POsqY+bllHSLaMh0mKNBn6QVq2jTaU2n5/W1CDeGNzZYBO0
        SBdxw3IrPZ1bRIu9ESWP2JGiAHu07Wc=
X-Google-Smtp-Source: AGRyM1tYdd5JhB4iXaQLxwMX1ugh7WOqMJrsE+dNnA/RnWHkmt3Fo1hquP94/HxWcaB8tQ+y/xcIjg==
X-Received: by 2002:a17:90b:2346:b0:1ec:862a:eac with SMTP id ms6-20020a17090b234600b001ec862a0eacmr1306462pjb.192.1655502772242;
        Fri, 17 Jun 2022 14:52:52 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id y2-20020a170902ed4200b0016a09da5541sm1403152plb.135.2022.06.17.14.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 14:52:51 -0700 (PDT)
Message-ID: <62a79034-8b77-ed07-8135-a8919e86351a@gmail.com>
Date:   Fri, 17 Jun 2022 14:52:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v1 2/2] ARM: BCM5301X: Add DT for Meraki MR26
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
References: <20220611165948.410308-1-chunkeey@gmail.com>
 <20220611165948.410308-2-chunkeey@gmail.com>
 <20220616173040.GA3667029-robh@kernel.org>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220616173040.GA3667029-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/16/22 10:30, Rob Herring wrote:
> On Sat, Jun 11, 2022 at 06:59:48PM +0200, Christian Lamparter wrote:
>> Meraki MR26 is an EOL wireless access point featuring a
>> PoE ethernet port and two dual-band 3x3 MIMO 802.11n
>> radios and 1x1 dual-band WIFI dedicated to scanning.
>>
>> Thank you Amir for the unit and PSU.
>>
>> Hardware info:
>> SOC   : Broadcom BCM53015A1KFEBG (dual-core Cortex-A9 CPU at 800 MHz)
>> RAM   : H5TQ1G63EFR, SK hynix Inc. 1Gb DDR3 SDRAM = 128 MiB
>> NAND  : S34ML01G100TF100, S34ML01G1 1 Gb Spansion SLC NAND Flash = 128 MiB
>> ETH   : 1GBit Ethernet Port - PoE (TPS23754 PoE Interface)
>>
>> WIFI0 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
>> WIFI1 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
>> WIFI2 : Broadcom BCM43428               802.11 abgn (1x1:1)
>> BUTTON: one reset button
>> LEDS  : one amber (fault), one white (indicator) LED, separate RGB-LED.
>> MISC  : Atmel AT24C64 8KiB EEPROM i2c
>>        : Ti INA219 26V, 12-bit, i2c output current/voltage/power monitor
>>
>> SERIAL:
>>        WARNING: The serial port needs a TTL/RS-232 3V3 level converter!
>>        The Serial setting is 115200-8-N-1. The board has a populated
>>        right angle 1x4 0.1" pinheader.
>>        The pinout is: VCC (next to J3, has the pin 1 indicator), RX, TX, GND.
>>
>> Odd stuff:
>>
>> - uboot does not support lzma compression, but gzip'd uImage/DTB work.
>> - uboot claims to support FIT, but fails to pass the DTB to the kernel.
>>    Appending the dtb after the kernel image works.
>> - RGB-controller is supported through an external userspace program.
>> - The ubi partition contains a "board-config" volume. It stores the
>>    MAC Address (0x66 in binary) and Serial No. (0x7c alpha-numerical).
>> - SoC's temperature sensor always reports that it is on fire.
>>    This causes the system to immediately shutdown! Looking at reported
>>    "418 degree Celsius" suggests that this sensor is not working.
>>
>> WIFI:
>> b43 is able to initialize all three WIFIs @ 802.11bg.
>> | b43-phy0: Broadcom 43431 WLAN found (core revision 29)
>> | bcma-pci-bridge 0000:01:00.0: bus1: Switched to core: 0x812
>> | b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
>> | b43-phy0: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
>> | b43-phy0 warning: 5 GHz band is unsupported on this PHY
>> | b43-phy1: Broadcom 43431 WLAN found (core revision 29)
>> | bcma-pci-bridge 0001:01:00.0: bus2: Switched to core: 0x812
>> | b43-phy1: Found PHY: Analog 9, Type 7 (HT), Revision 1
>> | b43-phy1: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
>> | b43-phy1 warning: 5 GHz band is unsupported on this PHY
>> | b43-phy2: Broadcom 43228 WLAN found (core revision 30)
>> | bcma-pci-bridge 0002:01:00.0: bus3: Switched to core: 0x812
>> | b43-phy2: Found PHY: Analog 9, Type 4 (N), Revision 16
>> | b43-phy2: Found Radio: Manuf 0x17F, ID 0x2057, Revision 9, Version 1
>> | Broadcom 43xx driver loaded [ Features: NL ]
>>
>> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>> ---
>>
>> |WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
>> |#89:
>> |new file mode 100644
>>
>> MAINTAINERS has:
>>
>>> BROADCOM BCM5301X ARM ARCHITECTURE
>>> [...]
>>> F:      arch/arm/boot/dts/bcm5301*
>>
>> |WARNING: DT compatible string "atmel,24c64" appears un-documented \
>> |-- check ./Documentation/devicetree/bindings/
>> |#245: FILE: arch/arm/boot/dts/bcm53015-meraki-mr26.dts:152:
>> |+            compatible = "atmel,24c64";
>>
>> weird, it should match what is in:
>> Documentation/devicetree/bindings/eeprom/at24.yaml
> 
> This checkpatch check is a hack dating back to before we had schemas. It
> just greps the tree for the compatible string, but that doesn't work
> since it's a pattern now.
> 
> What you should pay attention to is 'make dtbs_check' for this dts file
> though that is still pretty noisy for existing platforms. It will be
> accurate for what's not documented with a schema.
> 
> I haven't removed the checkpatch check because I imagine folks run
> checkpatch, but not schema checks still, and the check also looks at .c
> files which I don't have a solution for. What I want to do is extract
> all struct of_device_id instances and compare them against all schema
> compatibles. I'm not sure how to do that exactly. Use the DWARF info to
> get all the structs perhaps. Another way is using the modinfo, but not
> everything is a module.

Christian, if you can respin quickly addressing Rob's feedback I can 
take these patches for 5.20, thanks!
-- 
Florian
