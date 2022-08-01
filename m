Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E0B8586BCA
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 15:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbiHANTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 09:19:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbiHANTS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 09:19:18 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 881262B264
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 06:19:17 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id F24E38440A;
        Mon,  1 Aug 2022 15:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1659359956;
        bh=wcj9FeuZ8cXOT472oAuu+NLSau/Fb3N8+CJ+hx0ObTk=;
        h=From:To:Cc:Subject:Date:From;
        b=It6bgbcM77Xx+hB2L5xAvGLjIyNRK9efCuax0y1ICpu0NqpR8tK9GKUl9uvKTudmD
         srmlN1ubOyV13njSRszPsrtWwF78h9dZ5UVXNnMfkw8wgRH4k2mgWsk6/N6ihg01P8
         aHjkdMWFys01a2AKRTszwZONHNVpC2WQbMkgdynOANO5NNgIJdhDOuH1DavxH2rTSp
         EJXtD9LTAqxPXe3bLmW7ekY5Bv4MPoF7uwHgoPsYk7nw74JPtYDe62hCA78T72Nc8X
         zGn0rMgOeC2Hn77MLccIwJGtmKVZ3eUa8HFnpomxNRq5YrYc8qMXvf4AS5BihNBr6q
         +tTXzjuwMU2RQ==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support for RGB/BGR swap
Date:   Mon,  1 Aug 2022 15:19:00 +0200
Message-Id: <20220801131901.183090-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
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

The ICN6211 is capable of swapping the output DPI RGB/BGR color channels,
document a DT property to select this swap in DT. This can be useful on
hardware where such swap happens.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
---
 .../devicetree/bindings/display/bridge/chipone,icn6211.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
index 18563ebed1a96..e721dd76e6640 100644
--- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
@@ -33,6 +33,12 @@ properties:
         Optional external clock connected to REF_CLK input.
         The clock rate must be in 10..154 MHz range.
 
+  blue-and-red-swap:
+    description:
+      If defined, the DPI output blue and red channels are swapped,
+      i.e. RGB becomes BGR.
+    type: boolean
+
   enable-gpios:
     description: Bridge EN pin, chip is reset when EN is low.
 
-- 
2.35.1

