Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF13197E6D
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2020 16:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727975AbgC3Oc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Mar 2020 10:32:56 -0400
Received: from foss.arm.com ([217.140.110.172]:55090 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726981AbgC3Oc4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Mar 2020 10:32:56 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F02C9113E;
        Mon, 30 Mar 2020 07:32:54 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73A053F71E;
        Mon, 30 Mar 2020 07:32:54 -0700 (PDT)
Date:   Mon, 30 Mar 2020 15:32:52 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     alsa-devel@alsa-project.org, benjamin.gaignard@st.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>, robh+dt@kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Applied "dt-bindings: sound: cs42l51: Remove unneeded I2C unit name" to the asoc tree
In-Reply-To:  <20200327155721.7596-1-festevam@gmail.com>
Message-Id:  <applied-20200327155721.7596-1-festevam@gmail.com>
X-Patchwork-Hint: ignore
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   dt-bindings: sound: cs42l51: Remove unneeded I2C unit name

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From f3ca3f5b0966cfc2737178cca8a7a65b09991898 Mon Sep 17 00:00:00 2001
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 27 Mar 2020 12:57:21 -0300
Subject: [PATCH] dt-bindings: sound: cs42l51: Remove unneeded I2C unit name

The following warning is seen with 'make dt_binding_check':

Documentation/devicetree/bindings/sound/cirrus,cs42l51.example.dts:18.15-34.11: Warning (unit_address_vs_reg): /example-0/i2c@0: node has a unit name, but no reg or ranges property

Fix it by removing the unneeded i2c unit name.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/r/20200327155721.7596-1-festevam@gmail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml
index efce847a3408..83f44f07ac3f 100644
--- a/Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml
@@ -49,7 +49,7 @@ required:
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
-    i2c@0 {
+    i2c {
       #address-cells = <1>;
       #size-cells = <0>;
 
-- 
2.20.1

