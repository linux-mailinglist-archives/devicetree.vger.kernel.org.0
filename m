Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC4F6FDBCC
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 12:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236250AbjEJKi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 06:38:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235904AbjEJKi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 06:38:27 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7785535B3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 03:38:26 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id CA2878109;
        Wed, 10 May 2023 10:38:23 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Wei Xu <xuwei5@hisilicon.com>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: Change pinconf controller node name to pinctrl
Date:   Wed, 10 May 2023 13:38:15 +0300
Message-Id: <20230510103816.39015-1-tony@atomide.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the pinctrl binding pinmux and pinctrl are valid controller
names. Let's replace pinconf with pinctrl so we don't get new warnings
when pinctrl-singl yaml binding gets merged.

Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dinh Nguyen <dinguyen@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: Wei Xu <xuwei5@hisilicon.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi              | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi               | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi
@@ -32,7 +32,7 @@
 
 #include <dt-bindings/pinctrl/brcm,pinctrl-stingray.h>
 
-		pinconf: pinconf@140000 {
+		pinconf: pinctrl@140000 {
 			compatible = "pinconf-single";
 			reg = <0x00140000 0x250>;
 			pinctrl-single,register-width = <32>;
diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -172,7 +172,7 @@ combphy1: phy@858 {
 			};
 		};
 
-		pmx0: pinconf@8a21000 {
+		pmx0: pinctrl@8a21000 {
 			compatible = "pinconf-single";
 			reg = <0x8a21000 0x180>;
 			pinctrl-single,register-width = <32>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -365,7 +365,7 @@ pinctrl0: pinctrl@ffd13000 {
 			pinctrl-single,function-mask = <0x0000000f>;
 		};
 
-		pinctrl1: pinconf@ffd13100 {
+		pinctrl1: pinctrl@ffd13100 {
 			compatible = "pinctrl-single";
 			#pinctrl-cells = <1>;
 			reg = <0xffd13100 0x20>;
-- 
2.40.1
