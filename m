Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4159954217F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbiFHBbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 21:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389720AbiFHB2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 21:28:53 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACE051F0A77
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:06 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MFL8J-1o0XjA3SG1-00Ffvp; Tue, 07 Jun 2022 22:42:53 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Tue,  7 Jun 2022 22:42:19 +0200
Message-Id: <20220607204226.8703-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:RZwyktpGBw13LEvECvmQkFP5A/2abbduZU0vURMRqnZq0osOfUw
 uKoCoV0KeXptqa/O5FXnTGa1ftM8W3Av21GxCDq/ne1ZzOSNjcKw0rtCfID5RW4A0HwxDwq
 kKg6LbBqSEcGORAZ1QcljzS7Lo2OM+mKpgwT8kJuwFG0g2KqRQBaTqx8t7vBY9Ijb/UaKql
 QcwRxTAD/OrOPWiFtzT+g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PxIJ2dmHzpw=:3Prxuui3ya22wd3gN7zz2C
 AuS+8iIQcXumxmKaAaKdvfc8d+i7wYcN8ubOx6R5GdHcAyL9sPjfw8eAMGmELdNfYhpJrq6jo
 3sg+IzHQCHq//Db9mzqi0Ldg2XheglE5QIiQrYc/3ycFCR3aOXZTeYbhOQ5QY8VIZA15ovsA0
 703O5xyBz0+rOry/hN5jtgv6+mQJYkiJ4k8jAbyOTIPzEgRsq9Ej+TnTcGBx96k0mgFZASY9m
 nFNUUf0GVlQDtEQkZhY7JWToJwc30cif2oMoceie+81noJ7MttCwbhQQiOBUloxPr2CYhgvJG
 dF77qymf9z89BuznZkLV/5ja1Rb33kdZRsJOCq50BvzPAjY+LkXcP4Q2fZ0+I5m5FOstH3x8V
 dX+fqxB2sYrO+EAGo8Q/1e68+j8Ju2hvrhVudw6lOX9GZkR8mIBOyU+Sbq/7P++lF2dYNm+U/
 H9ymSDyyZptxVgPmmIDjO0qK3OJS2Z9yVIlGlY1/dWDIRddH615PS7gQGPXoASLjAElMm4v/C
 qeNUo1zR3YgJG/ZJLZI+VdYjQ+Dnkl7EOqJpQh/q5hEEHwKfgdw+WFmpzlkdfGOPuIr4eoiSl
 fMtru12Zi9SMQtFLp7O+PrjGt6YhNKwDM2hiImiDtjGjGVdWDdMGbKwti+dQrqrnSFdNqUa/h
 QO57N9qosa1hbkZ0LvnLm4fr+TVMc06KYWZa3NA4BqZjyeSzKk5l+kXPUKRo69UV6r/ss0n7Q
 HLmvrLZehDrZViO5mvQNFX/OhE1r6cxRsupLilPujbbdZvVpomhqsN0I070=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

bcm2835-pm's bindings now support explicitly setting 'reg-names,' so use
them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi        | 1 +
 arch/arm/boot/dts/bcm2835-common.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 89af57482bc8..cbb47e2c9434 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -113,6 +113,7 @@ pm: watchdog@7e100000 {
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>,
 			      <0x7ec11000 0x20>;
+			reg-names = "pm", "asb", "rpivid_asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index c25e797b9060..a037d2bc5b11 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -62,6 +62,7 @@ pm: watchdog@7e100000 {
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>;
+			reg-names = "pm", "asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
-- 
2.25.1

