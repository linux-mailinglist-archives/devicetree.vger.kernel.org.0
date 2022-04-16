Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C6A5503391
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 07:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbiDPDWD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 23:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbiDPDWC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 23:22:02 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52D5A46B14
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 20:19:31 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2EBEC83565;
        Sat, 16 Apr 2022 05:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1650079168;
        bh=hxF74ylULQ3yui5ldLbWM5gtde9X93MvI53seDsuTiI=;
        h=From:To:Cc:Subject:Date:From;
        b=KFPyAl3HugPrHv2BiOHmbeNKcHlUg+9s+VjXb+xiNX7sqUSIzhWeYt6C8GS02PV5F
         ydsjreMWFqSasIodi2P9ZZQjkZyyaYtc1q9LlDt4UeU7Nhl83iNEvrZpMs7N0Vrapx
         h5CtmAOXYBVQJ216gaNDR+sPZH959w01Sv2XQKB0pES7mPS1qKsEvhoLL07pr5CU/Y
         dxKeNFucaQOa9Ec+e5j5P1sWZEA1GonTTWD3FG4+VL9fTlQCu9434+yDK7o6pzAQto
         xyUyrj4aKgOZ0681UjJDI4/IetqsIDlGhLm0gu7ezS0ywFN00pkB8KHspeNcqjk9Uj
         CYofSCmN3uLZw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Add DataImage FG040346DSSWBG04 compatible string
Date:   Sat, 16 Apr 2022 05:19:18 +0200
Message-Id: <20220416031919.670192-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DataImage FG040346DSSWBG04 4.3" 480x272 TFT LCD 24bit DPI panel
compatible string.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1eb9dd4f8f58e..cfe7bb9f89de6 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -105,6 +105,8 @@ properties:
       - chunghwa,claa101wb01
         # Chunghwa Picture Tubes Ltd. 10.1" WXGA TFT LCD panel
       - chunghwa,claa101wb03
+        # DataImage, Inc. 4.3" WQVGA (480x272) TFT LCD panel with 24-bit parallel interface.
+      - dataimage,fg040346dsswbg04
         # DataImage, Inc. 7" WVGA (800x480) TFT LCD panel with 24-bit parallel interface.
       - dataimage,scf0700c48ggu18
         # DLC Display Co. DLC1010GIG 10.1" WXGA TFT LCD Panel
-- 
2.35.1

