Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A50798AC4
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 18:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243785AbjIHQmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 12:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231775AbjIHQmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 12:42:09 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8F471FCF
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 09:42:05 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bd04558784so1509844a34.3
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191325; x=1694796125; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=Bgb6wYma2s1pKowyWrncYNYlnLtqZIsPcQAwaEIVqi5RE4DesodHLUtLD3++RPnsyZ
         9u3RD8QzvzLzj8OXXMb4BuatOTWgsifqUCTz1NQtDRcB2U6wJsskiiq5+KpfzQdhFF3Y
         +O7hA67spa6+51+k36rNQGsp1QkXxZqL8i73wt5MgTIz+OcbSGAiM1R5BotLZkmUO+Fn
         xbPb5x6RV/Ee33k1jyKELoNf5zIHw8jOsww5XQZ1TECaiNHpCfVXEOM+XjFSZlpi0GYV
         cftCqRo7SdGG1usv1LgdQhSFawx+hW9wexr07vpluGbL2wqeElPBgpzCs0ZPTYCjaXB8
         5eKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191325; x=1694796125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=hgbvSQ8HP64x2xAXjVvpTJ+jkTbPFylse4PZ2UVEPwqVxxOL4iClqEnw9wleFQELp7
         xSXm0jSO+Dk1CgrG8VGfx/6ht52JxwzXNdr6W5Kr/sV20Sl0YCEQaibRnhR0gaxKbpDG
         LEA6/5Vdfxkiq42SeodLfhFLVgqVB4R66N6P1CAeclltZbTxtXtsQL7mvoDiFlVzlxvC
         LwX20F05PWidCC7weMECXM8Dwwuqk8M8esXPElQuZFke4ayFdHGuYr57YyAekFus+JyD
         bxnRllQOgbPPaXhVuWBVNAen5PO3QfBxIC9t0xphY9ANWInKfn9drLdTqGRoS4f3HirB
         f0FQ==
X-Gm-Message-State: AOJu0YyRaRHQCyidoVnP6miqVh4L5CbZY6/RKrcsRrVWQbeDt4M4iA+E
        M6K1Vh8iWtzvKjJ6iQOxV2Ul+wuUdT1TVw==
X-Google-Smtp-Source: AGHT+IET4mmN2Idlz+iOML30+xfvBysG5kiH18eLSaLbf6y/AmlHftf1oyazh8wyiG0o2Ucjv/Q8PQ==
X-Received: by 2002:a9d:4d84:0:b0:6b7:5086:2f59 with SMTP id u4-20020a9d4d84000000b006b750862f59mr2975951otk.23.1694191324773;
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date:   Fri,  8 Sep 2023 11:41:54 -0500
Message-Id: <20230908164156.2846-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1503a4b233a..646f49cc9e53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.34.1

