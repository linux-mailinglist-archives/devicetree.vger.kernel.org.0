Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B026220774
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 10:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730206AbgGOIfR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 04:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730191AbgGOIfQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 04:35:16 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C09C08C5C1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:35:16 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id z5so2732405pgb.6
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WPolAUEN8R+26Nb1p0YR+16g+IcA7gsrUiiI7xSTFn8=;
        b=Gq7wo52xCqehQ6QK/f2liMmmxxUT5CSK8hJv2qgPncNQnTQn3pGDoSbccnMYQPC3Ml
         fUaTM8lUFNIsaA/w4hoWS0GxLPNzSTDRuGYwsvh+G5WVXWKoQ+aWaAARX8UUMNAzxr3t
         nUIKNkVrkGhszsESFqPHATprCHgotgLFyLTYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WPolAUEN8R+26Nb1p0YR+16g+IcA7gsrUiiI7xSTFn8=;
        b=RK9V2weKNTuzlL/IhYOfbOO/kt826xZXMNLtb82p9u9x6u94GN4a64KGnPRL1b/IDb
         EJHoyj1N+NayNi0/KK2n4d7kOfjrtUOYuZ0ym/p6bmavaHfdltILD2AFvCIK+XcBiiEc
         jxeFdL5nU9bV7iCarLWA1kdvgPeCk9lA2HTuGup86cTQI9vAr0tMj3k+upTNnaozBlWl
         j1VXEe21iCZw+NmAsYAIr4NTODMtJQ6SjXkq8/dXclu56Lp17k5GDPhBUrLhjm4DV+wz
         PDpX43Tsoa4+5uJk2a0K9qhL/u178XVn44vYnvzcP96++TbhyVfbXbs0XfVJoKJWDYSa
         yVcA==
X-Gm-Message-State: AOAM531hlh2OOc+OAZyeg8iIIwoqQFPYBd5eEsic2h99HHFgvqj3jC8E
        rWYbqQk5No3cwcPtYQLfnZE1fA==
X-Google-Smtp-Source: ABdhPJyYzrJs37beWQwtGNYJoh/xqyO8utCUQ58r7LA3J+ThvdUHJeGggZl5mk14AlpcbBbfuvbXNw==
X-Received: by 2002:a63:c947:: with SMTP id y7mr6972752pgg.357.1594802115768;
        Wed, 15 Jul 2020 01:35:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9887:56a8:c916:cfdb])
        by smtp.gmail.com with ESMTPSA id m92sm1467584pje.13.2020.07.15.01.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 01:35:14 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v6 7/7] ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support
Date:   Wed, 15 Jul 2020 14:04:18 +0530
Message-Id: <20200715083418.112003-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200715083418.112003-1-jagan@amarulasolutions.com>
References: <20200715083418.112003-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3288 SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N8 SBC.

So, add initial support for Rock Pi N8 by including rk3288,
rk3288 vamrc-som and raxda dalang carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v6:
- none

 arch/arm/boot/dts/Makefile              |  1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..1d1b6ac26394 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -964,6 +964,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-popmetal.dtb \
 	rk3288-r89.dtb \
 	rk3288-rock2-square.dtb \
+	rk3288-rock-pi-n8.dtb \
 	rk3288-tinker.dtb \
 	rk3288-tinker-s.dtb \
 	rk3288-veyron-brain.dtb \
diff --git a/arch/arm/boot/dts/rk3288-rock-pi-n8.dts b/arch/arm/boot/dts/rk3288-rock-pi-n8.dts
new file mode 100644
index 000000000000..b19593021713
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-rock-pi-n8.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Vamrs Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3288.dtsi"
+#include <arm/rockchip-radxa-dalang-carrier.dtsi>
+#include "rk3288-vmarc-som.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi N8";
+	compatible = "radxa,rockpi-n8", "vamrs,rk3288-vmarc-som",
+		     "rockchip,rk3288";
+};
-- 
2.25.1

