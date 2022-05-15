Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC3E45279CD
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbiEOU1O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:27:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbiEOU1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:27:12 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CFBEE09
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:26:46 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MnaY1-1nQrtV2IYn-00jdmY; Sun, 15 May 2022 22:21:20 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Sun, 15 May 2022 22:20:25 +0200
Message-Id: <20220515202032.3046-5-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:Ub6mldJYY0ItRChrV4lh8lvw7S2zT0Smevj0awMU+bIGvBZ9O+R
 aMUNpcBZNvPTNUef+gBuZiAiqmtHjC39B7SFK9EUvMSNsAr2Q1yFjqPLcUx69V3FgCb0d46
 I+AVbhmpfv3+tgXebJc1fBB6hTNNP8mYgsAdgqTvQoMbkMUPOgl2p58fyHFVQltpZTD0EWt
 M2HOWnCTTDJJtg8527NcA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:L8hjXa/GvSE=:klHt7fOWD1t0OeLKSEbt+T
 iEZcbhAhxecAUIG8vD4cd6gGcE+634aOjLaApar9zH51OGlta46Oc2cnG8uElVl/5RGrI2L5O
 vqnwDioecgstD7dH7RGbxUoV5YsqogHL52n4He4mLU7xZlvleuo0mdvycqUctq7YFDAtJMW/d
 0ikDF+Rpc3cTPNKxwu3V+7CYxoNQnVEwRpdqaQBqdk2Ns5AoXznNPE1SlLw4UA29VehBsSKQ7
 +RVZE328rhxX6Z5lpyxZjiuKNSZ9OaUn5sasu23otGMqZnqt9kif2Q7ILHNoq+4UgNoJp9IZG
 NIQr2nyFX+/O/AbzfUBTPscvW73MsC8fml1b20fOYtbjSN8dE9hIPvAHsfR79FAeWlK7lKW5l
 AE4Y2zxm4MUcnihkNPWkQf4QWGsgrTZ8qg16hv/smVYSP0pTty7rMqTnS1H7rycLB/jvl2q65
 KwQ64fVoJ21bLuDgkrm8ZE8QNasnM3cFGDtnHwvXljByAwNSNv47hZ+5FnkHbuj6FFr1rL72S
 Odr/nmCgb4RIU4SRDnBMK4plquwXh8Oh1u1+DrtlcnxcrFkwqpSmS1R81/ENH0QAigQ8iYbX3
 mKNaVKHzBYLdrhFcgUoU4XL6c+coSB22T/McR6woW86gh9zq34WRB0zJ87qrzISn3ObZJc8PO
 rsuET2ynZxv1l4R3c4iP5Mnrk3E0gRIUpQnFvv55mLL09e3M2Yi5WkDUaISln8wYiqsxvC2MO
 QgbbCDu3+u/thOj5
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
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

