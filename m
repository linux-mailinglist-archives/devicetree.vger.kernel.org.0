Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC1222568EE
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 18:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728442AbgH2QAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 12:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728412AbgH2P7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 11:59:05 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0EEEC0611E9
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:58 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id p15so1040655pli.6
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iXLYxKXetHW9WTJtF+vGPv55kJPJHPkGYNRwTSrKTCo=;
        b=KeB/x5T+auurih0+yuTY+7OioqiCvYGlG2DWIPT/zmh50G4R4sT/QA8r6a+FioR9xI
         GOImcIilnSzUdCIqJArAy8ugfrhiAFkHrMEP4DuaUz/vogacU1+knSh2BcSYbG5xuYi4
         t9s5mxCwMCydNBgzmZv2d0K12d8onSiocDGwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iXLYxKXetHW9WTJtF+vGPv55kJPJHPkGYNRwTSrKTCo=;
        b=SFOe/TmSb5aAu1vnjEXrP/yR4kj4eWCzxGR+BAdOhxXt3vRxx9eSJSaN50ITF2ju2G
         AVz9bhUIVmxaN4fHs3xdoH4xSm6490oZKKoR76Spi0ctNNbzQnPxWK5SotB9wQHJD5lk
         /xMZPo2HsGBu2h+f/6JZcngjgD40GdU/x5teYre16dxndaHaC4iUbOmqVTyUz2SFvWfF
         4WeJ2QYMv8HkL9SPmlkp+rkiz2PnhM2fr3sJUaEU+PzuDj3sQ9VT/ZvDEevGWeu6oj4L
         pCV33SY5DueVKwYvPG7Tf7XYsL24ptyqPfLF90SgCILcB5NChoYRCl9wmY/cmvYZ8wcJ
         zPbw==
X-Gm-Message-State: AOAM531x9QkFy8+fzwz0U9qPD2S+43mz4KAz0/0AILFNWwpiYtzJi10J
        caAc1rQt875Juts2cDdRyO6fBQ==
X-Google-Smtp-Source: ABdhPJzjSZy/cBhLA6BC9pbWCJALB2J/HfYDGnXcW1uiUlt0SvanuHHz3S2i7dLHzNshBwTOph21ng==
X-Received: by 2002:a17:90a:77c7:: with SMTP id e7mr3487259pjs.175.1598716737286;
        Sat, 29 Aug 2020 08:58:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id j20sm3131714pfi.122.2020.08.29.08.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 08:58:56 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date:   Sat, 29 Aug 2020 21:28:22 +0530
Message-Id: <20200829155823.247360-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose
carrier board with capacitive touch interface.

Genaral features:
- TFT 10.1" industrial, 1280x800 LVDS display
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN
- LVDS panel connector

SOM's like PX30.Core needs to mount on top of this Carrier board
for creating complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
new file mode 100644
index 000000000000..cb00988953e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1

