Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3113257564
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728292AbgHaIaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728041AbgHaI3x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 04:29:53 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C185BC061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:53 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id h2so2698067plr.0
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X5CPGOUWWa4mK5texr7z3mEccnOicqEb24j4H7skHsw=;
        b=XBJyJ7yWN/QlW12WTAMdjRBUGxlh49Azi76WllVN99m8yQSgRFYmhiF+KHriRY4s78
         xutjvYBbp/vn//kZMGpHrydsgXvN/wseSmka6dcm31snRLcRBH56xcy5Z/kF2S9Rg6uq
         Te+rZya+CMAD6txAZn124IMODkKhQfjgI2E0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X5CPGOUWWa4mK5texr7z3mEccnOicqEb24j4H7skHsw=;
        b=dCTT49L3EIV52G7I589S9+AVjTeGdlcCaw539u3ujcpZU5nJnkTPp4AW0HV8Cy8fIY
         QTpdj0YFWKSNVHqlR8Inz7+HnovyTu2nVCphWQjVvIr0SBCTIm4jTX508Itj4Uuev16r
         q9Pyf7JTvk6stHE/CpD4WuTlLch2RAmD5X3kCwkdYb0B7gaRjlSwtVZTO2Z3vYfDJZGY
         PqzhfillMo7UcwSZ2nH7gbanbtYeN/HyozH1FRukbJEdmZQCykq6AJtmkuOa808Q+81l
         iP7PD2CYAOrPoXMQO2Zx6ypTxvvzXmGYmmIDtb1MnSDZTirNNBNzYgUkMS9voWmRvznQ
         7wyw==
X-Gm-Message-State: AOAM532e7UtRQXcHZEjUHrCT3+VvSionRcPy4NPrxn9VDAfmldIwtFJL
        6uK2eL55IicT13I5yBeF6PAoHg==
X-Google-Smtp-Source: ABdhPJz9RauHSdZ3W9HtEtr0HT8jIbMEJ/AIawBdCajj1oOVlNtq/rDMXIolVrnFjmDyeqmz6BS2rA==
X-Received: by 2002:a17:90a:cd06:: with SMTP id d6mr382520pju.202.1598862593334;
        Mon, 31 Aug 2020 01:29:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
        by smtp.gmail.com with ESMTPSA id b5sm6411335pgi.83.2020.08.31.01.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 01:29:52 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
Date:   Mon, 31 Aug 2020 13:59:16 +0530
Message-Id: <20200831082917.17117-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
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
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
Changes for v3:
- add Amarula Solutions copyright
Changes for v2:
- none

 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
new file mode 100644
index 000000000000..58425b1e559f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1

