Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1266310038
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 23:41:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbhBDWkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 17:40:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbhBDWk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 17:40:28 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E1F1C06178A
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 14:39:34 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id dh16so3432259qvb.11
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 14:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=gziCZeOtguvR7/4aBYbBoYzK8/554eSy4zrpV/kkJaA=;
        b=MHR4Xli2I24AgwyqdRLzwHrMHNz+YM3B3CFbZSeGTIC9ecnhC6BTfbFshQf9VDrOib
         Dku27VBPwSlAgujBVLjbKGsE7CbggU3xzinvdRqIASUenJvR2fqAHmH1Lml2Jy02U8vB
         +irs4Nhrfo4sDOF1oj2TLfQSCIXyeFQGkPLQo7+rzdMqh3LxQuN5Eu+/jFHN6FCmnQPY
         K+lh/eyJDpDBirApdHC8h4+CkwW90qnk+HaglF8oqOQ2D1+lasYCsM4gJRIIdaoqbiyj
         pbeYqd9s06YjMTiWxYOmrnsbPvDkXkJ1+TkSalZoV0EMcSTbFgYEqsw62Tyve2rIphOO
         lrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=gziCZeOtguvR7/4aBYbBoYzK8/554eSy4zrpV/kkJaA=;
        b=kjKlGIAnOdBV3r6Jp0oz9H20yFedvRIUHVpWbe6hE+wBMKC8A979627Faw3hiBxFqF
         KjMIN/3grVBwNhtxnci+O5LSYIGYLEZE00zN3x3b5GY1tjBYTIgUxeXz3aWTn9xSAuUP
         Sa+yJ570s0pQWk9x/iajJfGhZyaefZNLGR56H77cFlfdi5IG7QGdpDvrcEDuC360M46I
         6io5MEOhU8kFiCGhY5N5n6wFuJfwk34D8mAy88Rq9XYe7BphuyeqwFW86rKu/dWeE1tX
         YztRWq5jaOWsVeoJxY0lthfsIUlo7zS0gCwJUiByXeJVUZ2gVflzaSolNw3726zFvjHU
         d1Tg==
X-Gm-Message-State: AOAM533uSRxDv8ViKDdtEEU42tBn0vtlA71wqKjrBBxOhix6YiuxjACe
        ICji3VlaTtyrd1LUhOIANq87Pn8n0lVtAVI=
X-Google-Smtp-Source: ABdhPJwXyRBXE/1Uh19s4fjUEN6pHJQGzbSU9PJuDLDzC9SG8AghYE2YKw0bDYwV0yzV+iVGC4j3lO96SpvvN+Y=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:8475:2f1d:e8b4:f65a])
 (user=saravanak job=sendgmr) by 2002:a0c:a99e:: with SMTP id
 a30mr1594869qvb.38.1612478373421; Thu, 04 Feb 2021 14:39:33 -0800 (PST)
Date:   Thu,  4 Feb 2021 14:39:20 -0800
In-Reply-To: <20210204223921.1693487-1-saravanak@google.com>
Message-Id: <20210204223921.1693487-4-saravanak@google.com>
Mime-Version: 1.0
References: <20210204223921.1693487-1-saravanak@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v3 3/4] driver core: Add fw_devlink.strict kernel param
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Marc Zyngier <maz@kernel.org>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Martin Kaiser <martin@kaiser.cx>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This param allows forcing all dependencies to be treated as mandatory.
This will be useful for boards in which all optional dependencies like
IOMMUs and DMAs need to be treated as mandatory dependencies.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/admin-guide/kernel-parameters.txt |  5 +++++
 drivers/base/core.c                             | 12 ++++++++++++
 include/linux/fwnode.h                          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index a10b545c2070..692b63644133 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -1433,6 +1433,11 @@
 				to enforce probe and suspend/resume ordering.
 			rpm --	Like "on", but also use to order runtime PM.
 
+	fw_devlink.strict=<bool>
+			[KNL] Treat all inferred dependencies as mandatory
+			dependencies. This only applies for fw_devlink=on|rpm.
+			Format: <bool>
+
 	gamecon.map[2|3]=
 			[HW,JOY] Multisystem joystick and NES/SNES/PSX pad
 			support via parallel port (up to 5 devices per port)
diff --git a/drivers/base/core.c b/drivers/base/core.c
index c95b1daabac7..f466ab4f1c35 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -1521,6 +1521,13 @@ static int __init fw_devlink_setup(char *arg)
 }
 early_param("fw_devlink", fw_devlink_setup);
 
+static bool fw_devlink_strict;
+static int __init fw_devlink_strict_setup(char *arg)
+{
+	return strtobool(arg, &fw_devlink_strict);
+}
+early_param("fw_devlink.strict", fw_devlink_strict_setup);
+
 u32 fw_devlink_get_flags(void)
 {
 	return fw_devlink_flags;
@@ -1531,6 +1538,11 @@ static bool fw_devlink_is_permissive(void)
 	return fw_devlink_flags == FW_DEVLINK_FLAGS_PERMISSIVE;
 }
 
+bool fw_devlink_is_strict(void)
+{
+	return fw_devlink_strict && !fw_devlink_is_permissive();
+}
+
 static void fw_devlink_parse_fwnode(struct fwnode_handle *fwnode)
 {
 	if (fwnode->flags & FWNODE_FLAG_LINKS_ADDED)
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 21082f11473f..d5caefe39d93 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -162,6 +162,7 @@ static inline void fwnode_init(struct fwnode_handle *fwnode,
 }
 
 extern u32 fw_devlink_get_flags(void);
+extern bool fw_devlink_is_strict(void);
 int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup);
 void fwnode_links_purge(struct fwnode_handle *fwnode);
 
-- 
2.30.0.365.g02bc693789-goog

