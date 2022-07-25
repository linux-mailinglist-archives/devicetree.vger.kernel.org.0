Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17ED457FFAC
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 15:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235468AbiGYNPi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 09:15:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235457AbiGYNPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 09:15:36 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EBE76543
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 06:15:32 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id tk8so20484810ejc.7
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 06:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=domnjDOtqAB91aCICPafBq6z6sV4iwkBiMXWT2WHMNE=;
        b=G3FoQYpQwwLsTTQFIeiZbihJ6qL3bfM62n8yx0JoT6U1YSSv7j2zORAJNDXPT2zq36
         56zFvFBs6je5wRPYEXG9jbC8jIiva/L91gp3xJOyueqlQCzIiXVifilDDP/tsX2+UYfz
         YwKK15/hkp0xWntlDLdUL+5SjyZ5p3DXJjZgXbrM2UC1GcsZtQxjORxjyolADy6IzI5D
         VQeuDgrVPqx1+9GZoVNXNKrZJF2HddkjM1/qfqrxk1H4Gr9e2ETV9fMssw2PkJMsvIcW
         9tLE7uZaJtVPWdWlAlEVOmmYsu7ZBVOsHLoFkgMuqUfNJCHivVtYm7ZAD3KLJA09hFVa
         p+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=domnjDOtqAB91aCICPafBq6z6sV4iwkBiMXWT2WHMNE=;
        b=SPMOV4f5OxGUTjDy7A9OgDMmlm6VMF4nttMPLysR5eNRMJ7w+yyOqAnsInGHR0q5rr
         HCCPR7m1k7R/xdaiAVmJltqNYlqJmh3QxOnrOL1UTRM+qHHUxvIliIEjaAXdNn4IdC++
         2z9FU89gv+Go5hQdkExOc+2siPizK+vuuvxzLMWNVY2xy1Zaplo42IwMV4SQJDSovpgp
         WRPGWsrMsEvsJBzA7cVpRR9HoEkNi0hW76gml0Jq3JPj2Yx0AxJWP0j37pya182qEFfF
         V/oK3gCT1XP17r2aNF3Y6WNq8zhX2zvUs6wD/j2u+VttIc5PR6PxlQKUX3x3Yx2kvJ77
         DSmg==
X-Gm-Message-State: AJIora/sqmZoGfd2b/vM+3JxWEMUtczh2w5SpzYyZ3fU59/5FKPeQTWZ
        IUM16FYSVMIYr6ervH2L8OVOAA==
X-Google-Smtp-Source: AGRyM1vbn0uxKG9yd38dm3MoY+VQP7HLeT05n7Y7EhUdFNEBm839y34wCEkIz97+vzXzKukkr8//jw==
X-Received: by 2002:a17:906:9b09:b0:72b:9612:d373 with SMTP id eo9-20020a1709069b0900b0072b9612d373mr9842259ejc.606.1658754931016;
        Mon, 25 Jul 2022 06:15:31 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id h14-20020aa7de0e000000b0043a7404314csm7124969edv.8.2022.07.25.06.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 06:15:29 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lars.povlsen@microchip.com, Steen.Hegelund@microchip.com,
        UNGLinuxDriver@microchip.com, arnd@arndb.de,
        alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] arm64: dts: microchip: sparx5: dont use PSCI for core bringup
Date:   Mon, 25 Jul 2022 15:15:21 +0200
Message-Id: <20220725131521.607904-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220725131521.607904-1-robert.marko@sartura.hr>
References: <20220725131521.607904-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As described in previous commit, PSCI is not implemented on this SoC at
all, so use spin-tables to bringup the cores.

Tested on PCB134 with eMMC (VSC5640EV).

Fixes: 6694aee00a4b ("arm64: dts: sparx5: Add basic cpu support")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 38da24c1796c..ea2b07ca2887 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -40,14 +40,16 @@ cpu0: cpu@0 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <0x0 0x0>;
-			enable-method = "psci";
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x0000fff8>;
 			next-level-cache = <&L2_0>;
 		};
 		cpu1: cpu@1 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <0x0 0x1>;
-			enable-method = "psci";
+			enable-method = "spin-table";
+			cpu-release-addr = <0x0 0x0000fff8>;
 			next-level-cache = <&L2_0>;
 		};
 		L2_0: l2-cache0 {
-- 
2.37.1

