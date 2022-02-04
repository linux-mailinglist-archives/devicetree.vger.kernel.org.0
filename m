Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0E74A956B
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 09:46:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235803AbiBDIqD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 03:46:03 -0500
Received: from smtp1.axis.com ([195.60.68.17]:20396 "EHLO smtp1.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235756AbiBDIqD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Feb 2022 03:46:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1643964363;
  x=1675500363;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=+WJXaaYTWvGTYUWj6AjXrl5/pM76HmM1GRYPd9ZH9jI=;
  b=eZOaipyXU2nmlCdq8Cnt2McpEEN0fR7KgS/gEz+A152FcMxZ4ukFFJPV
   RsY15pNMMY16m3nJDCxeYq4INo3VqcrFttBGDb4I7xuK+u1XzMTY4sEBB
   iYC/XMbUU+Gp7rVr/VtLDAyK3qT+Q7lMihFyycHp7aRPVGkOYHFFOJJB0
   ks5b2qjrUlvrz1X0XoyYGzoUPOg7mJ/+EUxh2MoUNbzTyfqaOOYsrKuXx
   xW1W/U8GiloKVQPhUAMPlsymGV8N5tpxpKnZuz70gG9ioWv+fqM/DEPLq
   0r4YPs1YoG1TwEGkus86WNDG4QUi88YSxLgr4lYnV0S3w/XUqkCizPu3m
   Q==;
From:   =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
CC:     <kernel@axis.com>, <devicetree@vger.kernel.org>,
        =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
Subject: [PATCH] of: dma_configure: Free old DMA map range
Date:   Fri, 4 Feb 2022 09:45:56 +0100
Message-ID: <20220204084556.3033351-1-marten.lindahl@axis.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
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

Prevent overwriting the dma_range_map by freeing it before saving the
new map.

Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
---
 drivers/of/device.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 874f031442dc..a67703d09bfd 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -156,6 +156,12 @@ int of_dma_configure_id(struct device *dev, struct device_node *np,
 			kfree(map);
 			return -EINVAL;
 		}
+
+		/*
+		 * Since we are about to set a new range map we should make sure we
+		 * do not overwrite any existing one without having freed it first.
+		 */
+		kfree(dev->dma_range_map);
 	}
 
 	/*
-- 
2.30.2

