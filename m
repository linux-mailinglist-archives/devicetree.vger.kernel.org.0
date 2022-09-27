Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 116225ECC71
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 20:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiI0SyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 14:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbiI0SyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 14:54:16 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29CF1D1E0A
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:54:13 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E56E380548;
        Tue, 27 Sep 2022 20:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664304852;
        bh=r72X1gQ8iyScTz13BxDWYPZsve0RS4joMPFJhECXWJM=;
        h=From:To:Cc:Subject:Date:From;
        b=cr+DCfdjNyWDnWemz2WGC6N7GywwAeV3piVQ97gphRdR8T7VDxoFjeoyOb59lzFu7
         HI9JmPcWXQ2qBUYaEsFiZJa4uc3UF/mpfozxC6Ns/6Li9S+7T0M12F9F+Ddhj0XW6h
         UyBlqS4mqXeyF/0xiO1rXbz3SCVUhjWbyc2xg0asqdDjn0o7wOzFRtQ6jWLUTtuHUq
         p7Z6ZlCiBzC7Yics+dvyJmcWBFpNLY4NQzHWo8ynfeRb9dOgKr6g/uIMUZjgojpmEa
         PyD1JpkynU/MZaeD6LmzbjllEppDkvuMYCl2pIJ1/VYIWbVZyQyVOxJKrpwgFr9ErK
         Mj4QQlE80Y1ow==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: [PATCH v2] ASoC: dt-bindings: Document audio OF graph dai-tdm-slot-num dai-tdm-slot-width props
Date:   Tue, 27 Sep 2022 20:53:59 +0200
Message-Id: <20220927185359.294322-1-marex@denx.de>
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
V2: Drop the definition refs and just fill in type and description
---
 .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index bc46a95ed8400..64654ceef2089 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -74,6 +74,12 @@ patternProperties:
       convert-sample-format:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
 
+      dai-tdm-slot-num:
+        description: Number of slots in use.
+        $ref: /schemas/types.yaml#/definitions/uint32
+      dai-tdm-slot-width:
+        description: Width in bits for each slot.
+        $ref: /schemas/types.yaml#/definitions/uint32
       dai-tdm-slot-width-map:
         description: Mapping of sample widths to slot widths. For hardware
           that cannot support a fixed slot width or a slot width always
-- 
2.35.1

