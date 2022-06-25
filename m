Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24D6355A97C
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232314AbiFYLhR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232496AbiFYLhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:16 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA20D167E5
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:14 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvJo7-1nnXB80win-00rGtb; Sat, 25 Jun 2022 13:37:03 +0200
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
Subject: [PATCH V4 05/11] ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
Date:   Sat, 25 Jun 2022 13:36:13 +0200
Message-Id: <20220625113619.15944-6-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:uBOMBLyagK1SmKhTE8nCqN0CLeBdYt7rgvwLIaQOf7+Hr2nyQGU
 kwHRMbirwpURogP2H314yQC7+f+peUpUF2dBCzToEerOu8XWZQycejtHhh97T3aQ1q2OPhS
 eRLQ0py/Ghn5bPe3kBDYD7XB3vS+p8WEmYIav8EXeE8BDO24aSHOhED5Hp3uYpWt1U4TDDZ
 KHNPiG283ZAv767ckaJmw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:B3He5QCPf7Y=:D2odPhibScCyCeV7BQDu3D
 GqgMqm3gb+i3B1ufg/NiCz3f1ormvKTi2tT4EDDZlC6FLS+lxhfv3v1fQEk026pv654YudmFB
 1FZ/ShC7UVytuv0m6pzTGNJ6f1UACYl/7a5nj1Xo05y3kc7Ec6QwCzLNAvN5OUUtg/SazVHEJ
 cly869+jCGg8IX7B0aLmaZzOwM4jSzTOHKPo1PzOptuzW5FraafMXieF799DcJftdnoeDPM1h
 +jqIKPNDPIYP2N/NjIWiaNiwPSl0fOc/O9SlzZDLxuNNlEQzAtpZN5hayWQEGX5WLt/RU/wny
 f7bfJfeommki8kvnPzujkz8/TA9CE1Zb3L1KY7cdm5+Evnw/73iw1XA28Dhv6dCHkyd3YHZpz
 teZqYDBlJDHB2IdNtDKY9nfWIQB9ckIwoHmyWaBB0nmqO8mFo6VDP/HCwTfoOvd6V6rUT5fcO
 ot7rP8ncByVueB8RP1TDIR7/Lbqji9lsLs1HdwmP0z3rZnu7ddYZdzPwu6xJBJaY1pAjjHvNh
 SW2NKTc+Xvm0DStDciHoMk3mjtUskSyb9YQmSsbNJAJrjonmmWYfvTilATXr6LIvS+aF+CjS2
 NpvhinWRcTe4hTOqKFvQYVt/qmfxwqPRMOmnxai+Yf5hdUx5gaom9GqjfAILH08/kvn75E/am
 pQmEbQi1+5Ji3J8cS8GNq3sQG0PYyw23Fb8olMs3RP3TZQsXTf9KGI+GQ135nPG48dK9rZIKI
 2FxxFT1CKhXmuZ7Rx5jHiKJg8/67G3f1qLO0iuA+dcTKHgpgBOjfiU4LA5s=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

A new compatible string was introduced specifically for BCM2711, so make
use of it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index cbb47e2c9434..5eca5207c212 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -107,7 +107,7 @@ dma: dma@7e007000 {
 		};
 
 		pm: watchdog@7e100000 {
-			compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			compatible = "brcm,bcm2711-pm", "brcm,bcm2835-pm-wdt";
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
-- 
2.25.1

