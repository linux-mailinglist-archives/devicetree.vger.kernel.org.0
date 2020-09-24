Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F05FC276C16
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 10:36:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727243AbgIXIgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 04:36:25 -0400
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:58095 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726837AbgIXIgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Sep 2020 04:36:25 -0400
X-Greylist: delayed 576 seconds by postgrey-1.27 at vger.kernel.org; Thu, 24 Sep 2020 04:36:24 EDT
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 505EC580391;
        Thu, 24 Sep 2020 04:26:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 24 Sep 2020 04:26:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm3; bh=ct1Uio+mVW6l9xuPmpQAyShPJe
        Kh3w0quKNYjeSZbLY=; b=rMRuWWN9Z5S3csU0cANhbAGU/2/KbDasda2fVvRRbB
        UgGApf5RODWEMl+uGc9ba+67DygaksN+E2WsEH3JZaGZmuxpgHlWgfNgJtJDw0La
        M5/mZQMY1NCXc4sMgN3O6MeLxCIGUeivu6rNk89UCZSN7i1+AqAqWUZO3v1KeY6k
        4b5bmgN0PXCONoY7/3CMMXXtaaK5vNzbyj45B2wvQeDX7N1znZhEotwOKdMSC59N
        tbEcfnFUEW/Oo6ATsDfEtu5w7o2u8QD6AQt6StrJ6ZmTBq17fUHlQ1urAE2Rnmyg
        mMgA+iefbJf7JZAMfvuX4wmuWWdAiBndzR44Np+PWAlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ct1Uio+mVW6l9xuPm
        pQAyShPJeKh3w0quKNYjeSZbLY=; b=hh9/wf3J0K6Wl17IjWGlQ0QjJ55Hts5Vw
        qb80ilkSNAo/2mQXn2ZMM4B/8aFxh9vb6NuOcxfHw4g6Af4+SXNY1HjtZpr0jjl0
        Mn1q2dzQtQj9P6q0AB1CcsrmWqV+rrz8QgCsaA1j35AeoIkWr+RxL5fs2VmxmFxC
        OXdDuc1etwi91x0Aovr0S8tgAALjdhYYF5mxmw4kkGuIopWFDxVjSs+IHngVsBx+
        3Xsnu1ssnPTu6F1nO+5dNvsDLoJY7rEoCYqjao19GlxDtdN9Eb59zOJGd5LQUhcY
        sJOIp7HQoPp76c7kY8Z0HhMU9ljCKfNA3HAWljSxaSIEab6mooB6Q==
X-ME-Sender: <xms:RlhsXxniAqoNMaDLjhxoEZTwY3OmLfBbH7uIhjvMGK5j3T0tHwnWOg>
    <xme:RlhsX83WXl8bNQKCQyVdFu8xZ1FBKXh6DV1zoqHZgNjU23wqPNfbSgsA3kRUd9iEw
    lBXGEroEG9i3Z--du8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekgddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
    ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RlhsX3r7uZJ2k7XPfFAVoWAPYrchTt_zbwo-V-MsJpCMorQr_AtehQ>
    <xmx:RlhsXxkbe3bd0n0MmHXqm3CMW0S5NhnopH6Kp_-sxb2GnhVyWwKtmQ>
    <xmx:RlhsX_3DEvKvF8gz3HSjHEU6UFbd9XUpKKUBoFKmjrN0cu0DZbaNgQ>
    <xmx:R1hsX4vI2AHEcXy3ZafEy4jLEYzcx76HvBydQnbPytWK0drhybk2xg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id F220C3280059;
        Thu, 24 Sep 2020 04:26:45 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Eric Anholt <eric@anholt.net>,
        Stefan Wahren <wahrenst@gmx.net>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH] ARM: dts: bcm2835: Change firmware compatible from simple-bus to simple-mfd
Date:   Thu, 24 Sep 2020 10:26:42 +0200
Message-Id: <20200924082642.18144-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current binding for the RPi firmware uses the simple-bus compatible as
a fallback to benefit from its automatic probing of child nodes.

However, simple-bus also comes with some constraints, like having the ranges,
our case.

Let's switch to simple-mfd that provides the same probing logic without
those constraints.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml        | 4 ++--
 arch/arm/boot/dts/bcm2835-rpi.dtsi                            | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index 17e4f20c8d39..6834f5e8df5f 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -23,7 +23,7 @@ properties:
   compatible:
     items:
       - const: raspberrypi,bcm2835-firmware
-      - const: simple-bus
+      - const: simple-mfd
 
   mboxes:
     $ref: '/schemas/types.yaml#/definitions/phandle'
@@ -57,7 +57,7 @@ required:
 examples:
   - |
     firmware {
-        compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
+        compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
         mboxes = <&mailbox>;
 
         firmware_clocks: clocks {
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index f7ae5a4530b8..d94357b21f7e 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -13,7 +13,7 @@ act {
 
 	soc {
 		firmware: firmware {
-			compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
+			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-- 
2.26.2

