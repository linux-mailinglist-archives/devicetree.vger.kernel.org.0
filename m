Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADF68417CC3
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 23:03:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346791AbhIXVE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 17:04:56 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17414 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346324AbhIXVE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 17:04:56 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1632517367; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=bGTfc9htmiw1awERsFy9nrGOlGBSWKmtfGSjJqLzxO98WnFbWCegCsD9+81Xnp9uL+thn0E+BtmoLeyqVJE631CUU6fVIwbLc0TGAPZd4vrln0VyLBV2hIYSBsc77jldlZYPdO3d9VTmL3TwnFuTZwsTpQnjWtteHYeH61vaUCY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1632517367; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=B5BsBue3tnnOqc/xKIeLd3W+BQQe9vWiToP6FyeIb5A=; 
        b=l4ppMj3yXZ3En7R63SstJF75UkVOtQzkQL+v47gmfh+8jDXc0zeZpzrbRHkUW4DME6Ev3fYp6uk+29j7bd30wOYjA3LXmReMUFmVR+XaNlcQ/2fY7qfhsDIdUqXOZgue0LqINl8+kHDt9rADCinrvroZ67vXPVur5sF21RcEAGM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1632517367;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:In-Reply-To:Content-Type;
        bh=B5BsBue3tnnOqc/xKIeLd3W+BQQe9vWiToP6FyeIb5A=;
        b=bSEbaNoXOtO+LcTEilW/9MUthuBbraNOnobT0PzMIGagJ/5S5WmG8KjsYyKvqVJw
        oAiJkJGzWFlbO4pBfXiUVJevwVuqglsx5K4MCyY46eeQjFODB49csFuVvtgj8NGabp7
        4yyq7s6nAyIZgxIS1PJcFpPbrd7SsQc/1JQX6w50=
Received: from [10.10.10.216] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1632517366259512.0907957125863; Fri, 24 Sep 2021 14:02:46 -0700 (PDT)
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
 <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
 <b26b86d9-a2d2-70b5-c06f-b4edba75de13@gmail.com>
 <36707d63-2aa7-4e08-5df9-abd9c398439a@arinc9.com>
 <9ba1d9f6-354a-f8e6-7633-d629d7f9c62a@gmail.com>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Message-ID: <6b2aed0e-8c03-ce15-e33a-5d1d15d1b9a6@arinc9.com>
Date:   Sat, 25 Sep 2021 00:02:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <9ba1d9f6-354a-f8e6-7633-d629d7f9c62a@gmail.com>
Content-Type: multipart/mixed;
 boundary="------------D63E4CE5238C2F768CF825B2"
Content-Language: en-US
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a multi-part message in MIME format.
--------------D63E4CE5238C2F768CF825B2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/09/2021 19:32, Florian Fainelli wrote:
> On 9/24/21 1:50 AM, Arınç ÜNAL wrote:
>> On 23/09/2021 03:22, Florian Fainelli wrote:
>>>
>>>
>>> On 9/22/2021 3:26 PM, Arınç ÜNAL wrote:
>>>> On 22/09/2021 21:15, Florian Fainelli wrote:
>>>>> On 9/21/21 5:19 AM, Arınç ÜNAL wrote:
>>>>>> Hardware Info
>>>>>> -------------
>>>>>>
>>>>>> Processor    - Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
>>>>>> Switch        - BCM53012 in BCM4709C0KFEBG & external RTL8365MB
>>>>>
>>>>> There is no Device Tree description of the RTL8365MB switch, can it be
>>>>> driven/controlled via MDIO, SPI or GPIOs by any chance? This is not a
>>>>> show stopper for accepting the patch, just wondering if you are somehow
>>>>> trying to get that switch controlled by the rtl8366 DSA driver as well?
>>>>>
>>>> There's a v1 patch on net-next adding DSA support for RTL8365MB by
>>>> Alvin Šipraga, CC'ing them. There's also a v2 patch coming.
>>>> https://lore.kernel.org/netdev/20210822193145.1312668-1-alvin@pqrs.dk/
>>>>
>>>> I've been mailing Alvin to figure out how to define it on the device
>>>> tree. They have provided very useful information. Quoting a few:
>>>>
>>>>   >> I'm trying to write the device tree to support this switch. I'm
>>>> not sure
>>>>   >> whether the default GPIO IDs of mdc-gpios, mdio-gpios, reset-gpios &
>>>>   >> interrupts on realtek-smi.txt kernel documentation are correct.
>>>>   >>
>>>> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
>>>>
>>>>   >
>>>>   > These gpios are just an example. It really depends how your board is
>>>>   > wired up. You have to figure out which SoC pad is wired to the MDC,
>>>>   > MDIO, and RESET pins on the RTL8365MB. Then you have to make sure the
>>>>   > pinmux is set up correctly so that these pads correspond to some GPIO
>>>>   > with a given ID, and then pick the right GPIO controller
>>>> (&chipcommon?)
>>>>   > and put the ID after that. It will not necessarily be 21, 22, 14.
>>>>
>>>>   > In summary:
>>>>   >
>>>>   > - figure out which pads are wired to MDC, MDIO, RESET
>>>>   > - figure out pinmux to make them into gpios
>>>>   > - figure out gpio ID and describe that in the device tree
>>>>   >
>>>>
>>>> I have backported the v1 patch to kernel 5.10 and tried an example
>>>> definition on the device tree to test it out on RT-AC88U. It's on
>>>> this branch:
>>>> https://github.com/arinc9/openwrt/commits/realtek-work-asus_rt-ac88u
>>>
>>> Your dsa,member proper looks reversed, you would want it to be:
>>>
>>> dsa,member = <1 0>;
>>
>> Thanks!
>>
>>>
>>> to indicate that these are indeed disjoint DSA trees with the tree
>>> being 1 and the switch being member 0 (the one and only). This part of
>>> the driver/binding looks a bit weird too:
>>>
>>>       switch@1 {
>>> +        compatible = "realtek,rtl8365mb";
>>> +        /* 22 = MDIO (has input reads), 21 = MDC (clock, output only) */
>>> +        mdc-gpios = <&chipcommon 6 GPIO_ACTIVE_HIGH>;
>>> +        mdio-gpios = <&chipcommon 7 GPIO_ACTIVE_HIGH>;
>>> +        reset-gpios = <&chipcommon 14 GPIO_ACTIVE_LOW>;
>>>
>>> this is clearly a MDIO-attached switch, so it should be a children of
>>> the GPIO controller node. There is a hardware MDIO controller on the
>>> BCM5301X so you should be able to avoid using bit-banging here and
>>> instead using the BCM5301X's MDIO controller proper.
>>
>> I took linksys panamera device tree as an example, this device is very
>> similar to Asus RT-AC88U.
>> https://github.com/Broadcom/stblinux/blob/devicetree/next/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
>>
>>
>> I commented out the "reg" property on switch@1 so we can see if it finds
>> the switch while scanning PHY addresses on mdio 200.
>>
>> I don't know if the default "interrupt-controller" and "compatible =
>> "realtek,smi-mdio", "dsa-mdio";" specification is correct, so I took
>> them out for now.
>>
>>      mdio-mux@18003000 {
>>
>>          /* BIT(9) = 1 => external mdio */
>>          mdio@200 {
>>              reg = <0x200>;
>>              #address-cells = <1>;
>>              #size-cells = <0>;
>>
>>              switch@1 {
>>                  compatible = "realtek,rtl8365mb";
>>                  #address-cells = <1>;
>>                  #size-cells = <0>;
>>                  reset-gpios = <&chipcommon 10 GPIO_ACTIVE_LOW>;
>>                  reset-names = "robo_reset";
>> /*                reg = <0>;*/
>>                  dsa,member = <1 0>;
>>                  pinctrl-names = "default";
>>                  pinctrl-0 = <&pinmux_mdio>;
>>
>>                  ports {
>>                      #address-cells = <1>;
>>                      #size-cells = <0>;
>>
>>                      port@0 {
>>                          reg = <0>;
>>                          label = "lan8";
>>                      };
>>
>>                      port@1 {
>>                          reg = <1>;
>>                          label = "lan7";
>>                      };
>>
>>                      port@2 {
>>                          reg = <2>;
>>                          label = "lan6";
>>                      };
>>
>>                      port@3 {
>>                          reg = <3>;
>>                          label = "lan5";
>>                      };
>>
>>                      port@4 {
>>                          reg = <4>;
>>                          label = "cpu";
>>                          ethernet = <&sw0_p5>;
>>                          phy-mode = "rgmii";
>>
>>                          fixed-link {
>>                              speed = <1000>;
>>                              full-duplex;
>>                          };
>>                      };
>>                  };
>>              };
>>          };
>>      };
>>
>> Here's relevant part of the bootlog. Full bootlog is in the attachments.
>>
>> [    2.027843] bcm_iproc 18029200.spi: using bspi-mspi mode
>> [    2.034744] libphy: Fixed MDIO Bus: probed
>> [    2.039638] libphy: iProc MDIO bus: probed
>> [    2.043764] iproc-mdio 18003000.mdio: Broadcom iProc MDIO bus registered
>> [    2.051215] libphy: mdio_mux: probed
>> [    2.055587] libphy: mdio_mux: probed
>> [    2.059196] mdio_bus 0.200: switch@1 has invalid PHY address
>> [    2.064894] mdio_bus 0.200: scan phy switch at address 0
>> [    2.070231] mdio_bus 0.200: scan phy switch at address 1
>> [    2.075554] mdio_bus 0.200: scan phy switch at address 2
>> [    2.080894] mdio_bus 0.200: scan phy switch at address 3
>> [    2.086217] mdio_bus 0.200: scan phy switch at address 4
>> [    2.091549] mdio_bus 0.200: scan phy switch at address 5
>> [    2.096870] mdio_bus 0.200: scan phy switch at address 6
>> [    2.102202] mdio_bus 0.200: scan phy switch at address 7
>> [    2.107523] mdio_bus 0.200: scan phy switch at address 8
>> [    2.112864] mdio_bus 0.200: scan phy switch at address 9
>> [    2.118186] mdio_bus 0.200: scan phy switch at address 10
>> [    2.123608] mdio_bus 0.200: scan phy switch at address 11
>> [    2.129022] mdio_bus 0.200: scan phy switch at address 12
>> [    2.134442] mdio_bus 0.200: scan phy switch at address 13
>> [    2.139858] mdio_bus 0.200: scan phy switch at address 14
>> [    2.145274] mdio_bus 0.200: scan phy switch at address 15
>> [    2.150697] mdio_bus 0.200: scan phy switch at address 16
>> [    2.156110] mdio_bus 0.200: scan phy switch at address 17
>> [    2.161528] mdio_bus 0.200: scan phy switch at address 18
>> [    2.166937] mdio_bus 0.200: scan phy switch at address 19
>> [    2.172355] mdio_bus 0.200: scan phy switch at address 20
>> [    2.177764] mdio_bus 0.200: scan phy switch at address 21
>> [    2.183183] mdio_bus 0.200: scan phy switch at address 22
>> [    2.188592] mdio_bus 0.200: scan phy switch at address 23
>> [    2.194011] mdio_bus 0.200: scan phy switch at address 24
>> [    2.199427] mdio_bus 0.200: scan phy switch at address 25
>> [    2.204834] mdio_bus 0.200: scan phy switch at address 26
>> [    2.210253] mdio_bus 0.200: scan phy switch at address 27
>> [    2.215662] mdio_bus 0.200: scan phy switch at address 28
>> [    2.221080] mdio_bus 0.200: scan phy switch at address 29
>> [    2.226490] mdio_bus 0.200: scan phy switch at address 30
>> [    2.231914] mdio_bus 0.200: scan phy switch at address 31
>> [    2.237939] b53-srab-switch 18007000.ethernet-switch: found switch:
>> BCM53012, rev 0
>> [    2.245957] bgmac_bcma: Broadcom 47xx GBit MAC driver loaded
>>
>> Looks like the switch is not on 0x200, what else can we try?
> 
> 0x200 is not the address of the Realtek switch on the MDIO bus, 0x200 is
> the offset with mdio mux that needs to be toggled (bit 9). You still
> need to provide the Ethernet switch's address on the MDIO bus which
> appears to be 0.

Oh, we flip the 9th bit. 2 to the power of 9 = 0x200. Got it!

I tried 0 and 29 as the PHY ID. I'd assume the DSA realtek-smi driver 
would start probing the switch, however, nothing happens. Full log in 
attachments.

[    2.026772] bcm_iproc 18029200.spi: using bspi-mspi mode
[    2.033467] libphy: Fixed MDIO Bus: probed
[    2.038123] libphy: iProc MDIO bus: probed
[    2.042331] iproc-mdio 18003000.mdio: Broadcom iProc MDIO bus registered
[    2.049823] libphy: mdio_mux: probed
[    2.054206] libphy: mdio_mux: probed
[    2.058713] b53-srab-switch 18007000.ethernet-switch: found switch: 
BCM53012, rev 0
[    2.066671] bgmac_bcma: Broadcom 47xx GBit MAC driver loaded

Quoting Documentation/devicetree/bindings/net/dsa/realtek-smi.txt for 
further reference.

 > Realtek SMI-based Switches
 > ==========================
 >
 > The SMI "Simple Management Interface" is a two-wire protocol using
 > bit-banged GPIO that while it reuses the MDIO lines MCK and MDIO does
 > not use the MDIO protocol. This binding defines how to specify the
 > SMI-based Realtek devices.

> 
> Auto-probing of devices only works for Ethernet PHYs, not for "pure"
> MDIO devices such as Ethernet switches.
> 

--------------D63E4CE5238C2F768CF825B2
Content-Type: text/plain; charset=UTF-8;
 name="reg-0-29.log"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="reg-0-29.log"

WyAgICAwLjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBDUFUgMHgwDQpbICAg
IDAuMDAwMDAwXSBMaW51eCB2ZXJzaW9uIDUuMTAuNjQgKHVzZXJAYXJpbmM5KSAoYXJtLW9w
ZW53cnQtbGludXgtbXVzbGdudWVhYmktZ2NjIChPcGVuV3J0IEdDQyAxMS4yLjAgcjE3NTY5
LWNmNmUwOTQ3MWIpIDExLjIuMCwgR05VIGxkIChHTlUgQmludXRpbHMpIDIuMzcpICMwIFNN
UCBGcmkgU2VwIDI0IDA5OjMwOjIwIDIwMjENClsgICAgMC4wMDAwMDBdIENQVTogQVJNdjcg
UHJvY2Vzc29yIFs0MTNmYzA5MF0gcmV2aXNpb24gMCAoQVJNdjcpLCBjcj0xMGM1Mzg3ZA0K
WyAgICAwLjAwMDAwMF0gQ1BVOiBQSVBUIC8gVklQVCBub25hbGlhc2luZyBkYXRhIGNhY2hl
LCBWSVBUIGFsaWFzaW5nIGluc3RydWN0aW9uIGNhY2hlDQpbICAgIDAuMDAwMDAwXSBPRjog
ZmR0OiBNYWNoaW5lIG1vZGVsOiBBc3VzIFJULUFDODhVDQpbICAgIDAuMDAwMDAwXSBlYXJs
eWNvbjogbnMxNjU1MCBhdCBNTUlPIDB4MTgwMDAzMDAgKG9wdGlvbnMgJzExNTIwMG44JykN
ClsgICAgMC4wMDAwMDBdIHByaW50azogYm9vdGNvbnNvbGUgW25zMTY1NTBdIGVuYWJsZWQN
ClsgICAgMC4wMDAwMDBdIE1lbW9yeSBwb2xpY3k6IERhdGEgY2FjaGUgd3JpdGVhbGxvYw0K
WyAgICAwLjAwMDAwMF0gSGl0IHBlbmRpbmcgYXN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0
IChGU1I9MHgwMDAwMWMwNikgZHVyaW5nIGZpcnN0IHVubWFzaywgdGhpcyBpcyBtb3N0IGxp
a2VseSBjYXVzZWQgYnkgYSBmaXJtd2FyZS9ib290bG9hZGVyIGJ1Zy4NClsgICAgMC4wMDAw
MDBdIFpvbmUgcmFuZ2VzOg0KWyAgICAwLjAwMDAwMF0gICBOb3JtYWwgICBbbWVtIDB4MDAw
MDAwMDAwMDAwMDAwMC0weDAwMDAwMDAwMDdmZmZmZmZdDQpbICAgIDAuMDAwMDAwXSAgIEhp
Z2hNZW0gIFttZW0gMHgwMDAwMDAwMDA4MDAwMDAwLTB4MDAwMDAwMDA5ZmZmZmZmZl0NClsg
ICAgMC4wMDAwMDBdIE1vdmFibGUgem9uZSBzdGFydCBmb3IgZWFjaCBub2RlDQpbICAgIDAu
MDAwMDAwXSBFYXJseSBtZW1vcnkgbm9kZSByYW5nZXMNClsgICAgMC4wMDAwMDBdICAgbm9k
ZSAgIDA6IFttZW0gMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAwMDAwMDAwN2ZmZmZmZl0NClsg
ICAgMC4wMDAwMDBdICAgbm9kZSAgIDA6IFttZW0gMHgwMDAwMDAwMDg4MDAwMDAwLTB4MDAw
MDAwMDA5ZmZmZmZmZl0NClsgICAgMC4wMDAwMDBdIEluaXRtZW0gc2V0dXAgbm9kZSAwIFtt
ZW0gMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAwMDAwMDA5ZmZmZmZmZl0NClsgICAgMC4wMDAw
MDBdIE9uIG5vZGUgMCB0b3RhbHBhZ2VzOiAxMzEwNzINClsgICAgMC4wMDAwMDBdICAgTm9y
bWFsIHpvbmU6IDI4OCBwYWdlcyB1c2VkIGZvciBtZW1tYXANClsgICAgMC4wMDAwMDBdICAg
Tm9ybWFsIHpvbmU6IDAgcGFnZXMgcmVzZXJ2ZWQNClsgICAgMC4wMDAwMDBdICAgTm9ybWFs
IHpvbmU6IDMyNzY4IHBhZ2VzLCBMSUZPIGJhdGNoOjcNClsgICAgMC4wMDAwMDBdICAgSGln
aE1lbSB6b25lOiA5ODMwNCBwYWdlcywgTElGTyBiYXRjaDozMQ0KWyAgICAwLjAwMDAwMF0g
cGVyY3B1OiBFbWJlZGRlZCAxNCBwYWdlcy9jcHUgczI3MjEyIHI4MTkyIGQyMTk0MCB1NTcz
NDQNClsgICAgMC4wMDAwMDBdIHBjcHUtYWxsb2M6IHMyNzIxMiByODE5MiBkMjE5NDAgdTU3
MzQ0IGFsbG9jPTE0KjQwOTYNClsgICAgMC4wMDAwMDBdIHBjcHUtYWxsb2M6IFswXSAwIFsw
XSAxDQpbICAgIDAuMDAwMDAwXSBCdWlsdCAxIHpvbmVsaXN0cywgbW9iaWxpdHkgZ3JvdXBp
bmcgb24uICBUb3RhbCBwYWdlczogMTMwNzg0DQpbICAgIDAuMDAwMDAwXSBLZXJuZWwgY29t
bWFuZCBsaW5lOiBlYXJseWNvbg0KWyAgICAwLjAwMDAwMF0gRGVudHJ5IGNhY2hlIGhhc2gg
dGFibGUgZW50cmllczogMTYzODQgKG9yZGVyOiA0LCA2NTUzNiBieXRlcywgbGluZWFyKQ0K
WyAgICAwLjAwMDAwMF0gSW5vZGUtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiA4MTkyIChv
cmRlcjogMywgMzI3NjggYnl0ZXMsIGxpbmVhcikNClsgICAgMC4wMDAwMDBdIG1lbSBhdXRv
LWluaXQ6IHN0YWNrOm9mZiwgaGVhcCBhbGxvYzpvZmYsIGhlYXAgZnJlZTpvZmYNClsgICAg
MC4wMDAwMDBdIE1lbW9yeTogNTEwMzIwSy81MjQyODhLIGF2YWlsYWJsZSAoNTYzNUsga2Vy
bmVsIGNvZGUsIDU2NUsgcndkYXRhLCAxMzY0SyByb2RhdGEsIDEwMjRLIGluaXQsIDI4OEsg
YnNzLCAxMzk2OEsgcmVzZXJ2ZWQsIDBLIGNtYS1yZXNlcnZlZCwgMzkzMjE2SyBoaWdobWVt
KQ0KWyAgICAwLjAwMDAwMF0gU0xVQjogSFdhbGlnbj02NCwgT3JkZXI9MC0zLCBNaW5PYmpl
Y3RzPTAsIENQVXM9MiwgTm9kZXM9MQ0KWyAgICAwLjAwMDAwMF0gcmN1OiBIaWVyYXJjaGlj
YWwgUkNVIGltcGxlbWVudGF0aW9uLg0KWyAgICAwLjAwMDAwMF0gIFRyYWNpbmcgdmFyaWFu
dCBvZiBUYXNrcyBSQ1UgZW5hYmxlZC4NClsgICAgMC4wMDAwMDBdIHJjdTogUkNVIGNhbGN1
bGF0ZWQgdmFsdWUgb2Ygc2NoZWR1bGVyLWVubGlzdG1lbnQgZGVsYXkgaXMgMTAgamlmZmll
cy4NClsgICAgMC4wMDAwMDBdIE5SX0lSUVM6IDE2LCBucl9pcnFzOiAxNiwgcHJlYWxsb2Nh
dGVkIGlycXM6IDE2DQpbICAgIDAuMDAwMDAwXSBMMkM6IERUL3BsYXRmb3JtIG1vZGlmaWVz
IGF1eCBjb250cm9sIHJlZ2lzdGVyOiAweDBhMTMwMDAwIC0+IDB4M2E1MzAwMDANClsgICAg
MC4wMDAwMDBdIEwyQy0zMTAgZW5hYmxpbmcgZWFybHkgQlJFU1AgZm9yIENvcnRleC1BOQ0K
WyAgICAwLjAwMDAwMF0gTDJDLTMxMCBmdWxsIGxpbmUgb2YgemVyb3MgZW5hYmxlZCBmb3Ig
Q29ydGV4LUE5DQpbICAgIDAuMDAwMDAwXSBMMkMtMzEwIElEIHByZWZldGNoIGVuYWJsZWQs
IG9mZnNldCAxIGxpbmVzDQpbICAgIDAuMDAwMDAwXSBMMkMtMzEwIGR5bmFtaWMgY2xvY2sg
Z2F0aW5nIGVuYWJsZWQsIHN0YW5kYnkgbW9kZSBlbmFibGVkDQpbICAgIDAuMDAwMDAwXSBM
MkMtMzEwIGNhY2hlIGNvbnRyb2xsZXIgZW5hYmxlZCwgMTYgd2F5cywgMjU2IGtCDQpbICAg
IDAuMDAwMDAwXSBMMkMtMzEwOiBDQUNIRV9JRCAweDQxMDAwMGM4LCBBVVhfQ1RSTCAweDdl
NTMwMDAxDQpbICAgIDAuMDAwMDAwXSByYW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVk
IGZyb20gc3RhcnRfa2VybmVsKzB4MzYwLzB4NTBjIHdpdGggY3JuZ19pbml0PTANClsgICAg
MC4wMDAwMDddIHNjaGVkX2Nsb2NrOiA2NCBiaXRzIGF0IDcwME1IeiwgcmVzb2x1dGlvbiAx
bnMsIHdyYXBzIGV2ZXJ5IDQzOTgwNDY1MTExMDNucw0KWyAgICAwLjAxNjQ1Nl0gY2xvY2tz
b3VyY2U6IGFybV9nbG9iYWxfdGltZXI6IG1hc2s6IDB4ZmZmZmZmZmZmZmZmZmZmZiBtYXhf
Y3ljbGVzOiAweGExNzEwMmJjZjMsIG1heF9pZGxlX25zOiA0NDA3OTUyMjQ4MzggbnMNClsg
ICAgMC4wMjc1OTVdIFN3aXRjaGluZyB0byB0aW1lci1iYXNlZCBkZWxheSBsb29wLCByZXNv
bHV0aW9uIDFucw0KWyAgICAwLjAzMzc0Nl0gQ2FsaWJyYXRpbmcgZGVsYXkgbG9vcCAoc2tp
cHBlZCksIHZhbHVlIGNhbGN1bGF0ZWQgdXNpbmcgdGltZXIgZnJlcXVlbmN5Li4gMTQwMC4w
MCBCb2dvTUlQUyAobHBqPTcwMDAwMDApDQpbICAgIDAuMDQ0NDg4XSBwaWRfbWF4OiBkZWZh
dWx0OiAzMjc2OCBtaW5pbXVtOiAzMDENClsgICAgMC4wNDkyMzhdIE1vdW50LWNhY2hlIGhh
c2ggdGFibGUgZW50cmllczogMTAyNCAob3JkZXI6IDAsIDQwOTYgYnl0ZXMsIGxpbmVhcikN
ClsgICAgMC4wNTY2MjldIE1vdW50cG9pbnQtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiAx
MDI0IChvcmRlcjogMCwgNDA5NiBieXRlcywgbGluZWFyKQ0KWyAgICAwLjA2NDk4OV0gQ1BV
OiBUZXN0aW5nIHdyaXRlIGJ1ZmZlciBjb2hlcmVuY3k6IG9rDQpbICAgIDAuMDY5OTMwXSBD
UFUwOiBTcGVjdHJlIHYyOiB1c2luZyBCUElBTEwgd29ya2Fyb3VuZA0KWyAgICAwLjA3NTIz
M10gQ1BVMDogdGhyZWFkIC0xLCBjcHUgMCwgc29ja2V0IDAsIG1waWRyIDgwMDAwMDAwDQpb
ICAgIDAuMDgxMzU1XSBTZXR0aW5nIHVwIHN0YXRpYyBpZGVudGl0eSBtYXAgZm9yIDB4MTAw
MDAwIC0gMHgxMDAwM2MNClsgICAgMC4wODc3MjVdIHJjdTogSGllcmFyY2hpY2FsIFNSQ1Ug
aW1wbGVtZW50YXRpb24uDQpbICAgIDAuMDkyNjgzXSBkeW5kYmc6IElnbm9yZSBlbXB0eSBf
ZGRlYnVnIHRhYmxlIGluIGEgQ09ORklHX0RZTkFNSUNfREVCVUdfQ09SRSBidWlsZA0KWyAg
ICAwLjEwMDU1M10gc21wOiBCcmluZ2luZyB1cCBzZWNvbmRhcnkgQ1BVcyAuLi4NClsgICAg
MC4xMDU2ODVdIENQVTE6IHRocmVhZCAtMSwgY3B1IDEsIHNvY2tldCAwLCBtcGlkciA4MDAw
MDAwMQ0KWyAgICAwLjEwNTY5M10gQ1BVMTogU3BlY3RyZSB2MjogdXNpbmcgQlBJQUxMIHdv
cmthcm91bmQNClsgICAgMC4xMTY1OTZdIHNtcDogQnJvdWdodCB1cCAxIG5vZGUsIDIgQ1BV
cw0KWyAgICAwLjEyMDczNV0gU01QOiBUb3RhbCBvZiAyIHByb2Nlc3NvcnMgYWN0aXZhdGVk
ICgyODAwLjAwIEJvZ29NSVBTKS4NClsgICAgMC4xMjcxNTddIENQVTogV0FSTklORzogQ1BV
KHMpIHN0YXJ0ZWQgaW4gd3JvbmcvaW5jb25zaXN0ZW50IG1vZGVzIChwcmltYXJ5IENQVSBt
b2RlIDB4MTMpDQpbICAgIDAuMTM1NjQ4XSBDUFU6IFRoaXMgbWF5IGluZGljYXRlIGEgYnJv
a2VuIGJvb3Rsb2FkZXIgb3IgZmlybXdhcmUuDQpbICAgIDAuMTQ0MDMwXSBjbG9ja3NvdXJj
ZTogamlmZmllczogbWFzazogMHhmZmZmZmZmZiBtYXhfY3ljbGVzOiAweGZmZmZmZmZmLCBt
YXhfaWRsZV9uczogMTkxMTI2MDQ0NjI3NTAwMDAgbnMNClsgICAgMC4xNTM5OTNdIGZ1dGV4
IGhhc2ggdGFibGUgZW50cmllczogNTEyIChvcmRlcjogMywgMzI3NjggYnl0ZXMsIGxpbmVh
cikNClsgICAgMC4xNjA5OTNdIHBpbmN0cmwgY29yZTogaW5pdGlhbGl6ZWQgcGluY3RybCBz
dWJzeXN0ZW0NClsgICAgMC4xNjY3MDRdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1p
bHkgMTYNClsgICAgMC4xNzE3MDddIERNQTogcHJlYWxsb2NhdGVkIDI1NiBLaUIgcG9vbCBm
b3IgYXRvbWljIGNvaGVyZW50IGFsbG9jYXRpb25zDQpbICAgIDAuMTc5MjgyXSB0aGVybWFs
X3N5czogUmVnaXN0ZXJlZCB0aGVybWFsIGdvdmVybm9yICdzdGVwX3dpc2UnDQpbICAgIDAu
MTk5NDMxXSBjbG9ja3NvdXJjZTogU3dpdGNoZWQgdG8gY2xvY2tzb3VyY2UgYXJtX2dsb2Jh
bF90aW1lcg0KWyAgICAwLjIxMjI3NF0gTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWls
eSAyDQpbICAgIDAuMjE2NzU4XSBJUCBpZGVudHMgaGFzaCB0YWJsZSBlbnRyaWVzOiAyMDQ4
IChvcmRlcjogMiwgMTYzODQgYnl0ZXMsIGxpbmVhcikNClsgICAgMC4yMjQzNDVdIHRjcF9s
aXN0ZW5fcG9ydGFkZHJfaGFzaCBoYXNoIHRhYmxlIGVudHJpZXM6IDUxMiAob3JkZXI6IDAs
IDYxNDQgYnl0ZXMsIGxpbmVhcikNClsgICAgMC4yMzI5MTRdIFRDUCBlc3RhYmxpc2hlZCBo
YXNoIHRhYmxlIGVudHJpZXM6IDEwMjQgKG9yZGVyOiAwLCA0MDk2IGJ5dGVzLCBsaW5lYXIp
DQpbICAgIDAuMjQwNjU4XSBUQ1AgYmluZCBoYXNoIHRhYmxlIGVudHJpZXM6IDEwMjQgKG9y
ZGVyOiAxLCA4MTkyIGJ5dGVzLCBsaW5lYXIpDQpbICAgIDAuMjQ3Nzc3XSBUQ1A6IEhhc2gg
dGFibGVzIGNvbmZpZ3VyZWQgKGVzdGFibGlzaGVkIDEwMjQgYmluZCAxMDI0KQ0KWyAgICAw
LjI1NDI3Ml0gVURQIGhhc2ggdGFibGUgZW50cmllczogMjU2IChvcmRlcjogMSwgODE5MiBi
eXRlcywgbGluZWFyKQ0KWyAgICAwLjI2MDkyNV0gVURQLUxpdGUgaGFzaCB0YWJsZSBlbnRy
aWVzOiAyNTYgKG9yZGVyOiAxLCA4MTkyIGJ5dGVzLCBsaW5lYXIpDQpbICAgIDAuMjY4MDg3
XSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDENClsgICAgMC4yNzI1MThdIFBD
STogQ0xTIDAgYnl0ZXMsIGRlZmF1bHQgNjQNClsgICAgMC4yNzgzNDddIHdvcmtpbmdzZXQ6
IHRpbWVzdGFtcF9iaXRzPTE0IG1heF9vcmRlcj0xNyBidWNrZXRfb3JkZXI9Mw0KWyAgICAw
LjI4NjkzMF0gc3F1YXNoZnM6IHZlcnNpb24gNC4wICgyMDA5LzAxLzMxKSBQaGlsbGlwIExv
dWdoZXINClsgICAgMC4yOTI4NjhdIGpmZnMyOiB2ZXJzaW9uIDIuMiAoTkFORCkgKFNVTU1B
UlkpIChMWk1BKSAoUlRJTUUpIChDTU9ERV9QUklPUklUWSkgKGMpIDIwMDEtMjAwNiBSZWQg
SGF0LCBJbmMuDQpbICAgIDAuMzAzMjM4XSBib3VuY2U6IHBvb2wgc2l6ZTogNjQgcGFnZXMN
ClsgICAgMC4zMDgzNTNdIFNlcmlhbDogODI1MC8xNjU1MCBkcml2ZXIsIDIgcG9ydHMsIElS
USBzaGFyaW5nIGRpc2FibGVkDQpbICAgIDAuMzE1NDQ4XSBwcmludGs6IGNvbnNvbGUgW3R0
eVMwXSBkaXNhYmxlZA0KWyAgICAwLjMxOTg2MV0gMTgwMDAzMDAuc2VyaWFsOiB0dHlTMCBh
dCBNTUlPIDB4MTgwMDAzMDAgKGlycSA9IDI2LCBiYXNlX2JhdWQgPSA3ODEyNTAwKSBpcyBh
IDE2NTUwDQpbICAgIDAuMzI4NzMxXSBwcmludGs6IGNvbnNvbGUgW3R0eVMwXSBlbmFibGVk
DQpbICAgIDAuMzM3MTQ4XSBwcmludGs6IGJvb3Rjb25zb2xlIFtuczE2NTUwXSBkaXNhYmxl
ZA0KWyAgICAwLjM0Nzc0Ml0gYmNtMjgzNS1ybmcgMTgwMDQwMDAucm5nOiBod3JuZyByZWdp
c3RlcmVkDQpbICAgIDAuMzUzNTE5XSBuYW5kOiBkZXZpY2UgZm91bmQsIE1hbnVmYWN0dXJl
ciBJRDogMHhjOCwgQ2hpcCBJRDogMHhkMQ0KWyAgICAwLjM1OTkxN10gbmFuZDogRVNNVCBO
QU5EIDEyOE1pQiAzLDNWIDgtYml0DQpbICAgIDAuMzY0MjgzXSBuYW5kOiAxMjggTWlCLCBT
TEMsIGVyYXNlIHNpemU6IDEyOCBLaUIsIHBhZ2Ugc2l6ZTogMjA0OCwgT09CIHNpemU6IDY0
DQpbICAgIDAuMzcxODgxXSBpcHJvY19uYW5kIDE4MDI4MDAwLm5hbmQtY29udHJvbGxlcjog
ZGV0ZWN0ZWQgMTI4TWlCIHRvdGFsLCAxMjhLaUIgYmxvY2tzLCAyS2lCIHBhZ2VzLCAxNkIg
T09CLCA4LWJpdCwgQkNILTgNClsgICAgMC4zODI4MDBdIFNjYW5uaW5nIGRldmljZSBmb3Ig
YmFkIGJsb2Nrcw0KWyAgICAwLjQwNTU1MV0gcmFuZG9tOiBmYXN0IGluaXQgZG9uZQ0KWyAg
ICAxLjAyMjkxM10gcmFuZG9tOiBjcm5nIGluaXQgZG9uZQ0KWyAgICAxLjI4ODgzOF0gMyBm
aXhlZC1wYXJ0aXRpb25zIHBhcnRpdGlvbnMgZm91bmQgb24gTVREIGRldmljZSBicmNtbmFu
ZC4wDQpbICAgIDEuMjk1NTg1XSBDcmVhdGluZyAzIE1URCBwYXJ0aXRpb25zIG9uICJicmNt
bmFuZC4wIjoNClsgICAgMS4zMDA3NTBdIDB4MDAwMDAwMDAwMDAwLTB4MDAwMDAwMDgwMDAw
IDogImJvb3QiDQpbICAgIDEuMzA2MTMxXSAweDAwMDAwMDA4MDAwMC0weDAwMDAwMDIwMDAw
MCA6ICJudnJhbSINClsgICAgMS4zMTE2NDVdIDB4MDAwMDAwMjAwMDAwLTB4MDAwMDA4MDAw
MDAwIDogImZpcm13YXJlIg0KWyAgICAxLjMxODM1MV0gMiB0cnggcGFydGl0aW9ucyBmb3Vu
ZCBvbiBNVEQgZGV2aWNlIGZpcm13YXJlDQpbICAgIDEuMzIzODAzXSBDcmVhdGluZyAyIE1U
RCBwYXJ0aXRpb25zIG9uICJmaXJtd2FyZSI6DQpbICAgIDEuMzI4Nzg1XSAweDAwMDAwMDAw
MDAxYy0weDAwMDAwMDQwMDAwMCA6ICJsaW51eCINClsgICAgMS4zMzM2ODFdIG10ZDogcGFy
dGl0aW9uICJsaW51eCIgZG9lc24ndCBzdGFydCBvbiBhbiBlcmFzZS93cml0ZSBibG9jayBi
b3VuZGFyeSAtLSBmb3JjZSByZWFkLW9ubHkNClsgICAgMS4zNDMzOTldIDB4MDAwMDAwNDAw
MDAwLTB4MDAwMDA3ZTAwMDAwIDogInViaSINClsgICAgMS4zNTA3MDddIGJjbV9pcHJvYyAx
ODAyOTIwMC5zcGk6IHVzaW5nIGJzcGktbXNwaSBtb2RlDQpbICAgIDEuMzU3NTMwXSBsaWJw
aHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQNClsgICAgMS4zNjI0NDFdIGxpYnBoeTogaVBy
b2MgTURJTyBidXM6IHByb2JlZA0KWyAgICAxLjM2NjU3M10gaXByb2MtbWRpbyAxODAwMzAw
MC5tZGlvOiBCcm9hZGNvbSBpUHJvYyBNRElPIGJ1cyByZWdpc3RlcmVkDQpbICAgIDEuMzc0
MDMwXSBsaWJwaHk6IG1kaW9fbXV4OiBwcm9iZWQNClsgICAgMS4zNzg0NjldIGxpYnBoeTog
bWRpb19tdXg6IHByb2JlZA0KWyAgICAxLjM4MzA3Nl0gYjUzLXNyYWItc3dpdGNoIDE4MDA3
MDAwLmV0aGVybmV0LXN3aXRjaDogZm91bmQgc3dpdGNoOiBCQ001MzAxMiwgcmV2IDANClsg
ICAgMS4zOTEwODJdIGJnbWFjX2JjbWE6IEJyb2FkY29tIDQ3eHggR0JpdCBNQUMgZHJpdmVy
IGxvYWRlZA0KWyAgICAxLjM5NzE4Nl0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1
czA6IEZvdW5kIGNoaXAgd2l0aCBpZCA1MzAzMCwgcmV2IDB4MDAgYW5kIHBhY2thZ2UgMHgw
MA0KWyAgICAxLjQwNjE5Ml0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1czA6IENv
cmUgMCBmb3VuZDogQ2hpcENvbW1vbiAobWFudWYgMHg0QkYsIGlkIDB4ODAwLCByZXYgMHgy
QSwgY2xhc3MgMHgwKQ0KWyAgICAxLjQxNjc3NF0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5h
eGk6IGJ1czA6IGJjbWFfb2ZfZ2V0X2lycSgpIGZhaWxlZCB3aXRoIHJjPS0yMg0KWyAgICAx
LjQxNjc4NF0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1czA6IENvcmUgMSBmb3Vu
ZDogQ2hpcGNvbW1vbiBCIChtYW51ZiAweDRCRiwgaWQgMHg1MEIsIHJldiAweDA1LCBjbGFz
cyAweDApDQpbICAgIDEuNDI3NTI5XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVz
MDogYmNtYV9vZl9nZXRfaXJxKCkgZmFpbGVkIHdpdGggcmM9LTIyDQpbICAgIDEuNDI3NTM2
XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSAyIGZvdW5kOiBETUEg
KG1hbnVmIDB4NEJGLCBpZCAweDUwMiwgcmV2IDB4MDQsIGNsYXNzIDB4MCkNClsgICAgMS40
Mzc1MjldIGJjbWEtaG9zdC1zb2MgMTgwMDAwMDAuYXhpOiBidXMwOiBDb3JlIDMgZm91bmQ6
IEdCaXQgTUFDIChtYW51ZiAweDRCRiwgaWQgMHg4MkQsIHJldiAweDA3LCBjbGFzcyAweDAp
DQpbICAgIDEuNDQ3OTM1XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29y
ZSA0IGZvdW5kOiBHQml0IE1BQyAobWFudWYgMHg0QkYsIGlkIDB4ODJELCByZXYgMHgwNywg
Y2xhc3MgMHgwKQ0KWyAgICAxLjQ1ODMzOF0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6
IGJ1czA6IENvcmUgNSBmb3VuZDogR0JpdCBNQUMgKG1hbnVmIDB4NEJGLCBpZCAweDgyRCwg
cmV2IDB4MDcsIGNsYXNzIDB4MCkNClsgICAgMS40Njg3NTldIGJjbWEtaG9zdC1zb2MgMTgw
MDAwMDAuYXhpOiBidXMwOiBDb3JlIDYgZm91bmQ6IEdCaXQgTUFDIChtYW51ZiAweDRCRiwg
aWQgMHg4MkQsIHJldiAweDA3LCBjbGFzcyAweDApDQpbICAgIDEuNDc5MTI0XSBiY21hLWhv
c3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSA3IGZvdW5kOiBQQ0llIEdlbiAyICht
YW51ZiAweDRCRiwgaWQgMHg1MDEsIHJldiAweDA3LCBjbGFzcyAweDApDQpbICAgIDEuNDg5
NjY3XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSA4IGZvdW5kOiBQ
Q0llIEdlbiAyIChtYW51ZiAweDRCRiwgaWQgMHg1MDEsIHJldiAweDA3LCBjbGFzcyAweDAp
DQpbICAgIDEuNTAwMjEzXSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29y
ZSA5IGZvdW5kOiBQQ0llIEdlbiAyIChtYW51ZiAweDRCRiwgaWQgMHg1MDEsIHJldiAweDA3
LCBjbGFzcyAweDApDQpbICAgIDEuNTEwNzY3XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4
aTogYnVzMDogYmNtYV9vZl9nZXRfaXJxKCkgZmFpbGVkIHdpdGggcmM9LTIyDQpbICAgIDEu
NTEwNzc1XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSAxMCBmb3Vu
ZDogQVJNIENvcnRleCBBOSBjb3JlIChpaG9zdCkgKG1hbnVmIDB4NEJGLCBpZCAweDUxMCwg
cmV2IDB4MDcsIGNsYXNzIDB4MCkNClsgICAgMS41MjI4MTFdIGJjbWEtaG9zdC1zb2MgMTgw
MDAwMDAuYXhpOiBidXMwOiBDb3JlIDExIGZvdW5kOiBVU0IgMi4wIChtYW51ZiAweDRCRiwg
aWQgMHg1MDQsIHJldiAweDA3LCBjbGFzcyAweDApDQpbICAgIDEuNTMzMTk3XSBiY21hLWhv
c3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSAxMiBmb3VuZDogVVNCIDMuMCAobWFu
dWYgMHg0QkYsIGlkIDB4NTA1LCByZXYgMHgwNywgY2xhc3MgMHgwKQ0KWyAgICAxLjU0MzU4
M10gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1czA6IGJjbWFfb2ZfZ2V0X2lycSgp
IGZhaWxlZCB3aXRoIHJjPS0yMg0KWyAgICAxLjU0MzU5Ml0gYmNtYS1ob3N0LXNvYyAxODAw
MDAwMC5heGk6IGJ1czA6IENvcmUgMTMgZm91bmQ6IFNESU8zIChtYW51ZiAweDRCRiwgaWQg
MHg1MDMsIHJldiAweDAxLCBjbGFzcyAweDApDQpbICAgIDEuNTUzNzk1XSBiY21hLWhvc3Qt
c29jIDE4MDAwMDAwLmF4aTogYnVzMDogYmNtYV9vZl9nZXRfaXJxKCkgZmFpbGVkIHdpdGgg
cmM9LTIyDQpbICAgIDEuNTUzODAzXSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVz
MDogQ29yZSAxNCBmb3VuZDogSTJTIChtYW51ZiAweDRCRiwgaWQgMHg4MzQsIHJldiAweDAz
LCBjbGFzcyAweDApDQpbICAgIDEuNTYzODMyXSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4
aTogYnVzMDogYmNtYV9vZl9nZXRfaXJxKCkgZmFpbGVkIHdpdGggcmM9LTIyDQpbICAgIDEu
NTYzODM5XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSAxNSBmb3Vu
ZDogQVJNIENvcnRleCBBOSBKVEFHIChtYW51ZiAweDRCRiwgaWQgMHg1MDYsIHJldiAweDAx
LCBjbGFzcyAweDApDQpbICAgIDEuNTc1MTgwXSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4
aTogYnVzMDogYmNtYV9vZl9nZXRfaXJxKCkgZmFpbGVkIHdpdGggcmM9LTIyDQpbICAgIDEu
NTc1MTg4XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQ29yZSAxNiBmb3Vu
ZDogRGVuYWxpIEREUjIvRERSMyBtZW1vcnkgY29udHJvbGxlciAobWFudWYgMHg0QkYsIGlk
IDB4NTA3LCByZXYgMHgwMSwgY2xhc3MgMHgwKQ0KWyAgICAxLjU4NzkyMV0gYmNtYS1ob3N0
LXNvYyAxODAwMDAwMC5heGk6IGJ1czA6IGJjbWFfb2ZfZ2V0X2lycSgpIGZhaWxlZCB3aXRo
IHJjPS0yMg0KWyAgICAxLjU4NzkyOF0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1
czA6IENvcmUgMTcgZm91bmQ6IFJPTSAobWFudWYgMHg0QkYsIGlkIDB4NTA4LCByZXYgMHgw
OCwgY2xhc3MgMHgwKQ0KWyAgICAxLjU5Nzk4Ml0gYmNtYS1ob3N0LXNvYyAxODAwMDAwMC5h
eGk6IGJ1czA6IENvcmUgMTggZm91bmQ6IE5BTkQgZmxhc2ggY29udHJvbGxlciAobWFudWYg
MHg0QkYsIGlkIDB4NTA5LCByZXYgMHgwMSwgY2xhc3MgMHgwKQ0KWyAgICAxLjYwOTU4Ml0g
YmNtYS1ob3N0LXNvYyAxODAwMDAwMC5heGk6IGJ1czA6IGJjbWFfb2ZfZ2V0X2lycSgpIGZh
aWxlZCB3aXRoIHJjPS0yMg0KWyAgICAxLjYwOTU4OV0gYmNtYS1ob3N0LXNvYyAxODAwMDAw
MC5heGk6IGJ1czA6IENvcmUgMTkgZm91bmQ6IFNQSSBmbGFzaCBjb250cm9sbGVyIChtYW51
ZiAweDRCRiwgaWQgMHg1MEEsIHJldiAweDAxLCBjbGFzcyAweDApDQpbICAgIDEuNjIxMDUx
XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogRmxhc2ggdHlwZSBub3Qgc3Vw
cG9ydGVkDQpbICAgIDEuNjM4ODc4XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVz
MDogVXNpbmcgU1BST00gcmV2aXNpb24gOCBwcm92aWRlZCBieSBwbGF0Zm9ybS4NClsgICAg
MS42MzkxMzddIGJnbWFjX2JjbWEgYmNtYTA6MzogRm91bmQgUEhZIGFkZHI6IDANClsgICAg
MS42NDM5MjJdIGJnbWFjX2JjbWEgYmNtYTA6MzogU3VwcG9ydCBmb3IgUm9ib3N3aXRjaCBu
b3QgaW1wbGVtZW50ZWQNClsgICAgMS42NTA0ODddIGJnbWFjX2JjbWEgYmNtYTA6MzogSW52
YWxpZCBNQUMgYWRkcjogMDA6MDA6MDA6MDA6MDA6MDANClsgICAgMS42NTY3NjldIGJnbWFj
X2JjbWEgYmNtYTA6MzogVXNpbmcgcmFuZG9tIE1BQzogMWE6ZGY6YjM6YjQ6ZjQ6YWYNClsg
ICAgMS42NjQxOTVdIGI1My1zcmFiLXN3aXRjaCBiNTMtc3JhYi1zd2l0Y2g6IGludmFsaWQg
cmVzb3VyY2UNClsgICAgMS42NzAwMDhdIGI1My1zcmFiLXN3aXRjaDogcHJvYmUgb2YgYjUz
LXNyYWItc3dpdGNoIGZhaWxlZCB3aXRoIGVycm9yIC0yMg0KWyAgICAxLjY3NzYzN10gYmdt
YWNfYmNtYSBiY21hMDo0OiBGb3VuZCBQSFkgYWRkcjogMzAgKE5PUkVHUykNClsgICAgMS42
ODMyNTZdIGJnbWFjX2JjbWEgYmNtYTA6NDogU3VwcG9ydCBmb3IgUm9ib3N3aXRjaCBub3Qg
aW1wbGVtZW50ZWQNClsgICAgMS42OTExMjRdIGJnbWFjX2JjbWEgYmNtYTA6NTogRm91bmQg
UEhZIGFkZHI6IDANClsgICAgMS42OTU4NTldIGJnbWFjX2JjbWEgYmNtYTA6NTogU3VwcG9y
dCBmb3IgUm9ib3N3aXRjaCBub3QgaW1wbGVtZW50ZWQNClsgICAgMS43MDM3MjhdIGJnbWFj
X2JjbWEgYmNtYTA6NjogVW5zdXBwb3J0ZWQgY29yZV91bml0IDMNClsgICAgMS43MDkwMzhd
IGJnbWFjX2JjbWE6IHByb2JlIG9mIGJjbWEwOjYgZmFpbGVkIHdpdGggZXJyb3IgLTUyNA0K
WyAgICAxLjcxNTEwOF0gcGNpZV9pcHJvY19iY21hIGJjbWEwOjc6IGhvc3QgYnJpZGdlIC9h
eGlAMTgwMDAwMDAvcGNpZUAxMjAwMCByYW5nZXM6DQpbICAgIDEuNzIyNjM1XSBwY2llX2lw
cm9jX2JjbWEgYmNtYTA6NzogICBObyBidXMgcmFuZ2UgZm91bmQgZm9yIC9heGlAMTgwMDAw
MDAvcGNpZUAxMjAwMCwgdXNpbmcgW2J1cyAwMC1mZl0NClsgICAgMS43MzIyNDhdIE9GOiAv
YXhpQDE4MDAwMDAwL3BjaWVAMTIwMDA6IE1pc3NpbmcgZGV2aWNlX3R5cGUNClsgICAgMS43
MzgwMTBdIHBjaWVfaXByb2NfYmNtYSBiY21hMDo3OiBub24tcHJlZmV0Y2hhYmxlIG1lbW9y
eSByZXNvdXJjZSByZXF1aXJlZA0KWyAgICAxLjg2OTIyMF0gcGNpZV9pcHJvY19iY21hIGJj
bWEwOjc6IGxpbms6IFVQDQpbICAgIDEuODczNzEyXSBwY2llX2lwcm9jX2JjbWEgYmNtYTA6
NzogUENJIGhvc3QgYnJpZGdlIHRvIGJ1cyAwMDAwOjAwDQpbICAgIDEuODgwMDIxXSBwY2lf
YnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFtidXMgMDAtZmZdDQpbICAgIDEuODg1
NTI0XSBwY2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNlIFttZW0gMHgwODAwMDAw
MC0weDBmZmZmZmZmXQ0KWyAgICAxLjg5MjQ1MF0gcGNpIDAwMDA6MDA6MDAuMDogWzE0ZTQ6
ZDYxMl0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMA0KWyAgICAxLjg5ODQ3MF0gcGNpX2J1cyAw
MDAwOjAwOiAyLWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZzZXQgMHg0
IG1heSBjb3JydXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgICAxLjkwODE1M10gcGNpX2J1
cyAwMDAwOjAwOiAyLWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZzZXQg
MHg0IG1heSBjb3JydXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgICAxLjkxNzgzN10gcGNp
X2J1cyAwMDAwOjAwOiAyLWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZz
ZXQgMHgxYyBtYXkgY29ycnVwdCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAgMS45Mjc2MDVd
IHBjaV9idXMgMDAwMDowMDogMi1ieXRlIGNvbmZpZyB3cml0ZSB0byAwMDAwOjAwOjAwLjAg
b2Zmc2V0IDB4MWMgbWF5IGNvcnJ1cHQgYWRqYWNlbnQgUlcxQyBiaXRzDQpbICAgIDEuOTM3
MzgxXSBwY2lfYnVzIDAwMDA6MDA6IDItYnl0ZSBjb25maWcgd3JpdGUgdG8gMDAwMDowMDow
MC4wIG9mZnNldCAweDNlIG1heSBjb3JydXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgICAx
Ljk0NzE3MF0gcGNpIDAwMDA6MDA6MDAuMDogUE1FIyBzdXBwb3J0ZWQgZnJvbSBEMCBEM2hv
dCBEM2NvbGQNClsgICAgMS45NTMyODJdIHBjaV9idXMgMDAwMDowMDogMi1ieXRlIGNvbmZp
ZyB3cml0ZSB0byAwMDAwOjAwOjAwLjAgb2Zmc2V0IDB4NGMgbWF5IGNvcnJ1cHQgYWRqYWNl
bnQgUlcxQyBiaXRzDQpbICAgIDEuOTYzOTQzXSBwY2lfYnVzIDAwMDA6MDA6IDItYnl0ZSBj
b25maWcgd3JpdGUgdG8gMDAwMDowMDowMC4wIG9mZnNldCAweDNlIG1heSBjb3JydXB0IGFk
amFjZW50IFJXMUMgYml0cw0KWyAgICAxLjk3MzczMF0gcGNpX2J1cyAwMDAwOjAwOiAyLWJ5
dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZzZXQgMHg0IG1heSBjb3JydXB0
IGFkamFjZW50IFJXMUMgYml0cw0KWyAgICAxLjk4MzQxN10gcGNpX2J1cyAwMDAwOjAwOiAx
LWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZzZXQgMHhjIG1heSBjb3Jy
dXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgICAxLjk5MzEwNF0gUENJOiBidXMwOiBGYXN0
IGJhY2sgdG8gYmFjayB0cmFuc2ZlcnMgZGlzYWJsZWQNClsgICAgMS45OTg2ODZdIHBjaSAw
MDAwOjAwOjAwLjA6IGJyaWRnZSBjb25maWd1cmF0aW9uIGludmFsaWQgKFtidXMgMDAtMDBd
KSwgcmVjb25maWd1cmluZw0KWyAgICAyLjAwNjcxN10gcGNpX2J1cyAwMDAwOjAwOiAyLWJ5
dGUgY29uZmlnIHdyaXRlIHRvIDAwMDA6MDA6MDAuMCBvZmZzZXQgMHgzZSBtYXkgY29ycnVw
dCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAgMi4wMTY2MTZdIHBjaSAwMDAwOjAxOjAwLjA6
IFsxNGU0OjQzNjVdIHR5cGUgMDAgY2xhc3MgMHgwMjgwMDANClsgICAgMi4wMjI2NzJdIHBj
aSAwMDAwOjAxOjAwLjA6IHJlZyAweDEwOiBbbWVtIDB4MDAwMDAwMDAtMHgwMDAwN2ZmZiA2
NGJpdF0NClsgICAgMi4wMjk0OTRdIHBjaSAwMDAwOjAxOjAwLjA6IHJlZyAweDE4OiBbbWVt
IDB4MDAwMDAwMDAtMHgwMDdmZmZmZiA2NGJpdF0NClsgICAgMi4wMzYzMDJdIHBjaSAwMDAw
OjAxOjAwLjA6IHJlZyAweDIwOiBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiA2NGJpdCBw
cmVmXQ0KWyAgICAyLjA0MzYzNV0gcGNpIDAwMDA6MDE6MDAuMDogc3VwcG9ydHMgRDEgRDIN
ClsgICAgMi4wNDg4MDNdIFBDSTogYnVzMTogRmFzdCBiYWNrIHRvIGJhY2sgdHJhbnNmZXJz
IGRpc2FibGVkDQpbICAgIDIuMDU0NDE0XSBwY2lfYnVzIDAwMDA6MDE6IGJ1c25fcmVzOiBb
YnVzIDAxLWZmXSBlbmQgaXMgdXBkYXRlZCB0byAwMQ0KWyAgICAyLjA2MTA3MF0gcGNpIDAw
MDA6MDA6MDAuMDogQkFSIDg6IGFzc2lnbmVkIFttZW0gMHgwODAwMDAwMC0weDA4YmZmZmZm
XQ0KWyAgICAyLjA2Nzg3M10gcGNpIDAwMDA6MDA6MDAuMDogQkFSIDk6IGFzc2lnbmVkIFtt
ZW0gMHgwOGMwMDAwMC0weDA4Y2ZmZmZmIDY0Yml0IHByZWZdDQpbICAgIDIuMDc1NjQ2XSBw
Y2kgMDAwMDowMTowMC4wOiBCQVIgMjogYXNzaWduZWQgW21lbSAweDA4MDAwMDAwLTB4MDg3
ZmZmZmYgNjRiaXRdDQpbICAgIDIuMDgyOTg5XSBwY2kgMDAwMDowMTowMC4wOiBCQVIgNDog
YXNzaWduZWQgW21lbSAweDA4YzAwMDAwLTB4MDhjZmZmZmYgNjRiaXQgcHJlZl0NClsgICAg
Mi4wOTA3NTldIHBjaSAwMDAwOjAxOjAwLjA6IEJBUiAwOiBhc3NpZ25lZCBbbWVtIDB4MDg4
MDAwMDAtMHgwODgwN2ZmZiA2NGJpdF0NClsgICAgMi4wOTgwOTJdIHBjaSAwMDAwOjAwOjAw
LjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0NClsgICAgMi4xMDMwNzBdIHBjaSAwMDAwOjAw
OjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4MDgwMDAwMDAtMHgwOGJmZmZmZl0NClsg
ICAgMi4xMDk4NzddIHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4
MDhjMDAwMDAtMHgwOGNmZmZmZiA2NGJpdCBwcmVmXQ0KWyAgICAyLjExNzgzOF0gcGNpZV9p
cHJvY19iY21hIGJjbWEwOjg6IGhvc3QgYnJpZGdlIC9heGlAMTgwMDAwMDAvcGNpZUAxMzAw
MCByYW5nZXM6DQpbICAgIDIuMTI1MzcwXSBwY2llX2lwcm9jX2JjbWEgYmNtYTA6ODogICBO
byBidXMgcmFuZ2UgZm91bmQgZm9yIC9heGlAMTgwMDAwMDAvcGNpZUAxMzAwMCwgdXNpbmcg
W2J1cyAwMC1mZl0NClsgICAgMi4xMzQ5NzhdIHBjaWVfaXByb2NfYmNtYSBiY21hMDo4OiBu
b24tcHJlZmV0Y2hhYmxlIG1lbW9yeSByZXNvdXJjZSByZXF1aXJlZA0KWyAgICAyLjI2OTIx
Nl0gcGNpZV9pcHJvY19iY21hIGJjbWEwOjg6IGxpbms6IFVQDQpbICAgIDIuMjczNjkwXSBw
Y2llX2lwcm9jX2JjbWEgYmNtYTA6ODogUENJIGhvc3QgYnJpZGdlIHRvIGJ1cyAwMDAxOjAw
DQpbICAgIDIuMjc5OTk0XSBwY2lfYnVzIDAwMDE6MDA6IHJvb3QgYnVzIHJlc291cmNlIFti
dXMgMDAtZmZdDQpbICAgIDIuMjg1NDkxXSBwY2lfYnVzIDAwMDE6MDA6IHJvb3QgYnVzIHJl
c291cmNlIFttZW0gMHgyMDAwMDAwMC0weDI3ZmZmZmZmXQ0KWyAgICAyLjI5MjQxM10gcGNp
IDAwMDE6MDA6MDAuMDogWzE0ZTQ6ZDYxMl0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMA0KWyAg
ICAyLjI5ODQ3NV0gcGNpIDAwMDE6MDA6MDAuMDogUE1FIyBzdXBwb3J0ZWQgZnJvbSBEMCBE
M2hvdCBEM2NvbGQNClsgICAgMi4zMDU0NjldIFBDSTogYnVzMDogRmFzdCBiYWNrIHRvIGJh
Y2sgdHJhbnNmZXJzIGRpc2FibGVkDQpbICAgIDIuMzExMDc5XSBwY2kgMDAwMTowMDowMC4w
OiBicmlkZ2UgY29uZmlndXJhdGlvbiBpbnZhbGlkIChbYnVzIDAwLTAwXSksIHJlY29uZmln
dXJpbmcNClsgICAgMi4zMTkyNDBdIHBjaSAwMDAxOjAxOjAwLjA6IFsxNGU0OjQzNjVdIHR5
cGUgMDAgY2xhc3MgMHgwMjgwMDANClsgICAgMi4zMjUyOTFdIHBjaSAwMDAxOjAxOjAwLjA6
IHJlZyAweDEwOiBbbWVtIDB4MDAwMDAwMDAtMHgwMDAwN2ZmZiA2NGJpdF0NClsgICAgMi4z
MzIxMTZdIHBjaSAwMDAxOjAxOjAwLjA6IHJlZyAweDE4OiBbbWVtIDB4MDAwMDAwMDAtMHgw
MDdmZmZmZiA2NGJpdF0NClsgICAgMi4zMzg5MzJdIHBjaSAwMDAxOjAxOjAwLjA6IHJlZyAw
eDIwOiBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiA2NGJpdCBwcmVmXQ0KWyAgICAyLjM0
NjI2MF0gcGNpIDAwMDE6MDE6MDAuMDogc3VwcG9ydHMgRDEgRDINClsgICAgMi4zNTE0MDld
IFBDSTogYnVzMTogRmFzdCBiYWNrIHRvIGJhY2sgdHJhbnNmZXJzIGRpc2FibGVkDQpbICAg
IDIuMzU3MDEwXSBwY2lfYnVzIDAwMDE6MDE6IGJ1c25fcmVzOiBbYnVzIDAxLWZmXSBlbmQg
aXMgdXBkYXRlZCB0byAwMQ0KWyAgICAyLjM2MzY2OF0gcGNpIDAwMDE6MDA6MDAuMDogQkFS
IDg6IGFzc2lnbmVkIFttZW0gMHgyMDAwMDAwMC0weDIwYmZmZmZmXQ0KWyAgICAyLjM3MDQ4
NV0gcGNpIDAwMDE6MDA6MDAuMDogQkFSIDk6IGFzc2lnbmVkIFttZW0gMHgyMGMwMDAwMC0w
eDIwY2ZmZmZmIDY0Yml0IHByZWZdDQpbICAgIDIuMzc4MjUzXSBwY2kgMDAwMTowMTowMC4w
OiBCQVIgMjogYXNzaWduZWQgW21lbSAweDIwMDAwMDAwLTB4MjA3ZmZmZmYgNjRiaXRdDQpb
ICAgIDIuMzg1NTkyXSBwY2kgMDAwMTowMTowMC4wOiBCQVIgNDogYXNzaWduZWQgW21lbSAw
eDIwYzAwMDAwLTB4MjBjZmZmZmYgNjRiaXQgcHJlZl0NClsgICAgMi4zOTMzNjhdIHBjaSAw
MDAxOjAxOjAwLjA6IEJBUiAwOiBhc3NpZ25lZCBbbWVtIDB4MjA4MDAwMDAtMHgyMDgwN2Zm
ZiA2NGJpdF0NClsgICAgMi40MDA3MTBdIHBjaSAwMDAxOjAwOjAwLjA6IFBDSSBicmlkZ2Ug
dG8gW2J1cyAwMV0NClsgICAgMi40MDU2ODVdIHBjaSAwMDAxOjAwOjAwLjA6ICAgYnJpZGdl
IHdpbmRvdyBbbWVtIDB4MjAwMDAwMDAtMHgyMGJmZmZmZl0NClsgICAgMi40MTI0OTVdIHBj
aSAwMDAxOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4MjBjMDAwMDAtMHgyMGNm
ZmZmZiA2NGJpdCBwcmVmXQ0KWyAgICAyLjQyMDQ0NV0gcGNpZV9pcHJvY19iY21hIGJjbWEw
Ojk6IGhvc3QgYnJpZGdlIC9heGlAMTgwMDAwMDAvcGNpZUAxNDAwMCByYW5nZXM6DQpbICAg
IDIuNDI3OTU4XSBwY2llX2lwcm9jX2JjbWEgYmNtYTA6OTogICBObyBidXMgcmFuZ2UgZm91
bmQgZm9yIC9heGlAMTgwMDAwMDAvcGNpZUAxNDAwMCwgdXNpbmcgW2J1cyAwMC1mZl0NClsg
ICAgMi40Mzc1NzBdIHBjaWVfaXByb2NfYmNtYSBiY21hMDo5OiBub24tcHJlZmV0Y2hhYmxl
IG1lbW9yeSByZXNvdXJjZSByZXF1aXJlZA0KWyAgICAyLjU2OTIxN10gcGNpZV9pcHJvY19i
Y21hIGJjbWEwOjk6IFBIWSBvciBkYXRhIGxpbmsgaXMgSU5BQ1RJVkUhDQpbICAgIDIuNTc1
NDEwXSBwY2llX2lwcm9jX2JjbWEgYmNtYTA6OTogbm8gUENJZSBFUCBkZXZpY2UgZGV0ZWN0
ZWQNClsgICAgMi41ODIxOTJdIGJjbTQ3eHgtd2R0IGJjbTQ3eHgtd2R0LjA6IEJDTTQ3eHgg
V2F0Y2hkb2cgVGltZXIgZW5hYmxlZCAoMzAgc2Vjb25kcywgU29mdHdhcmUgVGltZXIpDQpb
ICAgIDIuNTkxMjQ4XSBiY21hLWhvc3Qtc29jIDE4MDAwMDAwLmF4aTogYnVzMDogQnVzIHJl
Z2lzdGVyZWQNClsgICAgMi41OTc3MzRdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1p
bHkgMTANClsgICAgMi42MDMxMDBdIFNlZ21lbnQgUm91dGluZyB3aXRoIElQdjYNClsgICAg
Mi42MDY4MjZdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMTcNClsgICAgMi42
MTE1MzJdIDgwMjFxOiA4MDIuMVEgVkxBTiBTdXBwb3J0IHYxLjgNClsgICAgMi42MTU3Njld
IFJlZ2lzdGVyaW5nIFNXUC9TV1BCIGVtdWxhdGlvbiBoYW5kbGVyDQpbICAgIDIuNjIzMzA3
XSBiNTMtc3JhYi1zd2l0Y2ggMTgwMDcwMDAuZXRoZXJuZXQtc3dpdGNoOiBmb3VuZCBzd2l0
Y2g6IEJDTTUzMDEyLCByZXYgMA0KWyAgICAyLjc3MjcxNV0gbGlicGh5OiBkc2Egc2xhdmUg
c21pOiBwcm9iZWQNClsgICAgMi43NzczMzJdIGI1My1zcmFiLXN3aXRjaCAxODAwNzAwMC5l
dGhlcm5ldC1zd2l0Y2ggbGFuNCAodW5pbml0aWFsaXplZCk6IFBIWSBbZHNhLTAuMDowMF0g
ZHJpdmVyIFtHZW5lcmljIFBIWV0gKGlycT1QT0xMKQ0KWyAgICAyLjc4OTc0Ml0gYjUzLXNy
YWItc3dpdGNoIDE4MDA3MDAwLmV0aGVybmV0LXN3aXRjaCBsYW4zICh1bmluaXRpYWxpemVk
KTogUEhZIFtkc2EtMC4wOjAxXSBkcml2ZXIgW0dlbmVyaWMgUEhZXSAoaXJxPVBPTEwpDQpb
ICAgIDIuODAyMTI5XSBiNTMtc3JhYi1zd2l0Y2ggMTgwMDcwMDAuZXRoZXJuZXQtc3dpdGNo
IGxhbjIgKHVuaW5pdGlhbGl6ZWQpOiBQSFkgW2RzYS0wLjA6MDJdIGRyaXZlciBbR2VuZXJp
YyBQSFldIChpcnE9UE9MTCkNClsgICAgMi44MTQ1MDVdIGI1My1zcmFiLXN3aXRjaCAxODAw
NzAwMC5ldGhlcm5ldC1zd2l0Y2ggbGFuMSAodW5pbml0aWFsaXplZCk6IFBIWSBbZHNhLTAu
MDowM10gZHJpdmVyIFtHZW5lcmljIFBIWV0gKGlycT1QT0xMKQ0KWyAgICAyLjgyNjkyOV0g
YjUzLXNyYWItc3dpdGNoIDE4MDA3MDAwLmV0aGVybmV0LXN3aXRjaCB3YW4gKHVuaW5pdGlh
bGl6ZWQpOiBQSFkgW2RzYS0wLjA6MDRdIGRyaXZlciBbR2VuZXJpYyBQSFldIChpcnE9UE9M
TCkNClsgICAgMi44Mzk1NjhdIGI1My1zcmFiLXN3aXRjaCAxODAwNzAwMC5ldGhlcm5ldC1z
d2l0Y2g6IFVzaW5nIGxlZ2FjeSBQSFlMSUIgY2FsbGJhY2tzLiBQbGVhc2UgbWlncmF0ZSB0
byBQSFlMSU5LIQ0KWyAgICAyLjg1MDQxNl0gRFNBOiB0cmVlIDAgc2V0dXANClsgICAgMi44
NTM2NjJdIFVCSTogYXV0by1hdHRhY2ggbXRkNA0KWyAgICAyLjg1NzAwMV0gdWJpMDogYXR0
YWNoaW5nIG10ZDQNClsgICAgMy40OTA4NTRdIHViaTA6IHNjYW5uaW5nIGlzIGZpbmlzaGVk
DQpbICAgIDMuNTAzMjA2XSB1YmkwOiBhdHRhY2hlZCBtdGQ0IChuYW1lICJ1YmkiLCBzaXpl
IDEyMiBNaUIpDQpbICAgIDMuNTA4NzI2XSB1YmkwOiBQRUIgc2l6ZTogMTMxMDcyIGJ5dGVz
ICgxMjggS2lCKSwgTEVCIHNpemU6IDEyNjk3NiBieXRlcw0KWyAgICAzLjUxNTYzNV0gdWJp
MDogbWluLi9tYXguIEkvTyB1bml0IHNpemVzOiAyMDQ4LzIwNDgsIHN1Yi1wYWdlIHNpemUg
MjA0OA0KWyAgICAzLjUyMjQ0N10gdWJpMDogVklEIGhlYWRlciBvZmZzZXQ6IDIwNDggKGFs
aWduZWQgMjA0OCksIGRhdGEgb2Zmc2V0OiA0MDk2DQpbICAgIDMuNTI5NDI1XSB1YmkwOiBn
b29kIFBFQnM6IDk3NiwgYmFkIFBFQnM6IDAsIGNvcnJ1cHRlZCBQRUJzOiAwDQpbICAgIDMu
NTM1NDQ0XSB1YmkwOiB1c2VyIHZvbHVtZTogMiwgaW50ZXJuYWwgdm9sdW1lczogMSwgbWF4
LiB2b2x1bWVzIGNvdW50OiAxMjgNClsgICAgMy41NDI2ODJdIHViaTA6IG1heC9tZWFuIGVy
YXNlIGNvdW50ZXI6IDYxLzMxLCBXTCB0aHJlc2hvbGQ6IDQwOTYsIGltYWdlIHNlcXVlbmNl
IG51bWJlcjogMjA5NDY3NzgwMA0KWyAgICAzLjU1MjAxMl0gdWJpMDogYXZhaWxhYmxlIFBF
QnM6IDAsIHRvdGFsIHJlc2VydmVkIFBFQnM6IDk3NiwgUEVCcyByZXNlcnZlZCBmb3IgYmFk
IFBFQiBoYW5kbGluZzogMjANClsgICAgMy41NjEyOTZdIHViaTA6IGJhY2tncm91bmQgdGhy
ZWFkICJ1YmlfYmd0MGQiIHN0YXJ0ZWQsIFBJRCA0NjMNClsgICAgMy41NjgxMzhdIGJsb2Nr
IHViaWJsb2NrMF8wOiBjcmVhdGVkIGZyb20gdWJpMDowKHJvb3RmcykNClsgICAgMy41NzM2
ODFdIHViaWJsb2NrOiBkZXZpY2UgdWJpYmxvY2swXzAgKHJvb3Rmcykgc2V0IHRvIGJlIHJv
b3QgZmlsZXN5c3RlbQ0KWyAgICAzLjU4NDA2N10gVkZTOiBNb3VudGVkIHJvb3QgKHNxdWFz
aGZzIGZpbGVzeXN0ZW0pIHJlYWRvbmx5IG9uIGRldmljZSAyNTQ6MC4NClsgICAgMy41OTIw
MjRdIEZyZWVpbmcgdW51c2VkIGtlcm5lbCBtZW1vcnk6IDEwMjRLDQpbICAgIDMuNjE5MzYz
XSBSdW4gL3NiaW4vaW5pdCBhcyBpbml0IHByb2Nlc3MNClsgICAgMy42MjM0NjddICAgd2l0
aCBhcmd1bWVudHM6DQpbICAgIDMuNjIzNDY5XSAgICAgL3NiaW4vaW5pdA0KWyAgICAzLjYy
MzQ3Ml0gICB3aXRoIGVudmlyb25tZW50Og0KWyAgICAzLjYyMzQ3NF0gICAgIEhPTUU9Lw0K
WyAgICAzLjYyMzQ3Nl0gICAgIFRFUk09bGludXgNClsgICAgMy44MjYyMTZdIGluaXQ6IENv
bnNvbGUgaXMgYWxpdmUNClsgICAgMy44Mjk4NzhdIGluaXQ6IC0gd2F0Y2hkb2cgLQ0KWyAg
ICA0LjA2NzgxMl0ga21vZGxvYWRlcjogbG9hZGluZyBrZXJuZWwgbW9kdWxlcyBmcm9tIC9l
dGMvbW9kdWxlcy1ib290LmQvKg0KWyAgICA0LjEzMzU3NV0gdXNiY29yZTogcmVnaXN0ZXJl
ZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2Jmcw0KWyAgICA0LjEzOTE1OV0gdXNiY29yZTog
cmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBodWINClsgICAgNC4xNDQ1NzZdIHVz
YmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGRldmljZSBkcml2ZXIgdXNiDQpbICAgIDQuMTUyODQ5
XSBlaGNpX2hjZDogVVNCIDIuMCAnRW5oYW5jZWQnIEhvc3QgQ29udHJvbGxlciAoRUhDSSkg
RHJpdmVyDQpbICAgIDQuMTYwMjcwXSBlaGNpLWZzbDogRnJlZXNjYWxlIEVIQ0kgSG9zdCBj
b250cm9sbGVyIGRyaXZlcg0KWyAgICA0LjE2Njc1NV0gZWhjaS1wbGF0Zm9ybTogRUhDSSBn
ZW5lcmljIHBsYXRmb3JtIGRyaXZlcg0KWyAgICA0LjE3NTQ3MF0gZWhjaS1wbGF0Zm9ybSAx
ODAyMTAwMC51c2I6IEVIQ0kgSG9zdCBDb250cm9sbGVyDQpbICAgIDQuMTc4MTMwXSBvaGNp
X2hjZDogVVNCIDEuMSAnT3BlbicgSG9zdCBDb250cm9sbGVyIChPSENJKSBEcml2ZXINClsg
ICAgNC4xODEyNjJdIGVoY2ktcGxhdGZvcm0gMTgwMjEwMDAudXNiOiBuZXcgVVNCIGJ1cyBy
ZWdpc3RlcmVkLCBhc3NpZ25lZCBidXMgbnVtYmVyIDENClsgICAgNC4xODg1MzBdIG9oY2kt
cGxhdGZvcm06IE9IQ0kgZ2VuZXJpYyBwbGF0Zm9ybSBkcml2ZXINClsgICAgNC4xOTU1Mzdd
IGVoY2ktcGxhdGZvcm0gMTgwMjEwMDAudXNiOiBpcnEgNDUsIGlvIG1lbSAweDE4MDIxMDAw
DQpbICAgIDQuMjAwOTM3XSBvaGNpLXBsYXRmb3JtIDE4MDIyMDAwLnVzYjogR2VuZXJpYyBQ
bGF0Zm9ybSBPSENJIGNvbnRyb2xsZXINClsgICAgNC4yMTM2NDVdIG9oY2ktcGxhdGZvcm0g
MTgwMjIwMDAudXNiOiBuZXcgVVNCIGJ1cyByZWdpc3RlcmVkLCBhc3NpZ25lZCBidXMgbnVt
YmVyIDINClsgICAgNC4yMjE2MDRdIG9oY2ktcGxhdGZvcm0gMTgwMjIwMDAudXNiOiBpcnEg
NDUsIGlvIG1lbSAweDE4MDIyMDAwDQpbICAgIDQuMjI5MjYwXSBlaGNpLXBsYXRmb3JtIDE4
MDIxMDAwLnVzYjogVVNCIDIuMCBzdGFydGVkLCBFSENJIDEuMDANClsgICAgNC4yMzU5MzRd
IGh1YiAxLTA6MS4wOiBVU0IgaHViIGZvdW5kDQpbICAgIDQuMjM5ODQ2XSBodWIgMS0wOjEu
MDogMiBwb3J0cyBkZXRlY3RlZA0KWyAgICA0LjMwMzc0NV0gaHViIDItMDoxLjA6IFVTQiBo
dWIgZm91bmQNClsgICAgNC4zMDc1NTddIGh1YiAyLTA6MS4wOiAyIHBvcnRzIGRldGVjdGVk
DQpbICAgIDQuMzM5MTUzXSB4aGNpLWhjZCAxODAyMzAwMC51c2I6IHhIQ0kgSG9zdCBDb250
cm9sbGVyDQpbICAgIDQuMzQ0NDQyXSB4aGNpLWhjZCAxODAyMzAwMC51c2I6IG5ldyBVU0Ig
YnVzIHJlZ2lzdGVyZWQsIGFzc2lnbmVkIGJ1cyBudW1iZXIgMw0KWyAgICA0LjM1MjA4OV0g
eGhjaS1oY2QgMTgwMjMwMDAudXNiOiBoY2MgcGFyYW1zIDB4MDI1MDExNjQgaGNpIHZlcnNp
b24gMHgxMDAgcXVpcmtzIDB4MDAwMDAyMDAwMDAxMDAxMA0KWyAgICA0LjM2MTI5NV0geGhj
aS1oY2QgMTgwMjMwMDAudXNiOiBpcnEgNDYsIGlvIG1lbSAweDE4MDIzMDAwDQpbICAgIDQu
MzY4NDc2XSBodWIgMy0wOjEuMDogVVNCIGh1YiBmb3VuZA0KWyAgICA0LjM3MjMwNF0gaHVi
IDMtMDoxLjA6IGNvbmZpZyBmYWlsZWQsIGh1YiBkb2Vzbid0IGhhdmUgYW55IHBvcnRzISAo
ZXJyIC0xOSkNClsgICAgNC4zNzk2MTRdIHhoY2ktaGNkIDE4MDIzMDAwLnVzYjogeEhDSSBI
b3N0IENvbnRyb2xsZXINClsgICAgNC4zODQ4NzRdIHhoY2ktaGNkIDE4MDIzMDAwLnVzYjog
bmV3IFVTQiBidXMgcmVnaXN0ZXJlZCwgYXNzaWduZWQgYnVzIG51bWJlciA0DQpbICAgIDQu
MzkyMzEwXSB4aGNpLWhjZCAxODAyMzAwMC51c2I6IEhvc3Qgc3VwcG9ydHMgVVNCIDMuMCBT
dXBlclNwZWVkDQpbICAgIDQuNDAwMjc1XSB1c2IgdXNiNDogV2UgZG9uJ3Qga25vdyB0aGUg
YWxnb3JpdGhtcyBmb3IgTFBNIGZvciB0aGlzIGhvc3QsIGRpc2FibGluZyBMUE0uDQpbICAg
IDQuNDA4NzgwXSBodWIgNC0wOjEuMDogVVNCIGh1YiBmb3VuZA0KWyAgICA0LjQxMjY0Nl0g
aHViIDQtMDoxLjA6IDEgcG9ydCBkZXRlY3RlZA0KWyAgICA0LjQxOTA2NF0ga21vZGxvYWRl
cjogZG9uZSBsb2FkaW5nIGtlcm5lbCBtb2R1bGVzIGZyb20gL2V0Yy9tb2R1bGVzLWJvb3Qu
ZC8qDQpbICAgIDQuNDI3MTc3XSBpbml0OiAtIHByZWluaXQgLQ0KWyAgICA1LjUxNjU2M10g
YjUzLXNyYWItc3dpdGNoIDE4MDA3MDAwLmV0aGVybmV0LXN3aXRjaCBsYW4xOiBjb25maWd1
cmluZyBmb3IgcGh5L2dtaWkgbGluayBtb2RlDQpbICAgIDUuNTI1MjA1XSBiZ21hY19iY21h
IGJjbWEwOjQgZXRoMTogTGluayBpcyBVcCAtIDFHYnBzL0Z1bGwgLSBmbG93IGNvbnRyb2wg
b2ZmDQpbICAgIDUuNTMyNzIyXSA4MDIxcTogYWRkaW5nIFZMQU4gMCB0byBIVyBmaWx0ZXIg
b24gZGV2aWNlIGxhbjENClsgICAgNS41Mzk1ODZdIGI1My1zcmFiLXN3aXRjaCAxODAwNzAw
MC5ldGhlcm5ldC1zd2l0Y2ggbGFuMTogTGluayBpcyBVcCAtIDFHYnBzL0Z1bGwgLSBmbG93
IGNvbnRyb2wgcngvdHgNClsgICAgNS41ODkzMTRdIElQdjY6IEFERFJDT05GKE5FVERFVl9D
SEFOR0UpOiBldGgxOiBsaW5rIGJlY29tZXMgcmVhZHkNClsgICAgNS41OTU4MjRdIElQdjY6
IEFERFJDT05GKE5FVERFVl9DSEFOR0UpOiBsYW4xOiBsaW5rIGJlY29tZXMgcmVhZHkNClsg
ICAgOS43NTAzMDZdIFVCSUZTICh1YmkwOjEpOiBNb3VudGluZyBpbiB1bmF1dGhlbnRpY2F0
ZWQgbW9kZQ0KWyAgICA5Ljc1NjA5NV0gVUJJRlMgKHViaTA6MSk6IGJhY2tncm91bmQgdGhy
ZWFkICJ1Ymlmc19iZ3QwXzEiIHN0YXJ0ZWQsIFBJRCA2MTkNClsgICAgOS44NTc0OTRdIFVC
SUZTICh1YmkwOjEpOiBVQklGUzogbW91bnRlZCBVQkkgZGV2aWNlIDAsIHZvbHVtZSAxLCBu
YW1lICJyb290ZnNfZGF0YSINClsgICAgOS44NjUzODBdIFVCSUZTICh1YmkwOjEpOiBMRUIg
c2l6ZTogMTI2OTc2IGJ5dGVzICgxMjQgS2lCKSwgbWluLi9tYXguIEkvTyB1bml0IHNpemVz
OiAyMDQ4IGJ5dGVzLzIwNDggYnl0ZXMNClsgICAgOS44NzUzMjddIFVCSUZTICh1YmkwOjEp
OiBGUyBzaXplOiAxMTU1NDgxNjAgYnl0ZXMgKDExMCBNaUIsIDkxMCBMRUJzKSwgam91cm5h
bCBzaXplIDU4NDA4OTYgYnl0ZXMgKDUgTWlCLCA0NiBMRUJzKQ0KWyAgICA5Ljg4NTk2OF0g
VUJJRlMgKHViaTA6MSk6IHJlc2VydmVkIGZvciByb290OiA0OTUyNjgzIGJ5dGVzICg0ODM2
IEtpQikNClsgICAgOS44OTI2MDJdIFVCSUZTICh1YmkwOjEpOiBtZWRpYSBmb3JtYXQ6IHc1
L3IwIChsYXRlc3QgaXMgdzUvcjApLCBVVUlEIDE2QzAxREIwLTJCN0QtNDE0Ni1BMTZCLUY4
QkY3RjY1QjFCNiwgc21hbGwgTFBUIG1vZGVsDQpbICAgIDkuOTA1MTMzXSBtb3VudF9yb290
OiBvdmVybGF5IGZpbGVzeXN0ZW0gaGFzIG5vdCBiZWVuIGZ1bGx5IGluaXRpYWxpemVkIHll
dA0KWyAgICA5LjkxMjc2OF0gbW91bnRfcm9vdDogc3dpdGNoaW5nIHRvIHViaWZzIG92ZXJs
YXkNClsgICAxMC4xNzU1MzZdIHVyYW5kb20tc2VlZDogU2VlZCBmaWxlIG5vdCBmb3VuZCAo
L2V0Yy91cmFuZG9tLnNlZWQpDQpbICAgMTAuMjYxMjE1XSBiNTMtc3JhYi1zd2l0Y2ggMTgw
MDcwMDAuZXRoZXJuZXQtc3dpdGNoIGxhbjE6IExpbmsgaXMgRG93bg0KWyAgIDEwLjM1Mjgw
MF0gcHJvY2Q6IC0gZWFybHkgLQ0KWyAgIDEwLjM1NTgwM10gcHJvY2Q6IC0gd2F0Y2hkb2cg
LQ0KWyAgIDEwLjg4MTg5M10gcHJvY2Q6IC0gd2F0Y2hkb2cgLQ0KWyAgIDEwLjg4NTI4MV0g
cHJvY2Q6IC0gdWJ1cyAtDQpbICAgMTAuOTQxMTI5XSBwcm9jZDogLSBpbml0IC0NClsgICAx
MS4zMzU4OTFdIGttb2Rsb2FkZXI6IGxvYWRpbmcga2VybmVsIG1vZHVsZXMgZnJvbSAvZXRj
L21vZHVsZXMuZC8qDQpbICAgMTEuMzM3NzQ3XSB1cm5nZDogdjEuMC4yIHN0YXJ0ZWQuDQpb
ICAgMTEuNDA2ODMyXSBMb2FkaW5nIG1vZHVsZXMgYmFja3BvcnRlZCBmcm9tIExpbnV4IHZl
cnNpb24gdjUuMTAuNjgtMC1nNGQ4NTI0MDQ4YTM1DQpbICAgMTEuNDE0NDgzXSBCYWNrcG9y
dCBnZW5lcmF0ZWQgYnkgYmFja3BvcnRzLmdpdCB2NS4xMC42OC0xLTAtZ2E0ZjliYTMyDQpb
ICAgMTEuNDM3NDkzXSB4dF90aW1lOiBrZXJuZWwgdGltZXpvbmUgaXMgLTAwMDANClsgICAx
MS40NTg2ODhdIFBQUCBnZW5lcmljIGRyaXZlciB2ZXJzaW9uIDIuNC4yDQpbICAgMTEuNDY0
NDY5XSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDI0DQpbICAgMTEuNDc5MjU3
XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGJyY21mbWFjDQpb
ICAgMTEuNDg1MTkwXSBwY2lfZ2VuZXJpY19jb25maWdfd3JpdGUzMjogNTAgY2FsbGJhY2tz
IHN1cHByZXNzZWQNClsgICAxMS40ODUyMDFdIHBjaV9idXMgMDAwMDowMTogMS1ieXRlIGNv
bmZpZyB3cml0ZSB0byAwMDAwOjAxOjAwLjAgb2Zmc2V0IDB4M2MgbWF5IGNvcnJ1cHQgYWRq
YWNlbnQgUlcxQyBiaXRzDQpbICAgMTEuNTAwOTU4XSBwY2kgMDAwMDowMDowMC4wOiBlbmFi
bGluZyBkZXZpY2UgKDAxNDAgLT4gMDE0MikNClsgICAxMS41MDY2MzJdIHBjaV9idXMgMDAw
MDowMDogMi1ieXRlIGNvbmZpZyB3cml0ZSB0byAwMDAwOjAwOjAwLjAgb2Zmc2V0IDB4NCBt
YXkgY29ycnVwdCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAxMS41MTYzMjJdIHBjaV9idXMg
MDAwMDowMDogMi1ieXRlIGNvbmZpZyB3cml0ZSB0byAwMDAwOjAwOjAwLjAgb2Zmc2V0IDB4
NCBtYXkgY29ycnVwdCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAxMS41MjYwMDRdIGJyY21m
bWFjIDAwMDA6MDE6MDAuMDogZW5hYmxpbmcgZGV2aWNlICgwMTQwIC0+IDAxNDIpDQpbICAg
MTEuNTMyMTE5XSBwY2lfYnVzIDAwMDA6MDE6IDItYnl0ZSBjb25maWcgd3JpdGUgdG8gMDAw
MDowMTowMC4wIG9mZnNldCAweDQgbWF5IGNvcnJ1cHQgYWRqYWNlbnQgUlcxQyBiaXRzDQpb
ICAgMTEuNTQxODA3XSBwY2lfYnVzIDAwMDA6MDE6IDItYnl0ZSBjb25maWcgd3JpdGUgdG8g
MDAwMDowMTowMC4wIG9mZnNldCAweDQgbWF5IGNvcnJ1cHQgYWRqYWNlbnQgUlcxQyBiaXRz
DQpbICAgMTEuNjc5NTEwXSBicmNtZm1hYzogYnJjbWZfZndfYWxsb2NfcmVxdWVzdDogdXNp
bmcgYnJjbS9icmNtZm1hYzQzNjZjLXBjaWUgZm9yIGNoaXAgQkNNNDM2NjQvNA0KWyAgIDEx
Ljg5ODk2NV0gYnJjbWZtYWMgMDAwMDowMTowMC4wOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBm
b3IgYnJjbS9icmNtZm1hYzQzNjZjLXBjaWUuYXN1cyxydC1hYzg4dS50eHQgZmFpbGVkIHdp
dGggZXJyb3IgLTINClsgICAxMS45MTAxMjddIGJyY21mbWFjIDAwMDA6MDE6MDAuMDogRGly
ZWN0IGZpcm13YXJlIGxvYWQgZm9yIGJyY20vYnJjbWZtYWM0MzY2Yy1wY2llLnR4dCBmYWls
ZWQgd2l0aCBlcnJvciAtMg0KWyAgIDEyLjI1MTk4Ml0gYnJjbWZtYWM6IGJyY21mX2Z3X2Fs
bG9jX3JlcXVlc3Q6IHVzaW5nIGJyY20vYnJjbWZtYWM0MzY2Yy1wY2llIGZvciBjaGlwIEJD
TTQzNjY0LzQNClsgICAxMi4yNjA4MTVdIGJyY21mbWFjOiBicmNtZl9jX3Byb2Nlc3NfY2xt
X2Jsb2I6IG5vIGNsbV9ibG9iIGF2YWlsYWJsZSAoZXJyPS0yKSwgZGV2aWNlIG1heSBoYXZl
IGxpbWl0ZWQgY2hhbm5lbHMgYXZhaWxhYmxlDQpbICAgMTIuMjcyMDc2XSBicmNtZm1hYzog
YnJjbWZfY19wcmVpbml0X2RjbWRzOiBGaXJtd2FyZTogQkNNNDM2NjQvNCB3bDA6IE5vdiAg
NSAyMDE4IDAzOjE5OjU2IHZlcnNpb24gMTAuMjguMiAocjc2OTExNSkgRldJRCAwMS1kMmNi
YjhmZA0KWyAgIDEyLjI5Mjc5Nl0gcGNpX2J1cyAwMDAxOjAxOiAxLWJ5dGUgY29uZmlnIHdy
aXRlIHRvIDAwMDE6MDE6MDAuMCBvZmZzZXQgMHgzYyBtYXkgY29ycnVwdCBhZGphY2VudCBS
VzFDIGJpdHMNClsgICAxMi4zMDI2NDBdIHBjaSAwMDAxOjAwOjAwLjA6IGVuYWJsaW5nIGRl
dmljZSAoMDE0MCAtPiAwMTQyKQ0KWyAgIDEyLjMwODMyOF0gcGNpX2J1cyAwMDAxOjAwOiAy
LWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDE6MDA6MDAuMCBvZmZzZXQgMHg0IG1heSBjb3Jy
dXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgIDEyLjMxODExMl0gcGNpX2J1cyAwMDAxOjAw
OiAyLWJ5dGUgY29uZmlnIHdyaXRlIHRvIDAwMDE6MDA6MDAuMCBvZmZzZXQgMHg0IG1heSBj
b3JydXB0IGFkamFjZW50IFJXMUMgYml0cw0KWyAgIDEyLjMyNzgzNl0gYnJjbWZtYWMgMDAw
MTowMTowMC4wOiBlbmFibGluZyBkZXZpY2UgKDAxNDAgLT4gMDE0MikNClsgICAxMi4zMzM5
NThdIHBjaV9idXMgMDAwMTowMTogMi1ieXRlIGNvbmZpZyB3cml0ZSB0byAwMDAxOjAxOjAw
LjAgb2Zmc2V0IDB4NCBtYXkgY29ycnVwdCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAxMi4z
NDM2NTddIHBjaV9idXMgMDAwMTowMTogMi1ieXRlIGNvbmZpZyB3cml0ZSB0byAwMDAxOjAx
OjAwLjAgb2Zmc2V0IDB4NCBtYXkgY29ycnVwdCBhZGphY2VudCBSVzFDIGJpdHMNClsgICAx
Mi40Nzk2MzRdIGJyY21mbWFjOiBicmNtZl9md19hbGxvY19yZXF1ZXN0OiB1c2luZyBicmNt
L2JyY21mbWFjNDM2NmMtcGNpZSBmb3IgY2hpcCBCQ000MzY2NC80DQpbICAgMTIuNDkzMTY5
XSBicmNtZm1hYyAwMDAxOjAxOjAwLjA6IERpcmVjdCBmaXJtd2FyZSBsb2FkIGZvciBicmNt
L2JyY21mbWFjNDM2NmMtcGNpZS5hc3VzLHJ0LWFjODh1LnR4dCBmYWlsZWQgd2l0aCBlcnJv
ciAtMg0KWyAgIDEyLjUwNDM3Ml0gYnJjbWZtYWMgMDAwMTowMTowMC4wOiBEaXJlY3QgZmly
bXdhcmUgbG9hZCBmb3IgYnJjbS9icmNtZm1hYzQzNjZjLXBjaWUudHh0IGZhaWxlZCB3aXRo
IGVycm9yIC0yDQpbICAgMTIuODIyMDM0XSBicmNtZm1hYzogYnJjbWZfZndfYWxsb2NfcmVx
dWVzdDogdXNpbmcgYnJjbS9icmNtZm1hYzQzNjZjLXBjaWUgZm9yIGNoaXAgQkNNNDM2NjQv
NA0KWyAgIDEyLjgzMDg0MF0gYnJjbWZtYWM6IGJyY21mX2NfcHJvY2Vzc19jbG1fYmxvYjog
bm8gY2xtX2Jsb2IgYXZhaWxhYmxlIChlcnI9LTIpLCBkZXZpY2UgbWF5IGhhdmUgbGltaXRl
ZCBjaGFubmVscyBhdmFpbGFibGUNClsgICAxMi44NDIxMTldIGJyY21mbWFjOiBicmNtZl9j
X3ByZWluaXRfZGNtZHM6IEZpcm13YXJlOiBCQ000MzY2NC80IHdsMDogTm92ICA1IDIwMTgg
MDM6MTk6NTYgdmVyc2lvbiAxMC4yOC4yIChyNzY5MTE1KSBGV0lEIDAxLWQyY2JiOGZkDQpb
ICAgMTIuODczMjg4XSBrbW9kbG9hZGVyOiBkb25lIGxvYWRpbmcga2VybmVsIG1vZHVsZXMg
ZnJvbSAvZXRjL21vZHVsZXMuZC8qDQpbICAgMTcuNjg3NzEzXSBiZ21hY19iY21hIGJjbWEw
OjQgZXRoMTogTGluayBpcyBVcCAtIDFHYnBzL0Z1bGwgLSBmbG93IGNvbnRyb2wgb2ZmDQpb
ICAgMTcuNjk3MzAzXSBiNTMtc3JhYi1zd2l0Y2ggMTgwMDcwMDAuZXRoZXJuZXQtc3dpdGNo
IGxhbjE6IGNvbmZpZ3VyaW5nIGZvciBwaHkvZ21paSBsaW5rIG1vZGUNClsgICAxNy43MDg3
NjldIDgwMjFxOiBhZGRpbmcgVkxBTiAwIHRvIEhXIGZpbHRlciBvbiBkZXZpY2UgbGFuMQ0K
WyAgIDE3Ljc2OTY0MV0gYnItbGFuOiBwb3J0IDEobGFuMSkgZW50ZXJlZCBibG9ja2luZyBz
dGF0ZQ0KWyAgIDE3Ljc3NDg4Nl0gYnItbGFuOiBwb3J0IDEobGFuMSkgZW50ZXJlZCBkaXNh
YmxlZCBzdGF0ZQ0KWyAgIDE3Ljc4MDQ3OF0gZGV2aWNlIGxhbjEgZW50ZXJlZCBwcm9taXNj
dW91cyBtb2RlDQpbICAgMTcuNzg1MTI5XSBkZXZpY2UgZXRoMSBlbnRlcmVkIHByb21pc2N1
b3VzIG1vZGUNClsgICAxNy44ODExNTFdIElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0Up
OiBldGgxOiBsaW5rIGJlY29tZXMgcmVhZHkNClsgICAxNy45MTcxNzRdIGI1My1zcmFiLXN3
aXRjaCAxODAwNzAwMC5ldGhlcm5ldC1zd2l0Y2ggbGFuMjogY29uZmlndXJpbmcgZm9yIHBo
eS9nbWlpIGxpbmsgbW9kZQ0KWyAgIDE3LjkzMzEwOF0gODAyMXE6IGFkZGluZyBWTEFOIDAg
dG8gSFcgZmlsdGVyIG9uIGRldmljZSBsYW4yDQpbICAgMTcuOTg5NzcwXSBici1sYW46IHBv
cnQgMihsYW4yKSBlbnRlcmVkIGJsb2NraW5nIHN0YXRlDQpbICAgMTcuOTk1MDc0XSBici1s
YW46IHBvcnQgMihsYW4yKSBlbnRlcmVkIGRpc2FibGVkIHN0YXRlDQpbICAgMTguMDAwNzEx
XSBkZXZpY2UgbGFuMiBlbnRlcmVkIHByb21pc2N1b3VzIG1vZGUNClsgICAxOC4wOTE4NzFd
IGI1My1zcmFiLXN3aXRjaCAxODAwNzAwMC5ldGhlcm5ldC1zd2l0Y2ggbGFuMzogY29uZmln
dXJpbmcgZm9yIHBoeS9nbWlpIGxpbmsgbW9kZQ0KWyAgIDE4LjEwMTI1M10gODAyMXE6IGFk
ZGluZyBWTEFOIDAgdG8gSFcgZmlsdGVyIG9uIGRldmljZSBsYW4zDQpbICAgMTguMTg5Mzgz
XSBici1sYW46IHBvcnQgMyhsYW4zKSBlbnRlcmVkIGJsb2NraW5nIHN0YXRlDQpbICAgMTgu
MTk0NjI3XSBici1sYW46IHBvcnQgMyhsYW4zKSBlbnRlcmVkIGRpc2FibGVkIHN0YXRlDQpb
ICAgMTguMjAwMTg1XSBkZXZpY2UgbGFuMyBlbnRlcmVkIHByb21pc2N1b3VzIG1vZGUNClsg
ICAxOC4yOTE3NDhdIGI1My1zcmFiLXN3aXRjaCAxODAwNzAwMC5ldGhlcm5ldC1zd2l0Y2gg
bGFuNDogY29uZmlndXJpbmcgZm9yIHBoeS9nbWlpIGxpbmsgbW9kZQ0KWyAgIDE4LjMwMDU5
MF0gODAyMXE6IGFkZGluZyBWTEFOIDAgdG8gSFcgZmlsdGVyIG9uIGRldmljZSBsYW40DQpb
ICAgMTguMzg5MzAxXSBici1sYW46IHBvcnQgNChsYW40KSBlbnRlcmVkIGJsb2NraW5nIHN0
YXRlDQpbICAgMTguMzk0NTg4XSBici1sYW46IHBvcnQgNChsYW40KSBlbnRlcmVkIGRpc2Fi
bGVkIHN0YXRlDQpbICAgMTguNDAwMzExXSBkZXZpY2UgbGFuNCBlbnRlcmVkIHByb21pc2N1
b3VzIG1vZGUNClsgICAxOC40OTE4MjVdIGI1My1zcmFiLXN3aXRjaCAxODAwNzAwMC5ldGhl
cm5ldC1zd2l0Y2ggZXh0c3c6IGNvbmZpZ3VyaW5nIGZvciBmaXhlZC8gbGluayBtb2RlDQpb
ICAgMTguNTAwNDU4XSA4MDIxcTogYWRkaW5nIFZMQU4gMCB0byBIVyBmaWx0ZXIgb24gZGV2
aWNlIGV4dHN3DQpbICAgMTguNTA2Mzc3XSBiNTMtc3JhYi1zd2l0Y2ggMTgwMDcwMDAuZXRo
ZXJuZXQtc3dpdGNoIGV4dHN3OiBMaW5rIGlzIFVwIC0gMUdicHMvRnVsbCAtIGZsb3cgY29u
dHJvbCBvZmYNClsgICAxOC41OTk0NTFdIGJyLWxhbjogcG9ydCA1KGV4dHN3KSBlbnRlcmVk
IGJsb2NraW5nIHN0YXRlDQpbICAgMTguNjA0Nzg2XSBici1sYW46IHBvcnQgNShleHRzdykg
ZW50ZXJlZCBkaXNhYmxlZCBzdGF0ZQ0KWyAgIDE4LjYxMDUzOV0gZGV2aWNlIGV4dHN3IGVu
dGVyZWQgcHJvbWlzY3VvdXMgbW9kZQ0KWyAgIDE4LjY5OTI0N10gYnItbGFuOiBwb3J0IDUo
ZXh0c3cpIGVudGVyZWQgYmxvY2tpbmcgc3RhdGUNClsgICAxOC43MDQ1NzldIGJyLWxhbjog
cG9ydCA1KGV4dHN3KSBlbnRlcmVkIGZvcndhcmRpbmcgc3RhdGUNClsgICAxOC43MTAxOThd
IElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0UpOiBici1sYW46IGxpbmsgYmVjb21lcyBy
ZWFkeQ0KWyAgIDE4Ljc0NTA3M10gYjUzLXNyYWItc3dpdGNoIDE4MDA3MDAwLmV0aGVybmV0
LXN3aXRjaCB3YW46IGNvbmZpZ3VyaW5nIGZvciBwaHkvZ21paSBsaW5rIG1vZGUNClsgICAx
OC43NTM4NDVdIDgwMjFxOiBhZGRpbmcgVkxBTiAwIHRvIEhXIGZpbHRlciBvbiBkZXZpY2Ug
d2FuDQpbICAgMjAuODQxMzQwXSBiNTMtc3JhYi1zd2l0Y2ggMTgwMDcwMDAuZXRoZXJuZXQt
c3dpdGNoIGxhbjE6IExpbmsgaXMgVXAgLSAxR2Jwcy9GdWxsIC0gZmxvdyBjb250cm9sIHJ4
L3R4DQpbICAgMjAuODUwODEzXSBici1sYW46IHBvcnQgMShsYW4xKSBlbnRlcmVkIGJsb2Nr
aW5nIHN0YXRlDQpbICAgMjAuODU2MDUwXSBici1sYW46IHBvcnQgMShsYW4xKSBlbnRlcmVk
IGZvcndhcmRpbmcgc3RhdGU=
--------------D63E4CE5238C2F768CF825B2--
