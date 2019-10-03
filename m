Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 114EFC9881
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727925AbfJCGqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:46:16 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:34595 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727789AbfJCGqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:46:16 -0400
Received: by mail-pg1-f195.google.com with SMTP id y35so1155999pgl.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m2Ja4VwqADsNhG9MiI8QtGGRH5rBEepqA9PGguqW6g4=;
        b=FqRrQeBDI6qP7YisP5RPpa0YmsWFSjcm5FPhgn4pS9P0YW16mHp84zg7AXHhoqp6Cm
         gDgUpDzbc+PLtvk3hT6omYQpKhCPiie8zC0n6gkOM1ltXtIsdAuhYYixftzVoDlPeH2Q
         azkOMETcbN9z4/zdxXaLLTMbP8Eogw7NEGpo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m2Ja4VwqADsNhG9MiI8QtGGRH5rBEepqA9PGguqW6g4=;
        b=TeuErW1nag9fXbJaVk7e+jdq18qwAjJXQALNdgcV5/aUaUQ+596SUkkrUQLTj2Bq7R
         Mw9507CvTPF0f+/i5hFDRGTpS/g9ld0vP2N4MzIMn+UD6dmV/4ekzRtBd7ukI2i8lG4E
         7K3v0EJFthQ+R91c6Q0AjUCVHO+t1aj7eXjrmuSXKkDKSOkR2GzHns+dPKyiLacDVhth
         YiWujQCQUTDi78oCUVY6OV6L3KnPu4pFeZC0CymGLJ77/4IUsmiTmZ29HnSPYNlxexy3
         nxOMUBiTkCnnobGmKkxBVjkVg6A1RE7DvA2OzXq/UzrzxQpo80rlM+FaufyAEwcSYUKV
         Mkqg==
X-Gm-Message-State: APjAAAXTGgRhnguPY1xEAoHnCY+28ljfldPeiVG4jRiDRQzRtK1fk6wY
        S7YUyUYcDlW0eG0+FeJOwqYHpQ==
X-Google-Smtp-Source: APXvYqxMytEbu1ysTV0gKAoMi1aynyZ8FC5X9e0oC1J/4KWj6EoCWYIBl53obU0Q0lCbqInhurgfxw==
X-Received: by 2002:a17:90a:a6f:: with SMTP id o102mr8682523pjo.103.1570085175903;
        Wed, 02 Oct 2019 23:46:15 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
        by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 23:46:15 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v11 4/7] dt-bindings: sun6i-dsi: Add VCC-DSI supply property
Date:   Thu,  3 Oct 2019 12:15:24 +0530
Message-Id: <20191003064527.15128-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allwinner MIPI DSI controllers are supplied with SoC DSI
power rails via VCC-DSI pin.

Some board still work without supplying this but give more
faith on datasheet and hardware schematics and document this
supply property in required property list.

Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml         | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
index 47950fced28d..9d4c25b104f6 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -36,6 +36,9 @@ properties:
   resets:
     maxItems: 1
 
+  vcc-dsi-supply:
+    description: VCC-DSI power supply of the DSI encoder
+
   phys:
     maxItems: 1
 
-- 
2.18.0.321.gffc6fa0e3

