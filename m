Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C963425F412
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 09:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726896AbgIGHeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 03:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726951AbgIGHeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 03:34:11 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD09C061574
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 00:34:10 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id s13so13325289wmh.4
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 00:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FnyQ6M7lKnSyvb2WTqWDs4juP1iSvzr23umTcdcFBl4=;
        b=yFUZp/06NfwHE/K2aBTW0DdB2itxHC+OR2dfwK7I+7POKFdsnbScCsblQY9LA9yS7r
         ETrI8vkClVOCkFGLgkgUweusW8/j/aLvr2jMNpgIou0UUH4xTXAtcH79On//zAX3W09g
         jLeGoZaL2a8js7u+jEtOX3092kR2mF05Glo/hErZ7UPTAqq8YjuLVB6yi/dKunrbZ2v2
         EGoQnyGgQwDQLRa2KQKiq2Ce+mjEYeifnkQ/cYGF2pcsmGF1+O16OFvnWa5vwuGZ8zFq
         4aiDnchNriBgwQPbtmI1il+gRRnx0TYGK8kQXUiHLyUjCRTIvfFhfGMXhs9OxW2qtKV6
         sYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FnyQ6M7lKnSyvb2WTqWDs4juP1iSvzr23umTcdcFBl4=;
        b=NfTo1Yi4kEeltr0EZWDutWpbPI32tdIF0ARbwci/inSyCC31Dv3T55VBC82siALKXm
         Xd4HNJcUQUjg5vlSo+YRQRbk7iFXNSQipfszMicOGurV/gxvRAB5nsV1FSEwOJ6aIxro
         keqq1gM+M2hx5KKDXiuiI3BUc5EyvrbF5nJB147EdTgxwr1Jfg61g4sirdNx9lNmIwoa
         E3SskqKkL9JwV/rwWJL2O0upWSdsFAXwLDGR7d2N+O4n2n7VtSSJtw10kPSIYaAL8788
         4wnWuDzQHIH6/5VGK91ZkQUWCWYclX1XlXQnYgSpmQ3aUSLN+Ho3AHt4B3PFpqtXCt9Z
         VXDg==
X-Gm-Message-State: AOAM532BADCxGg47WlpGefKBzNIGZoupotvILAMDQwDmZJDjfoZy0sCI
        CL9hw70bOTEAbD+Vj4PFHqBL3w==
X-Google-Smtp-Source: ABdhPJxkU//D39wU0M3fJ1RRtwypstB8RNHkXuu98ipJC3IiN1dKlgAJT4r/cOmwRdGakdSEQYMQSA==
X-Received: by 2002:a7b:c341:: with SMTP id l1mr19927754wmj.80.1599464049140;
        Mon, 07 Sep 2020 00:34:09 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id u66sm527689wme.1.2020.09.07.00.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 00:34:08 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, repk@triplefau.lt, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: phy: amlogic,meson-axg-mipi-pcie-analog: remove reg attribute
Date:   Mon,  7 Sep 2020 09:34:00 +0200
Message-Id: <20200907073402.26674-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200907073402.26674-1-narmstrong@baylibre.com>
References: <20200907073402.26674-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic AXG MIPI + PCIe Analog PHY should be a subnode of the hhi mfd
node like the axg-clkc node.

Thus the reg attribute is not needed.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml      | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
index 18c1ec5e19ad..a9040aa387cf 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
@@ -13,15 +13,11 @@ properties:
   compatible:
     const: amlogic,axg-mipi-pcie-analog-phy
 
-  reg:
-    maxItems: 1
-
   "#phy-cells":
     const: 1
 
 required:
   - compatible
-  - reg
   - "#phy-cells"
 
 additionalProperties: false
-- 
2.22.0

