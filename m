Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E60AD52EB47
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 13:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236577AbiETL4j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 07:56:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346192AbiETL4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 07:56:38 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECD62180E
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 04:56:37 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-2ec42eae76bso84336817b3.10
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 04:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VYA7cS5xPLysOtU8IZ+cKMgY5yKoFTh7VWTGkgSSa9g=;
        b=S/vhmPcM9RcZ/nR7gEk4yYi98cVrjD7bCIoTpm9zL5aFW/mCFvbv0tjH8s2W2x0Ixa
         WbMlVlR+BPXJgAYV5TPCncX5ELtz6fXdhfTZfeBjVfxPFnouI3N/dxirjGTCVP23K/XW
         KEcMtew1t7XY9kqoRQFpZ7zsXfkJdcm31sgzs6Ob7zx750VMwgwHvSicHy1bbeenikzZ
         sjTInyZBOKWWSUldTB/Rtm9CYwBS2/8xvgR5PwuiAl40tvOfM4QkqHnZanyWa+wEoMca
         POTG7x22lDchDwlYrZ0bwTgyLMBkB1pwfmEoqJJkbY+QL3LvHDl/L2Tg6HlYGRHSNbkm
         0BWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VYA7cS5xPLysOtU8IZ+cKMgY5yKoFTh7VWTGkgSSa9g=;
        b=Qw9pCExKLnhRVi2lJv8jvcapivH9B3Mbfy4f9SKXy9qWUdtuwyohYrP3zPcIIp6ol1
         vl4VKKTgeUQueajvBuhPt4rkNkxendN5eArCBsCtalBtLlJb763Iznbn4MDzyXfFIU/w
         WXd5Ca5TqpIz8pKc2lIloL2QwQdj72+6948sKbz0JTImM+uoKggm066Ad1rBPcGElxJP
         u/34U42PtAQxfTa8RINJ+mNQamkOVV3L/QQAsZwx1RX6911MYSQsKSzaU8kiEoh93sFN
         x4p/XjnlYyQOWjXEtHcffOMXyTi07ZQ5Y+UuddBhB+MJDzE5AtcPQzXp4QHSXXScbwn7
         2AwA==
X-Gm-Message-State: AOAM532hkKlp4JziltPMBAgx51Va/Zo2me5Aq4HTOa0e5+qINFKjLMwW
        j8FHBgcf5pn1E3fgQil1VstENWkPV50IwGjVuds=
X-Google-Smtp-Source: ABdhPJyptXQCoDfCvgnBcrG+MK6cUwQqK34ChMgAe9xQL1og87wZ+uc3zCYLPd5d3qqDv5Z7sAeGj2c9pyeCQVWBick=
X-Received: by 2002:a05:690c:89:b0:2d7:fb7d:db7 with SMTP id
 be9-20020a05690c008900b002d7fb7d0db7mr10583784ywb.219.1653047796264; Fri, 20
 May 2022 04:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <23894515.EfDdHjke4D@phil> <CAO_Mup+SCgeK9rBjYqnnOpJWUNXyJdXV9pjWXqi571sznS9-LA@mail.gmail.com>
 <20220520101200.GI25578@pengutronix.de>
In-Reply-To: <20220520101200.GI25578@pengutronix.de>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Fri, 20 May 2022 07:56:24 -0400
Message-ID: <CAMdYzYrcku+F048macOcedQ-pVo+GMC+5iwODMhxJXtvY_zZTQ@mail.gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Maya Matuszczyk <maccraft123mc@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        dri-devel@lists.freedesktop.org,
        arm-mail-list <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>, kernel@pengutronix.de,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 20, 2022 at 6:12 AM Sascha Hauer <s.hauer@pengutronix.de> wrote=
:
>
> Hi Maya,
>
> On Fri, May 20, 2022 at 12:02:33PM +0200, Maya Matuszczyk wrote:
> > Hello,
> >
> > wt., 17 maj 2022 o 20:28 Heiko Stuebner <heiko@sntech.de> napisa=C5=82(=
a):
> > >
> > > Am Freitag, 22. April 2022, 09:28:17 CEST schrieb Sascha Hauer:
> > > > It's v11 time. There's only one small change to v10. Discussion see=
ms to
> > > > have settled now. Is there anything left that prevents the series f=
rom
> > > > being merged? I'd really like to have it in during the next merge
> > > > window.
> > > >
> > > > This series still depends on:
> > > > drm/rockchip: Refactor IOMMU initialisation (https://lists.freedesk=
top.org/archives/dri-devel/2022-April/349548.html)
> > > > arm64: dts: rockchip: add basic dts for the radxa rock3 model a
> > > >
> > > > Sascha
> > >
> > > I've now picked up everything except the hdmi-rate stuff in some way.
> > > The driver changes will go into 5.19 and the DT-changes into 5.20.
> > >
> > > I'll now move the series out of my focus and would expect further
> > > hdmi rate voodoo to start a new series :-) .
> > >
> > > Thanks to all involved for working on this.
> > > Heiko
> >
> > What do I need besides this patch series, mentioned before IOMMU refact=
or,
> > and DTS changes for MIPI-DSI support on RK356x?
> > I'm working on mainline kernel support for a a RK3566 board with
> > a DSI display.
>
> Apart from these patches you'll need updates for the DSI. I've pushed
> these once to
> https://git.pengutronix.de/cgit/sha/linux/log/?h=3Drockchip-vop2-mipi
> Particularly I think you need:
>
> 383ff250345f0 drm: rockchip: dw-mipi-dsi: Call host attach from probe
> e79a16ead833d dw-mipi-dsi-rockchip: increase bandwidth
> ac400bdd8d0cb drm: rockchip: dw-mipi-dsi-rockchip: Add rk3568 support
> b6b7fabbc9fe2 drm: panel-simple: Add init sequence support
> 3c13a030e92f3 arm64: dts: rockchip: rk3568-evb: Add Display support
> 3433935a31675 arm64: dts: rockchip: rk356x: Add dsi nodes
>
> I'm not sure how well these fit onto the current state. I'll likely
> update the branch when the VOP2 has hit mainline after the next merge
> window. I have no plans currently to upstream the DSI bits though.

Yeah DSI needs a bit of love with the merged version. Even updating
the series to the new version we get a null pointer exception:

[    2.304528] Unable to handle kernel NULL pointer dereference at
virtual address 0000000000000250
[    2.305311] Mem abort info:
[    2.305563]   ESR =3D 0x96000005
[    2.305839]   EC =3D 0x25: DABT (current EL), IL =3D 32 bits
[    2.306311]   SET =3D 0, FnV =3D 0
[    2.306586]   EA =3D 0, S1PTW =3D 0
[    2.306868]   FSC =3D 0x05: level 1 translation fault
[    2.307301] Data abort info:
[    2.307559]   ISV =3D 0, ISS =3D 0x00000005
[    2.307926]   CM =3D 0, WnR =3D 0
[    2.308197] [0000000000000250] user address but active_mm is swapper
[    2.308763] Internal error: Oops: 96000005 [#1] PREEMPT SMP
[    2.309260] Modules linked in:
[    2.309541] CPU: 0 PID: 51 Comm: kworker/u8:1 Not tainted
5.18.0-rc2-00072-g4d2476a40e3e-dirty #307
[    2.310343] Hardware name: Pine64 RK3566 Quartz64-A Board (DT)
[    2.310862] Workqueue: events_unbound deferred_probe_work_func
[    2.311391] pstate: 80400009 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=
=3D--)
[    2.312010] pc : __drm_crtc_init_with_planes+0x44/0x2d0
[    2.312482] lr : drm_crtc_init_with_planes+0x64/0x94
[    2.312929] sp : ffffffc00aaa3830
[    2.313226] x29: ffffffc00aaa3830 x28: 0000000000000001 x27: ffffffc00aa=
a38c0
[    2.313866] x26: ffffffc009950fb0 x25: ffffff8100f24080 x24: ffffffc0094=
52748
[    2.314504] x23: ffffffc009950fb0 x22: 0000000000000000 x21: 00000000000=
00008
[    2.315142] x20: ffffff8100d1e800 x19: ffffff8100f244e8 x18: 00000000fff=
ffffd
[    2.315781] x17: 08000000000000d1 x16: 0800000000000091 x15: 00000000000=
00020
[    2.316419] x14: 0000000000000000 x13: ffffff8100f24478 x12: ffffff8100f=
2445d
[    2.317057] x11: ffffffc00aaa3920 x10: ffffffc00aaa3920 x9 : ffffffc0088=
43994
[    2.317694] x8 : ffffffc00aaa3910 x7 : ffffffc00aaa3910 x6 : ffffffc00aa=
a38c0
[    2.318333] x5 : ffffffc009950fb0 x4 : ffffffc0094522a0 x3 : 00000000000=
00000
[    2.318970] x2 : 0000000000000008 x1 : ffffff8100f244e8 x0 : ffffff8100d=
1e800
[    2.319609] Call trace:
[    2.319829]  __drm_crtc_init_with_planes+0x44/0x2d0
[    2.320268]  drm_crtc_init_with_planes+0x64/0x94
[    2.320684]  vop2_bind+0x61c/0x960
[    2.320996]  component_bind_all+0x10c/0x270
[    2.321374]  rockchip_drm_bind+0xc0/0x20c
[    2.321738]  try_to_bring_up_aggregate_device+0x16c/0x1e0
[    2.322221]  __component_add+0xac/0x17c
[    2.322568]  component_add+0x20/0x30
[    2.322890]  dw_mipi_dsi_rockchip_host_attach+0x60/0x11c
[    2.323365]  dw_mipi_dsi_host_attach+0x80/0xd4
[    2.323767]  mipi_dsi_attach+0x34/0x50
[    2.324107]  feiyang_dsi_probe+0x100/0x17c
[    2.324476]  mipi_dsi_drv_probe+0x2c/0x40
[    2.324838]  really_probe.part.0+0xa4/0x2a0
[    2.325215]  __driver_probe_device+0xa0/0x150
[    2.325607]  driver_probe_device+0x48/0x150
[    2.325983]  __device_attach_driver+0xc0/0x130
[    2.326381]  bus_for_each_drv+0x84/0xe0
[    2.326729]  __device_attach+0xe4/0x190
[    2.327075]  device_initial_probe+0x20/0x30
[    2.327451]  bus_probe_device+0xa4/0xb0
[    2.327798]  deferred_probe_work_func+0x94/0xcc
[    2.328204]  process_one_work+0x1dc/0x450
[    2.328569]  worker_thread+0x2d0/0x450
[    2.328909]  kthread+0x100/0x110
[    2.329204]  ret_from_fork+0x10/0x20
[    2.329534] Code: aa0503fa f9002bfb aa0603fb b40000c2 (b9424840)
[    2.330077] ---[ end trace 0000000000000000 ]---

Which equates to:
(gdb) l *__drm_crtc_init_with_planes+0x44
0xffffffc0088436ac is in __drm_crtc_init_with_planes
(drivers/gpu/drm/drm_crtc.c:254).
249                                            const char *name, va_list ap=
)
250     {
251             struct drm_mode_config *config =3D &dev->mode_config;
252             int ret;
253
254             WARN_ON(primary && primary->type !=3D DRM_PLANE_TYPE_PRIMAR=
Y);
255             WARN_ON(cursor && cursor->type !=3D DRM_PLANE_TYPE_CURSOR);
256
257             /* crtc index is used with 32bit bitmasks */
258             if (WARN_ON(config->num_crtc >=3D 32))

Of course it's entirely possible I missed something here in my port to
the latest version. But if this is configuration in the device tree it
strikes me as odd that a NPE could be triggered.


>
> Regards,
>  Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
