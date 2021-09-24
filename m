Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA750417D18
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 23:44:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348048AbhIXVqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 17:46:17 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17454 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348569AbhIXVqL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 17:46:11 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1632519853; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=g6Pk+mLZ+Hk48IwX4FdZc68yxHBUPsR4Vnr9YFJfy2och6pxFgUGiF1dZJmM+8go8lziOyTVt8FBmJ1qpdzslyk9RWoeUugRW9IPkt1n5HFUI8J/pbj93x5fXWBM0SAvE9LvdR2Yv/SSGkrFW1XYXpTHOOa+wPVvi4MCZ5BPISQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1632519853; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=fwm3BiQGjEUbCDITnzJmHZFcgXcpPQZO/0aZxcyTLOE=; 
        b=WnBTC2YQ2DcyvXHQ8zL//IjuWTpunQGLEdkpiTs8icd9sjajpJe1wdJLvNW7rcVbxC++cz8q+4fXeJRUm+00lQrGMSe4wvThvg7OY8ABlevNZu50H8wt4dKRMUVWYQZGF0xH4mW1djNuEVymFLZNZGC0hSHwnelHCDINtuWxWzQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1632519853;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding;
        bh=fwm3BiQGjEUbCDITnzJmHZFcgXcpPQZO/0aZxcyTLOE=;
        b=eSi4+vUIErQG5jSR+NPrN5DOS9KcsgAlnzZPYNryLVVp0I/UtRgVODFEup5tSzQa
        31OB8ZNAmTgX1/JuM2Bqtj4Xp3qnakA6p9D9ciW8by8jzoVX78+KUmmRy+CLwiv7qMa
        oIX25B5AuSdRmqYEdb8EymnvIsdME7x5Z7HksasA=
Received: from [10.10.10.216] (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1632519850838164.7657285152792; Fri, 24 Sep 2021 14:44:10 -0700 (PDT)
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
 <6b2aed0e-8c03-ce15-e33a-5d1d15d1b9a6@arinc9.com>
 <90eac7d8-c0b6-e8f2-a7b5-9c959b43e431@gmail.com>
From:   =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Message-ID: <104c2482-e638-ece0-96d6-2669b8eb8a2f@arinc9.com>
Date:   Sat, 25 Sep 2021 00:44:07 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <90eac7d8-c0b6-e8f2-a7b5-9c959b43e431@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2021 00:20, Florian Fainelli wrote:
> On 9/24/21 2:02 PM, Arınç ÜNAL wrote:
>> Quoting Documentation/devicetree/bindings/net/dsa/realtek-smi.txt for
>> further reference.
>>
>>> Realtek SMI-based Switches
>>> ==========================
>>>
>>> The SMI "Simple Management Interface" is a two-wire protocol using
>>> bit-banged GPIO that while it reuses the MDIO lines MCK and MDIO does
>>> not use the MDIO protocol. This binding defines how to specify the
>>> SMI-based Realtek devices.
> 
> Ah this is the key here, using the MDIO controller won't work sorry
> about misleading you. I suppose you will have to go back to the previous
> Device Tree representation you had, but change the dsa,member property
> and then you should be in business baring additional bugs/features.
> 

All good. After fixing "dsa,member" on the original specification, the 
log slightly changed. I'm going to see if I can switch to the net-next 
kernel on OpenWrt to test the driver further. Something might be wrong 
with my backport.

[    1.377530] realtek-smi switch@1: failed to get RESET GPIO
---
[    2.759267] realtek-smi switch@1: deasserted RESET
[    2.764927] realtek-smi switch@1: found an RTL8365MB-VC switch 
(ver=0x0040)
[    2.771956] realtek-smi switch@1: unable to register switch ret = -517
---
[    3.149262] realtek-smi switch@1: deasserted RESET
[    3.154906] realtek-smi switch@1: found an RTL8365MB-VC switch 
(ver=0x0040)
[    3.287052] realtek-smi switch@1: failed to get parent irq: -22
[    3.293060] realtek-smi switch@1: no interrupt support
[    3.298211] realtek-smi switch@1: no MDIO bus node
[    3.303025] realtek-smi switch@1: could not set up MDIO bus
[    3.308648] realtek-smi switch@1: unable to register switch ret = -19
