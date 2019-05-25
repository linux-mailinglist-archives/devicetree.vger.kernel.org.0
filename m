Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6072C2A3ED
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 13:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbfEYLHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 07:07:12 -0400
Received: from mout.gmx.net ([212.227.17.21]:35881 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726484AbfEYLHM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 25 May 2019 07:07:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1558782405;
        bh=kNx2I0BquY/XNnAelbxVhBdjcdFjqoxAitfuQ0EmmdE=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=NHwZXV9oU8hKMZ2J4APmc4GYG8PSeEaQpu4z4eUGzdGwQn3xv6iD183ueMI5oqigT
         L31x8zgg3e0tQ/dRY7a9eJ/wGW6NuOHWPDdbbWShC6L8L8fh2z+Jk+on23yn+0kXmX
         kpL3NxiQYQI41bclDySm3X4a/Itz+ha73HyGkIE8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mn2WF-1gnyd81FlH-00kAWJ; Sat, 25
 May 2019 13:06:45 +0200
Subject: Re: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
To:     Lukas Wunner <lukas@wunner.de>, Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Martin Sperl <kernel@martin.sperl.org>,
        Noralf Tronnes <noralf@tronnes.org>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
References: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
From:   Stefan Wahren <wahrenst@gmx.net>
Message-ID: <37bdc9e0-3f38-2ec4-4084-9cf46798589e@gmx.net>
Date:   Sat, 25 May 2019 13:06:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Provags-ID: V03:K1:OX5DXBAJFWGin7Kg8SEWDOAjAjUeeUcbgvrpoPvFmYhZBaN9vql
 hnLxnDcDVAp/ZAQRq0CXIlzKN0qJRaJOfPLoASMvOKIP89GLRLeycy5+RhtFmyXljHehC8Z
 erMsSB1UVIaxBouHaruCuMocyvj64rbxhwukjAF5eEqftiIb5AN1JdtvieixAZTAoaZ6BPO
 NWKM+e74tCaUZYtpSBcKg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:krupXnsuXfM=:gBvNz87b0EzbJLL8HQRDaq
 kxg+OGsvq3FNV1fjs0BO7uKzo6EWfy2gK3dVJOWrIdC+cHvDs5R6kGTon4S52bgXEmbLciOgE
 k8XIHBxuspI5XgQqeMUMMa+2PZoueMLnNLzqd9bNyiKSXjMDUguF63/r/OcnSTKm687YW8Pfv
 A9eaRiysKp04OshPXmDF8WWIWmTe/2Kv7qIe3gQMFWaWJFwdH9S3YnrExq2jTHVLtIJKzoWyG
 KCPNBS5YZLHEEJ3Ms2PRFgBGH4cRVjjEAEq/gDIYjlXyZ4eORlp/mJhK5Ck+rIOHfkqD62lgv
 O7oaVcpqTXOdE8QHHtj28efjIqj4kSD+QgQ8W6AP4bdaXDlS2og7lVL3v6VT9MwZqx9YYv8/K
 Z0i8/ySyGewYz7nnJFPcsLNA6pilgLBN/SOMTmvlfkCS+yHrM+e2XmNggi6uUnErmT3+ymFzK
 IvOyhW7n6RLHYkfbT+dYXOkSJVRj0BqZb6o5+AidszelodcNi/8SBX90Vh0sJBJl+EGcc1ijC
 RDLtJlU3rIt0xhDjFXJTszPSMocSlmVvBicGe/8oOqO+fQpEx6QZiWNd3G9DNRtdgzyftHzfs
 NYqeeXMk87BL0BKgDHsPkJCwKqqnN1igTFpF0ZdJD48F7DCrvus1ytLkMnzPNnA6AucbJeQ6w
 GkfGbdetg/p24agRJRHhhTS87YNOvczjZDHOP2SdGMjich8Kl6I0uk8xdnLbE21XHGPfBC/e1
 RBPXb8Ar21cRUYEarrkRiuQfZpFGoDrdmWV4IDiO+RUJB3ZIAiphC5vHF0q2/+1KWlaZPigH6
 tN3746H8zoxXSKThs+j1m3s0Il8w6J9O0ekQVAoxxZTm9JOUZcS/IQLjIYvL9HNmszu2hMXow
 o84kT3dIrVSEnChEacvvzd4G2nordg0nT9yjgL4ZSeNuYbDASnP4vTdDva9f3O69MHAw/aTOs
 wB1x9yQUKz2hX3W7OzuvI09iyTh50EPI6HbGY34hSHyp8bOkyiS08
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 09.05.19 um 19:03 schrieb Lukas Wunner:
> Without this, the driver for the BCM2835 SPI controller uses interrupt
> mode instead of DMA mode, incurring a significant performance penalty.
> The Foundation's device tree has had these attributes for years, but for
> some reason they were never upstreamed.
>
> They were originally contributed by Noralf Tr=C3=B8nnes and Martin Sperl=
:
> https://github.com/raspberrypi/linux/commit/25f3e064afc8
> https://github.com/raspberrypi/linux/commit/e0edb52b47e6
>
> The DREQ numbers 6 and 7 are documented in section 4.2.1.3 of:
> https://www.raspberrypi.org/app/uploads/2012/02/BCM2835-ARM-Peripherals.=
pdf
>
> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Cc: Martin Sperl <kernel@martin.sperl.org>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
Applied to bcm2835-dt-next
