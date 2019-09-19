Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80013B729B
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387421AbfISF2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:28:54 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:45140 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388120AbfISF2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:28:53 -0400
Received: by mail-pg1-f196.google.com with SMTP id 4so1171730pgm.12
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
        b=gQ8TI7kzVBJ6CMikP7NssQGXe7ymOzNnxjoXCSNnmpM0cvHG6iwkAa1DbNwDAnefsg
         rnmb/VSD+5U5GcVCh/IHGtUsO7jgVmBNy8y1uzpSxjjx2x40M4/yYxolN5pBJKCOhWWc
         Vxv8yQ11gU0oO5HNX+5fVzq4yULshPSM0L4nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t5yyFbal/mMfwBIQl8HnI8bUA7OIbk8kyBH5yOZvNcA=;
        b=SfJqp/pBm8h4FpgCzkSLCV8KzykKCV6HK45pbYOY4xPRjsf02Ctq+TNwyoV0zXM5s5
         hxznh66EipRCSwVMz0t+fHpNuZ3ax26XIc71ET//DWzEv/FuimWQmDdgUaHbsuoR6nPW
         zolF+JtB5l6voEPZWJrtZGrJdgywvRzYM2S5Q6VhNC4Z0rYNXkIGgNx8K61tEk1xdz/x
         PXXliNlisjNL/AmerDpUyzBjkZOzKnLfxrtc5sEytyFYeKDsbrc4DjsS5yWNRXB+Yykk
         otUd/FcFs0+nGDzmL6a+IMcf6lfVohC5WVfgocmR+UBheEhaopP9/pTSvPewDsohN2Tz
         v8Vw==
X-Gm-Message-State: APjAAAU92qT2uUxQWS6AIoeVwHOgND5LUOu1LhyvJVzvKOVMsEqeHrK+
        N+pO7R+BTM4tJaBCgTqcXs9zLQ==
X-Google-Smtp-Source: APXvYqyT5565J7Rps/98UJ9h+PeACCHxHIAq8wpBqY/DOotDYp8qDwIt2a37ZQOHXM5dF4M6sFxuFw==
X-Received: by 2002:a63:3c08:: with SMTP id j8mr7251129pga.72.1568870931289;
        Wed, 18 Sep 2019 22:28:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:28:50 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/6] dt-bindings: arm: rockchip: Use libretech for roc-pc binding
Date:   Thu, 19 Sep 2019 10:58:18 +0530
Message-Id: <20190919052822.10403-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So, update the dt-bindings of ROC-PC with libretch notation
like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 110fcca1a94e..bb65a10e85ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -87,11 +87,6 @@ properties:
           - const: firefly,roc-rk3328-cc
           - const: rockchip,rk3328
 
-      - description: Firefly ROC-RK3399-PC
-        items:
-          - const: firefly,roc-rk3399-pc
-          - const: rockchip,rk3399
-
       - description: FriendlyElec NanoPi4 series boards
         items:
           - enum:
@@ -364,6 +359,12 @@ properties:
           - const: leez,p710
           - const: rockchip,rk3399
 
+      - description: Libre Computer Board ROC-RK3399-PC
+        items:
+          - const: libretech,roc-rk3399-pc
+          - const: firefly,roc-rk3399-pc
+          - const: rockchip,rk3399
+
       - description: Mecer Xtreme Mini S6
         items:
           - const: mecer,xms6
-- 
2.18.0.321.gffc6fa0e3

