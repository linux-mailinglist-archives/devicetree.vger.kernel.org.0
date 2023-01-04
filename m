Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C433865DD27
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 20:55:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbjADTyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 14:54:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240308AbjADTyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 14:54:16 -0500
Received: from smtp-out-03.comm2000.it (smtp-out-03.comm2000.it [212.97.32.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC9821DDC1
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 11:54:14 -0800 (PST)
Received: from francesco-nb.toradex.int (31-10-206-125.static.upc.ch [31.10.206.125])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-03.comm2000.it (Postfix) with ESMTPSA id 5F922B446B0;
        Wed,  4 Jan 2023 20:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1672862053;
        bh=sFXZRSOGgAsCXhxHpKiih4SIl20fwijDGosnd3EEM6c=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=F4W1Hk7sdGLoukyjWsdzgB38yhBiCGFxt1Vpi8clhtpu1vZ3BRRHjwneUwYc/dFZA
         ciNl+m9eYFBh7jdNaZzgnv1wBM/NSWV6+DMdW7hT0fduLYdiu+Ma5gqdfzCGCpznDy
         hYdscCZj/PlvX8UDzFFDcNGCJ3JkDgPaxcAjLER9g/tiM9nuUz3bRu++NJvXTtu70q
         icco4RwBYibmtNgjbDOgbbIZl8Q1l+TP8E/xEpr6p02sDL5cMgza5dtKaNjN1c+mc2
         GAv44NlKVdRoRd0P9ZKFT447GdDg9WbRwMwowNObJwx6pxpr/C4jnZxMTP6/aKor3S
         WG7hCQDVkQlpQ==
From:   Francesco Dolcini <francesco@dolcini.it>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, David Lin <CTLIN0@nuvoton.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
Date:   Wed,  4 Jan 2023 20:53:50 +0100
Message-Id: <20230104195350.149300-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230104140412.35575-1-francesco@dolcini.it>
References: <20230104140412.35575-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>

Add nuvoton,spk-btl to configure the two loudspeaker outputs
as Bridge Tied Load

Cc: David Lin <CTLIN0@nuvoton.com>
Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Added Acked-by: Krzysztof
---
 .../devicetree/bindings/sound/nuvoton,nau8822.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
index 2810924e3a47..65105402a53d 100644
--- a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
+++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
@@ -21,6 +21,12 @@ properties:
   reg:
     maxItems: 1
 
+  nuvoton,spk-btl:
+    description:
+      If set, configure the two loudspeaker outputs as a Bridge Tied Load output
+      to drive a high power external loudspeaker.
+    $ref: /schemas/types.yaml#/definitions/flag
+
 required:
   - compatible
   - reg
-- 
2.25.1

