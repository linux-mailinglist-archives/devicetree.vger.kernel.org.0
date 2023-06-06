Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7304724AB7
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233711AbjFFSAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233537AbjFFSAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:00:08 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ED8ED3
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:00:07 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 66DB185BC7;
        Tue,  6 Jun 2023 20:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686074405;
        bh=F5ZNqjEs3oTfsrAMdqCV2n+Sc4o/8z8mTGUPDw5VqgU=;
        h=From:To:Cc:Subject:Date:From;
        b=H12XuWtKt+LOY+ZzWB7JyHe/yLSRGfungMIQF/RrGyTGtj2w8RVnkwt+C0IDb9i/A
         2phvVb/YqRQWQENBNGZTtrfngwJYwrxCfgIzZiKnpL6LZ6vKwg+KGsG6Si0IVEaf3O
         +kpK7QEBuo01zHcOSZGLeqnaIrpT64mCTQJmk/Tr986+TRm5YZ71hRnb24KCdT5+AS
         gw/BVGJFj0WdvH4/qz24q9m4HxiqRmNDy1cNEqaE5VWmZeOAv7/XF7xk/HVfrfgeNt
         GcZQt9iw12yY8S7BMyP8NJW87uxxgKKi8WLmNYRL0qkroXKJDuLA3jmC2F+AxnIln5
         wPgyArGVR9Xyg==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: dt-bindings: audio-graph-card: Expand 'widgets' documentation
Date:   Tue,  6 Jun 2023 19:59:51 +0200
Message-Id: <20230606175951.215740-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the encoding of 'widgets' property to avoid confusion.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: alsa-devel@alsa-project.org
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/sound/audio-graph.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
index c87eb91de1593..ed31e04ff6a68 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
@@ -24,7 +24,11 @@ properties:
       connection's sink, the second being the connection's source.
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
   widgets:
-    description: User specified audio sound widgets.
+    description: |
+      User specified audio sound widgets.
+      Each entry is a pair of strings, the first being the type of
+      widget ("Microphone", "Line", "Headphone", "Speaker"), the
+      second being the machine specific name for the widget.
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
   convert-rate:
     $ref: /schemas/sound/dai-params.yaml#/$defs/dai-sample-rate
-- 
2.39.2

