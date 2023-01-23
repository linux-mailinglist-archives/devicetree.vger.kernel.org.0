Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 729F26786AC
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 20:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232299AbjAWTog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 14:44:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232783AbjAWTof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 14:44:35 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334D22658B
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:44:35 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BF6C461026
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 19:44:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA34CC433D2;
        Mon, 23 Jan 2023 19:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674503074;
        bh=VOEQUr0wbEkh6FSKhmAlE5+/ZJFXs80SLobiQIy6iLA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Nt3/TkaxiNp0ice0Ko/LxM+mDEyMINhtcBcr8TO79pvsU12++PUgCdSjHLIkM4vdw
         rA4wz88Yi6+idZ262y4NQqnC00GrYmDDQh4n4J0460k7Ai2g50A92T+QfM86Pu/0OM
         zr+ixunr+f2srory+RWBAT/h28+Muwka/5WJfIHWSZrw76j+DLXlr1/nvi9u6PdOsl
         oaRdfKEqypgD6QRAKUlYJGtYc4OyeNFBbOQsjgckQmJQ57QB+j2899inJ/tpoSmwv2
         ZVaP4TjdAuKMLvUXIhzQsBPzHRtzA/gNNGufyot8ciRiZNrSkS9RjGIJFR/RfMd7xN
         smfA09To0tNyA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com,
        krzysztof.kozlowski@linaro.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 2/2] arm64: dts: stratix10: add i2c pins for pinctrl
Date:   Mon, 23 Jan 2023 13:44:21 -0600
Message-Id: <20230123194421.95315-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123194421.95315-1-dinguyen@kernel.org>
References: <20230123194421.95315-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the I2C pins definition to the Stratix10 devkit. This allows for the
I2C driver to use pinctrl on the pins to allow for GPIO recovery.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: remove underscores in node names
---
 .../dts/altera/socfpga_stratix10_socdk.dts    | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 17752ca743e5..38ae674f2f02 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -65,6 +65,22 @@ sdmmca-ecc@ff8c8c00 {
 	};
 };
 
+&pinctrl0 {
+	i2c1_pmx_func: i2c1-pmx-func {
+		pinctrl-single,pins = <
+			0x78   0x4   /* I2C1_SDA (IO6-B) PIN30SEL) */
+			0x7c   0x4   /* I2C1_SCL (IO7-B) PIN31SEL */
+		>;
+	};
+
+	i2c1_pmx_func_gpio: i2c1-pmx-func-gpio {
+		pinctrl-single,pins = <
+			0x78   0x8   /* I2C1_SDA (IO6-B) PIN30SEL) */
+			0x7c   0x8   /* I2C1_SCL (IO7-B) PIN31SEL */
+		>;
+	};
+};
+
 &gpio1 {
 	status = "okay";
 };
@@ -131,6 +147,13 @@ &i2c1 {
 	i2c-sda-falling-time-ns = <890>;  /* hcnt */
 	i2c-sdl-falling-time-ns = <890>;  /* lcnt */
 
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&i2c1_pmx_func>;
+	pinctrl-1 = <&i2c1_pmx_func_gpio>;
+
+	scl-gpios = <&portb 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&portb 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+
 	adc@14 {
 		compatible = "lltc,ltc2497";
 		reg = <0x14>;
-- 
2.25.1

