Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C6AB69D2C5
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 19:34:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231872AbjBTSd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 13:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBTSd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 13:33:58 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B21E01ADD6
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 10:33:56 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id s22so2671258lfi.9
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 10:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uARU6d2UYgKWA1MDEd1rDVVcVD9BDqu4b2PSDXjGykM=;
        b=VXZ97HBCOdJY5oRhjuAg87/bVGdJ5wGEDzhNUKGbaYW7kGlw9DdEpldwjvA+taxZw/
         cghNLcGvpGz8DyF6AXojjikLk2J1/PVdizpCCSOoKp86OaMhS1qfedY/3jM2Qfkp6uiZ
         tnAL778H7BtlIqNOz/VPp8b4PZCntk6ZZ2frmQ81bWY2zX/h6bTUqFv2Ko0OR1biWsng
         igcr4+mkfZ/eYmsqxK67JcmWzqENpo6XBP5fqU2OFBPGccQe0CN1kshLVRK64yXJRiop
         j2L17eKS8BZWv6DQceH7icVfgGB2C70l+6T+x1muXEp6bKX19UOzljudPnwIwTadLMJ+
         eF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uARU6d2UYgKWA1MDEd1rDVVcVD9BDqu4b2PSDXjGykM=;
        b=Y4dOahMoyr86PeLulRYFAB+EQzkM9pwgEMKPzRXoHooQroYdgftWQk/DBz0VygKGyP
         aYo8PbPxsDzICdF93NFRzuWs/n4jLlDtJZL0Bv9L74wtrJfJREFzBuePtCWEIygt1WxO
         2ilgu7OFE9xHpaCAJA0SFa4aMqlINIqIny6u4xYA0hBnLCjligDwNIslCAggSDe8aJWg
         x3eV9VIm+oBE7WycRnGV9ve1Yn0lBT7CNrT92KPLsZqK8+DlVUI7FR9LR8cXMYPxJ9EO
         8XMbbjXUHdpThVH3y4a9rM4D45oDtCE5u+HbBdj+fa0fVB9xcDhxUzbI6lg+YMIE7ynF
         MqRg==
X-Gm-Message-State: AO0yUKU1MDY/9WkIfuAJmzkXAuXAKIBopyBZBfq4pgWJYLVbcFhnmGI1
        XSXvBgDiMOrh9BgrC2TSTP8=
X-Google-Smtp-Source: AK7set96PCVVkHC4UgVSrKzk/3BUIpcUBl9AiGrw0hcuPDkI+a4mn4fdBfhH9mXlevIKFnPNoz4I7g==
X-Received: by 2002:a05:6512:21d:b0:4cc:85e5:2f68 with SMTP id a29-20020a056512021d00b004cc85e52f68mr591526lfo.2.1676918034678;
        Mon, 20 Feb 2023 10:33:54 -0800 (PST)
Received: from smtpclient.apple (84-10-103-47.static.chello.pl. [84.10.103.47])
        by smtp.gmail.com with ESMTPSA id p6-20020ac246c6000000b004d57ca1c96csm1593262lfo.172.2023.02.20.10.33.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2023 10:33:54 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.14\))
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
Date:   Mon, 20 Feb 2023 19:33:52 +0100
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        sebastian.reichel@collabora.com, heiko@sntech.de
Content-Transfer-Encoding: quoted-printable
Message-Id: <66CA7D39-F7E0-428F-966A-D99768CD7A16@gmail.com>
References: <cover.1675498628.git.wqu@suse.com>
To:     Qu Wenruo <wqu@suse.com>
X-Mailer: Apple Mail (2.3654.120.0.1.14)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com> w dniu =
04.02.2023, o godz. 09:47:
>=20
> This series is based on the existing upstream work from Sebastian
> Reichel:
> =
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=3D=
rk3588
>=20
> And I'm a completely newbie to arm64 world, thus if there is something
> wrong, feel free to point out and I'm pretty happy to learn from the
> failure.
>=20
> [BACKGROUND]
> RK3588S and RK3588 have PCIE supports, it's done by the following 3
> controllers:
>=20
> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
>  Thes two are all connected to a naneng combo phy each, normally =
shared
>  with SATA or USB.
>=20
> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
>  This one is also connected to a naneng combo phy, normally shared
>  with SATA or USB.
>=20
> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
>=20
> And unlike other boards, ROCK5B is utilizing PCIE extensively, its
> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the PCIE3.0x4
> lanes.
>=20
> [WORKING]
> Currently the series is able to bring up the PCIE3.0x4 lanes and
> properly boot from an NVME at that M.2 slot of Rock5B boards.
>=20
> [NOT WORKING]
> All PCIE2.0 lanes connected to naneng combo phy are not working.
> I tried forward porting the extra handling from downstream, but it =
only
> results hanging at probing (causing RCU stall).
>=20
> [EXTRA WANRING]
> - PCI MSI initialization warning
>  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 =
pci_msi_setup_msi_irqs+0x38/0x4c
>=20
>  This seems to be caused by the fact that we are still using legcacy
>  msi irqs?
>=20
>  I checked up the gic and its dts, can not figure out why (all pretty
>  the same just like rk3399 and rk3568).
>  Any help would be appreciated.
>=20
> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus =
00-0f] (conflicts with (null) [bus 00-0f])
>  The vendoer kernel also has this problem, but my RK3399 board with
>  upstream kernel didn't trigger this at all, but something else like:
>=20
>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), =
reconfiguring
>=20
>  Then:
>=20
>    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
>=20
>  Not sure if it's something missing or can be just ignored.
>=20
> [PCI DMESG]
> With this patchset, the PCI initialization and nvme would look like =
this:
>=20
> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge =
/pcie@fe150000 ranges:
> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO =
0x00f0100000..0x00f01fffff -> 0x00f0100000
> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM =
0x00f0200000..0x00f0ffffff -> 0x00f0200000
> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM =
0x0900000000..0x093fffffff -> 0x0900000000
> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, 8 =
ib, align 64K, limit 8G
> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus =
0000:00
> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
> [    0.362236] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] =
(bus address [0xf0100000-0xf01fffff])
> [    0.363113] pci_bus 0000:00: root bus resource [mem =
0xf0200000-0xf0ffffff]
> [    0.363744] pci_bus 0000:00: root bus resource [mem =
0x900000000-0x93fffffff pref]
> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffffff]
> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffffff]
> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff =
pref]
> [    0.366801] pci 0000:00:00.0: supports D1 D2
> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] =
under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x0000ffff =
64bit]
> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0001ffff =
pref]
> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size =
0x40000000]
> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x40000000]
> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size =
0x40000000]
> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem size =
0x40000000]
> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem =
0xf0200000-0xf02fffff]
> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem =
0xf0300000-0xf030ffff pref]
> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem =
0xf0200000-0xf021ffff pref]
> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem =
0xf0220000-0xf022ffff 64bit]
> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> [    0.377762] pci 0000:00:00.0:   bridge window [mem =
0xf0200000-0xf02fffff]
> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
> [    0.625353] nvme nvme0: pci function 0000:01:00.0
> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
> [    0.820678]  nvme0n1: p1 p2
>=20
>=20

(resend as plain TXT. Sorry for previous RTF!)

Qu, all

I=E2=80=99m playing with your work on my rock5b as I want to have =
working Eth on rock5b.

My code is from =
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=3D=
rk3588 + your=E2=80=99s PCIE3 patches.=20

SBC boots from sd card, I see PCIE related logs in dmesg. but no rtl8125 =
is detected.
PCIE logs are like this:

    8.207810] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@fe150000 =
ranges:
[    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges =
property...
[    8.209089] rockchip-dw-pcie fe150000.pcie:       IO =
0x00f0100000..0x00f01fffff -> 0x00f0100000
[    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM =
0x00f0200000..0x00f0ffffff -> 0x00f0200000
[    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM =
0x0900000000..0x093fffffff -> 0x0900000000
[    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, 8 =
ib, align 64K, limit 8G
[    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came up
[    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus =
0000:00
[    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
[    9.326266] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] =
(bus address [0xf0100000-0xf01fffff])
[    9.327097] pci_bus 0000:00: root bus resource [mem =
0xf0200000-0xf0ffffff]
[    9.327713] pci_bus 0000:00: root bus resource [mem =
0x900000000-0x93fffffff pref]
[    9.328364] pci_bus 0000:00: scanning bus
[    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
[    9.329258] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fffffff]
[    9.329807] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fffffff]
[    9.330354] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff =
pref]
[    9.330984] pci 0000:00:00.0: supports D1 D2
[    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    9.331858] pci 0000:00:00.0: PME# disabled
[    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
[    9.333735] pci_bus 0000:00: fixups for bus
[    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, =
pass 0
[    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] =
under [bus 00-0f] (conflicts with (null) [bus 00-0f])
[    9.335668] pci_bus 0000:01: scanning bus
[    9.336052] pci_bus 0000:01: fixups for bus
[    9.336416] pci_bus 0000:01: bus scan returning with max=3D01
[    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, =
pass 1
[    9.337503] pci_bus 0000:00: bus scan returning with max=3Dff
[    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size =
0x40000000]
[    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x40000000]
[    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size =
0x40000000]
[    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem size =
0x40000000]
[    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem =
0xf0200000-0xf020ffff pref]
[    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]

and nothing more :-(

Are you progressing maybe with pcie on rock5b?

