Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED51C3DCB9F
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231766AbhHAM3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:50 -0400
Received: from mout.kundenserver.de ([212.227.126.130]:42481 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbhHAM3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:50 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MPGJh-1mXbha19Tx-00Paey; Sun, 01 Aug 2021 14:29:27 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 1/9] ARM: dts: bcm2711: fix emmc2bus node name
Date:   Sun,  1 Aug 2021 14:28:44 +0200
Message-Id: <1627820932-7247-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:u3d4KfjkuCAUpaKkH60kIvfSIJ9bak1/NGTsSBhknVbeCaVkICC
 JcmFRNJR37KoGpCIjd84iyjQdRgx2IMIFtEd1WNGke5wokUNNqjfE2ZyUJ2+GVIBdi9s0AC
 j1QPDzOffUaodNbE9s7rZp/5374XZhkGHtvzIVS9u09gm+hFxqddUAZoPeRM1dpzzdA1LDH
 OTy99hUEhVUjOcYuJ6Fow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/+0qUl4udEo=:kIqtOfdCXzfD4THwpzaoDt
 D2zKUviCrDPI4pE3wGa7inxFvEuxQJ14gc/2TAxsy7+HsDZbKITnY3FOO9Cv8zmX/uWho1gMQ
 6XgX0A1f1YvUQavvj3zY9yTe+GNS24aQKdFUGtUjw6eItkgC/nH8gDTEiGyBs68zo2M+j7tly
 grkZCvc+pCNanmbOQCzpvNdeU/4HgKf6fgAKGfZ/7InKxp0UyzzbWVXoUrHN5B+5vFrW5LToS
 W40UUsi62aMHjgMuk12FaNYW1ffX1MNh0IRsyW2ulQDoDVBcHMRChktsFQyC2HBP8DRoAdStL
 HRgZ3Ip5SQJmKuoz27cl53mLpBgX6fktsNebjvnQiK0Jpxpmg5/ceMzwwjAD+3ZwTfPCvs23C
 B/5v126caib2TWQ63ws4rsjFfIWq7q7VnzULhySxoV0mgNPNnlHM3akKrt/tAywBwJDoSAljk
 K8Wi7j/pcVJ2Nvcb6RhsbrZodJU60rxneewl/PrMmLkelu3Yd/TCYwr6bOLltsg1tTW5Ma4GP
 sYIamZWY2HEBGiTSSvlNr3WcffO2tUEtrEqxaTdQwcmG5aq/CpaE8OfLWdBtOwX35EsvjehuD
 NJemH4m2GQ8hHw1gLj7j9ouWoLnrBr6zArr90CsmyI6RVetIMMe0M7Q7AXcgu73GsDMerRJ2s
 4wNFhLLuXBKsVFDmZYw+J9VD0Zrm27qaeIueHbnmFCyF5J4a7nnF838eN4o9F+U7CyRDivzpm
 Yf/3PYSX8yUOcsX8n1HFu/vQ1nSuwOrlMOIqpWRaiCz1OYH8URXqp1tEQoVjXZpFMoFEmnWYK
 zYmU2N3t4T7DwabwCyhHQzJfdcFt1n35IVotTy6HtON6m8ERXEbux+MTobN5m0is0vgAmWGiE
 hF2sXj/F3sGP9kXkouJQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the node name to get the rid of the following DT schema warning:
'emmc2bus' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)
(@[0-9a-f]+)?$'

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index b8a4096..afe0ef8 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -405,7 +405,7 @@
 	 * The firmware will find whether the emmc2bus alias is defined, and if
 	 * so, it'll edit the dma-ranges property below accordingly.
 	 */
-	emmc2bus: emmc2bus {
+	emmc2bus: emmc2-bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <1>;
-- 
2.7.4

