Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6D34B54D1
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 16:32:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230360AbiBNPc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 10:32:26 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351821AbiBNPcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 10:32:24 -0500
Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CE2347567
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 07:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1644852736;
  x=1676388736;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/7n42tcMiMRbVcTW1aHC807eu20R0tSFw2BM43WSADc=;
  b=pSSczEvEhZSiqGD2fHq3I6PAlnWMztDbICT5O0g/WLWKv8RwK3VJRRNB
   6RgizMFdsQ1onwr9Z7hDW4dO8KgbGGXLyt78NDBh4oA3ykiu/6twQ0r9P
   V8S5Vcg7WNc+oqIxKWhctC/UIgz75WdG4zEbFMTDUocMT44UDZJ7fmIu2
   xr8RWu/8PZG3iHXSMBcW2ef4mIihcPi8GpAEGVvVL7DHGjhjuGivMEBhq
   BJJYTx8aEoxCg4WEuSL/fgBdHy1oj+1NZiJ6zCVw9p+Rk9k2CKGM52vnZ
   9pF5czT6t/GwNj82awnhk/Jsasc2iuUNY86tFCd8txo7opOB/6ipJLfyp
   A==;
From:   =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
CC:     <kernel@axis.com>, <devicetree@vger.kernel.org>,
        =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
Subject: [PATCH v2] of: dma_configure: Reuse existing DMA map range
Date:   Mon, 14 Feb 2022 16:32:08 +0100
Message-ID: <20220214153208.2984026-1-marten.lindahl@axis.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When unbinding/binding a driver with DMA mapped memory, the DMA map is
not freed when the driver is reloaded. This leads to a memory leak when
the DMA map is overwritten when reprobing the driver.

This can be reproduced with a platform driver having a dma-range:

dummy {
	...
	#address-cells = <0x2>;
	#size-cells = <0x2>;
	ranges;
	dma-ranges = <...>;
	...
};

and then unbinding/binding it:

~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/unbind

DMA map object 0xffffff800b0ae540 still being held by &pdev->dev

~# echo soc:dummy >/sys/bus/platform/drivers/<driver>/bind
~# echo scan > /sys/kernel/debug/kmemleak
~# cat /sys/kernel/debug/kmemleak
unreferenced object 0xffffff800b0ae540 (size 64):
  comm "sh", pid 833, jiffies 4295174550 (age 2535.352s)
  hex dump (first 32 bytes):
    00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 80 00 00 00 00 00 00 00 80 00 00 00 00  ................
  backtrace:
    [<ffffffefd1694708>] create_object.isra.0+0x108/0x344
    [<ffffffefd1d1a850>] kmemleak_alloc+0x8c/0xd0
    [<ffffffefd167e2d0>] __kmalloc+0x440/0x6f0
    [<ffffffefd1a960a4>] of_dma_get_range+0x124/0x220
    [<ffffffefd1a8ce90>] of_dma_configure_id+0x40/0x2d0
    [<ffffffefd198b68c>] platform_dma_configure+0x5c/0xa4
    [<ffffffefd198846c>] really_probe+0x8c/0x514
    [<ffffffefd1988990>] __driver_probe_device+0x9c/0x19c
    [<ffffffefd1988cd8>] device_driver_attach+0x54/0xbc
    [<ffffffefd1986634>] bind_store+0xc4/0x120
    [<ffffffefd19856e0>] drv_attr_store+0x30/0x44
    [<ffffffefd173c9b0>] sysfs_kf_write+0x50/0x60
    [<ffffffefd173c1c4>] kernfs_fop_write_iter+0x124/0x1b4
    [<ffffffefd16a013c>] new_sync_write+0xdc/0x160
    [<ffffffefd16a256c>] vfs_write+0x23c/0x2a0
    [<ffffffefd16a2758>] ksys_write+0x64/0xec

Don't get a new dma_range_map if there already is one. Check for an
existing map and reuse it, or else get the map as before. This will
prevent overwriting the old map which is still valid.

Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
---

v2:
 - Reuse range map instead of getting a new and freeing the old.

 drivers/of/device.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 874f031442dc..7e5d8066ffff 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -116,9 +116,14 @@ int of_dma_configure_id(struct device *dev, struct device_node *np,
 	u64 dma_start = 0;
 	u64 mask, end, size = 0;
 	bool coherent;
-	int ret;
+	int ret = 0;
+
+	/* Don't get a new DMA range map if we already have one */
+	if (dev->dma_range_map)
+		map = dev->dma_range_map;
+	else
+		ret = of_dma_get_range(np, &map);
 
-	ret = of_dma_get_range(np, &map);
 	if (ret < 0) {
 		/*
 		 * For legacy reasons, we have to assume some devices need
-- 
2.30.2

