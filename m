Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B4342CA426
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391071AbgLANop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:44:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387932AbgLANop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:44:45 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E2EC061A4F
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:43:55 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id s2so1145083plr.9
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZmXMtKJx+N4tYwcvtUovyBiKEQa6t+IIEkwiQ3K9Kyk=;
        b=t6q6uhfFqDAV+Gpt9MD0/6YR8au50Pju9fWCyH2hnyNEP9wJiJPqna+SH1c5DoAYUX
         s1a+2RKgaD8aqVVp2TFcKKf2+RYPuIlugkr+VezgnCx+YhZ1uLSoBB7vL1bU9e5NRnO2
         1EoptdP+uf1iEIO00tkEZQeXawKJ0PGcHCViQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZmXMtKJx+N4tYwcvtUovyBiKEQa6t+IIEkwiQ3K9Kyk=;
        b=aTGP3+0mYkOZnecQ5ZOti8hARXT060+tEtseauOmYh51Bxav/VeI0JgjttGgACKM4+
         bFzuHOWM3WXDhSM2UT4qakMyVIxxKDFXpNhHG84MPs3l3oJYrQYqjHodctUGilj9H27z
         IiqNqEEKPKLE0r7JOWDxzGC0tbTaffNugbrOUfm7CGugmLECc2j3F5j9ZhHlewQFDAl3
         JhKVLY1dF/mgVeBIDNiGCGOmDH0M9oYTVAlD5g5I8nLzZq3esne33WvsYuLQOpbB3GCy
         bRhGDAU8+jdUO2lElivVhdKvxY69s6KOQ+B/dVE0cvXch1pRUkOiRjSNDMsH5HcAjIhb
         fXWw==
X-Gm-Message-State: AOAM530FT8IbDa+DVzf8pWCnQ9c20+24x3nJDiHp3KQ+6IMP6Hb3IqEg
        nhBImbYk0RMRgx8qCbBtOMdkMH9HU2Fm1Q==
X-Google-Smtp-Source: ABdhPJzL6sz8FhzIj/VnR2T4URGqVwifM9uOLkrsNrYxoV7xuyu2esfcbIqT9WWHFPe7wKzSDADh3w==
X-Received: by 2002:a17:902:7b97:b029:d8:ec6e:5c28 with SMTP id w23-20020a1709027b97b02900d8ec6e5c28mr2848453pll.40.1606830234662;
        Tue, 01 Dec 2020 05:43:54 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id g14sm2839248pji.32.2020.12.01.05.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 05:43:54 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v2 06/10] ARM: mstar: Add chip level dtsi for SSD202D
Date:   Tue,  1 Dec 2020 22:43:26 +0900
Message-Id: <20201201134330.3037007-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201134330.3037007-1-daniel@0x0f.com>
References: <20201201134330.3037007-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a chip level dtsi for the SigmaStar SSD202D

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi b/arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi
new file mode 100644
index 000000000000..176e10a29896
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mstar-infinity2m-ssd20xd.dtsi"
+
+/ {
+	memory {
+		device_type = "memory";
+		reg = <0x20000000 0x8000000>;
+	};
+};
-- 
2.29.2

