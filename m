Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF3E9772412
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 14:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232072AbjHGMbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 08:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231750AbjHGMbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 08:31:51 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B55C19B4
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 05:31:41 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 636561C0007;
        Mon,  7 Aug 2023 12:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1691411500;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=MKIuRjr4bEAutv03qcpUVfrFXls0vMQc6pheaXe0VJ8=;
        b=P5A+19ugb7LcRoNXWDzlTwqP4ntnXw8CZaMesgNCaZHGxDDIgzZfznNNPb2kBch6+bzDuw
        /64FNfsl8oLcYdoya+hH6y3CN3POQg0p222iyCHMGc5STzxn5TWRLDw6nAC9C1f3F1iOcm
        9U7eYCVq/DdRx72KriablXRoJRnsW+k4iGw4WRMLh1BbqMb9cezxFWSDD8/zrSqTvj2iaO
        xhdNiX/FoQroMGnZEUoS72v76LZJCwE+qZFybYO3dV57G4Y/bOANtX9MM4Af5s1jNp/XkF
        wtO+kvihEsWQG7XhUIDj1T3+uHl8V+azlqD0/IWTbpJK37DldIUPrwvI9TfaxA==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: display: simple: Add Mitsubishi AA084XE01 panel
Date:   Mon,  7 Aug 2023 14:31:37 +0200
Message-Id: <20230807123138.67443-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Mitsubishi AA084XE01 8.4" XGA TFT LCD panel compatible string.

Link: https://www.mouser.fr/datasheet/2/274/aa084xe01_e-364171.pdf
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v4:
* Add datasheet link.
* Supplement Cc: list.

Changes in v3:
* None.

Changes in v2:
* Collected tag.

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1d4936fc5182..2c6be20bafc9 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -240,6 +240,8 @@ properties:
       - logictechno,lttd800480070-l6wh-rt
         # Mitsubishi "AA070MC01 7.0" WVGA TFT LCD panel
       - mitsubishi,aa070mc01-ca1
+        # Mitsubishi AA084XE01 8.4" XGA TFT LCD panel
+      - mitsubishi,aa084xe01
         # Multi-Inno Technology Co.,Ltd MI0700S4T-6 7" 800x480 TFT Resistive Touch Module
       - multi-inno,mi0700s4t-6
         # Multi-Inno Technology Co.,Ltd MI0800FT-9 8" 800x600 TFT Resistive Touch Module
-- 
2.34.1

