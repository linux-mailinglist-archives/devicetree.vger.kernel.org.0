Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E6A4FE52A9
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 19:57:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729700AbfJYR45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 13:56:57 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33826 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729423AbfJYR4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 13:56:55 -0400
Received: by mail-pl1-f196.google.com with SMTP id k7so1642847pll.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 10:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
        b=nzR3p0+HUwjXCJKFafzIo/pTdfwQapiV5SDEz31AqhqaOqpWV+6AfLRqzgUNU2dQll
         GQOezQcsxvulPc8HLtausz/BgBiI92Lo/kgjsrUkgENWm4yzLSud7S0aX+UPD7aWADn8
         3z8WU/qkfRHqIk4IhK1d19jwGUosVM0Ma0W8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lLu60EjnRBnW4wz32/fkJTOsgD5cNWvT5qBN+RYNBTg=;
        b=MJxWEFesuxXvEHTxfKQm+577x244bsUc3B1+uCbyljhnE1L4zDum/GoMbsk0VaHkyN
         vJ8O/mPz74K9mcpma7Kq9rYcGG5jjlWYnsLrqptZ7ORSM36K0N48avkeqGlQUTA3qC65
         8TzOfF53cw/CqNsB8jR2WWIyEkU8JxmFNFuFI4JQvNRe5lsgCtDelJC/oj1O8jSSahYs
         6CJoBO0O00DoU8iPqGafDHL/mXsbQljIE80y6NvXJMAirbLkUskFtO8nHKJKkyJm8qqg
         IzHtOEyLPZlGObCRaYK0FnQvvLmpFl1OTUDMn2z3LJw3DDP43SGksHtM6l26Q/3SBhR4
         UEYg==
X-Gm-Message-State: APjAAAXUUlOvFOjAjXd3qBoH9ykwPAvYKvJdDNY+nFWriTCCxsdFMrh9
        psGoDitU4ZHtZ4/HrjbU+ifeDNZBIE8=
X-Google-Smtp-Source: APXvYqwG2PcwNymr0aLBWSu0Ew+FNG8Zo1et6ICQyCp5D/JHBAhCy2QuD7wY9vd+w8cmoYVE4JztoA==
X-Received: by 2002:a17:902:304:: with SMTP id 4mr5342476pld.106.1572026214910;
        Fri, 25 Oct 2019 10:56:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
        by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 10:56:54 -0700 (PDT)
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
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v11 2/7] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
Date:   Fri, 25 Oct 2019 23:26:20 +0530
Message-Id: <20191025175625.8011-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
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

