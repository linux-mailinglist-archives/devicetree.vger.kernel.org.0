Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB24C5ECD4
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727066AbfGCThc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:37:32 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34670 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726805AbfGCThb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 15:37:31 -0400
Received: by mail-pl1-f196.google.com with SMTP id i2so1777506plt.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DQZ58FD/CMop10T7Gp1bzD+eWeahigYqOQwY2UyguU8=;
        b=SBPe3IE51/7ccubMHDlsTs11O7jUmvYCXQFNbE9FVfb49LtIoeT+lamCuOhFuBs2Oh
         Hpm6bDBdEmGVl3OXVsxoe/nrh9Lg/2IZATTZFWB2+lWtQrFbjycVF/q+j2XPnd8cdTyq
         Hj0UzTsvFWGfGVOi9VpYwZh2sTZ1//TQrbatw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DQZ58FD/CMop10T7Gp1bzD+eWeahigYqOQwY2UyguU8=;
        b=Q4qhlzdZ6EULb0NSf5itxmMHt7XNKpinYyY0R+wqevs+xhDKnf3vvd6FpTF4R/qXzD
         4gLiT6nk8LUR+D7jUjjtGz+iARbS2ibzWzHOE1vQe8kkq9i2oFqtKpjAF7AtA/8Bk5Xr
         QA5fDItStuxdQDJVGLzxtPAUmqZ4pWS1S3Hkjec0RdBivsgBNSfOrSCJml71db/6L/ze
         7XAbdCgN1mwAn4YKf9UqlT6zd7Hi90hQfX+IPau0cbK5zQYYopDD6ASppTuPtpzp1d1g
         KL8LOrZlvUaS/Ld2Ggn8SlCmXaL56e69xSJ0/cplBef58OCCxXjDDuYI9Li90H4FOoB2
         NGEQ==
X-Gm-Message-State: APjAAAUSUQFemWfvLxs+IHwDIzZyHwDAF/5vMyOcoM4/fSLRgqatTkUP
        wOy6I8t23mNThr8W/NH1l2aB3g==
X-Google-Smtp-Source: APXvYqwettcIVbccD5RzpnI6VqVTrml29NMabd0/WlB/vXOclHQ2+VMYlYdocXXEbA3GVQufuQckyw==
X-Received: by 2002:a17:902:e40f:: with SMTP id ci15mr44437556plb.103.1562182651183;
        Wed, 03 Jul 2019 12:37:31 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id q5sm3145126pgj.49.2019.07.03.12.37.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 12:37:30 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 1/7] dt-bindings: net: Add bindings for Realtek PHYs
Date:   Wed,  3 Jul 2019 12:37:18 -0700
Message-Id: <20190703193724.246854-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the 'realtek,eee-led-mode-disable' property to disable EEE
LED mode on Realtek PHYs that support it.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- document 'realtek,eee-led-mode-disable' instead of
  'realtek,enable-ssc' in the initial version
---
 .../devicetree/bindings/net/realtek.txt       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek.txt

diff --git a/Documentation/devicetree/bindings/net/realtek.txt b/Documentation/devicetree/bindings/net/realtek.txt
new file mode 100644
index 000000000000..63f7002fa704
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek.txt
@@ -0,0 +1,19 @@
+Realtek PHY properties.
+
+This document describes properties of Realtek PHYs.
+
+Optional properties:
+- realtek,eee-led-mode-disable: Disable EEE LED mode on this port.
+
+Example:
+
+mdio0 {
+	compatible = "snps,dwmac-mdio";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ethphy: ethernet-phy@1 {
+		reg = <1>;
+		realtek,eee-led-mode-disable;
+	};
+};
-- 
2.22.0.410.gd8fdbe21b5-goog

