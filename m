Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60CC6734C93
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 09:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjFSHoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 03:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229926AbjFSHny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 03:43:54 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70B4E7A
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 00:43:51 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687160630;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=N+AZBD5Sf/0h8WaVwiEe9j7DpVzPOO6Hvd7gosZu7QY=;
        b=WQxY9a/1Jdcrb6GT6sOP3EB9yPgnHN/PywxbW7XkW3MFyYKJKhP3dxszTzOGDcM3/M4q1b
        5HAjXvgPBf0CccTa5CRbVdy6IG9Mhc00kyONWY2nInFb9VLtSIukB2u8UadcT+KRV9bswO
        XOuhQBCDKdlm7hSEu2m5txxgXM6q63JY2oEYUlHyZwZErPiPUXdunlKX2psycXghRB0qLQ
        YB5gYuxO4YLVuASWKvRB8BpuZxRS+bADsrFCLBhScgCB0nQ4iSZqFZDKPLGSjj+MhaVDh/
        fmTTf2FommjHMgmkZoPOFlpzY/u6NfNsEqzp6DXxGJAuQOp3OkaPjULRVBhsKA==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 28C771C0002;
        Mon, 19 Jun 2023 07:43:49 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add Mitsubishi AA084XE01 panel
Date:   Mon, 19 Jun 2023 09:43:47 +0200
Message-Id: <20230619074348.2893701-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Mitsubishi AA084XE01 8.4" XGA TFT LCD panel compatible string.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 18241f4051d2..cc841cf96fae 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -232,6 +232,8 @@ properties:
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

