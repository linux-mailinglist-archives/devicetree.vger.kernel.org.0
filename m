Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BDA2318496
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 06:23:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbhBKFXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 00:23:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbhBKFXO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 00:23:14 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD26BC061786
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:34 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id fa16so2778266pjb.1
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aYhUIVZutNA2/DQTvTyK77zrU/arYQJ7jJF49VHfkCY=;
        b=r4mHvsGoZpB5DMubHMYTxmD1dmTAvgR9loBhGV68jfCSYU27ybvZ7EpKwZQIoOYOiH
         udvnTpjvUPlf6jVlaeP8myBglx+UzjHDEvgxuvqgCck09iaZpIq7eOkjk292M0l1yizL
         MBxRa8sYNzV7AygsLImPBIcIbmdIIdD7tn8fE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aYhUIVZutNA2/DQTvTyK77zrU/arYQJ7jJF49VHfkCY=;
        b=FiBcEAcXN695/jx+TSh/e7lnMSpKnDGPZS8kj3Ics09LanQyP5T8OXeD+1xpn3uD/1
         Y6ziW2v0BX8UsHjD9It9x/CUmGaPYc8JvDulYnpgiiD9j0uLfU4amSvAMukxNci6jAjn
         jFaQgf9zFCIfV6fnFlFivpKSiEVNZ8QsQP3T3SLgesDkFz0qI4buAV9TShH/N8kNu8lF
         HMMiF23F/6FXCI8Ic73JweTLMsl9ShK8FgICUNFkUYM7dImhfrb3GmQGihihPwRQR0it
         OdoEinLppsekqvwxYV82z5cfEsrHcbMhnCfeSnSs8xGuEz0yxjY0fNwOSwv4lMYyBfJd
         SwjA==
X-Gm-Message-State: AOAM533LovhMRJAsqpodtM7XpdXMWxp0R7T+X4NPYpIN3UOhlPk52SUs
        uEcj8imZAYecIWsgtDfpfQqrlQ==
X-Google-Smtp-Source: ABdhPJx8H+6qwzrCS6BOEeFVn/RIWDSDyrwQHo84KFhcRbLlxzCUq1Yj8tIPobXq/XKRyLHHk/sT3w==
X-Received: by 2002:a17:90a:bf10:: with SMTP id c16mr2339540pjs.101.1613020954311;
        Wed, 10 Feb 2021 21:22:34 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id o21sm3493511pjp.42.2021.02.10.21.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 21:22:34 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-clk@vger.kernel.org, sboyd@kernel.org,
        devicetree@vger.kernel.org
Cc:     w@1wt.eu, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/7] dt-bindings: clk: mstar msc313 mpll binding header
Date:   Thu, 11 Feb 2021 14:22:00 +0900
Message-Id: <20210211052206.2955988-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210211052206.2955988-1-daniel@0x0f.com>
References: <20210211052206.2955988-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple header to document the relationship between the MPLL outputs
and which divider they come from.

Output 0 is missing because it should not be consumed.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 MAINTAINERS                                   |  1 +
 include/dt-bindings/clock/mstar-msc313-mpll.h | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/clock/mstar-msc313-mpll.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 64c7169db617..0622ff96ca2a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2149,6 +2149,7 @@ F:	Documentation/devicetree/bindings/gpio/mstar,msc313-gpio.yaml
 F:	arch/arm/boot/dts/mstar-*
 F:	arch/arm/mach-mstar/
 F:	drivers/gpio/gpio-msc313.c
+F:	include/dt-bindings/clock/mstar-*
 F:	include/dt-bindings/gpio/msc313-gpio.h
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/include/dt-bindings/clock/mstar-msc313-mpll.h b/include/dt-bindings/clock/mstar-msc313-mpll.h
new file mode 100644
index 000000000000..1b30b02317b6
--- /dev/null
+++ b/include/dt-bindings/clock/mstar-msc313-mpll.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+/*
+ * Output definitions for the MStar/SigmaStar MPLL
+ *
+ * Copyright (C) 2020 Daniel Palmer <daniel@thingy.jp>
+ */
+
+#ifndef _DT_BINDINGS_CLOCK_MSTAR_MSC313_MPLL_H
+#define _DT_BINDINGS_CLOCK_MSTAR_MSC313_MPLL_H
+
+#define MSTAR_MSC313_MPLL_DIV2	1
+#define MSTAR_MSC313_MPLL_DIV3	2
+#define MSTAR_MSC313_MPLL_DIV4	3
+#define MSTAR_MSC313_MPLL_DIV5	4
+#define MSTAR_MSC313_MPLL_DIV6	5
+#define MSTAR_MSC313_MPLL_DIV7	6
+#define MSTAR_MSC313_MPLL_DIV10	7
+
+#endif
-- 
2.30.0.rc2

