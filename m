Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8701237D7
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387502AbfETNOM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 09:14:12 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50294 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387455AbfETNOM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 09:14:12 -0400
Received: by mail-wm1-f68.google.com with SMTP id f204so13287757wme.0
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JgNiUlcyTLppuY9tH0ogOnTGm4dNQIA4Aw7Xw6YAiwk=;
        b=Cbqk3Ii8e7bOSzJ0ptEJRWFqbnaWoT1kfUF2zytpr1axifZncBF183TsnnWcfTbOGt
         BHyQ7+XEBgVfKlMuQozejU9acPZExKrOqegeVRi8BiftxAAkKE8qaGAheclhfJWSGUfG
         jh1JJUSq1Mcp5p3laR6tVKstrK6MFuhL/HylVWiA+CZMALnfFKkYCP7K7iT0Bdy9nkfc
         MxGcel7qYSvjjevanb1DaCxRcu7rhB8jcpYXic7+7UM3OWJOeNANMPjGQoE7OfZkYePY
         xTluxTb+dThkZFvy2KiR+PSnZwZPc7dbb4DrrE6iY6Sl0ss9xlDOcZZh5J0MN6m/x1rY
         CR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JgNiUlcyTLppuY9tH0ogOnTGm4dNQIA4Aw7Xw6YAiwk=;
        b=pno5DLCaovlQ6qI1zu/wkr5dIbsLPzLoh/UpahiVb6U12Z57FmZX0I2PDOniCF0ZwL
         EgB4BaUz75FYz15eIohOZMC8r4NtKnugdeZNDmuDFVmKbrDSE8GrCacJv9JypGO7vCTC
         nWkfiGV4FVU1cTQE+3O1LhHrGFMk5EkvbajlcLc/lLF9XmoBJCtjft2OK1LCLUhu4QTI
         9MwA0LJqzX9t1aVUQLcgsf+0YKsEeXEMj8gNSJ4RGDmqn3FGfo8kpkrPY9EjhvnQ/0rh
         IaCoAHJyTPb5hU+m+D+PoNZl6mPUYRT2hfzGOBgtgHSbBZPBBrXBVdDrQz0floUJVYlq
         05Kw==
X-Gm-Message-State: APjAAAUp82c89pctEbZ+ZrkkyXCplt/j2yWJdZgg+F42cFBDso4+Dnv2
        TdYOZ/iy1VpmuV0pIobyiybDoA==
X-Google-Smtp-Source: APXvYqyWr5RHhb38v+c9DGSDDjroLx1VJ4vpASEZv3rClG1SjtEohEjSfWfel9sbjtvmOB5JVHNoHQ==
X-Received: by 2002:a1c:7f10:: with SMTP id a16mr11482879wmd.30.1558358050598;
        Mon, 20 May 2019 06:14:10 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z8sm18054284wrh.48.2019.05.20.06.14.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 06:14:10 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/5] arm64: dts: meson: g12a: add ethernet pinctrl definitions
Date:   Mon, 20 May 2019 15:13:58 +0200
Message-Id: <20190520131401.11804-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520131401.11804-1-jbrunet@baylibre.com>
References: <20190520131401.11804-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the ethernet pinctrl settings for RMII, RGMII and internal phy leds

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 37 +++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 1d16cd2107ea..def02ebf6501 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -1109,6 +1109,43 @@
 						};
 					};
 
+					eth_leds_pins: eth-leds {
+						mux {
+							groups = "eth_link_led",
+								 "eth_act_led";
+							function = "eth";
+							bias-disable;
+						};
+					};
+
+					eth_pins: eth {
+						mux {
+							groups = "eth_mdio",
+								 "eth_mdc",
+								 "eth_rgmii_rx_clk",
+								 "eth_rx_dv",
+								 "eth_rxd0",
+								 "eth_rxd1",
+								 "eth_txen",
+								 "eth_txd0",
+								 "eth_txd1";
+							function = "eth";
+							bias-disable;
+						};
+					};
+
+					eth_rgmii_pins: eth-rgmii {
+						mux {
+							groups = "eth_rxd2_rgmii",
+								 "eth_rxd3_rgmii",
+								 "eth_rgmii_tx_clk",
+								 "eth_txd2_rgmii",
+								 "eth_txd3_rgmii";
+							function = "eth";
+							bias-disable;
+						};
+					};
+
 					tdm_c_din2_z_pins: tdm-c-din2-z {
 						mux {
 							groups = "tdm_c_din2_z";
-- 
2.20.1

