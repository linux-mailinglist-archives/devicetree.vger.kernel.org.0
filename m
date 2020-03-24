Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3092F190DA7
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2020 13:35:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727534AbgCXMf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Mar 2020 08:35:27 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:36801 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727521AbgCXMf1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Mar 2020 08:35:27 -0400
Received: by mail-pf1-f201.google.com with SMTP id h125so13846660pfg.3
        for <devicetree@vger.kernel.org>; Tue, 24 Mar 2020 05:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=5LJBH8xQN/jQBYcxN7fADpsh/S4ILyM2BLQ/YSrufN0=;
        b=lrkNOvRmUfIaF/A680qHGLiVgg0GQPkzG6FPhLtY747Zb6pLNG8Zgn8lppIsH1ATDA
         qi2aczpwz1DwrvZaRiIJjdZuljpnhbxcIlV3tH30rFehu9n/VcQCT72NRCumITBYwZcs
         u2vqZHudgsefVYz+OnKrpUocL7ncCUxYD1sWAeTYAVKhNG36dPUFEeG2EsskGXE8Gqv7
         W6t9VEvV6CZYmMIXsJng/CIAM5+9WkHrlLR16tuWvMJ5B0LjGhrKJnMuf5yTBkRfeVcS
         7vQ9gQmNzQA/SHCh04nyP551vhjc9mEyIRgpsmkCP+XyWgTn8pTj+emFXRd7rC+KrqDH
         BUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=5LJBH8xQN/jQBYcxN7fADpsh/S4ILyM2BLQ/YSrufN0=;
        b=nQ4zdPY6kGttge94+4sYQJnd74VhEJ1QMLkJFccn8ZOQRame1NWnFJjOC4H+7voqdh
         oEnahyoVPxXtipJhnIlCmpi7E/v7qnPN2/xq73s569IFhAlw+BfDfIMbidgO2/YOrH3i
         Imi3MJQLYiIjEyzXECvcId0+4J1UoyNbUQOAmLRV4KB0uRBQCr8Pi/2JVaST+LZaR1sA
         uW5lpn/ZXQcoq4S9QNy8/2q2N1iJovdY4L/oUXmc56kben1W3zBJ14nplD2af9HNk8bY
         P3XRLzE9vszAVPiWOhyicGPwRBDcmSGSKszGuGlaNWaqo4BepmZPjIyrlMrxRu/j8KcA
         lPng==
X-Gm-Message-State: ANhLgQ1bKjvAkIU1MXCrTmtxHm/8ALINHrm+DyH3Tz1Wc6y7STcOxg6X
        Ja1uLQKzlgkIbch6vpD0JRfQ5YG3wRmE
X-Google-Smtp-Source: ADFU+vu288sFSt11Qek/NJ9edzx6Ik5VpV0z7KGXLXL8qHNO1/Re0wIomUu+WPPbOweT/mkzeqW3EKHV9Tjl
X-Received: by 2002:a17:90a:ba93:: with SMTP id t19mr4040036pjr.67.1585053326283;
 Tue, 24 Mar 2020 05:35:26 -0700 (PDT)
Date:   Tue, 24 Mar 2020 05:35:14 -0700
Message-Id: <20200324123518.239768-1-rajatja@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2 1/5] input/serio/i8042: Attach fwnode to serio i8042 kbd device
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
2.25.1.696.g5e7596f4ac-goog

