Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 56BAC820CA
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 17:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727460AbfHEPxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 11:53:35 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:37935 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726559AbfHEPxf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 11:53:35 -0400
Received: by mail-wm1-f66.google.com with SMTP id s15so52168593wmj.3
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gimpelevich-san-francisco-ca-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=kyGPeqSrHcsD5WJOBf4RVsUUEKiOCYL/y48XAdAiVNU=;
        b=NC7Q46k9tCnhWyj9w+DkUgP7I2mrIs6jzZfdMjGWVeodYsa0AzCJqwNCeT3dWQPOkH
         yl4m4cJvhxE9edCr2C94KFAzRGrUHzQNUKAIkixAfJKvyaV42axahfI4WlF9QT+xGkck
         O+Qr9TRovu7Amliw2uSf6MqjC3H65/s3QUQX8LctF+1JCLEeIJX3D/YjdyWpEHkmxyh8
         +L3dq9wN2CRPuMQKeb/oQB9yXrFQLSCR8TVybIZASVKtf+lrb9eN6qIrOgpZsEUW68wY
         6vZrAyqMGAEZYZ+TcMQceiWfPsWSRwhHUE5cUCW9nbZZtJggP+Ylv4bF0OMqiCau7W29
         Bpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kyGPeqSrHcsD5WJOBf4RVsUUEKiOCYL/y48XAdAiVNU=;
        b=VGiBDcnM8CY7PHXThSclBJNar5NYdLi6qf5FBTFNkr2HFtXRFoMJmKDLkNL3JBBoo5
         81VNx6QBXA6qoXRioNKLfQYDt9uxJnuyuHbi9LCRZetk6OKxeV79bnhh/Dn8BHTrP9A7
         LjMl5doFx9ejmRVJEnNTndGk5Ot1838ADhZClxcEQZGLHN5po0R/+E9AVZEOLol3bZH7
         l4zhUb9eQnuWSOO6UKsPJ83A+IU50TkeDX9+Yx5A5QaqqKEjc1mNWFyPRVZXK+lPkbCm
         3xbbGegMt3uVw+vopCnoGAe7BiX/kTb89IWYXApQLNtB+EJF3dLh3Vmk6Io6sMOdi5u9
         +WQQ==
X-Gm-Message-State: APjAAAVXVd4yncR5U7cXRRC8r+LASn78VCpp7JbhgLtNHzRuGrhFkGbW
        MpwvlwMVIE363VkTA7p55xHGta+AbGKPsw==
X-Google-Smtp-Source: APXvYqyNrz2AgeLTd39TKWy38T3tZo2pkFJVp2PzGxR1MmTT7mciRDv7GDxbOYDAgwN4NiGWkBzI5g==
X-Received: by 2002:a1c:f90f:: with SMTP id x15mr18788189wmh.69.1565020413077;
        Mon, 05 Aug 2019 08:53:33 -0700 (PDT)
Received: from chimera.lan (157-131-153-118.fiber.dynamic.sonic.net. [157.131.153.118])
        by smtp.gmail.com with ESMTPSA id h16sm98674399wrv.88.2019.08.05.08.53.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Aug 2019 08:53:32 -0700 (PDT)
From:   Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
To:     devicetree@vger.kernel.org
Cc:     Paul Burton <paul.burton@mips.com>
Subject: [PATCH v2] of/fdt: implement a "merge-cmdline" property
Date:   Mon,  5 Aug 2019 08:53:20 -0700
Message-Id: <1565020400-25679-1-git-send-email-daniel@gimpelevich.san-francisco.ca.us>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, "bootargs" supplied via the "chosen" node can be used only to
supply a kernel command line as a whole. No mechanism exists in DT to add
bootargs to the existing command line instead. This is needed in order to
avoid having to update the bootloader or default bootloader config when
upgrading to a DTB and kernel pair that requires bootargs not previously
needed.

One example use case is that OpenWrt currently supports four ARM devices by
means of locally applying the previously rejected edition of this patch. So
far, the patch has been used in production only on ARM, but architecture is
not a distinction in the design.

On MIPS, Commit 951d223 ("MIPS: Fix CONFIG_CMDLINE handling") currently
prevents support of such a mechanism, so I am including a workaround, in
anticipation of upcoming changes.

Signed-off-by: Daniel Gimpelevich <daniel@gimpelevich.san-francisco.ca.us>
Fixes: 951d223 ("MIPS: Fix CONFIG_CMDLINE handling")
References: https://patchwork.linux-mips.org/patch/17659/
---
 arch/mips/kernel/setup.c | 12 ++++++++----
 drivers/of/fdt.c         |  9 +++++++--
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index ab349d2..9ce58f2 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -725,7 +725,10 @@ static void __init arch_mem_init(char **cmdline_p)
 	 * CONFIG_CMDLINE ourselves below & don't want to duplicate its
 	 * content because repeating arguments can be problematic.
 	 */
-	strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
+	if (USE_DTB_CMDLINE)
+		strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
+	else
+		strlcpy(boot_command_line, " ", COMMAND_LINE_SIZE);
 
 	/* call board setup routine */
 	plat_mem_setup();
@@ -753,9 +756,10 @@ static void __init arch_mem_init(char **cmdline_p)
 #if defined(CONFIG_CMDLINE_BOOL) && defined(CONFIG_CMDLINE_OVERRIDE)
 	strlcpy(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
 #else
-	if ((USE_PROM_CMDLINE && arcs_cmdline[0]) ||
-	    (USE_DTB_CMDLINE && !boot_command_line[0]))
+	if (USE_PROM_CMDLINE)
 		strlcpy(boot_command_line, arcs_cmdline, COMMAND_LINE_SIZE);
+	else if (!strcmp(boot_command_line, " "))
+		boot_command_line[0] = '\0';
 
 	if (EXTEND_WITH_PROM && arcs_cmdline[0]) {
 		if (boot_command_line[0])
@@ -764,7 +768,7 @@ static void __init arch_mem_init(char **cmdline_p)
 	}
 
 #if defined(CONFIG_CMDLINE_BOOL)
-	if (builtin_cmdline[0]) {
+	if (builtin_cmdline[0] && strcmp(boot_command_line, builtin_cmdline)) {
 		if (boot_command_line[0])
 			strlcat(boot_command_line, " ", COMMAND_LINE_SIZE);
 		strlcat(boot_command_line, builtin_cmdline, COMMAND_LINE_SIZE);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b..08c25eb 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1055,8 +1055,13 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
 
 	/* Retrieve command line */
 	p = of_get_flat_dt_prop(node, "bootargs", &l);
-	if (p != NULL && l > 0)
-		strlcpy(data, p, min(l, COMMAND_LINE_SIZE));
+	if (p != NULL && l > 0) {
+		if (!of_get_flat_dt_prop(node, "merge-cmdline", NULL))
+			*(char *)data = '\0';
+		if (*(char *)data)
+			strlcat(data, " ", COMMAND_LINE_SIZE);
+		strlcat(data, p, min(l + strlen(data), COMMAND_LINE_SIZE));
+	}
 
 	/*
 	 * CONFIG_CMDLINE is meant to be a default in case nothing else
-- 
1.9.1

