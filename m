Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43F112F77ED
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 12:47:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726105AbhAOLrL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 06:47:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725880AbhAOLrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 06:47:10 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A4C6C061795
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:45:53 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id k126so7666668qkf.8
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=jR//nrlijl/JEPmJhF1uzhnuEqPPRoekagqUwRo/Wps=;
        b=NGPjIfYxeqdggFn0u42r+MwCt7fcCb+wOyNjTm0ctsFkxreS2Ffu8SRGHqhs0XWLbL
         +HC2gFKPh7WaOkbsWr3THWOSM5ljVoBQVV8EsAvbVp4Eoi3at0yKmhVlZvlp0WghefDt
         3U+TYnTCRMNuCmPtJQ49lVNiN9ysRsCwIIx90PEiE8pTamnzhRy+3YNidyS4JikS95t4
         wD6QHUqG28ZLTp260KgzM572Cj5IFyFQuF5y8Ek0oIoE9SzALmpLFN+Zp7aZaNg1Z3xN
         D1WY81Es/YODjFsLFoiV6C4sPToyQAyzwbIj5yFUW+LElCnpfsO+dLCGPH6pL6DXf9Rf
         stUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=jR//nrlijl/JEPmJhF1uzhnuEqPPRoekagqUwRo/Wps=;
        b=a9vatMvCFRGa8XDtrZdLP+moWa8ajsgKMq7CMEsi94ySxOXhFVg2GeUsjbCalFOGH6
         c0gF+mrElZ5BCI2PJQV6spln9qHky3ABt6DSZbcXboxijxVp/ccrj8mMmO7igUC4Pe5X
         rI47dULokwz0pfyVqi3W5DdbEKUWrGoxH6q46zOCzI0umfRg/xhbhvaFlrFIEP6HjFqe
         C3881Zz9BKsA8HCMXc8hNslaRwO8K5TAb/EbMxQPSX9xkhKg8cSTy+JsISxQWsniuTZL
         4naDg4wQdAzqLlnzaR9OFuMLhnIvI8l+t0+aO1MwL4Pi3x8PWA52Flt7nn9ttjAWnd3A
         lfLw==
X-Gm-Message-State: AOAM532vY1Z/yEjcwDjTM7wLkJIweW1OepbPz66ToMI/8DlPTwWZRq24
        Kj5L+ae3etl6L0Fjr8QYE6LNlIjF02Uc
X-Google-Smtp-Source: ABdhPJzig+EXRL+D7XvYHYAIQivncwYh6hTL6zFdhd5ydmxvjATXyRAcl027gxFVsO0+c9Ta3VivoGMe9AQK
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:a05:6214:b12:: with SMTP id
 u18mr5640495qvj.21.1610711152432; Fri, 15 Jan 2021 03:45:52 -0800 (PST)
Date:   Fri, 15 Jan 2021 11:45:44 +0000
In-Reply-To: <20210115114544.1830068-1-qperret@google.com>
Message-Id: <20210115114544.1830068-3-qperret@google.com>
Mime-Version: 1.0
References: <20210115114544.1830068-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 2/2] of/fdt: Make sure no-map does not remove already reserved regions
From:   Quentin Perret <qperret@google.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        drinkcat@chromium.org, swboyd@chromium.org, f.fainelli@gmail.com,
        karahmed@amazon.de, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Boichat <drinkcat@chromium.org>

If the device tree is incorrectly configured, and attempts to
define a "no-map" reserved memory that overlaps with the kernel
data/code, the kernel would crash quickly after boot, with no
obvious clue about the nature of the issue.

For example, this would happen if we have the kernel mapped at
these addresses (from /proc/iomem):
40000000-41ffffff : System RAM
  40080000-40dfffff : Kernel code
  40e00000-411fffff : reserved
  41200000-413e0fff : Kernel data

And we declare a no-map shared-dma-pool region at a fixed address
within that range:
mem_reserved: mem_region {
	compatible = "shared-dma-pool";
	reg = <0 0x40000000 0 0x01A00000>;
	no-map;
};

To fix this, when removing memory regions at early boot (which is
what "no-map" regions do), we need to make sure that the memory
is not already reserved. If we do, __reserved_mem_reserve_reg
will throw an error:
[    0.000000] OF: fdt: Reserved memory: failed to reserve memory
   for node 'mem_region': base 0x0000000040000000, size 26 MiB
and the code that will try to use the region should also fail,
later on.

We do not do anything for non-"no-map" regions, as memblock
explicitly allows reserved regions to overlap, and the commit
that this fixes removed the check for that precise reason.

[ qperret: fixed conflicts caused by the usage of memblock_mark_nomap ]

Fixes: 094cb98179f19b7 ("of/fdt: memblock_reserve /memreserve/ regions in the case of partial overlap")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Quentin Perret <qperret@google.com>
---
 drivers/of/fdt.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 427b534d60d2..dcc1dd96911a 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1146,8 +1146,16 @@ int __init __weak early_init_dt_mark_hotplug_memory_arch(u64 base, u64 size)
 int __init __weak early_init_dt_reserve_memory_arch(phys_addr_t base,
 					phys_addr_t size, bool nomap)
 {
-	if (nomap)
+	if (nomap) {
+		/*
+		 * If the memory is already reserved (by another region), we
+		 * should not allow it to be marked nomap.
+		 */
+		if (memblock_is_region_reserved(base, size))
+			return -EBUSY;
+
 		return memblock_mark_nomap(base, size);
+	}
 	return memblock_reserve(base, size);
 }
 
-- 
2.30.0.284.gd98b1dd5eaa7-goog

