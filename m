Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28A9B1968C8
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2020 19:59:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726389AbgC1S7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Mar 2020 14:59:25 -0400
Received: from mail-qv1-f74.google.com ([209.85.219.74]:45253 "EHLO
        mail-qv1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725807AbgC1S7Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Mar 2020 14:59:25 -0400
Received: by mail-qv1-f74.google.com with SMTP id d7so10650557qvq.12
        for <devicetree@vger.kernel.org>; Sat, 28 Mar 2020 11:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=rl7WtDkNIzzT60ikOJJ0txPNPltV1gR7r9BpQuGY/24=;
        b=kktvz/xDC5Ag4Xmj8Jrm0AhTJwkFC/qsP3ICI3dL1lLCrOBa3csHUlKe52KKIgeqvE
         +86bW8xHb9NQYofFO9FAGbuK06EQF0uVZDDcvX4dSpQt63uKvll77VmDU+cVnDEhYZ2g
         BlEFOtQLAlKHaXDpfDsWKAtJDtClBjQ5cMyYKXBxNUPZqZVx6ckeTGFQlTTRaaolhiZC
         GdH36ObUiOXvsyaTuMFD+0s22cNxXMU4n0XaRzN+pKzTgbimBzVLtDEPApgVsClTk4MC
         OFL7DFFBF5iDe2EMb6o5ddUCtdLrsHHgBcy4g1wpQTXoBjvv4sWBuPMXvc/47au5mNg1
         fGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=rl7WtDkNIzzT60ikOJJ0txPNPltV1gR7r9BpQuGY/24=;
        b=ooNy3Zc+woOWeRHRijS4domI5n/lOi2GTQn6ZzIuT9QwuzWmasYbmiujGEu8gIDy48
         C0xhdFa4yUqrocGjQudqqoOrUtP7RC4X2B+ou//WRBsTaRBgc/mnopV73/4HPzjF7Gl9
         uj/rtXmwrnM6S6+DyYGfqS/gWWMx/pP2jhirUz4rwdvbMsNBHy9JSsgjCNfOsEQ7yXv6
         /IYlB2F43Xyf/IVB5MGHyXcCuq8MV9B8SueTv3z0ydyEtufvwXgv0Mlh4FPdToXW5vl8
         h0QN7r2w8tAqd7aOXNxvY802APJMJxd7s8oztIcchHtgWdM7mEgGzg1GNguXBuc+wla5
         CygA==
X-Gm-Message-State: ANhLgQ2NanhNEPz1onIPUoWYK3URI3HKbZN8T9ztysubxuwCO3y4WHug
        +rog7nIVBzkZksdUTu4wqL2d0XG6gZQA
X-Google-Smtp-Source: ADFU+vs2gnpUlOHy0fXAvwisX5Qfdkf3EWGsz6IBFlP2etVqkgtyIwl4tosOOeSYJ4Ov1RnVl30PVeeFZQ2t
X-Received: by 2002:a05:620a:4d5:: with SMTP id 21mr4933357qks.433.1585421964138;
 Sat, 28 Mar 2020 11:59:24 -0700 (PDT)
Date:   Sat, 28 Mar 2020 11:59:12 -0700
Message-Id: <20200328185916.98423-1-rajatja@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH v4 1/5] input/serio/i8042: Attach fwnode to serio i8042 kbd device
From:   Rajat Jain <rajatja@google.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>, dtor@google.com,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajat Jain <rajatja@google.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Enrico Weigelt <info@metux.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Allison Randal <allison@lohutok.net>,
        "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, furquan@google.com,
        dlaurie@google.com, bleung@google.com, zentaro@google.com,
        dbehr@google.com
Cc:     rajatxjain@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Attach the firmware node to the serio i8042 kbd device so that device
properties can be passed from the firmware.

Signed-off-by: Rajat Jain <rajatja@google.com>
---
v4: Same as v3
v3: same as v2
v2: Remove the Change-Id from the commit log

 drivers/input/serio/i8042-x86ia64io.h | 1 +
 drivers/input/serio/i8042.c           | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/input/serio/i8042-x86ia64io.h b/drivers/input/serio/i8042-x86ia64io.h
index dc974c288e880..ed9ec4310d976 100644
--- a/drivers/input/serio/i8042-x86ia64io.h
+++ b/drivers/input/serio/i8042-x86ia64io.h
@@ -927,6 +927,7 @@ static int i8042_pnp_kbd_probe(struct pnp_dev *dev, const struct pnp_device_id *
 	}
 	i8042_pnp_id_to_string(dev->id, i8042_kbd_firmware_id,
 			       sizeof(i8042_kbd_firmware_id));
+	i8042_kbd_fwnode = dev_fwnode(&dev->dev);
 
 	/* Keyboard ports are always supposed to be wakeup-enabled */
 	device_set_wakeup_enable(&dev->dev, true);
diff --git a/drivers/input/serio/i8042.c b/drivers/input/serio/i8042.c
index 20ff2bed3917a..0dddf273afd94 100644
--- a/drivers/input/serio/i8042.c
+++ b/drivers/input/serio/i8042.c
@@ -21,6 +21,7 @@
 #include <linux/i8042.h>
 #include <linux/slab.h>
 #include <linux/suspend.h>
+#include <linux/property.h>
 
 #include <asm/io.h>
 
@@ -124,6 +125,7 @@ MODULE_PARM_DESC(unmask_kbd_data, "Unconditional enable (may reveal sensitive da
 static bool i8042_bypass_aux_irq_test;
 static char i8042_kbd_firmware_id[128];
 static char i8042_aux_firmware_id[128];
+static struct fwnode_handle *i8042_kbd_fwnode;
 
 #include "i8042.h"
 
@@ -1335,6 +1337,7 @@ static int __init i8042_create_kbd_port(void)
 	strlcpy(serio->phys, I8042_KBD_PHYS_DESC, sizeof(serio->phys));
 	strlcpy(serio->firmware_id, i8042_kbd_firmware_id,
 		sizeof(serio->firmware_id));
+	set_primary_fwnode(&serio->dev, i8042_kbd_fwnode);
 
 	port->serio = serio;
 	port->irq = I8042_KBD_IRQ;
-- 
2.26.0.rc2.310.g2932bb562d-goog

