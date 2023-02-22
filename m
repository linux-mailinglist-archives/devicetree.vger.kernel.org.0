Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A86669EC57
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 02:25:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjBVBZd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 20:25:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbjBVBZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 20:25:32 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BF952BF01
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 17:25:30 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id z8so5985420wrm.8
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 17:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4Nu6NV3N/5hn2bG638VGfrUOjKmKLRT8XIrs3sQmgw=;
        b=HcKNs6QTueeBVO/iM7CRq2Ft54DbDGs7jwaJjtWTiay+5xDDvUQuoJjxrUQMcElwyM
         iUGmVhGE5IhUI8Ba7Uy1N/AjJ33iXB0iiAFEtwj82e8cmwjw60/DNNSfg9Cwteq7sgOq
         7zGVAqhYibPgUBiARt9B1069cut55Qselj59zFd4lDO311gWQ5kv8pC4XIjT7jjuDDPx
         Sqgd5blylWtfTRzoKm9VuW1tup6fcLLLjjWLL1rVKmX7xQxUIcKXkGpUbdGTflBkuiy+
         dtNoH/uuWmfu7t41lg2PWEp5W8b3FN9WNpj/Wx2zEdWlW5N1s6d81h/mmeXL/GdkA0Rc
         njsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R4Nu6NV3N/5hn2bG638VGfrUOjKmKLRT8XIrs3sQmgw=;
        b=6i57pVMt/WkRE7HwGY0Y6KKo7yoygc4fARdzue6Z/aCtUjyfPmlDmsLhtkJ70f2xZT
         /rS1u/iymA+VFdMHRYhIFGm0L0pCX+O4Wj1KIRIWr26a8wTF4v1Yc7dcQwT+4RWU4BtI
         +maxP/s8C9M/J2h/fStWbp82BcCPwvZ9MQJb8ruBkEsU74dUgiLpveyz0HxaUHtho/db
         LOwd9ZZcQBBsZh4aF7pDMqnAmG2t5u3VQr63MeDFbgTIk2lB97zUY3h5FHxURB5WIvHv
         C2lvYVhvCEAtQFrgtY5Mv4yufNYCot7CDExPZE8gLLdURvKAGI8STzPpkSIxAOddZlX0
         GY+g==
X-Gm-Message-State: AO0yUKWd7JyQxvSWFDqcerhM2apTvk775Ao60ILemFb5PCcVy7mMErTC
        nPUWHrI1xpPWdUtD0VbKMKK8fqvq3p9BqxWqvo4=
X-Google-Smtp-Source: AK7set+tL+A0SE5CMcOcSeJpAZamryGwrLi4u0Iqv5wcah9PmqJmff+cNriZUHXe5hpXDqtiW0zF8Iy9vXmhQaI3sZU=
X-Received: by 2002:a5d:4fc8:0:b0:2c5:6459:4ebd with SMTP id
 h8-20020a5d4fc8000000b002c564594ebdmr58525wrw.46.1677029128443; Tue, 21 Feb
 2023 17:25:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1675498628.git.wqu@suse.com> <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com> <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
 <CAMdYzYovDsiw5zwMvPbLaVcfpryX6K7r2zuVUVkAtYxiwzKGUQ@mail.gmail.com> <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
In-Reply-To: <20230221214517.5rjtwpftcj5dugdl@mercury.elektranox.org>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Tue, 21 Feb 2023 20:25:15 -0500
Message-ID: <CAMdYzYoWAjRQPCy_cuYH5VpMfnVR2_H+1-MNSKv0w6j-NpbORw@mail.gmail.com>
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        Qu Wenruo <wqu@suse.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        heiko@sntech.de, lucas.tanure@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 21, 2023 at 4:45 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi everyone,
>
> On Tue, Feb 21, 2023 at 01:55:48PM -0500, Peter Geis wrote:
> > On Tue, Feb 21, 2023 at 1:04 PM Piotr Oniszczuk
> > <piotr.oniszczuk@gmail.com> wrote:
> > > > Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com> w dniu =
21.02.2023, o godz. 01:14:
> > > > On 2023/2/21 02:25, Piotr Oniszczuk wrote:
> > > >>> Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com <mailt=
o:wqu@suse.com>> w dniu 04.02.2023, o godz. 09:47:
> > > >>>
> > > >>> This series is based on the existing upstream work from Sebastian
> > > >>> Reichel:
> > > >>> https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.gi=
t/log/?h=3Drk3588 <https://git.kernel.org/pub/scm/linux/kernel/git/sre/linu=
x-misc.git/log/?h=3Drk3588>
> > > >>>
> > > >>> And I'm a completely newbie to arm64 world, thus if there is some=
thing
> > > >>> wrong, feel free to point out and I'm pretty happy to learn from =
the
> > > >>> failure.
> > > >>>
> > > >>> [BACKGROUND]
> > > >>> RK3588S and RK3588 have PCIE supports, it's done by the following=
 3
> > > >>> controllers:
> > > >>>
> > > >>> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
> > > >>> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
> > > >>>  Thes two are all connected to a naneng combo phy each, normally =
shared
> > > >>>  with SATA or USB.
> > > >>>
> > > >>> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
> > > >>>  This one is also connected to a naneng combo phy, normally share=
d
> > > >>>  with SATA or USB.
> > > >>>
> > > >>> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
> > > >>>
> > > >>> And unlike other boards, ROCK5B is utilizing PCIE extensively, it=
s
> > > >>> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
> > > >>> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the PCIE=
3.0x4
> > > >>> lanes.
> > > >>>
> > > >>> [WORKING]
> > > >>> Currently the series is able to bring up the PCIE3.0x4 lanes and
> > > >>> properly boot from an NVME at that M.2 slot of Rock5B boards.
> > > >>>
> > > >>> [NOT WORKING]
> > > >>> All PCIE2.0 lanes connected to naneng combo phy are not working.
> > > >>> I tried forward porting the extra handling from downstream, but i=
t only
> > > >>> results hanging at probing (causing RCU stall).
> > > >>>
> > > >>> [EXTRA WANRING]
> > > >>> - PCI MSI initialization warning
> > > >>>  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 pci_msi_setu=
p_msi_irqs+0x38/0x4c
> > > >>>
> > > >>>  This seems to be caused by the fact that we are still using legc=
acy
> > > >>>  msi irqs?
> > > >>>
> > > >>>  I checked up the gic and its dts, can not figure out why (all pr=
etty
> > > >>>  the same just like rk3399 and rk3568).
> > > >>>  Any help would be appreciated.
> > > >>>
> > > >>> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bu=
s 00-0f] (conflicts with (null) [bus 00-0f])
> > > >>>  The vendoer kernel also has this problem, but my RK3399 board wi=
th
> > > >>>  upstream kernel didn't trigger this at all, but something else l=
ike:
> > > >>>
> > > >>>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), =
reconfiguring
> > > >>>
> > > >>>  Then:
> > > >>>
> > > >>>    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> > > >>>
> > > >>>  Not sure if it's something missing or can be just ignored.
> > > >>>
> > > >>> [PCI DMESG]
> > > >>> With this patchset, the PCI initialization and nvme would look li=
ke this:
> > > >>>
> > > >>> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@=
fe150000 ranges:
> > > >>> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO 0x00f0100=
000..0x00f01fffff -> 0x00f0100000
> > > >>> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM 0x00f0200=
000..0x00f0ffffff -> 0x00f0200000
> > > >>> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM 0x0900000=
000..0x093fffffff -> 0x0900000000
> > > >>> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 =
ob, 8 ib, align 64K, limit 8G
> > > >>> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link=
 up
> > > >>> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to=
 bus 0000:00
> > > >>> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
> > > >>> [    0.362236] pci_bus 0000:00: root bus resource [io  0x0000-0xf=
ffff] (bus address [0xf0100000-0xf01fffff])
> > > >>> [    0.363113] pci_bus 0000:00: root bus resource [mem 0xf0200000=
-0xf0ffffff]
> > > >>> [    0.363744] pci_bus 0000:00: root bus resource [mem 0x90000000=
0-0x93fffffff pref]
> > > >>> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x0604=
00
> > > >>> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3fff=
ffff]
> > > >>> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3fff=
ffff]
> > > >>> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000=
ffff pref]
> > > >>> [    0.366801] pci 0000:00:00.0: supports D1 D2
> > > >>> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > > >>> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-=
ff] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> > > >>> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x0108=
02
> > > >>> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x0000=
ffff 64bit]
> > > >>> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0001=
ffff pref]
> > > >>> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size 0x=
40000000]
> > > >>> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem siz=
e 0x40000000]
> > > >>> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size 0x=
40000000]
> > > >>> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem siz=
e 0x40000000]
> > > >>> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem 0xf0200000=
-0xf02fffff]
> > > >>> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem 0xf0300000-=
0xf030ffff pref]
> > > >>> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem 0xf0200000-=
0xf021ffff pref]
> > > >>> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem 0xf0220000-=
0xf022ffff 64bit]
> > > >>> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > > >>> [    0.377762] pci 0000:00:00.0:   bridge window [mem 0xf0200000-=
0xf02fffff]
> > > >>> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
> > > >>> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
> > > >>> [    0.625353] nvme nvme0: pci function 0000:01:00.0
> > > >>> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
> > > >>> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
> > > >>> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
> > > >>> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
> > > >>> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
> > > >>> [    0.820678]  nvme0n1: p1 p2
> > > >>>
> > > >>>
> > > >> Qu, all
> > > >> I=E2=80=99m playing with your work on my rock5b as I want to have =
working Eth on rock5b.
> > > >> My code is from https://git.kernel.org/pub/scm/linux/kernel/git/sr=
e/linux-misc.git/log/?h=3Drk3588 <https://git.kernel.org/pub/scm/linux/kern=
el/git/sre/linux-misc.git/log/?h=3Drk3588> + your=E2=80=99s PCIE3 patches.
> > > >> SBC boots from sd card, I see PCIE related logs in dmesg. but no r=
tl8125 is detected.
> > > >> PCIE logs are like this:
> > > >>     8.207810] rockchip-dw-pcie fe150000.pcie: host bridge /pcie@fe=
150000 ranges:
> > > >> [    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges prop=
erty...
> > > >> [    8.209089] rockchip-dw-pcie fe150000.pcie:       IO 0x00f01000=
00..0x00f01fffff -> 0x00f0100000
> > > >> [    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM 0x00f02000=
00..0x00f0ffffff -> 0x00f0200000
> > > >> [    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM 0x09000000=
00..0x093fffffff -> 0x0900000000
> > > >> [    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 o=
b, 8 ib, align 64K, limit 8G
> > > >> [    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came=
 up
> > > >> [    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to =
bus 0000:00
> > > >> [    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
> > > >> [    9.326266] pci_bus 0000:00: root bus resource [io  0x0000-0xff=
fff] (bus address [0xf0100000-0xf01fffff])
> > > >> [    9.327097] pci_bus 0000:00: root bus resource [mem 0xf0200000-=
0xf0ffffff]
> > > >> [    9.327713] pci_bus 0000:00: root bus resource [mem 0x900000000=
-0x93fffffff pref]
> > > >> [    9.328364] pci_bus 0000:00: scanning bus
> > > >> [    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x06040=
0
> > > >> [    9.329258] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x3ffff=
fff]
> > > >> [    9.329807] pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x3ffff=
fff]
> > > >> [    9.330354] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000f=
fff pref]
> > > >> [    9.330984] pci 0000:00:00.0: supports D1 D2
> > > >> [    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > > >> [    9.331858] pci 0000:00:00.0: PME# disabled
> > > >> [    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
> > > >> [    9.333735] pci_bus 0000:00: fixups for bus
> > > >> [    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind bridg=
e, pass 0
> > > >> [    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 01-f=
f] under [bus 00-0f] (conflicts with (null) [bus 00-0f])
> > > >> [    9.335668] pci_bus 0000:01: scanning bus
> > > >> [    9.336052] pci_bus 0000:01: fixups for bus
> > > >> [    9.336416] pci_bus 0000:01: bus scan returning with max=3D01
> > > >> [    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind bridg=
e, pass 1
> > > >> [    9.337503] pci_bus 0000:00: bus scan returning with max=3Dff
> > > >> [    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size 0x4=
0000000]
> > > >> [    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem size=
 0x40000000]
> > > >> [    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size 0x4=
0000000]
> > > >> [    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem size=
 0x40000000]
> > > >> [    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem 0xf0200000-0=
xf020ffff pref]
> > > >> [    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > > >> and nothing more :-(
> > > >> Are you progressing maybe with pcie on rock5b?
> > > > fe150000 is the PCIE3.0 controller, on Rock5B, that's the M.2 slot.
> > > >
> > > > But for R8125, it's on a PCIE2.0 controller, which is using naneng =
combo phy.
> > > >
> > > > I'm not able to bring the PCIE2.0 part up yet, it always hangs at P=
CIE2.0 initialization, thus only the PCIE3.0 part is submitted to the list.
> > > >
> > > > Thanks,
> > > > Qu
> > >
> > > Yes. Indeed.
> > > I'm trying to add pci2.0 and it looks i meet the same problem probabl=
y.
> > >
> > > I backported (from well working neggles quartz64pro repo I assume):
> > > https://github.com/neggles/linux-quartz64/commit/2ad84e89fc75b82c7833=
45b72c97f5d7e3d45723
> > > https://github.com/neggles/linux-quartz64/commit/4ac44c2b53758eca671d=
695d19b456d1849d7e14
> > > https://github.com/neggles/linux-quartz64/commit/714c5e01d8f0f73b3a49=
cbdee29e3ffe0f3353dd
> > > https://github.com/neggles/linux-quartz64/commit/64971f9c85f27e29c44b=
31a0c326ea4bb8ec3c56
> > >
> > > then i added rock5b pcie dt enablements (basing on radxa BSP):
> > > https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6=
.2/files/1058-arm64-dts-rockchip-enable-pcie-rock5b.patch
> > >
> > >
> > > this gives me quite clean 6.2 mainline boot log with hang at pcie2 in=
it (pls see below)
> > >
> > > I assume https://github.com/neggles/linux-quartz64/commits/linux-quar=
tz64 repo works well on Quartsz64 board - so I indirectly assume above back=
ports should give us working pice2.0.
> > >
> > > It fails on rock5b - so I conclude: issue/error is on my side and is =
related to my rock5b specifics.
> > > Unfortunately I don=E2=80=99t owe Quartz64 board so can't verify corr=
ectness of my backports by testing on Quartz64pro.
> > >
> > > I=E2=80=99m curious about opinion of smarter than me guys=E2=80=A6
> >
> > If the phy is misconfigured, not powered, or the clocks aren't going
> > active, you'll hang when the controller tries to touch it. Unless
> > someone has completed the combophy rk3588 bits the driver is not
> > functional yet for rk3588.
> >
> > Looking at the current 6.2 release, I only see the rk3568 compatible,
> > so you'll need to add support for rk3588 before it will work.
> >
> > Very Respectfully,
> > Peter Geis
>
> Sorry for being late to the game. Life is busy right now :)
>
> I haven't looked into PCIe myself so far, but some of my colleagues
> are looking into native network support on Rock 5B (and thus PCIe2
> controller).
>
> Apart from the obvious (missing rk3588 support in the combophy driver),
> the clocks will need some work. The clock tree implementation I upstreame=
d
> is different from the downstream implementation. Downstream has some
> clocks that have two parent clocks using a hacked implementation
> that's obviously not upstreamable as is. The upstream implementation
> currently only describes the first parent. More details are in the
> following comment:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/clk/rockchip/clk-rk3588.c#n16
>
> Back than I wrote that I do not understand the exact need (the TRM
> does not describe the clock tree unfortuantely), I found this
> explanation:
>
> https://lore.kernel.org/dri-devel/20220309094139198367142@rock-chips.com/
>
> To get the advanced blocks properly running upstream this needs a
> solution for this. Note that trying to access registers that are
> not clocked properly will result in a hang (as Peter already wrote).

TLDR: There are now hardware blocks called a "Native Interface Unit"
(NIU) that gate the clocks to devices behind them. Essentially it
makes certain device clocks dependent on multiple parents being active
at the same time, which the current clock structure does not support.
It was decided that until the clock structure is updated to support
this, the NIU gate clocks would be marked critical and left always on.
Better to burn a miniscule more power than risk locking the board up.

Though the issue here is much simpler than that, the controller simply
can't operate without a functional phy attached to it. They are
physically tied together and it's the controller < - > phy link that
doesn't function without the phy being configured. The combophy config
for rk3588 isn't significantly more complicated than rk356x, but one
can't mainline code that can't be tested and rk3588 wasn't available
at that time.

>
> Apart from that the power-domain controller might need some of the
> extra bits downstream has.

If PCIe 3 works, then this likely won't affect PCIe 2, though it
limits our ability to implement runtime power management.

>
> Last but not least the GIC controller is handled differently in
> downstream. For that following the workaround that has been used for
> rk356x should also work for rk3588.

The hack for the GIC controller that I maintain for rk356x is not
upstreamable. For the ITS to be supported in mainline we still require
an official errata from Rockchip documenting the issues here. The
mbi-alias method, while it works for simple configs, isn't scalable.

>
> TLDR: This is not trivial. It's really unfortunate, that the board
> is not just using the native ethernet :(
>
> P.S.: We try to keep a rk3588 / Rock 5 status matrix maintained here:
>
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/notes-for-=
rockchip-3588/-/blob/main/mainline-status.md
>
> Greetings,
>
> -- Sebastian
