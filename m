Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1E716CD9E2
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbjC2NE2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:04:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229920AbjC2NE1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:04:27 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B7E40C6
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:04:26 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-17aeb49429eso16117677fac.6
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680095065; x=1682687065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ruA4RM4hHwK5/3naD/sja9/lwOJ8mtV77wdWda/c6wY=;
        b=NTK3ldykso7B72PreBcP92SQ8c9Tc1DuQG7Un+/WeuzvxZijPnGiEHphAcn40hmBqT
         GIwMv7ORE8rdKqJBK5ETeLmdLh/m8GMNGOqphvuvJkXxKTDYYuta9Z4hSPzN3ViEcd7j
         1La7Qnj8+ahpJ+Vl8LAo06IIq0Cj1dFPCyuIInod044dkT7ISwH9qz0XJMaIhCGF4lGZ
         QWHwx/s1CUsIrTlzllTAVaYRGcuXNETGJukll4bifJBB9qt08+3tWvhr4xBjAVlVumHL
         IJY3Wk2Djk/YccKy9sxt26O5FAEF8R9aZXlhugiOJKYWo+12Hy8+bttZEhrllzVqV/z8
         TwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095065; x=1682687065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ruA4RM4hHwK5/3naD/sja9/lwOJ8mtV77wdWda/c6wY=;
        b=r6OMa5amHtm8yMbbcAE0wwoc+pOOBlQ2G4WR/7GijCv3ctpCTLC1gDI/czRQusRalU
         iP/iRXyDaAX0nKTlZV588tXMZAyrJDqXbBcGax4Z0D4Gz8PqzsDi6hY2lsyA0Fb1mTy1
         LVjeF0+yvHHbeTqSNETcBfovYih8WESThuyyyWjAmtKQJw9/ulfjaeb6TnI4/55T9XhZ
         2mGkMRrnz3ScnYOX1tzXFG3syeaxh8q2efh75BtR2FHS19VyEq6fiod8xtOctMgbkzjw
         bLLUEjv5jhDDF217z0pqRtrRbm1+6jORefClOUxxmi+TUd5YIiWs2ytxYAIM+lLolsMx
         Bpvw==
X-Gm-Message-State: AAQBX9e4cZkHfBa/QPoVHrJSl9TC8LwWKjDetD3m4QBS/8sU36NDp95c
        gpYqeKqCM00lQ1LvXAXmeNYRkph0HogCtQ==
X-Google-Smtp-Source: AKy350Yw05MiS/wqizw5O54Ri+I9y0JW1pKsuowoI4g7KOGB2eLbMlq0kAgam4wxBVIwM9JGB4hbIA==
X-Received: by 2002:a05:6870:a2d0:b0:176:3c73:2ef1 with SMTP id w16-20020a056870a2d000b001763c732ef1mr11400890oak.4.1680095065591;
        Wed, 29 Mar 2023 06:04:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1c2d:271:d34:84ea])
        by smtp.gmail.com with ESMTPSA id vh22-20020a0568710d1600b00177c21c3ae1sm11756738oab.54.2023.03.29.06.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:04:25 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: display: bridge: ldb: Add i.MX6SX support
Date:   Wed, 29 Mar 2023 10:04:12 -0300
Message-Id: <20230329130413.683636-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

i.MX6SX has a single LVDS port and share a similar LDB_CTRL register
layout with i.MX8MP and i.MX93.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/bridge/fsl,ldb.yaml   | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 6e0e3ba9b49e..4f842bcfba1a 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - fsl,imx6sx-ldb
       - fsl,imx8mp-ldb
       - fsl,imx93-ldb
 
@@ -60,6 +61,16 @@ required:
   - ports
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-ldb
+    then:
+      properties:
+        ports:
+          properties:
+            port@2: false
   - if:
       properties:
         compatible:
-- 
2.34.1

