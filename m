Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B90D6295D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 21:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391669AbfGHTZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 15:25:16 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:44510 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391685AbfGHTZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 15:25:15 -0400
Received: by mail-pl1-f193.google.com with SMTP id t14so5677237plr.11
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 12:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z5eHwBNuWYWKF1GupD4lDii6DsKsGEYAJZvTYM/KCqI=;
        b=g6DmxOlfjJavtQhzMxF93mSr+YoVsWfSuyZx1EJ62H9u6NIRhiIUo6rQbpJL0oyftP
         RVtP7lAuSo7E6rRmRJg94S5J3R/vu5pv1kgMpCqkXNEGCV0WHZvkY9PoO/kTHAWzCcxH
         vhRvNRkEsOzAHw0MhR0Y9OsFyaOruo1jmuQ0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z5eHwBNuWYWKF1GupD4lDii6DsKsGEYAJZvTYM/KCqI=;
        b=XN8I3KPIzl3HsHqLndS/be/GcYGlDF9nRo36e+B6WJB7NUbRoCbEjBsj1VARQ8cPwB
         k6c7LyoC4dL4MNPFuPzac1imLswlGxkp2VxngYaY7ttSsyijkn4tctw6K+o3c3jCKrZV
         5V4Nib8AZeQT0UViKBi0IPTM+qZBDiZb1Wz6i84G2/IQvIi5aZdW2r87ED1/1ZfyH41t
         fujO/Hp5GwCAnXob60S1j5p7BjKfPZaEkUXZo0/TRzx2f/jlxLM8XqLBKAcgTW8t8BmJ
         yfBJIAPmL0S1kzG8VjDXcgbIckuIMt1e0ceVEi6Lil135NU3uf++GHLSiEMwF/LU6rel
         JLRw==
X-Gm-Message-State: APjAAAWRH3+yQCYboWvYaWm0Yc42q3qH6HP98LVQOKqo+F1ST3sWeoWO
        K7eDGuPoSz76GjeZ3FO5CnYPrg==
X-Google-Smtp-Source: APXvYqzfy0HVoxjXdQF/nkAhmrMgk9z+IbtHFWroP7aqxCr0POXhMb28WjmetIMRN/0+fXLRkz9HFw==
X-Received: by 2002:a17:902:f81:: with SMTP id 1mr26692509plz.191.1562613914916;
        Mon, 08 Jul 2019 12:25:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id x65sm23185986pfd.139.2019.07.08.12.25.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 12:25:14 -0700 (PDT)
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
Subject: [PATCH v3 3/7] dt-bindings: net: realtek: Add property to enable SSC
Date:   Mon,  8 Jul 2019 12:24:55 -0700
Message-Id: <20190708192459.187984-4-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190708192459.187984-1-mka@chromium.org>
References: <20190708192459.187984-1-mka@chromium.org>
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
Changes in v3:
- changed wording for supported PHY models

Changes in v2:
- patch added to the series (kind of, it already existed, but now
  the binding is created by another patch)
---
 Documentation/devicetree/bindings/net/realtek.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/realtek.txt b/Documentation/devicetree/bindings/net/realtek.txt
index db0333f23fec..af2824664f08 100644
--- a/Documentation/devicetree/bindings/net/realtek.txt
+++ b/Documentation/devicetree/bindings/net/realtek.txt
@@ -15,6 +15,10 @@ Optional properties:
 
   Only supported for "realtek,rtl8211e".
 
+- realtek,enable-ssc : Enable Spread Spectrum Clocking (SSC) on this port.
+
+  Only supported for "realtek,rtl8211e".
+
 
 Example:
 
@@ -27,5 +31,6 @@ mdio0 {
 		compatible = "realtek,rtl8211e";
 		reg = <1>;
 		realtek,eee-led-mode-disable;
+		realtek,enable-ssc;
 	};
 };
-- 
2.22.0.410.gd8fdbe21b5-goog

