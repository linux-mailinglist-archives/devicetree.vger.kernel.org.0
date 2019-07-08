Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7B02562989
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 21:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404069AbfGHT0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 15:26:30 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39788 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391223AbfGHTZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 15:25:12 -0400
Received: by mail-pg1-f194.google.com with SMTP id u17so7690976pgi.6
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 12:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MaGzZisdYBBgFX/QuRcqVi/VI5GsRgwFYphjBCtTHs0=;
        b=LwQ+7zDaMDpO5piJbvIq8JbtbV72vHpBAwq3IFau8WlEoUnxJ+WP7+9VrBVGl+5uN4
         J+Ar+i53NQMiECyGyGjjJI35+J4wzNYAmWEhijO3gZurm/2WvoDHY0H8W1OIEOXs0/OI
         bI5bj6duTAH31k3iVODuW8sPlqBdnfdadfG5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MaGzZisdYBBgFX/QuRcqVi/VI5GsRgwFYphjBCtTHs0=;
        b=ua7y4ETzmliRGmPNoxJlMpE2UoRdMGhV1KjSCLMcMP44duXhHfp6kWzWW4HHk3ugeb
         elmARzFudvbqHBQafbbIxx1Zp3QTbOWEMfOlMzVCHXVjBIjxAR7kLWhqiX/IldkUSHYk
         /RgmWdi40GoeroXhVjeuFEUouezHLFH1GTJ6lKBsdbNqYdIhRcvRWW5gfVjLfyu57/sU
         UaA7ztUS2KM3zs1o4BCo8u7sxk2tA3K9AoLX9tmZWuU2J4q2VWsRNCDVkXbBfMFk39JE
         SeXJrSPGI4YLDDag24OPKp9lJJuGtb7YxcrnRykpSB3EG5g/Gz+lw+JWmqELqvGl+IyT
         5/bw==
X-Gm-Message-State: APjAAAUuWmZM5jBeSCh+QuauBWca8UL7wRv+bfOgzD5JQHpov31ODcDt
        u8kQ+AQ/EHR/Dakr5az4OeYb3Q==
X-Google-Smtp-Source: APXvYqxcCcLYcn/x8D50rn/vmkXY7YFkvL0a3L/ogSHSleiZNJEF9oD7to8kU4B1bDy6uEs49/LGuA==
X-Received: by 2002:a63:f4e:: with SMTP id 14mr26032375pgp.58.1562613911655;
        Mon, 08 Jul 2019 12:25:11 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id v184sm19032424pfb.82.2019.07.08.12.25.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 12:25:11 -0700 (PDT)
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
Subject: [PATCH v3 1/7] dt-bindings: net: Add bindings for Realtek PHYs
Date:   Mon,  8 Jul 2019 12:24:53 -0700
Message-Id: <20190708192459.187984-2-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190708192459.187984-1-mka@chromium.org>
References: <20190708192459.187984-1-mka@chromium.org>
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
TODO: adapt PHY core to deal with optional compatible strings

Changes in v3:
- added entry for compatible string
- added compatible string to example
- mention that the new property is only available for RTL8211E

Changes in v2:
- document 'realtek,eee-led-mode-disable' instead of
  'realtek,enable-ssc' in the initial version
---
 .../devicetree/bindings/net/realtek.txt       | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek.txt

diff --git a/Documentation/devicetree/bindings/net/realtek.txt b/Documentation/devicetree/bindings/net/realtek.txt
new file mode 100644
index 000000000000..db0333f23fec
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek.txt
@@ -0,0 +1,31 @@
+Realtek PHY properties.
+
+This document describes properties of Realtek PHYs.
+
+Optional properties:
+- compatible: should be one of the following:
+  "realtek,rtl8201cp", "realtek,rtl8201f", "realtek,rtl8211",
+  "realtek,rtl8211b", "realtek,rtl8211c", "realtek,rtl8211dn",
+  "realtek,rtl8211e", "realtek,rtl8211f", "rtl8366rb"
+
+  the property is required if any of the properties are specified that
+  are only supported for certain Realtek PHYs.
+
+- realtek,eee-led-mode-disable: Disable EEE LED mode on this port.
+
+  Only supported for "realtek,rtl8211e".
+
+
+Example:
+
+mdio0 {
+	compatible = "snps,dwmac-mdio";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ethphy: ethernet-phy@1 {
+		compatible = "realtek,rtl8211e";
+		reg = <1>;
+		realtek,eee-led-mode-disable;
+	};
+};
-- 
2.22.0.410.gd8fdbe21b5-goog

