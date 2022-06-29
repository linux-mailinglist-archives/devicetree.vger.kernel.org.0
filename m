Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78C935609A9
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231552AbiF2SpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231553AbiF2SpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:45:07 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4C3E32EDB
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:45:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id bi22-20020a05600c3d9600b003a04de22ab6so181444wmb.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qoN7yg76UgsEFXHXaQt2AveJ+WlGKI9wi9pTAfeqlpQ=;
        b=e4CuTg/9p48DvSTUNdv17K46g3T0j+a8aeAGEEKwZCfJKs9OjS34vhGZ7HFoE764Hd
         j8xFaBJnEvmew0GGSReaaY9xNCu/fR2Sc34atEiERkguYgduxUnuc58gW9QTCtElfHoh
         +e4aG+8roo0EfND8Dp2rzL5lveRBxroMVkaiGySBPM8Qh9bYqkiTIqpFq/W5RA0SiiOj
         PkZRxnuQRLUqrKTYridgjCyNZyMdVCaIDrvKh8cbK07c3fQ7hSJhIcZF+zo6hofXTYZU
         rLSvEmCJJCmqf5LBxTtJA5BYCL/pC3D+iLf1VIJRxuvt++JTQuIt9u9ZtTRVQGNCwcNI
         LZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qoN7yg76UgsEFXHXaQt2AveJ+WlGKI9wi9pTAfeqlpQ=;
        b=H5vM2yUj3kKvVjcfAH8YcDbS8ZAJXHDu1BNvC59Tm3ZlzPR1QYlhjCQgL/tkvYZh6K
         n6QWNo+rSgTP1q0xJBIa/mDAWyyTdVmQYRRk8fzA/oetH9gkiah7oDe1bWKv4GPjfH+S
         h7Ymc2EEtTvYTvAR4bbeHsi/YICbutiJ04Tw1Llo7mM+4VIPU0ltrGu6XapnOAJqwBF0
         h3/ShvHwMEgcn+E0K1f2GccTBDlo6BJvA0LLxQi745MB8VZWkqch8fWZNhuz9xHqD1xV
         fjQo7wpU4b/gv3P+kqsUJonL1DfTePeRLt1+5mtn1M+l9ortp1Q4Thxv5r3k8jn7jgKX
         BA5Q==
X-Gm-Message-State: AJIora/DAAsLlT6ukm6dTRp2fE0yN1PKnunaN4PslgJKGAvCC8yfAovW
        A/SoOdlYpdMVPBT5ja8mGzRu9A==
X-Google-Smtp-Source: AGRyM1sAH2pQyXCWdny+eGMynhGGuuyXhbj2gCp3uhWDHvXjt8YqOA4VdUet5wJ8GqcAeQgDcQfsCA==
X-Received: by 2002:a7b:c1ca:0:b0:3a0:3b9e:fd96 with SMTP id a10-20020a7bc1ca000000b003a03b9efd96mr5210627wmj.86.1656528299365;
        Wed, 29 Jun 2022 11:44:59 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0039aef592ca0sm3834371wmj.35.2022.06.29.11.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:44:58 -0700 (PDT)
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
Subject: [PATCH v3 14/15] riscv: dts: canaan: add specific compatible for kd233's LCD
Date:   Wed, 29 Jun 2022 19:43:43 +0100
Message-Id: <20220629184343.3438856-15-mail@conchuod.ie>
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

Add the recently introduced compatible for the LCD on the Canaan KD233.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/canaan/canaan_kd233.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/canaan/canaan_kd233.dts b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
index 4a540158f287..b0cd0105a5bd 100644
--- a/arch/riscv/boot/dts/canaan/canaan_kd233.dts
+++ b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
@@ -127,7 +127,7 @@ &spi0 {
 	cs-gpios = <&gpio0 20 GPIO_ACTIVE_HIGH>;
 
 	panel@0 {
-		compatible = "ilitek,ili9341";
+		compatible = "canaan,kd233-tft", "ilitek,ili9341";
 		reg = <0>;
 		dc-gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
 		spi-max-frequency = <10000000>;
-- 
2.36.1

