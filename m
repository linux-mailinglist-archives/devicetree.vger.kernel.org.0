Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA8AD73E1FA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbjFZOVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231526AbjFZOUx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:20:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE3219A5
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:19:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6819960EB0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BBB0C433C0;
        Mon, 26 Jun 2023 14:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789122;
        bh=lyjyF7Gnd/nd3YyFcaxlXzGxWRvkkszv2U2m25obmSI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=m+nK4e/L5tN8ejGtG3Oa3IJNkfRGOcdkICxmFconBeqaYfDLeFEsD4SW5LCRMQELN
         2q/wqtJyd1AOn18zNXnSqtv/V1iGK/h/D1UuvDdrgXqxBS0vRVNmt61ssO3UQ12/nT
         pm4d2vaxxTHE2Nm/S8oU7pULArPsEBi0/w/kPrw2INhIwnif9han7j5GblCuLE+EvD
         WtVTJu02EqisZdcErAzWtA4bgPHuwgBYY3Du+rWEk4yC7OwsE6jlwzimtftVo4IBEL
         O9eBrnRy6coxGO6q8B29s4SjNgQ7Ic77HWIwU16OJLz5ho+Wif6fuYR5LK92FJMl51
         TE0nebK0ez8QA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 3/5] arm64: dts: socfpga: stratix10: fix dtbs_check warning for usbphy
Date:   Mon, 26 Jun 2023 09:18:24 -0500
Message-Id: <20230626141826.414777-4-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626141826.414777-1-dinguyen@kernel.org>
References: <20230626141826.414777-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

soc: usbphy@0: 'anyOf' conditional failed, one must be fixed:

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 55abc578e0ec..1c846f13539c 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -487,12 +487,6 @@ uart1: serial@ffc02100 {
 			status = "disabled";
 		};
 
-		usbphy0: usbphy@0 {
-			#phy-cells = <0>;
-			compatible = "usb-nop-xceiv";
-			status = "okay";
-		};
-
 		usb0: usb@ffb00000 {
 			compatible = "snps,dwc2";
 			reg = <0xffb00000 0x40000>;
@@ -639,4 +633,9 @@ fpga_mgr: fpga-mgr {
 			};
 		};
 	};
+
+	usbphy0: usbphy0 {
+		compatible = "usb-nop-xceiv";
+		#phy-cells = <0>;
+	};
 };
-- 
2.25.1

