Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 205D63D67A7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 21:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232521AbhGZTGI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 15:06:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbhGZTGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 15:06:08 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D318C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 12:46:36 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id u15-20020a05600c19cfb02902501bdb23cdso243346wmq.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 12:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tF0j5Xm0bF8m4G035UbGZ9Q9JYc8Vy6FKBt23lBIRD8=;
        b=bzqs1y/RJoGgHXk1coqljVztmwYwpOyCylKnJL46TEtIY0F831hvKqR10Unm0lNwtq
         Vuc6ykE8IJlBEixGB19rVLjYQ3Wh+jiev32cAcMfK6lqXwVDOMFksyohzeel44pgag3P
         tivjOtuvZs+MasH/SiX1691xWdiY3uBTb3XxZ1Oa7ijv1GldtpFeEu82DemwjrG102Mc
         kXVX4BLuMvgudNids+e2pfQ//pErrrMLiNzphPzdZYn0SFtGt1EFWpOYaFqxsFS7l/9w
         bW14dnKd8HN0Ul0HeZOXuJZXI1AOrVX69R8hQfIqEKgI6LLsQNW75/JKrcFE2LfqkFob
         eoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tF0j5Xm0bF8m4G035UbGZ9Q9JYc8Vy6FKBt23lBIRD8=;
        b=jV4nk0cbboPih33VWEZ9vDKQKHqonZC3IJV7BFL26ei5Hn+FxH97lTJgkXCwnpkw2N
         nWOWi6jLnaV8ETGFusVj1rr4mXdFT76v45pWNP7lIRlAxIQvE473oQtMFKNxTwv2SUHG
         EhOyu2YR/ROLx+Lg5V08eC1CHdT8FEvAJpsvRPyEvfAG7FpmajEjnl3a4hcvTbvK46je
         dy+PEemgAKezqofEZmNfPWKkdwfFulbDpChmYgc1Y7xeg86NHgHmtbeFL/eCbS5BSShV
         NrfjvKplqSOIVmhFXx9IMBoS1HUiQdgjqQZ9xvoKBP9QJOdRKZVuNBQ7PwKEU/gOyIeM
         1N+w==
X-Gm-Message-State: AOAM532LH8AJ6oLswK1lGPpgjafx8LJIUEnlerqbL8aPmwcixE3i0fFj
        uxiXInIMLleaVVDYPlYSX5KLwQ==
X-Google-Smtp-Source: ABdhPJxA2UThUCOszokaOHWuzajrJtwI5b/lmlXulRr/3hdfQYrLr7aeMorztYJLrUczIBIhl/rq/A==
X-Received: by 2002:a1c:9a97:: with SMTP id c145mr570025wme.42.1627328794861;
        Mon, 26 Jul 2021 12:46:34 -0700 (PDT)
Received: from hornet.engleder.at (dynamic-2f5ziwnqeg6t9oqqip-pd01.res.v6.highway.a1.net. [2001:871:23d:d66a:6e3b:e5ff:fe2c:34c1])
        by smtp.gmail.com with ESMTPSA id r4sm741528wre.84.2021.07.26.12.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 12:46:34 -0700 (PDT)
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
To:     davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
        michal.simek@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Gerhard Engleder <gerhard@engleder-embedded.com>
Subject: [PATCH net-next 3/5] dt-bindings: arm: Add Engleder bindings
Date:   Mon, 26 Jul 2021 21:46:01 +0200
Message-Id: <20210726194603.14671-4-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210726194603.14671-1-gerhard@engleder-embedded.com>
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engleder bindings for devicetrees with TSN endpoint Ethernet MAC.

Signed-off-by: Gerhard Engleder <gerhard@engleder-embedded.com>
---
 .../devicetree/bindings/arm/engleder.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/engleder.yaml

diff --git a/Documentation/devicetree/bindings/arm/engleder.yaml b/Documentation/devicetree/bindings/arm/engleder.yaml
new file mode 100644
index 000000000000..18a918c7cda5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/engleder.yaml
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/engleder.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Engleder TSN endpoint Ethernet MAC bindings
+
+maintainers:
+  - Gerhard Engleder <gerhard@engleder-embedded.com>
+
+properties:
+  $nodename:
+    const: "/"
+  compatible:
+    items:
+      - enum:
+          - engleder,zynqmp-tsnep
+
+additionalProperties: true
+
+...
-- 
2.20.1

