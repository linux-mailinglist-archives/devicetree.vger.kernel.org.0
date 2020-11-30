Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F67C2C84D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726658AbgK3NMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:12:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726604AbgK3NMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:12:32 -0500
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E91C061A53
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:15 -0800 (PST)
Received: by mail-pj1-x1044.google.com with SMTP id r9so1304940pjl.5
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nZs3cd4haoA+TDqA6POpYN8YC7m6XfHT6GH0HjPmBjM=;
        b=oWiTzhnWl/fQzg1T9slRgtaCt2/g+zGGbYypUTCPsAaNuTGD1V9388NUIlN42/3WhV
         qe3Bl+aMhPqMT74y+tckf+P6MQbKeZYQ4eHTh5rwxfaPZRCkIqeIFgB1NnqjhijjGcqW
         9iF+u34DvdJcMECKwlV0xemBcxb+3fT4aSc64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nZs3cd4haoA+TDqA6POpYN8YC7m6XfHT6GH0HjPmBjM=;
        b=dScJscpT3EmrobO4YAOxlhIhSHZb/YhbJpevb81S9TIZ08BAsp0kGcb+zY9Cs2b90E
         iMtGk5bi85H1VaiA/4LtMBAlPae69LQvYB6RiKvxAE+hDNZbAQShGFWFcP09xCBDGmWY
         5BcUXabw81YWB9OLknPNIO8Stm3RXgJTyNorvfIh8EAJswo81h8nPsY1Qe4hV2UhBrfi
         vt2zHDkn0QKpIzjng5+zUVFHLNi6MEycDWPziwxzTg2jWBVQ7xwI9RDFU70aq5SmW05C
         DjCdeo/5RS0v+TYmutvLRAMFwmEV0CZxSnt97Yl2bAAFJkzODxrNOQEnQxPYBwe+//jy
         SKaQ==
X-Gm-Message-State: AOAM530F/JkI5mCQjITr8lilZ4wdPI3y4Kvs5cmk7hUhBXhvCfXFskFb
        earlMor9EWpNvc/Oob1PX/1a9WCsB3CMtQ==
X-Google-Smtp-Source: ABdhPJySImjWhN6xL9PrA3Yr3Eik7V1N2YySDWWv9vPlrD8E6aid9ZwdUUtNQXTeSzZx1li54Hs1uA==
X-Received: by 2002:a17:902:ee0b:b029:da:1856:72c2 with SMTP id z11-20020a170902ee0bb02900da185672c2mr18784979plb.0.1606741874508;
        Mon, 30 Nov 2020 05:11:14 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id a4sm41757578pjq.0.2020.11.30.05.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 05:11:13 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        w@1wt.eu, daniel@0x0f.com
Subject: [PATCH 7/9] ARM: mstar: Add dts for Honestar ssd201htv2
Date:   Mon, 30 Nov 2020 22:10:45 +0900
Message-Id: <20201130131047.2648960-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201130131047.2648960-1-daniel@0x0f.com>
References: <20201130131047.2648960-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a dts for the Honestar ssd201htv2 devkit.
This is for the board populated with a SSD202D.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../mstar-infinity2m-ssd202d-ssd201htv2.dts   | 25 +++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d-ssd201htv2.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index ce66ffd5a1bb..ccbf44b6f32a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1372,6 +1372,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	mstar-infinity-msc313-breadbee_crust.dtb \
+	mstar-infinity2m-ssd202d-ssd201htv2.dtb \
 	mstar-infinity3-msc313e-breadbee.dtb \
 	mstar-mercury5-ssc8336n-midrived08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-ssd201htv2.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-ssd201htv2.dts
new file mode 100644
index 000000000000..5d81641414a2
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-ssd201htv2.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mstar-infinity2m-ssd202d.dtsi"
+
+/ {
+	model = "SSD201_HT_V2";
+	compatible = "honestar,ssd201htv2", "mstar,infinity2m";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.29.2

