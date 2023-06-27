Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C99E73FCF6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 15:38:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjF0Nix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 09:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjF0Niw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 09:38:52 -0400
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 27 Jun 2023 06:38:49 PDT
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D072962
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 06:38:49 -0700 (PDT)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 20230627133743f29e888f432ceec567
        for <devicetree@vger.kernel.org>;
        Tue, 27 Jun 2023 15:37:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=felix.moessbauer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=xbvKmBAtZo9Ow1l8tao9RYJLC7Y08h2AksTB6L1J/zY=;
 b=cI1/s5n2pksFjO8vpuxNLSxcwggTtzpF2aoGd00Hwh2P1TPanM7XLH6Gw0liHz68CybnwL
 FY9uSCu2PXzyOjZpdW1x1AM/hCrW9wFhCgGcEFwLwZR4od8xrsZleFkPeQPw2kAqNSh4envc
 7Y9/1QgkEVNqWqS5+xeTUGuoOAyeg=;
From:   Felix Moessbauer <felix.moessbauer@siemens.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Quirin Gylstorff <quirin.gylstorff@siemens.com>,
        manuel.matzinger@siemens.com, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Felix Moessbauer <felix.moessbauer@siemens.com>
Subject: [PATCH 1/1] arm: dts: Enable device-tree overlay support for sun8i-h3 pi devices
Date:   Tue, 27 Jun 2023 21:37:03 +0800
Message-Id: <20230627133703.355893-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-72506:519-21489:flowmailer
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the '-@' DTC option for the sun8i-h3 pi-class devices. This option
populates the '__symbols__' node that contains all the necessary symbols
for supporting device-tree overlays (for instance from the firmware or
the bootloader) on these devices.

These devices allow various modules to be connected and this enables
users to create out-of-tree device-tree overlays for these modules.

Please note that this change does increase the size of the resulting DTB
by ~30%. For example, with v6.4 increase in size is as follows:

22909 -> 29564 sun8i-h3-orangepi-lite.dtb
24214 -> 30935 sun8i-h3-bananapi-m2-plus.dtb
23915 -> 30664 sun8i-h3-nanopi-m1-plus.dtb
22969 -> 29537 sun8i-h3-nanopi-m1.dtb
24157 -> 30836 sun8i-h3-nanopi-duo2.dtb
24110 -> 30845 sun8i-h3-orangepi-plus2e.dtb
23472 -> 30037 sun8i-h3-orangepi-one.dtb
24600 -> 31410 sun8i-h3-orangepi-plus.dtb
23618 -> 30230 sun8i-h3-orangepi-2.dtb
22170 -> 28548 sun8i-h3-orangepi-zero-plus2.dtb
23258 -> 29795 sun8i-h3-nanopi-neo-air.dtb
23113 -> 29699 sun8i-h3-zeropi.dtb
22803 -> 29270 sun8i-h3-nanopi-neo.dtb
24674 -> 31318 sun8i-h3-nanopi-r1.dtb
23477 -> 30038 sun8i-h3-orangepi-pc.dtb
24622 -> 31380 sun8i-h3-bananapi-m2-plus-v1.2.dtb
23750 -> 30366 sun8i-h3-orangepi-pc-plus.dtb

Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
---
Please note that I only tested the overlay on the sun8i-h3-nanopi-neo
device. However, the devices are quite similar and in general the
change to add symbols should be pretty safe. Similar patches have been
applied to various other devices in the past without any negative
effect (except for the increased size).

Felix Moessbauer
Siemens AG

 arch/arm/boot/dts/allwinner/Makefile | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
index 589a1ce1120a..eebb5a0c873a 100644
--- a/arch/arm/boot/dts/allwinner/Makefile
+++ b/arch/arm/boot/dts/allwinner/Makefile
@@ -179,6 +179,25 @@ dtb-$(CONFIG_MACH_SUN7I) += \
 	sun7i-a20-pcduino3-nano.dtb \
 	sun7i-a20-wexler-tab7200.dtb \
 	sun7i-a20-wits-pro-a20-dkt.dtb
+
+# Enables support for device-tree overlays for all pis
+DTC_FLAGS_sun8i-h3-orangepi-lite := -@
+DTC_FLAGS_sun8i-h3-bananapi-m2-plus := -@
+DTC_FLAGS_sun8i-h3-nanopi-m1-plus := -@
+DTC_FLAGS_sun8i-h3-nanopi-m1 := -@
+DTC_FLAGS_sun8i-h3-nanopi-duo2 := -@
+DTC_FLAGS_sun8i-h3-orangepi-plus2e := -@
+DTC_FLAGS_sun8i-h3-orangepi-one := -@
+DTC_FLAGS_sun8i-h3-orangepi-plus := -@
+DTC_FLAGS_sun8i-h3-orangepi-2 := -@
+DTC_FLAGS_sun8i-h3-orangepi-zero-plus2 := -@
+DTC_FLAGS_sun8i-h3-nanopi-neo-air := -@
+DTC_FLAGS_sun8i-h3-zeropi := -@
+DTC_FLAGS_sun8i-h3-nanopi-neo := -@
+DTC_FLAGS_sun8i-h3-nanopi-r1 := -@
+DTC_FLAGS_sun8i-h3-orangepi-pc := -@
+DTC_FLAGS_sun8i-h3-bananapi-m2-plus-v1.2 := -@
+DTC_FLAGS_sun8i-h3-orangepi-pc-plus := -@
 dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-a23-evb.dtb \
 	sun8i-a23-gt90h-v4.dtb \
-- 
2.39.2

