Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8971C6DB5AC
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 23:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbjDGVCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 17:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231563AbjDGVCd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 17:02:33 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46C6CD50A
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 14:02:15 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3BFCB85802;
        Fri,  7 Apr 2023 23:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680901332;
        bh=AJ02imYCOxJwPvi0oNZrvixeZ4REKxeDBU6fHomFj48=;
        h=From:To:Cc:Subject:Date:From;
        b=WdbFZYTYB0h/+B7R7+jkPQH1WXeoVFbIiC0Vr2VngOaQWFq5PG4Vj+Z8Uls7+lN1r
         IVh1tnK9n8aiuZwApmNAO0emYsEQYkeJs84mgNo5wumOJ9NmW4knxVShM39S1O4o05
         HlNszHdDauF1/N03Y+qClpV4IRw3qs6rb1avyKeSYLyefs5fuB5Yr9Sig72FikUvoo
         qbfILf0vuzwKk3uE9CpasJuLH7RtVOtLivf38LI0fXej3rn4TcGoxBx/esbE6sqrPK
         8VuKabLSIQSa82ASnVDXazfiB1ceExj6t9SJf3PtD+A7gCRyMD8EU8XTDWQnCjloxY
         lTY2Hxk1jQw5g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Replace deprecated st,hw-flow-ctrl with uart-has-rtscts
Date:   Fri,  7 Apr 2023 23:01:52 +0200
Message-Id: <20230407210152.138549-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace deprecated st,hw-flow-ctrl with uart-has-rtscts .
No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32h750i-art-pi.dts            | 2 +-
 arch/arm/boot/dts/stm32mp157a-stinger96.dtsi       | 4 ++--
 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32h750i-art-pi.dts b/arch/arm/boot/dts/stm32h750i-art-pi.dts
index f3e70d3b65ac4..44c307f8b09cf 100644
--- a/arch/arm/boot/dts/stm32h750i-art-pi.dts
+++ b/arch/arm/boot/dts/stm32h750i-art-pi.dts
@@ -208,7 +208,7 @@ &usart3 {
 	dmas = <&dmamux1 45 0x400 0x05>,
 	       <&dmamux1 46 0x400 0x05>;
 	dma-names = "rx", "tx";
-	st,hw-flow-ctrl;
+	uart-has-rtscts;
 	status = "okay";
 
 	bluetooth {
diff --git a/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi b/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
index 3a36f7fe0a2c3..5f85598cc7c6b 100644
--- a/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
+++ b/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
@@ -287,7 +287,7 @@ &usart2 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&usart2_pins_b>;
 	pinctrl-1 = <&usart2_sleep_pins_b>;
-	st,hw-flow-ctrl;
+	uart-has-rtscts;
 	/delete-property/dmas;
 	/delete-property/dma-names;
 	status = "okay";
@@ -297,7 +297,7 @@ &usart2 {
 &uart4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart4_pins_c>;
-	st,hw-flow-ctrl;
+	uart-has-rtscts;
 	/delete-property/dmas;
 	/delete-property/dma-names;
 	status = "okay";
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
index 50af4a27d6be4..8232bbbae379c 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
@@ -452,7 +452,7 @@ &usart2 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&usart2_pins_a>;
 	pinctrl-1 = <&usart2_sleep_pins_a>;
-	st,hw-flow-ctrl;
+	uart-has-rtscts;
 	/delete-property/dmas;
 	/delete-property/dma-names;
 	status = "okay";
-- 
2.39.2

