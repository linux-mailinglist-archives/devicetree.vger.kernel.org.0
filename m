Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D2E4194F6
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 23:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726862AbfEIVzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 17:55:40 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39385 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726838AbfEIVzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 17:55:40 -0400
Received: by mail-pl1-f196.google.com with SMTP id g9so1780149plm.6
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 14:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rcV4LzwmKBnpE7umc+ApCVP3ZX0bL2/psBTyAogQuR8=;
        b=bfgv7eRr3Qq/abg1fCaZ0uPWdDH+fTot/tptWDBp0ELGiJF4CIsL8kEHM8PdArQ/OS
         8hNbQ2ewc5opcOB1U9MB8C5PbL89dZYTesY7+8ugMz9h8411RDWyRCiIpuQa+zZxddGT
         minh0fxtGtiQZI1xOZiKPO67vtNYwj4mSFaNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rcV4LzwmKBnpE7umc+ApCVP3ZX0bL2/psBTyAogQuR8=;
        b=ZOGwPmYpseQjoa2T4tcG5zGNEjP89j0TEiUDet602kH/5hBTTIn33YzL8OeZNJe3aX
         cwru7IGAez4glwtNeGYndrXJyo9OKNo+deCMQOOyPcj0i0NEOFIJsqIufS+ac5k4B735
         Q211W42Lb+4V/QD2T+HtZ3M66/v/7i8x0tTfBey7DIo7/PsKHBWHv4gLE6ag5t9rTGVC
         GvHM7CKrfxFgxzckCTJRYbo3oTBe/8eQJ6k4VY+3wZA2js61kQFGBKZ2Q+7axddLLa8I
         pFeb/70UFSujZO+xdcTqqZoEehhNOzrlSZVPPKvR1t4l5Jf/v9qDQKJKJFoNnOq9rd5/
         oaGw==
X-Gm-Message-State: APjAAAX6wSg0l+XWXPGZRi6e1hNeRDTnKLLzVMWaq+Nc+/diShARLLQS
        uQ6I3NLTOASyb4CQOPC2FaR+5w==
X-Google-Smtp-Source: APXvYqxf4IZj95K3+YmHRrP8GL5dNHoyaMb6eyjNSl4Bc9/5PHCz6nd4EcCbkeOcgs1L00U5lq3dlw==
X-Received: by 2002:a17:902:441:: with SMTP id 59mr8405477ple.242.1557438939508;
        Thu, 09 May 2019 14:55:39 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l65sm7934163pfb.7.2019.05.09.14.55.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 14:55:38 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>
Subject: [PATCH 1/2] of/fdt: Remove dead code and mark functions with __init
Date:   Thu,  9 May 2019 14:55:37 -0700
Message-Id: <20190509215538.93346-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some functions in here are never called, and others are only called
during __init. Remove the dead code and some dead exports for functions
that don't exist (I'm looking at you of_fdt_get_string!). Mark some
functions with __init so we can throw them away after we boot up and
poke at the FDT blob too.

Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../devicetree/bindings/common-properties.txt |  4 +-
 drivers/of/fdt.c                              | 37 +++----------------
 include/linux/of_fdt.h                        | 11 ------
 3 files changed, 7 insertions(+), 45 deletions(-)

diff --git a/Documentation/devicetree/bindings/common-properties.txt b/Documentation/devicetree/bindings/common-properties.txt
index a3448bfa1c82..1c50d8700ab5 100644
--- a/Documentation/devicetree/bindings/common-properties.txt
+++ b/Documentation/devicetree/bindings/common-properties.txt
@@ -25,8 +25,8 @@ Optional properties:
 If a binding supports these properties, then the binding should also
 specify the default behavior if none of these properties are present.
 In such cases, little-endian is the preferred default, but it is not
-a requirement.  The of_device_is_big_endian() and of_fdt_is_big_endian()
-helper functions do assume that little-endian is the default, because
+a requirement.  The of_device_is_big_endian()
+helper function assumes that little-endian is the default, because
 most existing (PCI-based) drivers implicitly default to LE by using
 readl/writel for MMIO accesses.
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..918098c9f72a 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -38,7 +38,7 @@
  * memory entries in the /memory node. This function may be called
  * any time after initial_boot_param is set.
  */
-void of_fdt_limit_memory(int limit)
+void __init of_fdt_limit_memory(int limit)
 {
 	int memory;
 	int len;
@@ -110,25 +110,6 @@ static int of_fdt_is_compatible(const void *blob,
 	return 0;
 }
 
-/**
- * of_fdt_is_big_endian - Return true if given node needs BE MMIO accesses
- * @blob: A device tree blob
- * @node: node to test
- *
- * Returns true if the node has a "big-endian" property, or if the kernel
- * was compiled for BE *and* the node has a "native-endian" property.
- * Returns false otherwise.
- */
-bool of_fdt_is_big_endian(const void *blob, unsigned long node)
-{
-	if (fdt_getprop(blob, node, "big-endian", NULL))
-		return true;
-	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN) &&
-	    fdt_getprop(blob, node, "native-endian", NULL))
-		return true;
-	return false;
-}
-
 static bool of_fdt_device_is_available(const void *blob, unsigned long node)
 {
 	const char *status = fdt_getprop(blob, node, "status", NULL);
@@ -145,8 +126,8 @@ static bool of_fdt_device_is_available(const void *blob, unsigned long node)
 /**
  * of_fdt_match - Return true if node matches a list of compatible values
  */
-int of_fdt_match(const void *blob, unsigned long node,
-                 const char *const *compat)
+static int __init of_fdt_match(const void *blob, unsigned long node,
+			       const char *const *compat)
 {
 	unsigned int tmp, score = 0;
 
@@ -758,7 +739,7 @@ int __init of_scan_flat_dt_subnodes(unsigned long parent,
  * @return offset of the subnode, or -FDT_ERR_NOTFOUND if there is none
  */
 
-int of_get_flat_dt_subnode_by_name(unsigned long node, const char *uname)
+int __init of_get_flat_dt_subnode_by_name(unsigned long node, const char *uname)
 {
 	return fdt_subnode_offset(initial_boot_params, node, uname);
 }
@@ -771,14 +752,6 @@ unsigned long __init of_get_flat_dt_root(void)
 	return 0;
 }
 
-/**
- * of_get_flat_dt_size - Return the total size of the FDT
- */
-int __init of_get_flat_dt_size(void)
-{
-	return fdt_totalsize(initial_boot_params);
-}
-
 /**
  * of_get_flat_dt_prop - Given a node in the flat blob, return the property ptr
  *
@@ -804,7 +777,7 @@ int __init of_flat_dt_is_compatible(unsigned long node, const char *compat)
 /**
  * of_flat_dt_match - Return true if node matches a list of compatible values
  */
-int __init of_flat_dt_match(unsigned long node, const char *const *compat)
+static int __init of_flat_dt_match(unsigned long node, const char *const *compat)
 {
 	return of_fdt_match(initial_boot_params, node, compat);
 }
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index a713e5d156d8..acf820e88952 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -23,15 +23,6 @@
 struct device_node;
 
 /* For scanning an arbitrary device-tree at any time */
-extern char *of_fdt_get_string(const void *blob, u32 offset);
-extern void *of_fdt_get_property(const void *blob,
-				 unsigned long node,
-				 const char *name,
-				 int *size);
-extern bool of_fdt_is_big_endian(const void *blob,
-				 unsigned long node);
-extern int of_fdt_match(const void *blob, unsigned long node,
-			const char *const *compat);
 extern void *of_fdt_unflatten_tree(const unsigned long *blob,
 				   struct device_node *dad,
 				   struct device_node **mynodes);
@@ -64,9 +55,7 @@ extern int of_get_flat_dt_subnode_by_name(unsigned long node,
 extern const void *of_get_flat_dt_prop(unsigned long node, const char *name,
 				       int *size);
 extern int of_flat_dt_is_compatible(unsigned long node, const char *name);
-extern int of_flat_dt_match(unsigned long node, const char *const *matches);
 extern unsigned long of_get_flat_dt_root(void);
-extern int of_get_flat_dt_size(void);
 extern uint32_t of_get_flat_dt_phandle(unsigned long node);
 
 extern int early_init_dt_scan_chosen(unsigned long node, const char *uname,
-- 
Sent by a computer through tubes

