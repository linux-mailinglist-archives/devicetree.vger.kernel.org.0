Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 444D9575E1C
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:02:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232157AbiGOI5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 04:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiGOI5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 04:57:38 -0400
X-Greylist: delayed 46304 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 15 Jul 2022 01:57:37 PDT
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch [185.70.40.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA04D1178
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 01:57:37 -0700 (PDT)
Date:   Fri, 15 Jul 2022 08:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail3; t=1657875455; x=1658134655;
        bh=Ojk+foG+1jwmqhFvn397zhirG207dUZK1FLdzG0Qr3U=;
        h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
         References:Feedback-ID:From:To:Cc:Date:Subject:Reply-To:
         Feedback-ID:Message-ID;
        b=i9ynd98ekwzytMB0OlxLK6gUomJPRjNor04LtMfkFULwxKEhlWrV0rKY83rgixj5q
         yCsnMyK69h4BpokBj87Kn5VncMr8NofydA6gQfT/hhmrGkg3PEck2GYjNLCBBt3Q9f
         7uTQmVCik9vw9Awe0kGMJma0389HjezmOxmL5IQtQ+OKnM9TFya1ZASZ+9vv170TjD
         0ECimMeWRvsC4seIdrHXb6Hd6FEz6yMABcLfr1xRZVhC827ulV7L911F0fkFrlWMa3
         YTK0Qs/GFR8foNnolF3kU1uB56ws4XDi07YJdD5S0OQFRRqccsoucoTKEac03GjQUg
         fG4be4PnO3dyg==
To:     devicetree@vger.kernel.org
From:   "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Cc:     Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht
Reply-To: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Subject: [PATCH 2/4] ARM: dts: qcom-msm8916-samsung-e2015: Include dts from arm64
Message-ID: <20220715085712.54098-2-linmengbo0689@protonmail.com>
In-Reply-To: <20220715085712.54098-1-linmengbo0689@protonmail.com>
References: <20220715085712.54098-1-linmengbo0689@protonmail.com>
Feedback-ID: 40467236:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After adding all necessary support for MSM8916 SMP/cpuidle without PSCI
on ARM32, build the Samsung Galaxy E5/E7/Grand Max device trees from the
arm64 tree together with the ARM32 include to allow booting this device on
ARM32.

The approach to include device tree files from other architectures is
inspired from e.g. the Raspberry Pi (bcm2711-rpi-4-b.dts) where this is
used to build the device tree for both ARM32 and ARM64.

Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
---
 arch/arm/boot/dts/Makefile                          | 3 +++
 arch/arm/boot/dts/qcom-msm8916-samsung-e5.dts       | 3 +++
 arch/arm/boot/dts/qcom-msm8916-samsung-e7.dts       | 3 +++
 arch/arm/boot/dts/qcom-msm8916-samsung-grandmax.dts | 3 +++
 4 files changed, 12 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom-msm8916-samsung-e5.dts
 create mode 100644 arch/arm/boot/dts/qcom-msm8916-samsung-e7.dts
 create mode 100644 arch/arm/boot/dts/qcom-msm8916-samsung-grandmax.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..b7a6983ee6fa 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1030,6 +1030,9 @@ dtb-$(CONFIG_ARCH_QCOM) +=3D \
 =09qcom-ipq8064-rb3011.dtb \
 =09qcom-msm8226-samsung-s3ve3g.dtb \
 =09qcom-msm8660-surf.dtb \
+=09qcom-msm8916-samsung-e5.dtb \
+=09qcom-msm8916-samsung-e7.dtb \
+=09qcom-msm8916-samsung-grandmax.dtb \
 =09qcom-msm8916-samsung-serranove.dtb \
 =09qcom-msm8960-cdp.dtb \
 =09qcom-msm8974-lge-nexus5-hammerhead.dtb \
diff --git a/arch/arm/boot/dts/qcom-msm8916-samsung-e5.dts b/arch/arm/boot/=
dts/qcom-msm8916-samsung-e5.dts
new file mode 100644
index 000000000000..c8d34de8a71e
--- /dev/null
+++ b/arch/arm/boot/dts/qcom-msm8916-samsung-e5.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include "arm64/qcom/msm8916-samsung-e5.dts"
+#include "qcom-msm8916-smp.dtsi"
diff --git a/arch/arm/boot/dts/qcom-msm8916-samsung-e7.dts b/arch/arm/boot/=
dts/qcom-msm8916-samsung-e7.dts
new file mode 100644
index 000000000000..85be286c8608
--- /dev/null
+++ b/arch/arm/boot/dts/qcom-msm8916-samsung-e7.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include "arm64/qcom/msm8916-samsung-e7.dts"
+#include "qcom-msm8916-smp.dtsi"
diff --git a/arch/arm/boot/dts/qcom-msm8916-samsung-grandmax.dts b/arch/arm=
/boot/dts/qcom-msm8916-samsung-grandmax.dts
new file mode 100644
index 000000000000..d3abe0536238
--- /dev/null
+++ b/arch/arm/boot/dts/qcom-msm8916-samsung-grandmax.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include "arm64/qcom/msm8916-samsung-grandmax.dts"
+#include "qcom-msm8916-smp.dtsi"
--=20
2.30.2


