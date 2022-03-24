Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62F794E65F4
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 16:27:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243453AbiCXP2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 11:28:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243443AbiCXP2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 11:28:38 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8517FA9974
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 08:27:05 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so2796391wme.0
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 08:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f+ay7tqudhjbGbdnObBg9rVW5P7BZjQ31rnVnGMAZWk=;
        b=yoqOuL45S1UOIOGTlbIjvOP0bcxCkdJmgO8ybdxTGcfeYXEDM/kYQY5Z6U5IvTUlrA
         teugwQjBm4bNPPo/5MKruClvWqHLscb3DjwlkqT2o8KXo2YvAG0f1lr6wGfUt2IVH/GI
         LuMWm36r+7lU5phOt6LmbSOkARXaNetUPuFetaALFUzIeVHEe2XfAxuPP6W1+tOXLv1R
         +4S5S29KOI8tD1M7ubPpTaVDFXTViYra3jR6/wt2Jl+gK4n/A6aq1GicM2o4Ef6lFni2
         67DImm+X4wY+/1BLE/ziAbPoBDrAfVPdB8yjTWNJt+E7LRg78xdK03pNl8d5o10QmszF
         06dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f+ay7tqudhjbGbdnObBg9rVW5P7BZjQ31rnVnGMAZWk=;
        b=wk45rF3hQldbC9Do8c9AWCE1ZDFeypHQWrOYcPOYeKjNTIp9Pjvwo2qZ+n2+TNsBvp
         D1gnOPskmo+TY1WaTwOCdsyKhU3ShimUIOSpsv7UXk90lDURhdNn7xOb7yFx4bETSn9q
         VdPRLiNvs3GIM29hqUG1U7p2DlNSRoVQXYcvLAYA93ptZKWAjO0paVgNVp+f2fr0REdy
         1jfoMSjWQUuq+kLrGepScrDgfVgnnHpvxIXKr9Lol0xWLX1DZG5rTRaIAesc1AS50B1y
         Th/10pLScwLBdoNSXw8sdWiKC/sdXq39Mb9C3/V0F+lRx9E6Gm+PY9EqT8txv6rSMlQD
         3V/w==
X-Gm-Message-State: AOAM532iOiWnQKhQ+1wzwQYiVlpSBdrKr1YAQATml3mMnMYmzbg+UxzA
        7HXyqvwUdgl7ESAGiQ0gtXbVRw==
X-Google-Smtp-Source: ABdhPJws87KVaVeOTw0TuPGtZNrXPQklwZMoptawtDOQ+Tbg5xeUk0cUlzKNYP316LQXkP4tCMCcwQ==
X-Received: by 2002:a05:600c:ac5:b0:38c:9a51:3059 with SMTP id c5-20020a05600c0ac500b0038c9a513059mr5382446wmr.2.1648135624059;
        Thu, 24 Mar 2022 08:27:04 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id g17-20020a05600c4ed100b0038ca32d0f26sm2808104wmq.17.2022.03.24.08.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 08:27:03 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     airlied@linux.ie, alexandre.torgue@foss.st.com,
        chunkuang.hu@kernel.org, daniel@ffwll.ch, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, mcoquelin.stm32@gmail.com,
        p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: display: mediatek: Add includes on examples
Date:   Thu, 24 Mar 2022 15:26:58 +0000
Message-Id: <20220324152658.1132110-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

make dt_binding_check fail on lot of mediatek bindings due to missing
includes.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
2 files remains to be fixed, but their examples use some variable undefined, so I cannot do anything:
- display/mediatek/mediatek,ethdr.yaml
- display/mediatek/mediatek,merge.yaml

 .../display/mediatek/mediatek,aal.yaml        |   4 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +
 .../display/mediatek/mediatek,color.yaml      |   4 +
 .../display/mediatek/mediatek,dither.yaml     |   4 +
 .../display/mediatek/mediatek,dsc.yaml        |   4 +
 .../display/mediatek/mediatek,gamma.yaml      |   4 +
 .../display/mediatek/mediatek,mutex.yaml      |   4 +
 .../display/mediatek/mediatek,od.yaml         |   1 +
 .../display/mediatek/mediatek,ovl-2l.yaml     |   5 +
 .../display/mediatek/mediatek,ovl.yaml        |   5 +
 .../display/mediatek/mediatek,postmask.yaml   |   4 +
 .../display/mediatek/mediatek,rdma.yaml       |   5 +
 .../display/mediatek/mediatek,split.yaml      |   3 +
 .../display/mediatek/mediatek,ufoe.yaml       |   3 +
 .../display/mediatek/mediatek,wdma.yaml       |   5 +
 17 files changed, 59 insertions(+), 257 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
index 225f9dd726d2..63755d4d21d7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
@@ -66,6 +66,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     aal@14015000 {
         compatible = "mediatek,mt8173-disp-aal";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
index 6894b6999412..b32355b32dfa 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.yaml
@@ -65,6 +65,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/gce/mt8183-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8183-power.h>
 
     ccorr0: ccorr@1400f000 {
         compatible = "mediatek,mt8183-disp-ccorr";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
index bc83155b3b4c..ffdef0b30de8 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
@@ -75,6 +75,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     color0: color@14013000 {
         compatible = "mediatek,mt8173-disp-color";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
index 9d89297f5f1d..7ac58022a2ed 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.yaml
@@ -65,6 +65,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/gce/mt8183-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8183-power.h>
 
     dither0: dither@14012000 {
         compatible = "mediatek,mt8183-disp-dither";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsc.yaml
index 1ec083eff824..1ab30b0efffe 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsc.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsc.yaml
@@ -60,6 +60,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8195-clk.h>
+    #include <dt-bindings/gce/mt8195-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8195-power.h>
 
     dsc0: disp_dsc_wrap@1c009000 {
         compatible = "mediatek,mt8195-disp-dsc";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
index 247baad147b3..4f8ba492dc0a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
@@ -66,6 +66,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     gamma@14016000 {
         compatible = "mediatek,mt8173-disp-gamma";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mutex.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mutex.yaml
index 6eca525eced0..ad3a69d1254c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,mutex.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mutex.yaml
@@ -71,6 +71,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     mutex: mutex@14020000 {
         compatible = "mediatek,mt8173-disp-mutex";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
index 7519db315217..1f92566ff5ed 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,od.yaml
@@ -45,6 +45,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
 
     od@14023000 {
         compatible = "mediatek,mt8173-disp-od";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
index e3cef99d0f98..e810e152404a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
@@ -66,6 +66,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8183-clk.h>
+    #include <dt-bindings/gce/mt8183-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/memory/mt8183-larb-port.h>
+    #include <dt-bindings/power/mt8183-power.h>
 
     ovl_2l0: ovl@14009000 {
         compatible = "mediatek,mt8183-disp-ovl-2l";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 93d5c68a2dbd..14673f979edc 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -81,6 +81,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/memory/mt8173-larb-port.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     ovl0: ovl@1400c000 {
         compatible = "mediatek,mt8173-disp-ovl";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,postmask.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,postmask.yaml
index 6ac1da2e8871..d0d45d1e4f15 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,postmask.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,postmask.yaml
@@ -58,6 +58,10 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8192-clk.h>
+    #include <dt-bindings/gce/mt8192-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8192-power.h>
 
     postmask0: postmask@1400d000 {
         compatible = "mediatek,mt8192-disp-postmask";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index b56e22fbcd52..2265fef6a795 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -94,6 +94,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/memory/mt8173-larb-port.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     rdma0: rdma@1400e000 {
         compatible = "mediatek,mt8173-disp-rdma";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
index 4f08e89c1067..83e6cb40ba7c 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,split.yaml
@@ -49,6 +49,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     split0: split@14018000 {
         compatible = "mediatek,mt8173-disp-split";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ufoe.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ufoe.yaml
index 6e8748529e73..69cddc2ee531 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ufoe.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ufoe.yaml
@@ -51,6 +51,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     ufoe@1401a000 {
         compatible = "mediatek,mt8173-disp-ufoe";
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index f9f00a518edf..60e9f890ebf1 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -64,6 +64,11 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/mt8173-clk.h>
+    #include <dt-bindings/gce/mt8173-gce.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/memory/mt8173-larb-port.h>
+    #include <dt-bindings/power/mt8173-power.h>
 
     wdma0: wdma@14011000 {
         compatible = "mediatek,mt8173-disp-wdma";
-- 
2.34.1

