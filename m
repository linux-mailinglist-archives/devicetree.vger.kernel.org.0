Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ADC669E6C0
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 19:03:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbjBUSDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 13:03:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbjBUSDt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 13:03:49 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5CEFF11
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 10:03:45 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id m7so6768562lfj.8
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 10:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gn379YRQ6R9dZltQf+++nGkQtJz5yejVvBv3zDO3HYE=;
        b=o5xrWyWVILqyKS/6CbX4gqvRJWsusTKVYY2ZBHJ1Hz46ibWcYqY3A8NT5dtbCHC7Bj
         sHcY92AFWJqZ5o2uhwcecfWofOYXO4/eG4K250Slv+UwaQAvDHhnGcBaFFrL5zpp1fVl
         /C48+SsSxOoaFxfjauZ627ITU+KiVzeNqDWiWFgv2CcGses+bKoaualwu5i6Rw/Xt7xu
         bdWojk2BISXuuLK8SQGioKuYQkzduqCMMv+SonLL5G0zCeuIkpedPY3PVKD/tYUpAQD3
         FTcObPpwg3T2rLPuniUX/7CvXhyplzZI3v/PnRiKG3OhONVUh9+XZRHL9kSNSIRzYocn
         cOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gn379YRQ6R9dZltQf+++nGkQtJz5yejVvBv3zDO3HYE=;
        b=jInDAbnT14JAW5Gi7bpHk6Dpfph96QpRXj+w3mEzMP3EgoORe1hHKmTS3+upK8+r4R
         jHolrn2SorFttVW8ZBzx1noY2CKNXkGKRmL3crk+DwMT49H8TSquNWtz5mwxNwsM7DVC
         5qO0LR2dp8LzM21hbzzU6yTg9KSKbUfCslLzvwr0/DjYjwFCUsI9hMv43F8tth1i9L0k
         HVs7pEqOUGJ9DqPUH57FAr4S+LuJpcgRdu3ICT/gdx+cSEa6ALSZgNZSQESwvB/vifJI
         wHzHvg12HLRi6kivT+vrPIlNbzo6inLp7FRGbw7vO5bcrNhsMnng9iz6ltjZwLuSrr9J
         wOPQ==
X-Gm-Message-State: AO0yUKVyDVufXfAvLEX9AIGdibYr7sSPlgy6tnaI7rMxLbi+6AHPJqxm
        2goFOeC59AiyAblalBAQoXCB8MFf+3Y0hQ==
X-Google-Smtp-Source: AK7set+rSbFngILiOd0mC+MunUYe7/xKxRbk5ZfA57OVBqRiPcbRSWKiQpJQLeMXNu1b3NQI9IPJKw==
X-Received: by 2002:ac2:4848:0:b0:4b4:89a9:6bfd with SMTP id 8-20020ac24848000000b004b489a96bfdmr1846970lfy.7.1677002623632;
        Tue, 21 Feb 2023 10:03:43 -0800 (PST)
Received: from smtpclient.apple (84-10-103-47.static.chello.pl. [84.10.103.47])
        by smtp.gmail.com with ESMTPSA id g1-20020a19ac01000000b004db45648d78sm1907640lfc.13.2023.02.21.10.03.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2023 10:03:42 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.14\))
Subject: Re: [PATCH RFC 0/5] arm64: rockchip: enable PCIE3 controller and its
 phy for Rock5B boards
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
Date:   Tue, 21 Feb 2023 19:03:41 +0100
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        sebastian.reichel@collabora.com, heiko@sntech.de
Content-Transfer-Encoding: quoted-printable
Message-Id: <7A70CB52-1892-4455-B419-AD00298DE7B5@gmail.com>
References: <cover.1675498628.git.wqu@suse.com>
 <583D2908-ECED-4226-A6CD-683F0D5BEA71@gmail.com>
 <4b28da3e-9126-8409-dd9c-3899762e28bb@suse.com>
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
21.02.2023, o godz. 01:14:
>=20
>=20
>=20
> On 2023/2/21 02:25, Piotr Oniszczuk wrote:
>>> Wiadomo=C5=9B=C4=87 napisana przez Qu Wenruo <wqu@suse.com =
<mailto:wqu@suse.com>> w dniu 04.02.2023, o godz. 09:47:
>>>=20
>>> This series is based on the existing upstream work from Sebastian
>>> Reichel:
>>> =
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=3D=
rk3588 =
<https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=
=3Drk3588>
>>>=20
>>> And I'm a completely newbie to arm64 world, thus if there is =
something
>>> wrong, feel free to point out and I'm pretty happy to learn from the
>>> failure.
>>>=20
>>> [BACKGROUND]
>>> RK3588S and RK3588 have PCIE supports, it's done by the following 3
>>> controllers:
>>>=20
>>> - PCIE2.0x1 lane @fe180000 (both RK3588S and RK3588)
>>> - PCIE2.0x1 lane @fe190000 (both RK3588S and RK3588)
>>>  Thes two are all connected to a naneng combo phy each, normally =
shared
>>>  with SATA or USB.
>>>=20
>>> - PCIE2.0x1 lane @fe170000 (RK3588 exlusive)
>>>  This one is also connected to a naneng combo phy, normally shared
>>>  with SATA or USB.
>>>=20
>>> - PCIE3.0x4 lanes @fe15000 (RK3588 exclusive)
>>>=20
>>> And unlike other boards, ROCK5B is utilizing PCIE extensively, its
>>> network controller (RTL8125 2.5Gbps Ethernet) is connected to the
>>> PCIE2.0 lane at fe190000, and an M.2 slot is attached to the =
PCIE3.0x4
>>> lanes.
>>>=20
>>> [WORKING]
>>> Currently the series is able to bring up the PCIE3.0x4 lanes and
>>> properly boot from an NVME at that M.2 slot of Rock5B boards.
>>>=20
>>> [NOT WORKING]
>>> All PCIE2.0 lanes connected to naneng combo phy are not working.
>>> I tried forward porting the extra handling from downstream, but it =
only
>>> results hanging at probing (causing RCU stall).
>>>=20
>>> [EXTRA WANRING]
>>> - PCI MSI initialization warning
>>>  WARNING: CPU: 7 PID: 1 at drivers/pci/msi/msi.h:121 =
pci_msi_setup_msi_irqs+0x38/0x4c
>>>=20
>>>  This seems to be caused by the fact that we are still using legcacy
>>>  msi irqs?
>>>=20
>>>  I checked up the gic and its dts, can not figure out why (all =
pretty
>>>  the same just like rk3399 and rk3568).
>>>  Any help would be appreciated.
>>>=20
>>> - pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus =
00-0f] (conflicts with (null) [bus 00-0f])
>>>  The vendoer kernel also has this problem, but my RK3399 board with
>>>  upstream kernel didn't trigger this at all, but something else =
like:
>>>=20
>>>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), =
reconfiguring
>>>=20
>>>  Then:
>>>=20
>>>    pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
>>>=20
>>>  Not sure if it's something missing or can be just ignored.
>>>=20
>>> [PCI DMESG]
>>> With this patchset, the PCI initialization and nvme would look like =
this:
>>>=20
>>> [    0.142984] rockchip-dw-pcie fe150000.pcie: host bridge =
/pcie@fe150000 ranges:
>>> [    0.143653] rockchip-dw-pcie fe150000.pcie:       IO =
0x00f0100000..0x00f01fffff -> 0x00f0100000
>>> [    0.144463] rockchip-dw-pcie fe150000.pcie:      MEM =
0x00f0200000..0x00f0ffffff -> 0x00f0200000
>>> [    0.145261] rockchip-dw-pcie fe150000.pcie:      MEM =
0x0900000000..0x093fffffff -> 0x0900000000
>>> [    0.154022] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, =
8 ib, align 64K, limit 8G
>>> [    0.360415] rockchip-dw-pcie fe150000.pcie: PCIe Gen.3 x4 link up
>>> [    0.361099] rockchip-dw-pcie fe150000.pcie: PCI host bridge to =
bus 0000:00
>>> [    0.361731] pci_bus 0000:00: root bus resource [bus 00-0f]
>>> [    0.362236] pci_bus 0000:00: root bus resource [io  =
0x0000-0xfffff] (bus address [0xf0100000-0xf01fffff])
>>> [    0.363113] pci_bus 0000:00: root bus resource [mem =
0xf0200000-0xf0ffffff]
>>> [    0.363744] pci_bus 0000:00: root bus resource [mem =
0x900000000-0x93fffffff pref]
>>> [    0.364450] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
>>> [    0.365005] pci 0000:00:00.0: reg 0x10: [mem =
0x00000000-0x3fffffff]
>>> [    0.365583] pci 0000:00:00.0: reg 0x14: [mem =
0x00000000-0x3fffffff]
>>> [    0.366159] pci 0000:00:00.0: reg 0x38: [mem =
0x00000000-0x0000ffff pref]
>>> [    0.366801] pci 0000:00:00.0: supports D1 D2
>>> [    0.367193] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>>> [    0.368647] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] =
under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>>> [    0.369681] pci 0000:01:00.0: [1d97:5216] type 00 class 0x010802
>>> [    0.370277] pci 0000:01:00.0: reg 0x10: [mem =
0x00000000-0x0000ffff 64bit]
>>> [    0.370975] pci 0000:01:00.0: reg 0x30: [mem =
0x00000000-0x0001ffff pref]
>>> [    0.372130] pci 0000:00:00.0: BAR 0: no space for [mem size =
0x40000000]
>>> [    0.372742] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x40000000]
>>> [    0.373381] pci 0000:00:00.0: BAR 1: no space for [mem size =
0x40000000]
>>> [    0.373988] pci 0000:00:00.0: BAR 1: failed to assign [mem size =
0x40000000]
>>> [    0.374628] pci 0000:00:00.0: BAR 14: assigned [mem =
0xf0200000-0xf02fffff]
>>> [    0.375259] pci 0000:00:00.0: BAR 6: assigned [mem =
0xf0300000-0xf030ffff pref]
>>> [    0.375923] pci 0000:01:00.0: BAR 6: assigned [mem =
0xf0200000-0xf021ffff pref]
>>> [    0.376590] pci 0000:01:00.0: BAR 0: assigned [mem =
0xf0220000-0xf022ffff 64bit]
>>> [    0.377281] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>>> [    0.377762] pci 0000:00:00.0:   bridge window [mem =
0xf0200000-0xf02fffff]
>>> [    0.426841] pcieport 0000:00:00.0: PME: Signaling with IRQ 33
>>> [    0.427487] pcieport 0000:00:00.0: AER: enabled with IRQ 33
>>> [    0.625353] nvme nvme0: pci function 0000:01:00.0
>>> [    0.625774] nvme 0000:01:00.0: enabling device (0000 -> 0002)
>>> [    0.717069] nvme nvme0: Shutdown timeout set to 8 seconds
>>> [    0.723025] nvme nvme0: allocated 64 MiB host memory buffer.
>>> [    0.816820] nvme nvme0: 1/0/0 default/read/poll queues
>>> [    0.818079] sdhci-pltfm: SDHCI platform and OF driver helper
>>> [    0.820678]  nvme0n1: p1 p2
>>>=20
>>>=20
>> Qu, all
>> I=E2=80=99m playing with your work on my rock5b as I want to have =
working Eth on rock5b.
>> My code is from =
https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=3D=
rk3588 =
<https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-misc.git/log/?h=
=3Drk3588> + your=E2=80=99s PCIE3 patches.
>> SBC boots from sd card, I see PCIE related logs in dmesg. but no =
rtl8125 is detected.
>> PCIE logs are like this:
>>     8.207810] rockchip-dw-pcie fe150000.pcie: host bridge =
/pcie@fe150000 ranges:
>> [    8.208501] rockchip-dw-pcie fe150000.pcie: Parsing ranges =
property...
>> [    8.209089] rockchip-dw-pcie fe150000.pcie:       IO =
0x00f0100000..0x00f01fffff -> 0x00f0100000
>> [    8.209944] rockchip-dw-pcie fe150000.pcie:      MEM =
0x00f0200000..0x00f0ffffff -> 0x00f0200000
>> [    8.210740] rockchip-dw-pcie fe150000.pcie:      MEM =
0x0900000000..0x093fffffff -> 0x0900000000
>> [    8.218918] rockchip-dw-pcie fe150000.pcie: iATU: unroll T, 8 ob, =
8 ib, align 64K, limit 8G
>> [    9.324473] rockchip-dw-pcie fe150000.pcie: Phy link never came up
>> [    9.325186] rockchip-dw-pcie fe150000.pcie: PCI host bridge to bus =
0000:00
>> [    9.325786] pci_bus 0000:00: root bus resource [bus 00-0f]
>> [    9.326266] pci_bus 0000:00: root bus resource [io  =
0x0000-0xfffff] (bus address [0xf0100000-0xf01fffff])
>> [    9.327097] pci_bus 0000:00: root bus resource [mem =
0xf0200000-0xf0ffffff]
>> [    9.327713] pci_bus 0000:00: root bus resource [mem =
0x900000000-0x93fffffff pref]
>> [    9.328364] pci_bus 0000:00: scanning bus
>> [    9.328729] pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400
>> [    9.329258] pci 0000:00:00.0: reg 0x10: [mem =
0x00000000-0x3fffffff]
>> [    9.329807] pci 0000:00:00.0: reg 0x14: [mem =
0x00000000-0x3fffffff]
>> [    9.330354] pci 0000:00:00.0: reg 0x38: [mem 0x00000000-0x0000ffff =
pref]
>> [    9.330984] pci 0000:00:00.0: supports D1 D2
>> [    9.331356] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
>> [    9.331858] pci 0000:00:00.0: PME# disabled
>> [    9.332309] pci 0000:00:00.0: vgaarb: pci_notify
>> [    9.333735] pci_bus 0000:00: fixups for bus
>> [    9.334106] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, =
pass 0
>> [    9.334731] pci_bus 0000:01: busn_res: can not insert [bus 01-ff] =
under [bus 00-0f] (conflicts with (null) [bus 00-0f])
>> [    9.335668] pci_bus 0000:01: scanning bus
>> [    9.336052] pci_bus 0000:01: fixups for bus
>> [    9.336416] pci_bus 0000:01: bus scan returning with max=3D01
>> [    9.336903] pci 0000:00:00.0: scanning [bus 01-ff] behind bridge, =
pass 1
>> [    9.337503] pci_bus 0000:00: bus scan returning with max=3Dff
>> [    9.337994] pci 0000:00:00.0: BAR 0: no space for [mem size =
0x40000000]
>> [    9.338570] pci 0000:00:00.0: BAR 0: failed to assign [mem size =
0x40000000]
>> [    9.339175] pci 0000:00:00.0: BAR 1: no space for [mem size =
0x40000000]
>> [    9.339749] pci 0000:00:00.0: BAR 1: failed to assign [mem size =
0x40000000]
>> [    9.340356] pci 0000:00:00.0: BAR 6: assigned [mem =
0xf0200000-0xf020ffff pref]
>> [    9.340991] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>> and nothing more :-(
>> Are you progressing maybe with pcie on rock5b?
> fe150000 is the PCIE3.0 controller, on Rock5B, that's the M.2 slot.
>=20
> But for R8125, it's on a PCIE2.0 controller, which is using naneng =
combo phy.
>=20
> I'm not able to bring the PCIE2.0 part up yet, it always hangs at =
PCIE2.0 initialization, thus only the PCIE3.0 part is submitted to the =
list.
>=20
> Thanks,
> Qu

Yes. Indeed.
I'm trying to add pci2.0 and it looks i meet the same problem probably.

I backported (from well working neggles quartz64pro repo I assume):
=
https://github.com/neggles/linux-quartz64/commit/2ad84e89fc75b82c783345b72=
c97f5d7e3d45723
=
https://github.com/neggles/linux-quartz64/commit/4ac44c2b53758eca671d695d1=
9b456d1849d7e14
=
https://github.com/neggles/linux-quartz64/commit/714c5e01d8f0f73b3a49cbdee=
29e3ffe0f3353dd
=
https://github.com/neggles/linux-quartz64/commit/64971f9c85f27e29c44b31a0c=
326ea4bb8ec3c56

then i added rock5b pcie dt enablements (basing on radxa BSP):
=
https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-6.2/fi=
les/1058-arm64-dts-rockchip-enable-pcie-rock5b.patch


this gives me quite clean 6.2 mainline boot log with hang at pcie2 init =
(pls see below)

I assume =
https://github.com/neggles/linux-quartz64/commits/linux-quartz64 repo =
works well on Quartsz64 board - so I indirectly assume above backports =
should give us working pice2.0.

It fails on rock5b - so I conclude: issue/error is on my side and is =
related to my rock5b specifics.
Unfortunately I don=E2=80=99t owe Quartz64 board so can't verify =
correctness of my backports by testing on Quartz64pro.

I=E2=80=99m curious about opinion of smarter than me guys=E2=80=A6
 =20



my kernel log:

Starting kernel ...

[    0.000000] efi: UEFI not found.
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000000200000-0x00000000ffffffff]
[    0.000000]   DMA32    empty
[    0.000000]   Normal   [mem 0x0000000100000000-0x00000001ffffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000200000-0x00000000efffffff]
[    0.000000]   node   0: [mem 0x0000000100000000-0x00000001ffffffff]
[    0.000000] Initmem setup node 0 [mem =
0x0000000000200000-0x00000001ffffffff]
[    0.000000] On node 0, zone DMA: 512 pages in unavailable ranges
[    0.000000] cma: Reserved 64 MiB at 0x00000000ec000000
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.2
[    0.000000] percpu: Embedded 29 pages/cpu s80872 r8192 d29720 u118784
[    0.000000] pcpu-alloc: s80872 r8192 d29720 u118784 alloc=3D29*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 [0] 4 [0] 5 [0] 6 [0] =
7=20
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] CPU features: detected: Virtualization Host Extensions
[    0.000000] CPU features: detected: Qualcomm erratum 1009, or ARM =
erratum 1286807, 2441009
[    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or =
1530923
[    0.000000] alternatives: applying boot alternatives
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: =
1999368
[    0.000000] Kernel command line: root=3D/dev/mmcblk1p2 rw rootwait =
earlycon=3Duart8250,mmio32,0xfeb50000 console=3DttyS2,1500000n8 debug =
MM_DEBUG=3D"yes"
[    0.000000] Unknown kernel command line parameters "MM_DEBUG=3Dyes", =
will be passed to user space.
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, =
8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, =
4194304 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] software IO TLB: area num 8.
[    0.000000] software IO TLB: mapped [mem =
0x00000000e8000000-0x00000000ec000000] (64MB)
[    0.000000] Memory: 7803944K/8124416K available (14592K kernel code, =
3524K rwdata, 6420K rodata, 6720K init, 576K bss, 254936K reserved, =
65536K cma-reserved)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-1, MinObjects=3D0, CPUs=3D8, =
Nodes=3D1
[    0.000000] ftrace: allocating 51240 entries in 201 pages
[    0.000000] ftrace: allocated 201 pages with 4 groups
[    0.000000] trace event string verifier disabled
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] .Trampoline variant of Tasks RCU enabled.
[    0.000000] .Rude variant of Tasks RCU enabled.
[    0.000000] .Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay =
is 30 jiffies.
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 480 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] Root IRQ handler: gic_handle_irq
[    0.000000] GICv3: GICv3 features: 16 PPIs
[    0.000000] GICv3: CPU0: found redistributor 0 region =
0:0x00000000fe680000
[    0.000000] ITS [mem 0xfe640000-0xfe65ffff]
[    0.000000] GIC: enabling workaround for ITS: Rockchip RK3568 force =
no_local_cache
[    0.000000] ITS@0x00000000fe640000: allocated 8192 Devices @210000 =
(indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe640000: allocated 32768 Interrupt =
Collections @220000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] ITS [mem 0xfe660000-0xfe67ffff]
[    0.000000] GIC: enabling workaround for ITS: Rockchip RK3568 force =
no_local_cache
[    0.000000] ITS@0x00000000fe660000: allocated 8192 Devices @240000 =
(indirect, esz 8, psz 64K, shr 0)
[    0.000000] ITS@0x00000000fe660000: allocated 32768 Interrupt =
Collections @250000 (flat, esz 2, psz 64K, shr 0)
[    0.000000] ITS: using cache flushing for cmd queue
[    0.000000] ITS ALLOCATE PROP WORKAROUND
[    0.000000] GICv3: using LPI property table @0x0000000000260000
[    0.000000] GIC: using cache flushing for LPI property table
[    0.000000] GICv3: CPU0: using allocated LPI pending table =
@0x0000000000270000
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-0[0] { =
/cpus/cpu@0[0] /cpus/cpu@100[1] /cpus/cpu@200[2] /cpus/cpu@300[3] }
[    0.000000] GICv3: GIC: PPI partition interrupt-partition-1[1] { =
/cpus/cpu@400[4] /cpus/cpu@500[5] /cpus/cpu@600[6] /cpus/cpu@700[7] }
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on =
contention.
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff =
max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000000] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps =
every 4398046511097ns
[    0.001642] Console: colour dummy device 80x25
[    0.002112] Calibrating delay loop (skipped), value calculated using =
timer frequency.. 48.00 BogoMIPS (lpj=3D80000)
[    0.003044] pid_max: default: 32768 minimum: 301
[    0.003584] Mount-cache hash table entries: 16384 (order: 5, 131072 =
bytes, linear)
[    0.004286] Mountpoint-cache hash table entries: 16384 (order: 5, =
131072 bytes, linear)
[    0.006812] cblist_init_generic: Setting adjustable number of =
callback queues.
[    0.007472] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.008124] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.008787] cblist_init_generic: Setting shift to 3 and lim to 1.
[    0.009551] rcu: Hierarchical SRCU implementation.
[    0.009987] rcu: .Max phase no-delay instances is 1000.
[    0.011795] Platform MSI: msi-controller@fe640000 domain created
[    0.012382] Platform MSI: msi-controller@fe660000 domain created
[    0.013066] PCI/MSI: =
/interrupt-controller@fe600000/msi-controller@fe640000 domain created
[    0.013841] PCI/MSI: =
/interrupt-controller@fe600000/msi-controller@fe660000 domain created
[    0.015804] EFI services will not be available.
[    0.016811] smp: Bringing up secondary CPUs ...
[    0.017822] Detected VIPT I-cache on CPU1
[    0.017887] GICv3: CPU1: found redistributor 100 region =
0:0x00000000fe6a0000
[    0.017899] GICv3: CPU1: using allocated LPI pending table =
@0x0000000000280000
[    0.017937] CPU1: Booted secondary processor 0x0000000100 =
[0x412fd050]
[    0.018627] Detected VIPT I-cache on CPU2
[    0.018687] GICv3: CPU2: found redistributor 200 region =
0:0x00000000fe6c0000
[    0.018698] GICv3: CPU2: using allocated LPI pending table =
@0x0000000000290000
[    0.018733] CPU2: Booted secondary processor 0x0000000200 =
[0x412fd050]
[    0.019427] Detected VIPT I-cache on CPU3
[    0.019486] GICv3: CPU3: found redistributor 300 region =
0:0x00000000fe6e0000
[    0.019497] GICv3: CPU3: using allocated LPI pending table =
@0x00000000002a0000
[    0.019529] CPU3: Booted secondary processor 0x0000000300 =
[0x412fd050]
[    0.020182] CPU features: detected: Spectre-v4
[    0.020186] CPU features: detected: Spectre-BHB
[    0.020189] Detected PIPT I-cache on CPU4
[    0.020223] GICv3: CPU4: found redistributor 400 region =
0:0x00000000fe700000
[    0.020231] GICv3: CPU4: using allocated LPI pending table =
@0x00000000002b0000
[    0.020251] CPU4: Booted secondary processor 0x0000000400 =
[0x414fd0b0]
[    0.020868] Detected PIPT I-cache on CPU5
[    0.020907] GICv3: CPU5: found redistributor 500 region =
0:0x00000000fe720000
[    0.020914] GICv3: CPU5: using allocated LPI pending table =
@0x00000000002c0000
[    0.020935] CPU5: Booted secondary processor 0x0000000500 =
[0x414fd0b0]
[    0.021554] Detected PIPT I-cache on CPU6
[    0.021592] GICv3: CPU6: found redistributor 600 region =
0:0x00000000fe740000
[    0.021599] GICv3: CPU6: using allocated LPI pending table =
@0x00000000002d0000
[    0.021619] CPU6: Booted secondary processor 0x0000000600 =
[0x414fd0b0]
[    0.022222] Detected PIPT I-cache on CPU7
[    0.022262] GICv3: CPU7: found redistributor 700 region =
0:0x00000000fe760000
[    0.022269] GICv3: CPU7: using allocated LPI pending table =
@0x00000000002e0000
[    0.022290] CPU7: Booted secondary processor 0x0000000700 =
[0x414fd0b0]
[    0.022353] smp: Brought up 1 node, 8 CPUs
[    0.039159] SMP: Total of 8 processors activated.
[    0.039588] CPU features: detected: 32-bit EL0 Support
[    0.040053] CPU features: detected: Data cache clean to the PoU not =
required for I/D coherence
[    0.040827] CPU features: detected: Common not Private translations
[    0.041404] CPU features: detected: CRC32 instructions
[    0.041869] CPU features: detected: RCpc load-acquire (LDAPR)
[    0.042386] CPU features: detected: LSE atomic instructions
[    0.042886] CPU features: detected: Privileged Access Never
[    0.043389] CPU features: detected: RAS Extension Support
[    0.043880] CPU features: detected: Speculative Store Bypassing Safe =
(SSBS)
[    0.044543] spectre-bhb mitigation disabled by compile time option
[    0.045156] CPU: All CPU(s) started at EL2
[    0.045530] alternatives: applying system-wide alternatives
[    0.049962] devtmpfs: initialized
[    0.056059] clocksource: jiffies: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 6370867519511994 ns
[    0.056955] futex hash table entries: 2048 (order: 5, 131072 bytes, =
linear)
[    0.058021] pinctrl core: initialized pinctrl subsystem
[    0.058735] DMI not present or invalid.
[    0.059290] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.060548] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic =
allocations
[    0.061386] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for =
atomic allocations
[    0.062270] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for =
atomic allocations
[    0.063020] audit: initializing netlink subsys (disabled)
[    0.063616] audit: type=3D2000 audit(0.059:1): state=3Dinitialized =
audit_enabled=3D0 res=3D1
[    0.064188] thermal_sys: Registered thermal governor 'fair_share'
[    0.064321] thermal_sys: Registered thermal governor 'bang_bang'
[    0.064879] thermal_sys: Registered thermal governor 'step_wise'
[    0.065429] thermal_sys: Registered thermal governor 'user_space'
[    0.066001] cpuidle: using governor ladder
[    0.066937] cpuidle: using governor menu
[    0.067335] hw-breakpoint: found 6 breakpoint and 4 watchpoint =
registers.
[    0.068059] ASID allocator initialised with 65536 entries
[    0.068921] Serial: AMBA PL011 UART driver
[    0.078586] gpio gpiochip0: Static allocation of GPIO base is =
deprecated, use dynamic allocation.
[    0.079547] rockchip-gpio fd8a0000.gpio: probed =
/pinctrl/gpio@fd8a0000
[    0.080262] gpio gpiochip1: Static allocation of GPIO base is =
deprecated, use dynamic allocation.
[    0.081177] rockchip-gpio fec20000.gpio: probed =
/pinctrl/gpio@fec20000
[    0.081877] gpio gpiochip2: Static allocation of GPIO base is =
deprecated, use dynamic allocation.
[    0.082788] rockchip-gpio fec30000.gpio: probed =
/pinctrl/gpio@fec30000
[    0.083509] gpio gpiochip3: Static allocation of GPIO base is =
deprecated, use dynamic allocation.
[    0.084419] rockchip-gpio fec40000.gpio: probed =
/pinctrl/gpio@fec40000
[    0.085117] gpio gpiochip4: Static allocation of GPIO base is =
deprecated, use dynamic allocation.
[    0.086028] rockchip-gpio fec50000.gpio: probed =
/pinctrl/gpio@fec50000
[    0.089315] cryptd: max_cpu_qlen set to 1000
[    0.090138] ACPI: Interpreter disabled.
[    0.147600] iommu: Default domain type: Translated=20
[    0.148049] iommu: DMA domain TLB invalidation policy: strict mode=20
[    0.148902] SCSI subsystem initialized
[    0.149323] usbcore: registered new interface driver usbfs
[    0.149836] usbcore: registered new interface driver hub
[    0.150335] usbcore: registered new device driver usb
[    0.150996] pps_core: LinuxPPS API ver. 1 registered
[    0.151450] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 =
Rodolfo Giometti <giometti@linux.it>
[    0.152298] PTP clock support registered
[    0.152822] arm-scmi firmware:scmi: Enabled polling mode TX channel - =
prot_id:16
[    0.153552] arm-scmi firmware:scmi: SCMI Notifications - Core =
Enabled.
[    0.154173] arm-scmi firmware:scmi: SCMI Protocol v2.0 'rockchip:' =
Firmware version 0x0
[    0.155148] Advanced Linux Sound Architecture Driver Initialized.
[    0.156011] vgaarb: loaded
[    0.156430] clocksource: Switched to clocksource arch_sys_counter
[    0.157182] pnp: PnP ACPI: disabled
[    0.162252] NET: Registered PF_INET protocol family
[    0.162807] IP idents hash table entries: 131072 (order: 8, 1048576 =
bytes, linear)
[    0.166343] tcp_listen_portaddr_hash hash table entries: 4096 (order: =
4, 65536 bytes, linear)
[    0.167185] Table-perturb hash table entries: 65536 (order: 6, 262144 =
bytes, linear)
[    0.167898] TCP established hash table entries: 65536 (order: 7, =
524288 bytes, linear)
[    0.168950] TCP bind hash table entries: 65536 (order: 9, 2097152 =
bytes, linear)
[    0.170880] TCP: Hash tables configured (established 65536 bind =
65536)
[    0.171520] UDP hash table entries: 4096 (order: 5, 131072 bytes, =
linear)
[    0.172259] UDP-Lite hash table entries: 4096 (order: 5, 131072 =
bytes, linear)
[    0.173088] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    0.173861] RPC: Registered named UNIX socket transport module.
[    0.174405] RPC: Registered udp transport module.
[    0.174834] RPC: Registered tcp transport module.
[    0.175265] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.175856] NET: Registered PF_XDP protocol family
[    0.176298] PCI: CLS 0 bytes, default 64
[    0.177335] hw perfevents: enabled with armv8_cortex_a55 PMU driver, =
7 counters available
[    0.178272] hw perfevents: enabled with armv8_cortex_a76 PMU driver, =
7 counters available
[    0.179256] kvm [1]: IPA Size Limit: 40 bits
[    0.179657] kvm [1]: GICv3: no GICV resource entry
[    0.180102] kvm [1]: disabling GICv2 emulation
[    0.180518] kvm [1]: GIC system register CPU interface enabled
[    0.181159] kvm [1]: vgic interrupt IRQ18
[    0.181647] kvm [1]: VHE mode initialized successfully
[    0.537847] Initialise system trusted keyrings
[    0.538394] workingset: timestamp_bits=3D46 max_order=3D21 =
bucket_order=3D0
[    0.539013] zbud: loaded
[    0.539434] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.540171] NFS: Registering the id_resolver key type
[    0.540652] Key type id_resolver registered
[    0.541034] Key type id_legacy registered
[    0.541409] nfs4filelayout_init: NFSv4 File Layout Driver =
Registering...
[    0.542023] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver =
Registering...
[    0.563252] NET: Registered PF_ALG protocol family
[    0.563695] Key type asymmetric registered
[    0.564071] Asymmetric key parser 'x509' registered
[    0.564518] Asymmetric key parser 'pkcs8' registered
[    0.564973] Key type pkcs7_test registered
[    0.565368] Block layer SCSI generic (bsg) driver version 0.4 loaded =
(major 247)
[    0.566148] io scheduler mq-deadline registered
[    0.566569] io scheduler kyber registered
[    0.566944] io scheduler bfq registered
[    0.571636] dw-pcie a41000000.pcie: host bridge /pcie@fe190000 =
ranges:
[    0.572241] dw-pcie a41000000.pcie: Parsing ranges property...
[    0.572780] dw-pcie a41000000.pcie:       IO =
0x00f4100000..0x00f41fffff -> 0x00f4100000
[    0.573524] dw-pcie a41000000.pcie:      MEM =
0x00f4200000..0x00f4ffffff -> 0x00f4200000
[    0.574259] dw-pcie a41000000.pcie:      MEM =
0x0a00000000..0x0a3fffffff -> 0x0a00000000
[   65.195794] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:

