Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83BF155A97A
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232663AbiFYLhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232592AbiFYLhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:16 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084D4167F0
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:14 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M8QBa-1o0eFC3CjI-004Vtm; Sat, 25 Jun 2022 13:37:02 +0200
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
Subject: [PATCH V4 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Sat, 25 Jun 2022 13:36:12 +0200
Message-Id: <20220625113619.15944-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:GPZerfO3A6nim1CXLxn5K+0IYKMNEx6tEeXkhLn7l+Mvha/8/1F
 pDSALibh5T4WLpHcTY4vwJsSD6ZBiVoGdyDzNxTZ72r16UeJOSEYbUKRW/jrRjkQ5LwzdLo
 po1/cr0v+LSszYY2kijueCAsbmf9T8925VQPXDMc0G9oo+/oNpJm+3Pch5qw29V/AmfRLIV
 BHHFtgP48l9Fk34OyBgQg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3BDqzTMNyaU=:x0XBOjTi8uzVfAbPPI6Klw
 Cuv/TdFdGwKILdevintNJujzqRfRKX2LbkrKEJ5wNypF80SuIBlCyDmpsxWGpiTHPL1iBIeem
 z8lBNwc5xBpRmOsNw9S61v3Jz5acd+EnqIvjdfbirfwcO1k8Pn9J9RR2Qinx2LS74HdayjNcG
 AKsueSTkkUEEGFjdoWHnDjXLP+Dl+prqTkOeo11PreirvCxHGhJpeAMCm9FEMxVomWP/jzX3p
 7eKuyzjDm/kDAMvJNYVVX70Fagt77ZFTTPv0IWdSAQ7+IbUR3LgCtTFEZXAbJs4fILq+vcErX
 mQ8reHl2teEmbCg7KFg7RF/m7bgHseA8YGvJ+P8hoBPogpS3fiJdQ3OhXHqGHMUqbdRvKBGxj
 fAOp3eFqx5xIKEeVnbae/x2gFvjqaWzrWIh9FK/I/9gLwHrHgHXkl3Zrv4bONdhYrb9pCRhbw
 WQwYIAVv/snbmMwfWypRDtVu2t7Urv54c+81itwP6pRtq1n/swiZpzW/z3nSktm/kBB6I0VXW
 8lFXRKxC4hmYewck9I6jJ9/uPxVyWvyX32qErkwcPjuXMlnKkzi1SVDn8JJqU6Aqs+CE+I5S/
 PDbYDlDYgm1RdE+DVjxwl+ku4JI+3ri1WV62sIOKz9KPeGqU1IwH2Wh1ffRLqf79l5YkgVKgg
 w57obrZdkkgaBCu6zfGc58lhTCqW2+wYlIyBdD6PNX8CBzJ68I5QcilQNnAWDTasALc9UsqOU
 GCf37G6qDpkJc2JGDHfw4mfr+JLCqLQJxu+ke90t6NM2wWv7bKfZoWWdChE=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
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

