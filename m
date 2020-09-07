Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C81C25F41E
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 09:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726821AbgIGHfM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 03:35:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726987AbgIGHeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 03:34:14 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D47EC061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 00:34:12 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so13359782wme.0
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 00:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HebYhZE7sImd2rEoHNhbJh9aZeuCFQtemX8HZ/zA81Y=;
        b=eNNLkPaz04iEEVXIha8aR4r7KXTo5570l9scgu2U/HeVeZWn3DYtBiCW5/oHoRaBF3
         NXSsGrqG6RRJ/HIU0sPW5RlRgzGDFJhEOY0DuRWbmsHY/3315xp3Lj1aQkCRb5/fOMdO
         a0uF2xzQRjzuvmjggxGLK9HJm6kdRsXsKSgWOqyn0K7+GfgHYqZlZF8/sw88OOoxbn43
         rhnE/hB0eEJXWJbGsGcMya2PqTJst3NTiqBoPzuTTo3ZwR2sb6R5cLzGKh+KfOQb7jzR
         Td2/BmfJWUOe7zn6njN1hK8rwWmG1bLdOAxoYszVLuL2jFWZ9JXrwEfZh1VeiNg/Tlu7
         kIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HebYhZE7sImd2rEoHNhbJh9aZeuCFQtemX8HZ/zA81Y=;
        b=k3ur2O7Lkx/8sKk1c76Az2q2PYjbSzs4KvTHCiuMdrlanDHBtXK1isQ0L6KZTZx3oe
         wgpmahMwhzBS/Cu+z/VyGYCphncHNQ67RpLLhzic2Qc54FOeIAyr4+HblJvAP7znHVTO
         3I1g0e0e9RZ5sraaX4TwQglrMG66AYVCFklzFzoAC80n7YnbubJFOZFNn1vmvVqTw95t
         MuG+2ISRmiFMr9TFMJjFNXyNzgYhdphjhNCKKzja2UywWj1/rSqiPipcEHHHswV9KvEU
         NhGgOdO1MLN/wQGO2YxKuFqDZvzErL6s+KC4qc6KPeKaEewX7ok32XCDPyO8n3A09hOW
         5f7Q==
X-Gm-Message-State: AOAM5323iMsots2G1fKSSjOcWlW+4AjjkoeGc6Vv6ytAq0tBp8wh8xht
        4LcwWPjnrypCUCpV8MFGp5RvNg==
X-Google-Smtp-Source: ABdhPJxqUj+4v76RgQgGGFariH4vNyP1mLeIzZDzjKKY2kW9cctnMkgJkxXUDCK/v3rtzQpGZpqI0A==
X-Received: by 2002:a1c:7f8b:: with SMTP id a133mr20660312wmd.155.1599464050504;
        Mon, 07 Sep 2020 00:34:10 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id u66sm527689wme.1.2020.09.07.00.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 00:34:09 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, repk@triplefau.lt, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 2/3] dt-bindings: phy: amlogic,meson-axg-mipi-pcie-analog: remove phy cell parameter
Date:   Mon,  7 Sep 2020 09:34:01 +0200
Message-Id: <20200907073402.26674-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200907073402.26674-1-narmstrong@baylibre.com>
References: <20200907073402.26674-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic AXG MIPI + PCIe Analog PHY provides function for both PCIe and
MIPI DSI at the same time, and is not exclusive.

Thus remove the invalid phy cell parameter.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
index a9040aa387cf..148618b51b24 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
@@ -14,7 +14,7 @@ properties:
     const: amlogic,axg-mipi-pcie-analog-phy
 
   "#phy-cells":
-    const: 1
+    const: 0
 
 required:
   - compatible
@@ -27,5 +27,5 @@ examples:
     mpphy: phy@0 {
           compatible = "amlogic,axg-mipi-pcie-analog-phy";
           reg = <0x0 0xc>;
-          #phy-cells = <1>;
+          #phy-cells = <0>;
     };
-- 
2.22.0

