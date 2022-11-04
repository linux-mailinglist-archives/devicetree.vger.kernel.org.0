Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34272619C76
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 17:03:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232259AbiKDQDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 12:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231565AbiKDQDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 12:03:33 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 965552FFFD
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 09:03:30 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 578A78523F;
        Fri,  4 Nov 2022 17:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667577808;
        bh=wbhn+skkupJVu+1v7hIeX5XvWmqgUIxMAmPAUVDuk78=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=vmrfmJNYlCunX96RsaPRE6dyyQcrKPG5YGbAYljzqw4nRPY+mQUhX1Cy96Xi3OpPv
         kwRkqXWr7QclEwQJgbMCzbXZCj5FKdLG1KMPuJ+VoVdpzLg6gUy1RGqc63hVngD84p
         1Sk8atYPIw6aD/z2i7lD9giX8kdB5hvgwqj3vNiB9sja1xLoZivQlv8cDDOGhPGg+/
         2VBGlkRs0nt9k7RJP9onEqt03rBx7IJlEyYV5IEfmmqRub8mwminsWvBh4VZK7jELx
         M5+KKMCIYFC1fC0JqM6gOadbMpqn1ViTHGm8jwRB1+VQi0K4nnV6P4DcedlLGjjvZr
         DhfwLE4YZTW3w==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
Subject: [PATCH 2/3] ASoC: dt-bindings: fsl-sai: Use minItems 5 for i.MX8MN clock and similar
Date:   Fri,  4 Nov 2022 17:03:14 +0100
Message-Id: <20221104160315.213836-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104160315.213836-1-marex@denx.de>
References: <20221104160315.213836-1-marex@denx.de>
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

The i.MX8MN currently uses "bus", "mclk0", "mclk1", "mclk2", "mclk3"
clock, which adds up to 5 clock total. Use minItems 5 for this setup.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Nicolin Chen <nicoleotsuka@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Xiubo Li <Xiubo.Lee@gmail.com>
Cc: alsa-devel@alsa-project.org
To: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/sound/fsl,sai.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
index 05bad828cc353..59a13cd0887e9 100644
--- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
@@ -74,7 +74,7 @@ properties:
           - const: mclk3
           - const: pll8k
           - const: pll11k
-        minItems: 4
+        minItems: 5
       - items:
           - const: bus
           - const: mclk1
-- 
2.35.1

