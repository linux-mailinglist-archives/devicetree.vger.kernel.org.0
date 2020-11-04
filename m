Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC6B2A659D
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 14:56:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730001AbgKDN4k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 08:56:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729990AbgKDN4j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 08:56:39 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6930FC061A4A
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 05:56:39 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id 33so11341064wrl.7
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 05:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3dYJtPTYT6zqSviFEoyuJVLQepwx0AVqn3LnihaWjaQ=;
        b=HjTSuvVXCLyN5Xb17UWY0BzXH/9TcQ/mu6B3kXBVUzk50Edp862ZGilGal3UUbM3Q9
         8JJW1+SlCJKT2m4vlOdrFXFm4q5S4l5PkuRGU5hGMkb486tly5uLQTFAG43bG5JwFFv8
         Ohgc4hoWNFlERixWLWFRcf9L2Z7euaklDLS/iMZ9aIwcmC1YAvv/RGQRzFUDcVRc/dG1
         8Jyi3MQ2MbYHIL524rrwhdHRXA+H8iI0zirrBy4o5v9b9JjL86TkK6uDQmmhIEsfkINs
         XMpKlwZsj2RrDhkkdXPFRK35thB9Zo3ZY13RWIA+NgbuT4G+wlMt9aUfFfj/aRwzScfS
         MOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3dYJtPTYT6zqSviFEoyuJVLQepwx0AVqn3LnihaWjaQ=;
        b=uW9CkIqq9GbUDHtGpWY7gXx3SBpyndlob7GfKEwkKNZ49LGCUnC0dKOOLg8+tP8EuG
         PqfJ5RgkqH1gk44di2uCIiiKTsvvi13sThFbhXxAAXUvnlOMN5cgc4gsxtbTLSB4rWm8
         F/ZefFN/HHp+AzGCQhG8qvTomMHeevDQPPXcpR16td9p6pbZAbfYZ9WBZo5KXQ+16Fgu
         AltN31JJC9WcNqlgrhpnTPK22DfYDpqHkj3SSLcK8aeWv2H2uGsI+HzE4JjcQCLE//TI
         G9u9g97fiSHeyFX0zaZS/PCK5ikMF+yNGDo4GN7ZkaTMGWodwSX2827EQqmk8tMDQgx8
         Hvzg==
X-Gm-Message-State: AOAM530RwXsxX2OxX1tWVxuJxFqHhBfIlkV2zgBkj5AYh+Vr+/YMVyNK
        Ar+8MTbgiib3LBqKnDEg5+JHyQ==
X-Google-Smtp-Source: ABdhPJzbZfYlPISkG4WkSzxh4Sv5r+tnOypjZAiYnby/8qahqW1xegCvNbYUsxN+HvEEWUi4XVUlMQ==
X-Received: by 2002:a5d:624e:: with SMTP id m14mr7986418wrv.413.1604498197937;
        Wed, 04 Nov 2020 05:56:37 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:61b2:b9fb:eeb7:b9f7])
        by smtp.gmail.com with ESMTPSA id n9sm2285234wmd.4.2020.11.04.05.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 05:56:37 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, repk@triplefau.lt, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: phy: amlogic,meson-axg-mipi-pcie-analog: remove phy cell parameter
Date:   Wed,  4 Nov 2020 14:56:30 +0100
Message-Id: <20201104135631.1550125-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201104135631.1550125-1-narmstrong@baylibre.com>
References: <20201104135631.1550125-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic AXG MIPI + PCIe Analog PHY provides function for both PCIe and
MIPI DSI at the same time, and is not exclusive.

Thus remove the invalid phy cell parameter.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
index 702763a84dac..4d01f3124e1c 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-axg-mipi-pcie-analog.yaml
@@ -24,7 +24,7 @@ properties:
     const: amlogic,axg-mipi-pcie-analog-phy
 
   "#phy-cells":
-    const: 1
+    const: 0
 
 required:
   - compatible
@@ -36,5 +36,5 @@ examples:
   - |
     mpphy: phy {
           compatible = "amlogic,axg-mipi-pcie-analog-phy";
-          #phy-cells = <1>;
+          #phy-cells = <0>;
     };
-- 
2.25.1

