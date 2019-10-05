Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D1443CCA5A
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 16:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728574AbfJEOTd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 10:19:33 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:45401 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728404AbfJEOTc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 10:19:32 -0400
Received: by mail-pl1-f196.google.com with SMTP id u12so4521930pls.12
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 07:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
        b=pqNAHW+FwCPLtmMCrEkOjKWwvUGOVLbSDKFc786vnhYyrwlP6swsENzUfsK51+kxu6
         cA0MvHQrlrJpu2rAbw5We0cRNiGT6OWwq+E4UdP0X+x8tJ33JVZQj3upf7PeS8f9W/2t
         FPdU2xvzZ/L6YVpMLVCBITsyrAOB7exwrsfv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
        b=UgYes2yodplC0oNwtHYqAB+lBh6juOk4zm8t36Cr2/r38aIcKwA4gywkiwRgAxP50i
         eYAIshBL7ZjFDWMXzQ6XjnmNpjyRC8/ssMM5Aea1GJ55zBQ1Fkiuxs4GW0tRf0xQzFhg
         b6oAGvSyj9s8z3LtAKRy1/Ss47SSGW9VWoTcZGSwOXygdwzOoF9eyL7x5vquUPsp+dvM
         uO0B+3j5/Rgv9PIjIN+CrB96L2gUMasfZTsRR4zNeLsMgDFP6QTVPe452tZc0FmiVNyx
         45hzJEOmcRd+2At+H8agXhCC8KUdtgC/Hzh3mRyfIF7Jn61hR7orp3MnzuAdQabORlR7
         CqeQ==
X-Gm-Message-State: APjAAAXsBd3O64vKYM1ACasMIMvaHMLTpzJpLaKcU5gloZPJyP+IBHqP
        DMk2aTLyMvVuS8NBXns2tOF0deBAREU=
X-Google-Smtp-Source: APXvYqzyfbYoP0nigJLm601pen/N5iojsrxWH3PJfSr9afbuIRmYCd4P+TgvvrASJEz29Up2FoLOMw==
X-Received: by 2002:a17:902:9a41:: with SMTP id x1mr14550279plv.269.1570285172204;
        Sat, 05 Oct 2019 07:19:32 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
        by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2019 07:19:31 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v10 2/6] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
Date:   Sat,  5 Oct 2019 19:49:09 +0530
Message-Id: <20191005141913.22020-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml         | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
index fa46670de299..8841938050b2 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -15,7 +15,11 @@ properties:
     const: 0
 
   compatible:
-    const: allwinner,sun6i-a31-mipi-dphy
+    oneOf:
+      - const: allwinner,sun6i-a31-mipi-dphy
+      - items:
+          - const: allwinner,sun50i-a64-mipi-dphy
+          - const: allwinner,sun6i-a31-mipi-dphy
 
   reg:
     maxItems: 1
-- 
2.18.0.321.gffc6fa0e3

