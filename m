Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60B3B560998
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbiF2SpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231404AbiF2So4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:44:56 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 841C1275FF
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:55 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id be14-20020a05600c1e8e00b003a04a458c54so179582wmb.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gc2vKH3KC5MkBHyxjlffpbpmjSYGhMGK8SuLLVbLMmA=;
        b=b1HmM61mdW8GYiqxKQWSEMxCNUDxJBTTrlRtl15fqNYIuCkZc0o2CJdTeGIajSwT7X
         u7/zOLw3G6g6qk7W2pP9C3CQg/YA4QDwKXxQMrOAFOIojMwCO5d2ivXFP3OKepL8vOrF
         i3WcjcHbDjI30K+2b7eP7wJDRUdhrnDeDzRa50oEfXZTzW0Ic8RRtaW04pEbNja6qUT/
         bCjIKRloecgdHSLASblaD+5TKC4S8bh/hwR54jV1iqeGBFZH+pojBdoaqMRd3VHtqb8k
         aKuNrjFgo2M7HEKDHx0EAotjuGjsu78spyPlqsDURW+PCQz8XYT/XjNBhIQ6xvLK6pHA
         ju7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gc2vKH3KC5MkBHyxjlffpbpmjSYGhMGK8SuLLVbLMmA=;
        b=e/MY7Ya3dxniDd3sM0jzu14zWNaMWfbYP0v647WcJgJ7ro8KyGggCiDjdZu31y8jmV
         AJlP3O0OAgRQxg0RmCumo6InWObuXPttbWgy9HEuyjrqmQpSZwYGPUyn1yIhn51YVJKE
         03BMHtU3xdJcOH0eqTk3HTpy44i6bZZFYL3qG8B21ZEnoG2Eg5/3McFTJ6JnIvtG6W9X
         PRD7ahFYqOKfF12dpt3NNwknssEtoeGK1LaHirKlZ+URcn4FRUkE/hrRqcu9MiCZo+B+
         WeDWmQcEEC2WeOYdItQnVcLHgZC8evzdHz5oy6/m1NUUMnYmjyeDfFs00QNejOVbSMYG
         uglw==
X-Gm-Message-State: AJIora/Ht3se3rh1l2mnmbbwxrhAnA5I8BQsZXGNYuCSl3FJEMJd0Qro
        hJxVtpoYmQHNHkqGe6gf0ADvcA==
X-Google-Smtp-Source: AGRyM1tiQTiUML69pSH/X379WColqfSCa/BD0WFCrjuoimppJGuQP+xpNrdH6dUuJmGqYoVcprXwFA==
X-Received: by 2002:a05:600c:34ce:b0:3a0:3240:92ca with SMTP id d14-20020a05600c34ce00b003a0324092camr7157169wmq.130.1656528294078;
        Wed, 29 Jun 2022 11:44:54 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0039aef592ca0sm3834371wmj.35.2022.06.29.11.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:44:53 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmer@rivosinc.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Dillon Min <dillon.minfei@gmail.com>,
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 11/15] riscv: dts: canaan: use custom compatible for k210 i2s
Date:   Wed, 29 Jun 2022 19:43:40 +0100
Message-Id: <20220629184343.3438856-12-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629184343.3438856-1-mail@conchuod.ie>
References: <20220629184343.3438856-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The devicetrees using the Canaan k210 all have a sound-dai-cells value
of 1, whereas the standard binding example for the DesignWare i2s and
other use cases suggest 0. Use a k210 specific compatible which
supports this difference.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/canaan/k210.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
index 72f70128d751..900dc629a945 100644
--- a/arch/riscv/boot/dts/canaan/k210.dtsi
+++ b/arch/riscv/boot/dts/canaan/k210.dtsi
@@ -251,7 +251,7 @@ spi2: spi@50240000 {
 			};
 
 			i2s0: i2s@50250000 {
-				compatible = "snps,designware-i2s";
+				compatible = "canaan,k210-i2s", "snps,designware-i2s";
 				reg = <0x50250000 0x200>;
 				interrupts = <5>;
 				clocks = <&sysclk K210_CLK_I2S0>;
@@ -260,7 +260,7 @@ i2s0: i2s@50250000 {
 			};
 
 			i2s1: i2s@50260000 {
-				compatible = "snps,designware-i2s";
+				compatible = "canaan,k210-i2s", "snps,designware-i2s";
 				reg = <0x50260000 0x200>;
 				interrupts = <6>;
 				clocks = <&sysclk K210_CLK_I2S1>;
@@ -269,7 +269,7 @@ i2s1: i2s@50260000 {
 			};
 
 			i2s2: i2s@50270000 {
-				compatible = "snps,designware-i2s";
+				compatible = "canaan,k210-i2s", "snps,designware-i2s";
 				reg = <0x50270000 0x200>;
 				interrupts = <7>;
 				clocks = <&sysclk K210_CLK_I2S2>;
-- 
2.36.1

