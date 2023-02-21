Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A39C69E8CB
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 21:04:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbjBUUEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 15:04:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjBUUEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 15:04:22 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6343A1284B
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 12:04:19 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 07DE485917;
        Tue, 21 Feb 2023 21:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677009857;
        bh=1qr5cvYf8jeOiYzdXUoMig1VLxMb60u49LInU9530xQ=;
        h=From:To:Cc:Subject:Date:From;
        b=D2exX44nDxfOuN+Y1ESq02iroyC4DQVMjBiyngjBceTpWiAvM4jSz+wm0P3ow1VoW
         LtJNH1dnoQ73s68SxAqEbFqVG6mcFNPlIatHwKBqtNDeDOR9W0Uf3LOAs+dwmgBQV4
         r0o54v7u2DgruiWSs3Wo4shsaqqPyjVSUWV76gG9ThCqcFdZNFPEtOM+ZmYZxLoSSv
         nThMzdcwy7moSLn7wjJp6+sSf69DPkbd2+jHYIIGArMj/Zw5HSQFVTVpYDmMTZFddb
         ZfFg1x0pcB1S9A8GVvEAcjfHrcbAKdU45fQAuOQcKG88s7iq9f69ziHyFo9CFUDbVW
         t0xd1aEG9mO3Q==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: Start the info graphics with HS/VS change
Date:   Tue, 21 Feb 2023 21:04:07 +0100
Message-Id: <20230221200407.16531-1-marex@denx.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VS signal change is synchronized to HS signal change, start the
info graphics with that event, instead of having that event occur in
the middle of it.

Scope trace of DPI bus with HS/VS active HIGH looks as follows:
         ________________...__
VS...___/__         __        \______...
HS...___/  \_______/  \__...__/  \___...
        ^                        ^
	|                        |
        |    Used to start here -'
	|
	'--- Start info graphics here

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../bindings/display/panel/panel-timing.yaml  | 46 +++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-timing.yaml b/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
index 0d317e61edd8f..aea69b84ca5d8 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-timing.yaml
@@ -17,29 +17,29 @@ description: |
 
   The parameters are defined as seen in the following illustration.
 
-  +----------+-------------------------------------+----------+-------+
-  |          |        ^                            |          |       |
-  |          |        |vback_porch                 |          |       |
-  |          |        v                            |          |       |
-  +----------#######################################----------+-------+
-  |          #        ^                            #          |       |
-  |          #        |                            #          |       |
-  |  hback   #        |                            #  hfront  | hsync |
-  |   porch  #        |       hactive              #  porch   |  len  |
-  |<-------->#<-------+--------------------------->#<-------->|<----->|
-  |          #        |                            #          |       |
-  |          #        |vactive                     #          |       |
-  |          #        |                            #          |       |
-  |          #        v                            #          |       |
-  +----------#######################################----------+-------+
-  |          |        ^                            |          |       |
-  |          |        |vfront_porch                |          |       |
-  |          |        v                            |          |       |
-  +----------+-------------------------------------+----------+-------+
-  |          |        ^                            |          |       |
-  |          |        |vsync_len                   |          |       |
-  |          |        v                            |          |       |
-  +----------+-------------------------------------+----------+-------+
+  +-------+----------+-------------------------------------+----------+
+  |       |          |        ^                            |          |
+  |       |          |        |vsync_len                   |          |
+  |       |          |        v                            |          |
+  +-------+----------+-------------------------------------+----------+
+  |       |          |        ^                            |          |
+  |       |          |        |vback_porch                 |          |
+  |       |          |        v                            |          |
+  +-------+----------#######################################----------+
+  |       |          #        ^                            #          |
+  |       |          #        |                            #          |
+  | hsync |  hback   #        |                            #  hfront  |
+  |  len  |   porch  #        |       hactive              #  porch   |
+  |<----->|<-------->#<-------+--------------------------->#<-------->|
+  |       |          #        |                            #          |
+  |       |          #        |vactive                     #          |
+  |       |          #        |                            #          |
+  |       |          #        v                            #          |
+  +-------+----------#######################################----------+
+  |       |          |        ^                            |          |
+  |       |          |        |vfront_porch                |          |
+  |       |          |        v                            |          |
+  +-------+----------+-------------------------------------+----------+
 
 
   The following is the panel timings shown with time on the x-axis.
-- 
2.39.1

