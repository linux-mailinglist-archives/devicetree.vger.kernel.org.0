Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B997A76A254
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 23:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229877AbjGaVDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 17:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbjGaVDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 17:03:18 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1871D194
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 14:03:16 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5558B865F4;
        Mon, 31 Jul 2023 23:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1690837394;
        bh=qm7MkE8bn7FEul6dKUD+pfTfZfV2jBAobBeBK3Yq6Fg=;
        h=From:To:Cc:Subject:Date:From;
        b=JRzr5ygoyxXPm46AiDyJqkRlNmh7zFtxH64UKwLvf+cOIl9SF6YG0PG404KkrLo8q
         /oR8RCFjL5q3V9nByGjO1a+nCfXABiUitZk68zutrQ5PF4fZ8VJq4p/MuFuUwg7657
         LPaZqTOdNg9eanZGJ9tRpkDwiSUuMZ0M/oy2LP0xToLq5kkmlLizWaxpUZK0un9/O2
         qEGPqK9BOZnXNcJ0jDwAH0kxmlmz4zhJw81XjBheEsIMLp+IwMBX014fwUXohjHfGh
         B2igC+OqvBKX9KIILuGugC5sAYSxIYyHRXAfOmAmfC/4im5B6s26bJEVZu7zx5FGN/
         +PO2xogLdR4PA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Add Innolux G156HCE-L01 panel
Date:   Mon, 31 Jul 2023 23:02:57 +0200
Message-Id: <20230731210258.256152-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entry for Innolux G156HCE-L01 15.6" 1920x1080 24bpp
dual-link LVDS TFT panel. Documentation is available at [1].

[1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G156HCE-L01_Rev.C3_Datasheet.pdf

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1751ad56b158c..25b4589d4a581 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -192,6 +192,8 @@ properties:
       - innolux,n116bge
         # InnoLux 13.3" FHD (1920x1080) eDP TFT LCD panel
       - innolux,n125hce-gn1
+        # InnoLux 15.6" FHD (1920x1080) TFT LCD panel
+      - innolux,g156hce-l01
         # InnoLux 15.6" WXGA TFT LCD panel
       - innolux,n156bge-l21
         # Innolux P120ZDG-BF1 12.02 inch eDP 2K display panel
-- 
2.40.1

