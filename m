Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB0A9145D06
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 21:22:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725946AbgAVUW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 15:22:28 -0500
Received: from mxc1.seznam.cz ([77.75.79.23]:18020 "EHLO mxc1.seznam.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725827AbgAVUW2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Jan 2020 15:22:28 -0500
X-Greylist: delayed 705 seconds by postgrey-1.27 at vger.kernel.org; Wed, 22 Jan 2020 15:22:27 EST
Received: from email.seznam.cz
        by email-smtpc20a.ko.seznam.cz (email-smtpc20a.ko.seznam.cz [10.53.18.24])
        id 66b44ba79840f90d663ac5bf;
        Wed, 22 Jan 2020 21:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=email.cz; s=beta;
        t=1579724545; bh=4G90RmNFQBstBDHrKamCLZJF+YYUQqGqLsWIV4YjY00=;
        h=Received:From:To:Subject:Date:Message-Id:Mime-Version:X-Mailer:
         Content-Type:Content-Transfer-Encoding;
        b=Er680Q11CpYspzkLnfTar63cUGeH1Oq9KyJKk56Cxk6ITvxNjYDZhqyCyDd5QwlpV
         T0Lu5TQosB5qHQYe+P3k5XFAR1WUzTIExkpDvO/sHxWNDCyTvdK7JLsPMARYDYLjor
         0f4cTc2kctAJ9SlXFUZARy5Ch6i1n0alo50CosbI=
Received: from unknown ([::ffff:82.144.143.34])
        by email.seznam.cz (szn-ebox-4.5.387) with HTTP;
        Wed, 22 Jan 2020 21:10:39 +0100 (CET)
From:   "Tomas Paukrt" <tomaspaukrt@email.cz>
To:     <devicetree@vger.kernel.org>
Subject: [PATCH] dt-bindings: mmc: omap-hsmmc: Fix SDIO interrupt
Date:   Wed, 22 Jan 2020 21:10:39 +0100 (CET)
Message-Id: <SaB.ZWWp.2HlNFL4wfl{.1UAAm}@seznam.cz>
Mime-Version: 1.0 (szn-mime-2.0.46)
X-Mailer: szn-ebox-4.5.387
Content-Type: text/plain;
        charset=utf-8
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SDIO interrupt must be specified correctly as IRQ_TYPE_LEVEL_LOW instead o=
f GPIO_ACTIVE_LOW.

Signed-off-by: Tomas Paukrt <tomaspaukrt@email.cz>
---
 Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt b/Doc=
umentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
index 19f5508..4a9145e 100644
--- a/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
+++ b/Documentation/devicetree/bindings/mmc/ti-omap-hsmmc.txt
@@ -124,7 +124,7 @@ not every application needs SDIO irq, e.g. MMC cards.=

 		pinctrl-1 =3D <&mmc1_idle>;
 		pinctrl-2 =3D <&mmc1_sleep>;
 		...
-		interrupts-extended =3D <&intc 64 &gpio2 28 GPIO_ACTIVE_LOW>;
+		interrupts-extended =3D <&intc 64 &gpio2 28 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	mmc1_idle : pinmux_cirq_pin {
-- 
1.7.9.5
