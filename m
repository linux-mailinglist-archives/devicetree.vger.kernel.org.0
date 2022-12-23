Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B27165530A
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 18:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230078AbiLWRFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 12:05:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiLWRE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 12:04:58 -0500
Received: from smtp-out-12.comm2000.it (smtp-out-12.comm2000.it [212.97.32.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E355317E20
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 09:04:57 -0800 (PST)
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-12.comm2000.it (Postfix) with ESMTPSA id 5B87EBA1B6F;
        Fri, 23 Dec 2022 18:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671815096;
        bh=/v0ZzyeLbg7Wkvx4I0D+61INQZAwyhfMUVclgVe+PYA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=N9gGz1k+BzKiJrKgHd4u2DYniK1Pnu2rRQLot0EoWxY3785omL/voOcQuSgRaisvt
         7GPq/VSNlypVbqJyY384kkbgzCuYyDbj0eF7KY1X7i3VMI2/Qu7L+2BGbBgQNiPy5v
         nj/Ds5ibWBp0joXvfGGx6cipUusu1AhOE5ZymWBiyAfy0dW956nrLePuzh6knIw3IM
         albX3XbnW2K+EHSVk9rPu23AOhTpsaE78idoV+kowIMKXn3MAmSVO1nLnzlKaAopDM
         xy+ubljDfo8MbNV9R2VNJq4Xi8bXi+38Fa/XkssCd9A6e3sXm2BdpVDfdhB02jicuj
         YprxvQzhqZO4w==
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
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: [PATCH v1 2/3] ASoC: dt-bindings: nau8822: add nuvoton,spk-btl property to dtschema
Date:   Fri, 23 Dec 2022 18:04:03 +0100
Message-Id: <20221223170404.210603-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221223170404.210603-1-francesco@dolcini.it>
References: <20221223170404.210603-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
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
---
 .../devicetree/bindings/sound/nuvoton,nau8822.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
index 10464170a98f..700c57698133 100644
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
 additionalProperties: false
 
 required:
-- 
2.25.1

