Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E31947584C
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 13:00:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234234AbhLOMAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 07:00:14 -0500
Received: from mailout2.w1.samsung.com ([210.118.77.12]:21458 "EHLO
        mailout2.w1.samsung.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234188AbhLOMAN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 07:00:13 -0500
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
        by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20211215120011euoutp02f056972fb7585c0061123666b15c0b84~A6_AMHOF60367903679euoutp020
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 12:00:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20211215120011euoutp02f056972fb7585c0061123666b15c0b84~A6_AMHOF60367903679euoutp020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
        s=mail20170921; t=1639569611;
        bh=zb575BIi6vADQbuBPaEgGZN/PvNqmE4WKYZlVlSe+eg=;
        h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
        b=ppsoZ08bDN+FtLFqKU+2ifEZkK71NUnOGJulTnwOLAk72aN0OVAs//TKM6NheFudR
         Y7GG9vhWSomxLEleutgDH6LxsLEg43sSxxtGNnKwsvQMJWyvayUrzJ5Cj8whos2gGo
         Xo+nWeaheO16PDHZM6HbIm83nMGHR6sqorUvq41w=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
        eucas1p2.samsung.com (KnoxPortal) with ESMTP id
        20211215120011eucas1p2a8075e810bc13a6f98d2c769e3782d12~A69--fzPD1234612346eucas1p2r;
        Wed, 15 Dec 2021 12:00:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
        eusmges2new.samsung.com (EUCPMTA) with SMTP id 8D.2E.09887.BC8D9B16; Wed, 15
        Dec 2021 12:00:11 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
        eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
        20211215120009eucas1p2fc85c4a4279a73e4d36cc8c144a8cc58~A69_D3BEZ3170731707eucas1p2e;
        Wed, 15 Dec 2021 12:00:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
        eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
        20211215120009eusmtrp27b029aa8f5f8c796a06854be5048a278~A69_C1STA2185321853eusmtrp2L;
        Wed, 15 Dec 2021 12:00:09 +0000 (GMT)
X-AuditID: cbfec7f4-45bff7000000269f-ff-61b9d8cb1558
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
        eusmgms2.samsung.com (EUCPMTA) with SMTP id 94.8D.09404.9C8D9B16; Wed, 15
        Dec 2021 12:00:09 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
        eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
        20211215120008eusmtip2065b7644432a31ed10de3424a8ef2501~A699Znhn40487504875eusmtip2B;
        Wed, 15 Dec 2021 12:00:08 +0000 (GMT)
Message-ID: <17cca00a-85a0-465f-201b-ac4c61b5ae0a@samsung.com>
Date:   Wed, 15 Dec 2021 13:00:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
        Gecko/20100101 Thunderbird/91.4.0
Subject: Re: [PATCH v2] drm: bridge: tc358764: Use drm panel_bridge API
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>
Cc:     devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
From:   Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20211215100459.44196-1-jagan@amarulasolutions.com>
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMKsWRmVeSWpSXmKPExsWy7djPc7qnb+xMNGhbYGNxf/FnFov5R86x
        WnzZNIHNonPiEnaL5RP2sVkc6ou2+DTrIbMDu8faj/dZPd7faGX3mN0xk9Vj8Z6XTB53ru1h
        8/i8SS6ALYrLJiU1J7MstUjfLoEr48jyIywFTZcYK9a/UGxg3LuDsYuRk0NCwERi/pV3zF2M
        XBxCAisYJTacameBcL4wSnz8NIMVwvnMKLH++2/2LkYOsJb75wsh4ssZJSZ8PcgO4XxklOg9
        1AY2l1fATuJ0w3ZWEJtFQFWi6+NMqLigxMmZT1hAbFGBJInWjj9MILawgLvE9t7JYPXMAuIS
        t57MZwIZKiLwgFHiwekHzCCbmQWcJKY0yILUsAkYSnS97WIDsTkFHCTa9+xlguiVl2jeOhvs
        HwmBFxwSDdufsEE86iJx8dpiZghbWOLV8S3sELaMxP+dEMskBJoZJR6eW8sO4fQwSlxumgEN
        JmuJO+d+sUFcoSmxfpc+RNhRYu7n6ayQYOGTuPFWEOIIPolJ26YzQ4R5JTrahCCq1SRmHV8H
        t/bghUvMExiVZiEFyywk789C8s4shL0LGFlWMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525i
        BKaj0/+Of9nBuPzVR71DjEwcjIcYJTiYlUR4lxrsTBTiTUmsrEotyo8vKs1JLT7EKM3BoiTO
        m5y5IVFIID2xJDU7NbUgtQgmy8TBKdXA1LzCeYtfQNLjBTLH+yu4/JnaxK8vd7g96drR5RtX
        O2qyT10yT4FVRFzgXHKPvdxSE4+ojZkSbXdWMQnLKnhuavzeJXop8/9X7+U5PFMO5z86/6Cs
        ad3Lv1Xs5Rt2rf4wuY1lu7iDWOhTE1nLs1z7F/8uOcXo7t21zF68d3HIfNmbZouEvXZqdest
        mCDGqzZx2e/Eb5OXpmzmkOrePtnY6VFeUmrhu0UZT52VixN3dmZnS7zV3j1JtkfUWr7Ci3tO
        benqiP0u77neaTuYzPZq37bh2bIpFdmhPUy5nHItW7ZF/crnnvR6xZYL7EbR55JmLdgV2Zug
        7hcTMlnucb2054XpkU12x+ufPfx++MlpJZbijERDLeai4kQA8oigwrYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsVy+t/xe7onb+xMNLh7UNvi/uLPLBbzj5xj
        tfiyaQKbRefEJewWyyfsY7M41Bdt8WnWQ2YHdo+1H++zery/0cruMbtjJqvH4j0vmTzuXNvD
        5vF5k1wAW5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+
        XYJexpHlR1gKmi4xVqx/odjAuHcHYxcjB4eEgInE/fOFXYxcHEICSxkl1t17xNbFyAkUl5E4
        Oa2BFcIWlvhzrYsNoug9o8Sb90vBingF7CRON2wHK2IRUJXo+jiTESIuKHFy5hMWEFtUIEli
        97qtYPXCAu4S23sng9UzC4hL3HoynwlkqIjAI0aJH/O3soJcxCzgJDGlQRZi2WSgZWuXMIE0
        sAkYSnS97QIbxCngING+Zy8TxCAzia6tXYwQtrxE89bZzBMYhWYhuWMWkn2zkLTMQtKygJFl
        FaNIamlxbnpusZFecWJucWleul5yfu4mRmD8bTv2c8sOxpWvPuodYmTiYDzEKMHBrCTCu9Rg
        Z6IQb0piZVVqUX58UWlOavEhRlNgYExklhJNzgcmgLySeEMzA1NDEzNLA1NLM2MlcV7Pgo5E
        IYH0xJLU7NTUgtQimD4mDk6pBqbJGhHP2xprv4W3rg5JWHX9HAuHz/SvR/M4blvG2EWILxA7
        3ebuarinOkQjzyhqfvS6PyyHKz/EbF2wTEf77It/2azPst9U7JYR2d7G5Vi288nE3pTtQhYP
        qy9faNr4JSXz5sLf3NPSE1tC7zQKPtYvtnVxclvNlfgtzPDCH+5G1UKXzD5PH9aMifZvzoau
        LpRqnzspY+215tU2ItfWvyrTFW5597Ji5yemA5+toi6an/14/fduwxTfNTGPj3o+rA5eEcv2
        cUnrxdWd5/y4nk4KKry68RvH5gilx5HOirsOLdYoqP+u+ih7Bbedvm/OZFdO3gUypaLPZPzv
        Gx278+3iibPnjV9yM7eYLFZnTlFiKc5INNRiLipOBABOe7DZSAMAAA==
X-CMS-MailID: 20211215120009eucas1p2fc85c4a4279a73e4d36cc8c144a8cc58
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f
References: <CGME20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f@eucas1p1.samsung.com>
        <20211215100459.44196-1-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On 15.12.2021 11:04, Jagan Teki wrote:
> Replace the manual panel handling code by a drm panel_bridge via
> devm_drm_of_get_bridge().
>
> Adding panel_bridge handling,
>
> - Drops drm_connector and related operations as drm_bridge_attach
>    creates connector during attachment.
>
> - Drops panel pointer and panel healpers.
>
> This simplifies the driver and allows all components in the display
> pipeline to be treated as bridges.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

I just tested it on top of linux-next with "drm: of: Lookup if child 
node has panel or bridge" patch. Sadly it still doesn't work on 
Exynos5250-based Arndale board:

OF: graph: no port node found in /soc/hdmi@14530000
[drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops)
exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops)
OF: graph: no port node found in /soc/dsi@14500000
exynos-drm exynos-drm: bound 14500000.dsi (ops exynos_dsi_component_ops)
exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_component_ops)
exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
[drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 0
panfrost 11800000.gpu: clock rate = 533000000
panfrost 11800000.gpu: mali-t600 id 0x600 major 0x0 minor 0x0 status 0x1
panfrost 11800000.gpu: features: 00000000,10206000, issues: 
00000000,31b4dfff
panfrost 11800000.gpu: Features: L2:0x07110206 Shader:0x00000000 
Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xf JS:0x7
panfrost 11800000.gpu: shader_present=0xf l2_present=0x1
[drm] Initialized panfrost 1.2.0 20180908 for 11800000.gpu on minor 1
------------[ cut here ]------------
WARNING: CPU: 1 PID: 7 at drivers/gpu/drm/drm_atomic_state_helper.c:494 
drm_atomic_helper_connector_duplicate_state+0x60/0x68
Modules linked in:
CPU: 1 PID: 7 Comm: kworker/u4:0 Not tainted 
5.16.0-rc5-next-20211214-00004-gac0282c4faed #11089
Hardware name: Samsung Exynos (Flattened Device Tree)
Workqueue: events_unbound deferred_probe_work_func
[<c01110d0>] (unwind_backtrace) from [<c010cab0>] (show_stack+0x10/0x14)
[<c010cab0>] (show_stack) from [<c0b71c58>] (dump_stack_lvl+0x58/0x70)
[<c0b71c58>] (dump_stack_lvl) from [<c0126c28>] (__warn+0x238/0x23c)
[<c0126c28>] (__warn) from [<c0126cd8>] (warn_slowpath_fmt+0xac/0xb4)
[<c0126cd8>] (warn_slowpath_fmt) from [<c064e95c>] 
(drm_atomic_helper_connector_duplicate_state+0x60/0x68)
[<c064e95c>] (drm_atomic_helper_connector_duplicate_state) from 
[<c066870c>] (drm_atomic_get_connector_state+0xd8/0x190)
[<c066870c>] (drm_atomic_get_connector_state) from [<c0669724>] 
(__drm_atomic_helper_set_config+0x2a0/0x368)
[<c0669724>] (__drm_atomic_helper_set_config) from [<c0680b38>] 
(drm_client_modeset_commit_atomic+0x178/0x27c)
[<c0680b38>] (drm_client_modeset_commit_atomic) from [<c0680cf8>] 
(drm_client_modeset_commit_locked+0x48/0x1d0)
[<c0680cf8>] (drm_client_modeset_commit_locked) from [<c0680ea4>] 
(drm_client_modeset_commit+0x24/0x40)
[<c0680ea4>] (drm_client_modeset_commit) from [<c0652bac>] 
(__drm_fb_helper_restore_fbdev_mode_unlocked+0x64/0xc8)
[<c0652bac>] (__drm_fb_helper_restore_fbdev_mode_unlocked) from 
[<c0652c78>] (drm_fb_helper_set_par+0x38/0x64)
[<c0652c78>] (drm_fb_helper_set_par) from [<c05bc048>] 
(fbcon_init+0x48c/0x510)
[<c05bc048>] (fbcon_init) from [<c0608c68>] (visual_init+0xc0/0x108)
[<c0608c68>] (visual_init) from [<c0609e90>] 
(do_bind_con_driver+0x1ac/0x388)
[<c0609e90>] (do_bind_con_driver) from [<c060a3c8>] 
(do_take_over_console+0x13c/0x1c8)
[<c060a3c8>] (do_take_over_console) from [<c05b9200>] 
(do_fbcon_takeover+0x74/0xcc)
[<c05b9200>] (do_fbcon_takeover) from [<c05b3a10>] 
(register_framebuffer+0x1c8/0x2d8)
[<c05b3a10>] (register_framebuffer) from [<c06525bc>] 
(__drm_fb_helper_initial_config_and_unlock+0x440/0x65c)
[<c06525bc>] (__drm_fb_helper_initial_config_and_unlock) from 
[<c063e0d4>] (drm_kms_helper_hotplug_event+0x24/0x30)
[<c063e0d4>] (drm_kms_helper_hotplug_event) from [<c0691178>] 
(exynos_dsi_host_attach+0x170/0x2a4)
[<c0691178>] (exynos_dsi_host_attach) from [<c069d224>] 
(tc358764_probe+0xe8/0x160)
[<c069d224>] (tc358764_probe) from [<c06b7170>] (really_probe+0x190/0x450)
[<c06b7170>] (really_probe) from [<c06b74d4>] 
(__driver_probe_device+0xa4/0x204)
[<c06b74d4>] (__driver_probe_device) from [<c06b7668>] 
(driver_probe_device+0x34/0xd4)
[<c06b7668>] (driver_probe_device) from [<c06b7a44>] 
(__device_attach_driver+0xb0/0x11c)
[<c06b7a44>] (__device_attach_driver) from [<c06b5254>] 
(bus_for_each_drv+0x70/0xb4)
[<c06b5254>] (bus_for_each_drv) from [<c06b6f40>] 
(__device_attach+0xe0/0x178)
[<c06b6f40>] (__device_attach) from [<c06b5fcc>] 
(bus_probe_device+0x88/0x90)
[<c06b5fcc>] (bus_probe_device) from [<c06b64ec>] 
(deferred_probe_work_func+0x4c/0xe8)
[<c06b64ec>] (deferred_probe_work_func) from [<c014897c>] 
(process_one_work+0x2c8/0x7ec)
[<c014897c>] (process_one_work) from [<c0148ef0>] (worker_thread+0x50/0x584)
[<c0148ef0>] (worker_thread) from [<c01512ec>] (kthread+0x13c/0x19c)
[<c01512ec>] (kthread) from [<c0100108>] (ret_from_fork+0x14/0x2c)
Exception stack(0xc1cc1fb0 to 0xc1cc1ff8)
1fa0:                                     00000000 00000000 00000000 
00000000
1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 
00000000
1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
irq event stamp: 21503
hardirqs last  enabled at (21509): [<c01a3b3c>] vprintk_emit+0x270/0x2b4
hardirqs last disabled at (21514): [<c01a3af8>] vprintk_emit+0x22c/0x2b4
softirqs last  enabled at (18950): [<c01016fc>] __do_softirq+0x4cc/0x5ec
softirqs last disabled at (18945): [<c0130154>] irq_exit+0x1cc/0x200
---[ end trace 0000000000000000 ]---
------------[ cut here ]------------
WARNING: CPU: 1 PID: 7 at drivers/gpu/drm/drm_atomic_state_helper.c:494 
drm_atomic_helper_connector_duplicate_state+0x60/0x68
Modules linked in:
CPU: 1 PID: 7 Comm: kworker/u4:0 Tainted: G        W 
5.16.0-rc5-next-20211214-00004-gac0282c4faed #11089
Hardware name: Samsung Exynos (Flattened Device Tree)
Workqueue: events_unbound deferred_probe_work_func
[<c01110d0>] (unwind_backtrace) from [<c010cab0>] (show_stack+0x10/0x14)
[<c010cab0>] (show_stack) from [<c0b71c58>] (dump_stack_lvl+0x58/0x70)
[<c0b71c58>] (dump_stack_lvl) from [<c0126c28>] (__warn+0x238/0x23c)
[<c0126c28>] (__warn) from [<c0126cd8>] (warn_slowpath_fmt+0xac/0xb4)
[<c0126cd8>] (warn_slowpath_fmt) from [<c064e95c>] 
(drm_atomic_helper_connector_duplicate_state+0x60/0x68)
[<c064e95c>] (drm_atomic_helper_connector_duplicate_state) from 
[<c066870c>] (drm_atomic_get_connector_state+0xd8/0x190)
[<c066870c>] (drm_atomic_get_connector_state) from [<c0669724>] 
(__drm_atomic_helper_set_config+0x2a0/0x368)
[<c0669724>] (__drm_atomic_helper_set_config) from [<c0680b38>] 
(drm_client_modeset_commit_atomic+0x178/0x27c)
[<c0680b38>] (drm_client_modeset_commit_atomic) from [<c0680cf8>] 
(drm_client_modeset_commit_locked+0x48/0x1d0)
[<c0680cf8>] (drm_client_modeset_commit_locked) from [<c0651d78>] 
(drm_fb_helper_pan_display+0x90/0x1c4)
[<c0651d78>] (drm_fb_helper_pan_display) from [<c05b2bd0>] 
(fb_pan_display+0xcc/0x138)
[<c05b2bd0>] (fb_pan_display) from [<c05bd144>] (bit_update_start+0x14/0x30)
[<c05bd144>] (bit_update_start) from [<c05bad50>] (fbcon_switch+0x2d0/0x3e4)
[<c05bad50>] (fbcon_switch) from [<c0609c14>] (redraw_screen+0x15c/0x22c)
[<c0609c14>] (redraw_screen) from [<c05ba904>] 
(fbcon_prepare_logo+0x2d4/0x450)
[<c05ba904>] (fbcon_prepare_logo) from [<c05bbf70>] (fbcon_init+0x3b4/0x510)
[<c05bbf70>] (fbcon_init) from [<c0608c68>] (visual_init+0xc0/0x108)
[<c0608c68>] (visual_init) from [<c0609e90>] 
(do_bind_con_driver+0x1ac/0x388)
[<c0609e90>] (do_bind_con_driver) from [<c060a3c8>] 
(do_take_over_console+0x13c/0x1c8)
[<c060a3c8>] (do_take_over_console) from [<c05b9200>] 
(do_fbcon_takeover+0x74/0xcc)
[<c05b9200>] (do_fbcon_takeover) from [<c05b3a10>] 
(register_framebuffer+0x1c8/0x2d8)
[<c05b3a10>] (register_framebuffer) from [<c06525bc>] 
(__drm_fb_helper_initial_config_and_unlock+0x440/0x65c)
[<c06525bc>] (__drm_fb_helper_initial_config_and_unlock) from 
[<c063e0d4>] (drm_kms_helper_hotplug_event+0x24/0x30)
[<c063e0d4>] (drm_kms_helper_hotplug_event) from [<c0691178>] 
(exynos_dsi_host_attach+0x170/0x2a4)
[<c0691178>] (exynos_dsi_host_attach) from [<c069d224>] 
(tc358764_probe+0xe8/0x160)
[<c069d224>] (tc358764_probe) from [<c06b7170>] (really_probe+0x190/0x450)
[<c06b7170>] (really_probe) from [<c06b74d4>] 
(__driver_probe_device+0xa4/0x204)
[<c06b74d4>] (__driver_probe_device) from [<c06b7668>] 
(driver_probe_device+0x34/0xd4)
[<c06b7668>] (driver_probe_device) from [<c06b7a44>] 
(__device_attach_driver+0xb0/0x11c)
[<c06b7a44>] (__device_attach_driver) from [<c06b5254>] 
(bus_for_each_drv+0x70/0xb4)
[<c06b5254>] (bus_for_each_drv) from [<c06b6f40>] 
(__device_attach+0xe0/0x178)
[<c06b6f40>] (__device_attach) from [<c06b5fcc>] 
(bus_probe_device+0x88/0x90)
[<c06b5fcc>] (bus_probe_device) from [<c06b64ec>] 
(deferred_probe_work_func+0x4c/0xe8)
[<c06b64ec>] (deferred_probe_work_func) from [<c014897c>] 
(process_one_work+0x2c8/0x7ec)
[<c014897c>] (process_one_work) from [<c0148ef0>] (worker_thread+0x50/0x584)
[<c0148ef0>] (worker_thread) from [<c01512ec>] (kthread+0x13c/0x19c)
[<c01512ec>] (kthread) from [<c0100108>] (ret_from_fork+0x14/0x2c)
Exception stack(0xc1cc1fb0 to 0xc1cc1ff8)
1fa0:                                     00000000 00000000 00000000 
00000000
1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 
00000000
1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
irq event stamp: 21591
hardirqs last  enabled at (21597): [<c01a3b3c>] vprintk_emit+0x270/0x2b4
hardirqs last disabled at (21602): [<c01a3af8>] vprintk_emit+0x22c/0x2b4
softirqs last  enabled at (18950): [<c01016fc>] __do_softirq+0x4cc/0x5ec
softirqs last disabled at (18945): [<c0130154>] irq_exit+0x1cc/0x200
---[ end trace 0000000000000000 ]---
Console: switching to colour frame buffer device 146x42
------------[ cut here ]------------
WARNING: CPU: 1 PID: 7 at drivers/gpu/drm/drm_atomic_state_helper.c:494 
drm_atomic_helper_connector_duplicate_state+0x60/0x68
Modules linked in:
CPU: 1 PID: 7 Comm: kworker/u4:0 Tainted: G        W 
5.16.0-rc5-next-20211214-00004-gac0282c4faed #11089
Hardware name: Samsung Exynos (Flattened Device Tree)
Workqueue: events_unbound deferred_probe_work_func
[<c01110d0>] (unwind_backtrace) from [<c010cab0>] (show_stack+0x10/0x14)
[<c010cab0>] (show_stack) from [<c0b71c58>] (dump_stack_lvl+0x58/0x70)
[<c0b71c58>] (dump_stack_lvl) from [<c0126c28>] (__warn+0x238/0x23c)
[<c0126c28>] (__warn) from [<c0126cd8>] (warn_slowpath_fmt+0xac/0xb4)
[<c0126cd8>] (warn_slowpath_fmt) from [<c064e95c>] 
(drm_atomic_helper_connector_duplicate_state+0x60/0x68)
[<c064e95c>] (drm_atomic_helper_connector_duplicate_state) from 
[<c066870c>] (drm_atomic_get_connector_state+0xd8/0x190)
[<c066870c>] (drm_atomic_get_connector_state) from [<c0669724>] 
(__drm_atomic_helper_set_config+0x2a0/0x368)
[<c0669724>] (__drm_atomic_helper_set_config) from [<c0680b38>] 
(drm_client_modeset_commit_atomic+0x178/0x27c)
[<c0680b38>] (drm_client_modeset_commit_atomic) from [<c0680cf8>] 
(drm_client_modeset_commit_locked+0x48/0x1d0)
[<c0680cf8>] (drm_client_modeset_commit_locked) from [<c0651d78>] 
(drm_fb_helper_pan_display+0x90/0x1c4)
[<c0651d78>] (drm_fb_helper_pan_display) from [<c05b2bd0>] 
(fb_pan_display+0xcc/0x138)
[<c05b2bd0>] (fb_pan_display) from [<c05bd144>] (bit_update_start+0x14/0x30)
[<c05bd144>] (bit_update_start) from [<c05bad50>] (fbcon_switch+0x2d0/0x3e4)
[<c05bad50>] (fbcon_switch) from [<c0609c14>] (redraw_screen+0x15c/0x22c)
[<c0609c14>] (redraw_screen) from [<c0609f9c>] 
(do_bind_con_driver+0x2b8/0x388)
[<c0609f9c>] (do_bind_con_driver) from [<c060a3c8>] 
(do_take_over_console+0x13c/0x1c8)
[<c060a3c8>] (do_take_over_console) from [<c05b9200>] 
(do_fbcon_takeover+0x74/0xcc)
[<c05b9200>] (do_fbcon_takeover) from [<c05b3a10>] 
(register_framebuffer+0x1c8/0x2d8)
[<c05b3a10>] (register_framebuffer) from [<c06525bc>] 
(__drm_fb_helper_initial_config_and_unlock+0x440/0x65c)
[<c06525bc>] (__drm_fb_helper_initial_config_and_unlock) from 
[<c063e0d4>] (drm_kms_helper_hotplug_event+0x24/0x30)
[<c063e0d4>] (drm_kms_helper_hotplug_event) from [<c0691178>] 
(exynos_dsi_host_attach+0x170/0x2a4)
[<c0691178>] (exynos_dsi_host_attach) from [<c069d224>] 
(tc358764_probe+0xe8/0x160)
[<c069d224>] (tc358764_probe) from [<c06b7170>] (really_probe+0x190/0x450)
[<c06b7170>] (really_probe) from [<c06b74d4>] 
(__driver_probe_device+0xa4/0x204)
[<c06b74d4>] (__driver_probe_device) from [<c06b7668>] 
(driver_probe_device+0x34/0xd4)
[<c06b7668>] (driver_probe_device) from [<c06b7a44>] 
(__device_attach_driver+0xb0/0x11c)
[<c06b7a44>] (__device_attach_driver) from [<c06b5254>] 
(bus_for_each_drv+0x70/0xb4)
[<c06b5254>] (bus_for_each_drv) from [<c06b6f40>] 
(__device_attach+0xe0/0x178)
[<c06b6f40>] (__device_attach) from [<c06b5fcc>] 
(bus_probe_device+0x88/0x90)
[<c06b5fcc>] (bus_probe_device) from [<c06b64ec>] 
(deferred_probe_work_func+0x4c/0xe8)
[<c06b64ec>] (deferred_probe_work_func) from [<c014897c>] 
(process_one_work+0x2c8/0x7ec)
[<c014897c>] (process_one_work) from [<c0148ef0>] (worker_thread+0x50/0x584)
[<c0148ef0>] (worker_thread) from [<c01512ec>] (kthread+0x13c/0x19c)
[<c01512ec>] (kthread) from [<c0100108>] (ret_from_fork+0x14/0x2c)
Exception stack(0xc1cc1fb0 to 0xc1cc1ff8)
1fa0:                                     00000000 00000000 00000000 
00000000
1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 
00000000
1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
irq event stamp: 21675
hardirqs last  enabled at (21681): [<c01a3b3c>] vprintk_emit+0x270/0x2b4
hardirqs last disabled at (21686): [<c01a3af8>] vprintk_emit+0x22c/0x2b4
softirqs last  enabled at (18950): [<c01016fc>] __do_softirq+0x4cc/0x5ec
softirqs last disabled at (18945): [<c0130154>] irq_exit+0x1cc/0x200
---[ end trace 0000000000000000 ]---
exynos-drm exynos-drm: [drm] fb0: exynosdrmfb frame buffer device


# ./modetest -Mexynos
  ------------[ cut here ]------------
  WARNING: CPU: 1 PID: 1312 at 
drivers/gpu/drm/drm_atomic_state_helper.c:494 
drm_atomic_helper_connector_duplicate_state+0x60/0x68
  Modules linked in: s5p_mfc exynos_gsc v4l2_mem2mem 
videobuf2_dma_contig videobuf2_memops videobuf2_v4l2 videobuf2_common 
videodev mc
  CPU: 1 PID: 1312 Comm: modetest Tainted: G        W 
5.16.0-rc5-next-20211214-00004-gac0282c4faed #11089
  Hardware name: Samsung Exynos (Flattened Device Tree)
  [<c01110d0>] (unwind_backtrace) from [<c010cab0>] (show_stack+0x10/0x14)
  [<c010cab0>] (show_stack) from [<c0b71c58>] (dump_stack_lvl+0x58/0x70)
  [<c0b71c58>] (dump_stack_lvl) from [<c0126c28>] (__warn+0x238/0x23c)
  [<c0126c28>] (__warn) from [<c0126cd8>] (warn_slowpath_fmt+0xac/0xb4)
  [<c0126cd8>] (warn_slowpath_fmt) from [<c064e95c>] 
(drm_atomic_helper_connector_duplicate_state+0x60/0x68)
  [<c064e95c>] (drm_atomic_helper_connector_duplicate_state) from 
[<c066870c>] (drm_atomic_get_connector_state+0xd8/0x190)
  [<c066870c>] (drm_atomic_get_connector_state) from [<c0669724>] 
(__drm_atomic_helper_set_config+0x2a0/0x368)
  [<c0669724>] (__drm_atomic_helper_set_config) from [<c0680b38>] 
(drm_client_modeset_commit_atomic+0x178/0x27c)
  [<c0680b38>] (drm_client_modeset_commit_atomic) from [<c0680cf8>] 
(drm_client_modeset_commit_locked+0x48/0x1d0)
  [<c0680cf8>] (drm_client_modeset_commit_locked) from [<c0680ea4>] 
(drm_client_modeset_commit+0x24/0x40)
  [<c0680ea4>] (drm_client_modeset_commit) from [<c0652bac>] 
(__drm_fb_helper_restore_fbdev_mode_unlocked+0x64/0xc8)
  [<c0652bac>] (__drm_fb_helper_restore_fbdev_mode_unlocked) from 
[<c0655fe0>] (drm_lastclose+0x30/0x4c)
  [<c0655fe0>] (drm_lastclose) from [<c065610c>] (drm_release+0x110/0x114)
  [<c065610c>] (drm_release) from [<c02e61d0>] (__fput+0x88/0x258)
  [<c02e61d0>] (__fput) from [<c014def8>] (task_work_run+0x8c/0xc8)
  [<c014def8>] (task_work_run) from [<c010c30c>] 
(do_work_pending+0x534/0x63c)
  [<c010c30c>] (do_work_pending) from [<c0100088>] 
(slow_work_pending+0xc/0x20)
  Exception stack(0xc1d31fb0 to 0xc1d31ff8)
  1fa0:                                     00000000 0000001f e8fd3e00 
00000000
  1fc0: 00000001 00000003 00000000 00000006 00022188 00000000 b6fbd000 
00000000
  1fe0: b6ebeaa0 bea09aa8 0000e7c4 b6ebeac0 60000010 00000003
  irq event stamp: 3205
  hardirqs last  enabled at (3213): [<c01a0ca4>] __up_console_sem+0x50/0x60
  hardirqs last disabled at (3236): [<c0b76bbc>] __schedule+0x554/0x964
  softirqs last  enabled at (3232): [<c01016fc>] __do_softirq+0x4cc/0x5ec
  softirqs last disabled at (3221): [<c0130154>] irq_exit+0x1cc/0x200
  ---[ end trace 0000000000000000 ]---
could not get [  426.570917] ------------[ cut here ]------------
  WARNING: CPU: 1 PID: 1312 at 
drivers/gpu/drm/drm_atomic_state_helper.c:494 
drm_atomic_helper_connector_duplicate_state+0x60/0x68
  Modules linked in: s5p_mfc exynos_gsc v4l2_mem2mem 
videobuf2_dma_contig videobuf2_memops videobuf2_v4l2 videobuf2_common 
videodev mc
  CPU: 1 PID: 1312 Comm: modetest Tainted: G        W 
5.16.0-rc5-next-20211214-00004-gac0282c4faed #11089
  Hardware name: Samsung Exynos (Flattened Device Tree)
  [<c01110d0>] (unwind_backtrace) from [<c010cab0>] (show_stack+0x10/0x14)
  [<c010cab0>] (show_stack) from [<c0b71c58>] (dump_stack_lvl+0x58/0x70)
  [<c0b71c58>] (dump_stack_lvl) from [<c0126c28>] (__warn+0x238/0x23c)
  [<c0126c28>] (__warn) from [<c0126cd8>] (warn_slowpath_fmt+0xac/0xb4)
  [<c0126cd8>] (warn_slowpath_fmt) from [<c064e95c>] 
(drm_atomic_helper_connector_duplicate_state+0x60/0x68)
  [<c064e95c>] (drm_atomic_helper_connector_duplicate_state) from 
[<c066870c>] (drm_atomic_get_connector_state+0xd8/0x190)
  [<c066870c>] (drm_atomic_get_connector_state) from [<c0669724>] 
(__drm_atomic_helper_set_config+0x2a0/0x368)
  [<c0669724>] (__drm_atomic_helper_set_config) from [<c0680b38>] 
(drm_client_modeset_commit_atomic+0x178/0x27c)
  [<c0680b38>] (drm_client_modeset_commit_atomic) from [<c0680cf8>] 
(drm_client_modeset_commit_locked+0x48/0x1d0)
  [<c0680cf8>] (drm_client_modeset_commit_locked) from [<c0680ea4>] 
(drm_client_modeset_commit+0x24/0x40)
  [<c0680ea4>] (drm_client_modeset_commit) from [<c0652bac>] 
(__drm_fb_helper_restore_fbdev_mode_unlocked+0x64/0xc8)
  [<c0652bac>] (__drm_fb_helper_restore_fbdev_mode_unlocked) from 
[<c0655fe0>] (drm_lastclose+0x30/0x4c)
  [<c0655fe0>] (drm_lastclose) from [<c065610c>] (drm_release+0x110/0x114)
  [<c065610c>] (drm_release) from [<c02e61d0>] (__fput+0x88/0x258)
  [<c02e61d0>] (__fput) from [<c014def8>] (task_work_run+0x8c/0xc8)
  [<c014def8>] (task_work_run) from [<c012caac>] (do_exit+0x3f8/0xc1c)
  [<c012caac>] (do_exit) from [<c012e644>] (do_group_exit+0x2c/0xa0)
  [<c012e644>] (do_group_exit) from [<c013d024>] (get_signal+0x1d0/0xe6c)
  [<c013d024>] (get_signal) from [<c010bef4>] (do_work_pending+0x11c/0x63c)
  [<c010bef4>] (do_work_pending) from [<c0100088>] 
(slow_work_pending+0xc/0x20)
  Exception stack(0xc1d31fb0 to 0xc1d31ff8)
  1fa0:                                     00000008 0000005f 00000002 
00023388
  1fc0: 00000001 000232a8 00000000 00023398 0000003e 00000000 00023360 
00000000
  1fe0: 00023590 bea09af8 00009ec0 00009e9c 80000010 ffffffff
  irq event stamp: 3693
  hardirqs last  enabled at (3701): [<c01a0ca4>] __up_console_sem+0x50/0x60
  hardirqs last disabled at (3710): [<c01a0c90>] __up_console_sem+0x3c/0x60
  softirqs last  enabled at (3688): [<c01016fc>] __do_softirq+0x4cc/0x5ec
  softirqs last disabled at (3661): [<c0130154>] irq_exit+0x1cc/0x200
  ---[ end trace 0000000000000000 ]---
connector 62: No such file or directory
Segmentation fault



> ---
> Changes for v2:
> - s/panel_bridge/next_bridge
> - drop unneeded headers
>
>   drivers/gpu/drm/bridge/tc358764.c | 104 ++----------------------------
>   1 file changed, 6 insertions(+), 98 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> index c1e35bdf9232..dca41ed32f8a 100644
> --- a/drivers/gpu/drm/bridge/tc358764.c
> +++ b/drivers/gpu/drm/bridge/tc358764.c
> @@ -16,14 +16,9 @@
>   #include <video/mipi_display.h>
>   
>   #include <drm/drm_atomic_helper.h>
> -#include <drm/drm_bridge.h>
> -#include <drm/drm_crtc.h>
> -#include <drm/drm_fb_helper.h>
>   #include <drm/drm_mipi_dsi.h>
>   #include <drm/drm_of.h>
> -#include <drm/drm_panel.h>
>   #include <drm/drm_print.h>
> -#include <drm/drm_probe_helper.h>
>   
>   #define FLD_MASK(start, end)    (((1 << ((start) - (end) + 1)) - 1) << (end))
>   #define FLD_VAL(val, start, end) (((val) << (end)) & FLD_MASK(start, end))
> @@ -153,10 +148,9 @@ static const char * const tc358764_supplies[] = {
>   struct tc358764 {
>   	struct device *dev;
>   	struct drm_bridge bridge;
> -	struct drm_connector connector;
> +	struct drm_bridge *next_bridge;
>   	struct regulator_bulk_data supplies[ARRAY_SIZE(tc358764_supplies)];
>   	struct gpio_desc *gpio_reset;
> -	struct drm_panel *panel;
>   	int error;
>   };
>   
> @@ -210,12 +204,6 @@ static inline struct tc358764 *bridge_to_tc358764(struct drm_bridge *bridge)
>   	return container_of(bridge, struct tc358764, bridge);
>   }
>   
> -static inline
> -struct tc358764 *connector_to_tc358764(struct drm_connector *connector)
> -{
> -	return container_of(connector, struct tc358764, connector);
> -}
> -
>   static int tc358764_init(struct tc358764 *ctx)
>   {
>   	u32 v = 0;
> @@ -278,43 +266,11 @@ static void tc358764_reset(struct tc358764 *ctx)
>   	usleep_range(1000, 2000);
>   }
>   
> -static int tc358764_get_modes(struct drm_connector *connector)
> -{
> -	struct tc358764 *ctx = connector_to_tc358764(connector);
> -
> -	return drm_panel_get_modes(ctx->panel, connector);
> -}
> -
> -static const
> -struct drm_connector_helper_funcs tc358764_connector_helper_funcs = {
> -	.get_modes = tc358764_get_modes,
> -};
> -
> -static const struct drm_connector_funcs tc358764_connector_funcs = {
> -	.fill_modes = drm_helper_probe_single_connector_modes,
> -	.destroy = drm_connector_cleanup,
> -	.reset = drm_atomic_helper_connector_reset,
> -	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> -	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> -};
> -
> -static void tc358764_disable(struct drm_bridge *bridge)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	int ret = drm_panel_disable(bridge_to_tc358764(bridge)->panel);
> -
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error disabling panel (%d)\n", ret);
> -}
> -
>   static void tc358764_post_disable(struct drm_bridge *bridge)
>   {
>   	struct tc358764 *ctx = bridge_to_tc358764(bridge);
>   	int ret;
>   
> -	ret = drm_panel_unprepare(ctx->panel);
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error unpreparing panel (%d)\n", ret);
>   	tc358764_reset(ctx);
>   	usleep_range(10000, 15000);
>   	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> @@ -335,72 +291,25 @@ static void tc358764_pre_enable(struct drm_bridge *bridge)
>   	ret = tc358764_init(ctx);
>   	if (ret < 0)
>   		dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
> -	ret = drm_panel_prepare(ctx->panel);
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error preparing panel (%d)\n", ret);
> -}
> -
> -static void tc358764_enable(struct drm_bridge *bridge)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	int ret = drm_panel_enable(ctx->panel);
> -
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error enabling panel (%d)\n", ret);
>   }
>   
>   static int tc358764_attach(struct drm_bridge *bridge,
>   			   enum drm_bridge_attach_flags flags)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	struct drm_device *drm = bridge->dev;
> -	int ret;
> -
> -	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
> -		DRM_ERROR("Fix bridge driver to make connector optional!");
> -		return -EINVAL;
> -	}
> -
> -	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
> -	ret = drm_connector_init(drm, &ctx->connector,
> -				 &tc358764_connector_funcs,
> -				 DRM_MODE_CONNECTOR_LVDS);
> -	if (ret) {
> -		DRM_ERROR("Failed to initialize connector\n");
> -		return ret;
> -	}
> -
> -	drm_connector_helper_add(&ctx->connector,
> -				 &tc358764_connector_helper_funcs);
> -	drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
> -	ctx->connector.funcs->reset(&ctx->connector);
> -	drm_connector_register(&ctx->connector);
> -
> -	return 0;
> -}
> -
> -static void tc358764_detach(struct drm_bridge *bridge)
>   {
>   	struct tc358764 *ctx = bridge_to_tc358764(bridge);
>   
> -	drm_connector_unregister(&ctx->connector);
> -	ctx->panel = NULL;
> -	drm_connector_put(&ctx->connector);
> +	return drm_bridge_attach(bridge->encoder, ctx->next_bridge, bridge, flags);
>   }
>   
>   static const struct drm_bridge_funcs tc358764_bridge_funcs = {
> -	.disable = tc358764_disable,
>   	.post_disable = tc358764_post_disable,
> -	.enable = tc358764_enable,
>   	.pre_enable = tc358764_pre_enable,
>   	.attach = tc358764_attach,
> -	.detach = tc358764_detach,
>   };
>   
>   static int tc358764_parse_dt(struct tc358764 *ctx)
>   {
>   	struct device *dev = ctx->dev;
> -	int ret;
>   
>   	ctx->gpio_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
>   	if (IS_ERR(ctx->gpio_reset)) {
> @@ -408,12 +317,11 @@ static int tc358764_parse_dt(struct tc358764 *ctx)
>   		return PTR_ERR(ctx->gpio_reset);
>   	}
>   
> -	ret = drm_of_find_panel_or_bridge(ctx->dev->of_node, 1, 0, &ctx->panel,
> -					  NULL);
> -	if (ret && ret != -EPROBE_DEFER)
> -		dev_err(dev, "cannot find panel (%d)\n", ret);
> +	ctx->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> +	if (IS_ERR(ctx->next_bridge))
> +		return PTR_ERR(ctx->next_bridge);
>   
> -	return ret;
> +	return 0;
>   }
>   
>   static int tc358764_configure_regulators(struct tc358764 *ctx)

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

