Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A90F5EB62C
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 02:20:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiI0AUW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 20:20:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbiI0AUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 20:20:13 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FACB719AD
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 17:20:09 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 11A0884E31;
        Tue, 27 Sep 2022 02:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664238007;
        bh=OBQwDC3kXdektDpa5NG0Pkr9pcNuEgOjGxQ588vpKHQ=;
        h=From:To:Cc:Subject:Date:From;
        b=ry5a7XJN4Rd+RUTewE+8p0QlSBNnPCSXKqf5Li4unj12nUKRDVsD1nAs/f9sMx1VD
         v5Dmmay739913SPifuAqRtFsu7KyX/fMMbfUyI/2IUNgmgRTGQ+/S6W8qj0k9zjpVs
         rhyvBjmv10m6HYvp+OU4rhp0UCkm0v00W3BWXjoWCiwYPRK4yYgybwAZQiQWAhAiyW
         2O4hw2rOyrtqh+gYTlyZpf4fk4mzvb1hR/SCLY1wFvXUNoTpK4nKq6xPxt2HY5uRLv
         X1z8GUwCJE/klCCJbdE7Ji8Nxg7A2ilWyodAtoc9PD1IRZzq3ELpnqUuF8vT1V71Ft
         leA8lIGfvMMsg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Olivier Moysan <olivier.moysan@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] dt-bindings: sound: st,stm32-sai: Document audio OF graph port
Date:   Tue, 27 Sep 2022 02:20:04 +0200
Message-Id: <20220927002004.685108-1-marex@denx.de>
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

It is expected that the SAI subnodes would contain audio OF graph port
with endpoint to link it with the other side of audio link. Document
the port: property.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Olivier Moysan <olivier.moysan@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: alsa-devel@alsa-project.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
index 1a3abc9495055..56d206f97a96c 100644
--- a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
+++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
@@ -122,6 +122,10 @@ patternProperties:
         description: Configure the SAI device as master clock provider.
         const: 0
 
+      port:
+        $ref: audio-graph-port.yaml#
+        unevaluatedProperties: false
+
     required:
       - compatible
       - "#sound-dai-cells"
-- 
2.35.1

