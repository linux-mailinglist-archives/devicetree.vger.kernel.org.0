Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D95F35C3DF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 21:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726780AbfGATwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 15:52:31 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:45032 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726586AbfGATwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 15:52:31 -0400
Received: by mail-pg1-f193.google.com with SMTP id i18so1842918pgl.11
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 12:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y4Hod/x1MVNHO5bSEWzPdLsP26qI40u5ky94UaZs3Ok=;
        b=RG1N9qyoJc8Gm1mGDNB+WCBLXDNI+CswCxWxzW1nPlRqvvtqh6yqfRwMyDL1wIbxUW
         shUYjVAbOiNaLQqgic7RgUERn5Xd5mKsMxX+lsCCYm1/BDq5b1nJYhaZP37eyh0NxrCM
         SHkjoSPJM/HW4DBdT9aEbAFBc5TbMpKPJzkoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y4Hod/x1MVNHO5bSEWzPdLsP26qI40u5ky94UaZs3Ok=;
        b=hR+Qnn0TBAVozeDyHX7SXkNo7sHO/lvPssq4zPUrqYIp2Lot/cHXygVS4HAz+OdLT/
         RCaItatf3Ms2CwzcOa5t3625YSeqBvWFFD33PKtgtsKhc/9terfzdVdzUjliT+SGclZo
         DppB3pEeTTFDeVUo5d5Uq6vcux0Mxc7aedazbFvpEkdwTx9rOHxo0EruWgU+DIjKzNDM
         +cq6X1enj1dDilhzEXkUHS+tdADu5SJOEQLIbme3BLIg5BqAkYh5BSXi4bArRAyb/wJh
         dDciggC3k7EBRVlbkpDVylQMhBp0LTMw9w1pdAZ5azZYoKL61CVnMKRaJ55/iarWcN6X
         rQQg==
X-Gm-Message-State: APjAAAXlAzSiuKwQ0l0R0O9K6xIG/1kcd4ZjJlFiZPz0oxXViTMHe9j9
        i1iHPlFgW+2MqwjpnMwrDcZ2dw==
X-Google-Smtp-Source: APXvYqwQMv6Ji9rV5QoYqMLRG2WCQNLYyCsww96zbtRJtLi1AdVa1f2X6XL5FCL9ah8axoRlfhKodA==
X-Received: by 2002:a63:d0:: with SMTP id 199mr26577010pga.85.1562010750726;
        Mon, 01 Jul 2019 12:52:30 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id v23sm11428812pff.185.2019.07.01.12.52.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 12:52:30 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: net: Add bindings for Realtek PHYs
Date:   Mon,  1 Jul 2019 12:52:23 -0700
Message-Id: <20190701195225.120808-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the 'realtek,enable-ssc' property to enable Spread Spectrum
Clocking (SSC) on Realtek PHYs that support it.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 .../devicetree/bindings/net/realtek.txt       | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek.txt

diff --git a/Documentation/devicetree/bindings/net/realtek.txt b/Documentation/devicetree/bindings/net/realtek.txt
new file mode 100644
index 000000000000..9fad97e7404f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek.txt
@@ -0,0 +1,21 @@
+Realtek PHY properties.
+
+This document describes properties of Realtek PHYs.
+
+Optional properties:
+- realtek,enable-ssc	Enable Spread Spectrum Clocking (SSC) on this port.
+			SSC is only available on some Realtek PHYs (e.g.
+			RTL8211E).
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
+		realtek,enable-ssc;
+	};
+};
-- 
2.22.0.410.gd8fdbe21b5-goog

