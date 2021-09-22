Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F434415369
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 00:26:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238286AbhIVW2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 18:28:16 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17419 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238269AbhIVW2P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 18:28:15 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1632349572; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=QroLpoZZDE2xtD2L8QRbmZVDUvcjG9RqNF5DkNMug+p/xlSMeSm3ogjETqbAKmEUneB5Ekr1Lu/yqYCZsnYFsmlwkr0E1eYLr60AKz4TFSCHXD8Amqwk+zo7o2Hvl802Phv/gHsZwyWEPMALwGg5Qx3di2L9UyXGwHJ/IMmuYvo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1632349572; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=1FYcuurpLskM0uW7CpPq8VmlK/VAG79DcQkVM4sFq54=; 
        b=Xh3129YOvvj8Jnb8huIYpY+LsZG+tFozQEpoXdv0s1TmoT8bCAsfDSraJHWOOS0hcX3TzP2JWh6ls+mOsdZKTqvtQf5nRGZAakN+o8nRm7qwcrWqLuS5kgLAsk22pPEbtlqUjATcz0DbsbO/a/dhk1OR8H0/yMbYhG23uKVf8w4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1632349572;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding;
        bh=1FYcuurpLskM0uW7CpPq8VmlK/VAG79DcQkVM4sFq54=;
        b=PwhLdUncrBoDqY0fgb9PkjcsvO2FanUwxDUpoMBqVJvR0AZ7P7s6JQJVnMwtFK5y
        eZ2o+2YCUZYx4LvdbqTiA/GZZiI/13hOyVg5alGBQg/WV2Es3AjVpdhYSZGcOfqQWK5
        N2TvPgloOReC9Bp3AJqxUEcf0xVO9JFbdY13kG6k=
Received: from [10.10.10.216] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1632349570163377.830788154659; Wed, 22 Sep 2021 15:26:10 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alsi@bang-olufsen.dk>
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
 <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Message-ID: <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
Date:   Thu, 23 Sep 2021 01:26:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2021 21:15, Florian Fainelli wrote:
> On 9/21/21 5:19 AM, Arınç ÜNAL wrote:
>> Hardware Info
>> -------------
>>
>> Processor	- Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
>> Switch		- BCM53012 in BCM4709C0KFEBG & external RTL8365MB
> 
> There is no Device Tree description of the RTL8365MB switch, can it be
> driven/controlled via MDIO, SPI or GPIOs by any chance? This is not a
> show stopper for accepting the patch, just wondering if you are somehow
> trying to get that switch controlled by the rtl8366 DSA driver as well?
> 
There's a v1 patch on net-next adding DSA support for RTL8365MB by Alvin 
Šipraga, CC'ing them. There's also a v2 patch coming.
https://lore.kernel.org/netdev/20210822193145.1312668-1-alvin@pqrs.dk/

I've been mailing Alvin to figure out how to define it on the device 
tree. They have provided very useful information. Quoting a few:

 >> I'm trying to write the device tree to support this switch. I'm not sure
 >> whether the default GPIO IDs of mdc-gpios, mdio-gpios, reset-gpios &
 >> interrupts on realtek-smi.txt kernel documentation are correct.
 >> 
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
 >
 > These gpios are just an example. It really depends how your board is
 > wired up. You have to figure out which SoC pad is wired to the MDC,
 > MDIO, and RESET pins on the RTL8365MB. Then you have to make sure the
 > pinmux is set up correctly so that these pads correspond to some GPIO
 > with a given ID, and then pick the right GPIO controller (&chipcommon?)
 > and put the ID after that. It will not necessarily be 21, 22, 14.

 > In summary:
 >
 > - figure out which pads are wired to MDC, MDIO, RESET
 > - figure out pinmux to make them into gpios
 > - figure out gpio ID and describe that in the device tree
 >

I have backported the v1 patch to kernel 5.10 and tried an example 
definition on the device tree to test it out on RT-AC88U. It's on this 
branch:
https://github.com/arinc9/openwrt/commits/realtek-work-asus_rt-ac88u

It doesn't work as is, likely missing further configuration, which I'm 
clueless to figure out myself. I'd very appreciate it if you could weigh in.

[    1.598858] realtek-smi switch@1: failed to get RESET GPIO
---
[    3.015528] realtek-smi switch@1: deasserted RESET
[    3.021171] realtek-smi switch@1: found an RTL8365MB-VC switch 
(ver=0x0040)
[    3.028193] realtek-smi switch@1: unable to register switch ret = -517
---
[    3.405527] realtek-smi switch@1: deasserted RESET
[    3.411165] realtek-smi switch@1: found an RTL8365MB-VC switch 
(ver=0x0040)
[    3.418449] DSA: tree 0 already setup! Disjoint trees?
[    3.423607] realtek-smi switch@1: unable to register switch ret = -17
[    3.430137] realtek-smi: probe of switch@1 failed with error -17

---

I was thinking, we figure out how to define it properly on the device 
tree and make the driver work whilst the v2 patch is applied to 
net-next. Then we could send another patch defining the switch on the 
device tree.
There's the "compatible = "realtek,rtl8365mb";" property, which would be 
undefined until the driver is added.

Cheers.
Arınç
