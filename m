Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 27D8BC8E37
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 18:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725999AbfJBQYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 12:24:35 -0400
Received: from mout.gmx.net ([212.227.15.18]:46033 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726152AbfJBQYe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Oct 2019 12:24:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1570033455;
        bh=zNFfnh6MxZPXw2cqe+F9f9PnPp5mbl+vyW2TSVLK3ds=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=ERuGePfNh+2HkBRDzJH1LByjNjiVcNY1YgngNGZQ2L6C4ogtDdAJeiQK2IlozALjd
         SkVgWOCfpYorSceo52Les+3ck5sazXlPtO0l3xuXkFKNtNi2/YkYv2TtfQpwrV8Q2m
         Egg1GB98OV8Q5bljCYLhT1/XItSi12taMdleeMpI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.116]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKbkM-1iYJhT0yQG-00KueI; Wed, 02
 Oct 2019 18:24:15 +0200
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
 <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
From:   Stefan Wahren <wahrenst@gmx.net>
Message-ID: <7d0414bb-fea8-e3e5-8b85-c18615a56c94@gmx.net>
Date:   Wed, 2 Oct 2019 18:24:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Provags-ID: V03:K1:SevsKMCsbxBwBl+6qgDn5oXK75u0GucyPaI2FObppq1RiAsjXMa
 8VtUfoU9zr9uLxZatQHi5Y6+IQBIGENUKy7OlpiXetpMB0l955iG6iEGM/GlJ2bCfS11pyK
 bLX6nuk1ak7J3+xS7twWuS0J4l2i8/q0hE5jg+0IZsg243waNUOI65CaDQSdDtOv8f6W7oz
 fUwzaG0v9EfuAc5jnywUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9KSjGJkHLzg=:LBW9nsllLO0jkY/2H6jhxo
 ebU/o3TO2YcHAfEdu0okYHUYs36tJgwsKFD9EpvM85fBF4Oe6WW8s6NQ7wib+7CfZW35nKSHa
 6ICD6MFpfo53iYnoWzMTqYSd7o8vx6L/b97ktMNlrNASI984GNyoeAuJb5385plIfkTeUjUpA
 Ghs8KFqYuhF5bXtN3yDMq/WMc5Uu8uKYH0KzAMJPVX/Dxa/AVcmgiunOyG1fcyjhkwSdbuqyO
 Q268GxccUPrTGo7iAi1Th7T0LNqC9xqdz0HA+naEtQ9AFLedpZ+qLlTEhB7oI1MVtKgRb+Drk
 W09bCpw+IeY7QjFmUOBIXLKDzWcX30N53svKFFE0Q0ztOdNQxLY3UnQGZCr+vBx+sY7ezktjh
 lOccQvuZzoGz0p1R2ms9LO8T2830OkZEUehsYhASEjWwYyfPFwZDhtd9nf6dwJCi1goWoCnAn
 Kg/dSDHrix+80ZZuntihPRFsKZ5QeqbPi/Y2en6vov1HkVr8riUT3L3Gwbl4bL5NZVA6RA/Nc
 KZGMWBDwEc+mFRIrWZHViecyTiTRwJNpSv36bRkvo2EXKGEpi0czV4xl76E6ODw2mWB44quiA
 /TxJmy/R3327SJR0Nw2XoHxvXJ11nusuvfMDqAXcRbNX/rVBGxxRNwWwRLbw5wjqI7b5g8qei
 FuufpOPvVXbKcOgNZkYiZslHQU8TI0spT2GHjBQp1zjK0NiYgzh0piFKRFm46fleq+Ktqf76d
 JOjzbh82qDm65OJMBdLPCj91gizol3eJc/LfD1rb02xnjD4J1WI8hEfNjsK5tsn/yNX8XvsD+
 OwqQk1uvaNEUfRadBPYbxaE655tqLO6BpHGYfu3lJxllbnbCWkqg1PhgjqMb+kVAuU2nqLKWm
 8i+G/A7grPoJ+A2WKouQ8mk5/BjvG40UCqgyLDPRXPLgbH8M0C+I8ohoJ41OwxSXOhbb38aPC
 8m4mQ5aMRSEuOgb3RdnZeOtGDWwxqgnJwhJjpUOybfW93EXqLhq+mC+B7zEESjRMdKLAvOKyg
 6KfqRFNu2GHeyoqEbP2L/nvMWCvO1q8UE8JOACPOmXyWNrm9uI6hStCRiaWweA4kXDQQYE4mk
 VFaUgka9zBPhEcw6HYwh5eL0K9jXGRZBBl8TyJYdNNmZND8+RWICagcwZ52JKO5bIk+/soUZ0
 6t9Mrycd15YYPRQzjft5psbdcLa/tgAnFEKBNKBJmsHyHkaHuQ37h29eqUbNXRKqAcVUZ65tv
 k9zqAIEiyGyofWbt5fLL8XuaLD7OjItDeVL3ImeQqISpEfhsjxWsQs6i1dCI=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Florian,

Am 28.09.19 um 21:58 schrieb Florian Fainelli:
>
> On 9/28/2019 5:07 AM, Stefan Wahren wrote:
>
>> +	memory@0 {
>> +		device_type =3D "memory";
>> +		reg =3D <0 0 0x00000000>;
>> +	};
>> +
> [snip]
>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/soc/bcm2835-pm.h>
>> +
>> +/ {
>> +	compatible =3D "brcm,bcm2711";
>> +
>> +	#address-cells =3D <2>;
>> +	#size-cells =3D <1>;
> Trying to see if we may need a #size-cells property value of 2 here, for
> the 4GB model, I would assume that we would have to, unless we are fine
> with supporting 4GB - 1byte of DRAM?
I will try unless this requires a lot of adjustments or break the
bootloader.
>
>> +
>> +	interrupt-parent =3D <&gicv2>;
>> +
>> +	soc {
>> +		ranges =3D <0x7e000000  0x0 0xfe000000  0x01800000>,
>> +			 <0x7c000000  0x0 0xfc000000  0x02000000>,
>> +			 <0x40000000  0x0 0xff800000  0x00800000>;
> Might be nice to get some comments about
ranges =3D <0x7e000000=C2=A0 0x0 0xfe000000=C2=A0 0x01800000>,=C2=A0 // Co=
mmon BCM283x
peripherals
=C2=A0=C2=A0=C2=A0 =C2=A0<0x7c000000=C2=A0 0x0 0xfc000000=C2=A0 0x02000000=
>,=C2=A0 // BCM2711-specific
peripherals

=C2=A0=C2=A0=C2=A0 =C2=A0<0x40000000=C2=A0 0x0 0xff800000=C2=A0 0x00800000=
>;=C2=A0 // ARM-local peripherals

I will simply forward the answer from the RPi guys.

Is it what you had in mind? Otherwise please be more specific.

Regards
Stefan

