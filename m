Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74C275EB680
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 02:54:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiI0Ayr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 20:54:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbiI0Ayp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 20:54:45 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7259943331
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 17:54:43 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 290A383869;
        Tue, 27 Sep 2022 02:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664240081;
        bh=FsDScXFRX7C8vRitOr1X2Dru3V2z+v/UjgGzJhLlc4E=;
        h=From:To:Cc:Subject:Date:From;
        b=d6ytqkikv0e3VyowR4is+3zDBagPEot7wt7AczyufV/3SIsaIGbOdQsyqKbME+q7a
         z9KZ0xvBAee9z4Qzv17wrpHC/bNkcmTFkarLa2ERxGA9BffF9SM1vplHNTnC2HD32k
         5P542zJJT3Q8K21Ej3tiPBHCrDMS3FdTt8gsZHIrkPPCC5PzGdqMELEnch/1WoTksc
         fVINu4/NN2CfJTqKnBAJXi1tw+8kR0i/rkFFwDYPB8K2w2HpdYeK2T4k12PP7fqVWl
         hcr3m2Sgadhtl1XUVhgswcyWNwNo73HOra1tsDp5xQ4WYzohzMqktjqCX10NI9kRDt
         W4UV8Oz0b597Q==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: dt-bindings: Document audio OF graph dai-tdm-slot-num dai-tdm-slot-width props
Date:   Tue, 27 Sep 2022 02:54:36 +0200
Message-Id: <20220927005436.690904-1-marex@denx.de>
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

Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
parsed by simple graph card and may therefore appear in audio OF graph
node.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: alsa-devel@alsa-project.org
To: linux-arm-kernel@lists.infradead.org
---
 Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index bc46a95ed8400..c282b81632d8f 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -74,6 +74,10 @@ patternProperties:
       convert-sample-format:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
 
+      dai-tdm-slot-num:
+        $ref: "#/definitions/dai-tdm-slot-num"
+      dai-tdm-slot-width:
+        $ref: "#/definitions/dai-tdm-slot-width"
       dai-tdm-slot-width-map:
         description: Mapping of sample widths to slot widths. For hardware
           that cannot support a fixed slot width or a slot width always
-- 
2.35.1

