Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE5B380A8A
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 15:42:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234003AbhENNoB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 09:44:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234019AbhENNn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 09:43:56 -0400
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:150:448b::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B49C061574;
        Fri, 14 May 2021 06:42:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.manjaro.org (Postfix) with ESMTP id 7C75E2225B9;
        Fri, 14 May 2021 15:42:41 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
        by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id zQN-boO-rF43; Fri, 14 May 2021 15:42:36 +0200 (CEST)
From:   Tobias Schramm <t.schramm@manjaro.org>
To:     =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org,
        Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v3 4/7] ASoC: dt-bindings: sun8i-a23-codec-analog: add compatible for Allwinner V3
Date:   Fri, 14 May 2021 15:44:02 +0200
Message-Id: <20210514134405.2097464-5-t.schramm@manjaro.org>
In-Reply-To: <20210514134405.2097464-1-t.schramm@manjaro.org>
References: <20210514134405.2097464-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The analog codec frontend of the Allwinner V3 is compatible with the
analog codec frontend used on the Allwinner H3.
This patch adds a compatible string for the analog codec frontend on the
Allwinner V3 SoC.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 .../bindings/sound/allwinner,sun8i-a23-codec-analog.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
index 9718358826ab..26eca21e1f0f 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
@@ -12,12 +12,15 @@ maintainers:
 
 properties:
   compatible:
-    enum:
+    oneOf:
       # FIXME: This is documented in the PRCM binding, but needs to be
       # migrated here at some point
       # - allwinner,sun8i-a23-codec-analog
-      - allwinner,sun8i-h3-codec-analog
-      - allwinner,sun8i-v3s-codec-analog
+      - const: allwinner,sun8i-h3-codec-analog
+      - items:
+          - const: allwinner,sun8i-v3-codec-analog
+          - const: allwinner,sun8i-h3-codec-analog
+      - const: allwinner,sun8i-v3s-codec-analog
 
   reg:
     maxItems: 1
-- 
2.31.1

