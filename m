Return-Path: <devicetree+bounces-790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F119A7A3138
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 17:50:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C7AD281822
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 15:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4857014A8C;
	Sat, 16 Sep 2023 15:50:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C8A14296
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 15:50:34 +0000 (UTC)
Received: from sonic313-55.consmr.mail.ir2.yahoo.com (sonic313-55.consmr.mail.ir2.yahoo.com [77.238.179.239])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B974F7
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 08:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694879431; bh=BmwBnL1gX1xQpCqVYq5SiLA1BptsWj6MpDw21gDfZqM=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=e6zC1nJuTeLg+XzRbQCA1L/lrkq/Vm5DEprD1lgfV/P4me4GJHIOt2XNHRiZmEVPmeGyqxgniMVVbNaR/McQBGUQ1yTcRirBoOwRnUSfCyrsJW5SlinTZEMD0RaQyeDz56NFKjXrVUM6KYQM1s+/+zjYO5qXYRDQMbm+uum2KTLHnmo0kWMdfJSmUK5Oj9WdUH7V+PlAlo95ZJ6j0NbGdymjC2zZ9lr0R+wZcxSRDn0V3+sDNLCI9Kp7ggT7IuwXzKq8zAVAkmgpdwPFYmGJCATc6BRiGqqPebN1rWFzk0ft5PFpfVdjkQZPVeUh+PQQnnnbLK4/byUNuP7t+fg2Ng==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694879431; bh=Silpd0SbJz3tL0AIAl2Z9/AV3GpXLLXSeQIJ85tvCss=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=O0ancvWkd9bpCYGazvN9y0YXT0wfX+LBGxMzMPxMWvgZEJUjSWUtmxifcuvy7Q31KhOLlF3hfbGYrf54oZl1xMIHIJcn9vYP4CHtKBMGRK+ADZW5CiqlYfIXbgAh7c4NhUzBLHdeRNpBr4RbcwP3cVQdIxJFsZWdt3mNT+iIaSMHSYi+AI92xNRfRf661sD4g+dy8ae1rpGGV6Ug7ErtlVvz9kxicz/QDsBCgmNd/pwI8PPTWvLOOPhV381kVzNzVgYF+xZdU/LnCst0mPv5LgbTq3A6CYxgkI8qYtPXWubyK7EjgyNUzHeE0/ms/xcPQ+KWDfeRmhy4fpKAalPAqQ==
X-YMail-OSG: LlwfUIcVM1nzetTMcdOm7AouQxZLPgTC7wNfF9Sow7JxSYhJHl1WagsUFHyc5m6
 856camQFjeuU4xw9l5i0oWYyrNAfmaWahW6U9PL8gI7VYWCYhjEqv32AWaHlkTyX8Rd_alqnjGFl
 Sjc1WbsGuJR7mpTKvHQjPnxpiUf7rh8ProaCVt2CWa4twKMc_v5d1wWdQIGbZBP6hcNRfNWGOaCK
 BgFbGBHR27BZwIvpPiEYlq3bPoKok_ifE4uDPSf2QkanLu5xvbMDsBtZtC0soTYVkEEWLVEQ_9yg
 U7GPga4Su_0jPrvQSdLWOqzGsDepBXcN5Is3nRLmbPhmRWiMyhkYfTskOSJCipWATzGK.umqDWoj
 ujoVCMpLqMY7CDVM9JXJyF60ZrpzG3AK5t5tTKK0k99PqUHEiqeavmcDJexISX2OmBUxzcbLL1T2
 lVYxZVqe4hSdRAzPU5VQnkXxi_AkPx9I5.sUMRKur3BfmQpUGnxr7zNII2BYlFEBfW6WWcWjCii2
 g8NAa82tmIxuanxSKlRmeGqNOyr2OEJOdgk64gdiVuyZ_JgE7SZVkYm.2Z0K2DgFHXjaAaXay6yK
 J9kxiJgrw5C76emHFDClrAIju3i3wux7djDsa0ReR.eWuxpg03xE8JZNnPyvPqHepo2dnFFMJV1t
 ruvylqT68VUrrmpKjawjFBNE1Tg645_qWQdH1x48SW5GXvN.pyOA1Am4_LUk3PB6XG6IJVH96MHK
 5vEVJr7n46AF249V539JxHLHIBy_nBVKiNZAinhmrvvTcgJFKZomuuY0X_SZvnLNhTnpnkxpS4Nu
 EAlfsDtvKswFRiEOUyl0KBxiTnINYOEodkTbFEyqacGtICMiSQaXpVGIqCW8BvliVcnMj0qulJ2Q
 sZ8cXVFGVpraQDx9LgT.L8zoRVagiF6ArW5.1Fzx.uIXYU1UcpfRkPAG9iK4mypvuzi2GeqcUUcd
 1dXSgEmYTpyNvnHAh05OddslP1lNd.TWc4F98rGo9vG1HDSPvj4NpcXggUbYIslkQa32xX51SD8P
 PWFzWkuckGdqivE9vvtdP0.l9aZ_59m4gpefp.B429G4vILWgW.6e3_je.dK49.b7pbIK256ETDU
 FLLq2KHvU3al5moW65GYb9HnlIiTFZyxGFpRDMkmgeCp2KY0WXyZ4InABBqWPCqfjlbn_fjuLEN2
 8AG65y8aBkJaNkmgQ3nMtX_2JA7KNZkM56HlBkfQBvjX5V94oyRhmUGAg9wIn62fFMVW8BEhqC1U
 xUK9EpLlsV4YL0j1_ZDm8sC3YDDvCy_W6d9XxyAD14x8mI9Bm5jRloZHQSmQpb82DecHki5QZ5jK
 vCuQxLLcpzrfCjIFaRW2g3Uc8aeMdYMlSjkWFXk3ly_O8EUSSJf39AWnKqQNAZ4xhcOycbOUnpUh
 KiMhEV1rIF8VHr4pK2NrUCQWeJDrfOi0ylMz6uw9tmYTZ2zjeY_0VQfDGDRenev.E60zRH5b1VYk
 4VEVGUxwn6xdV3nFO95mRe2mZ8wo4MW4zMsxScaygn6BqDo3DmpSB12WnUqcY7c47NhwSY0dcH2R
 zNNXBfp8d_aVZIrLh8aHhVFt2WtBXqmMJ_qY5NP783fMjr7UD7opBeWB7dSDcUz5rS_2A9S8gwph
 cQ._NLgw15__zH8dO1NdM11CyULUbHlL6DDF2GulXhT8fGu66pfslw4Djc.P_N7uLc8tYD1VsNnG
 xCg0gFoZDaB1pXmnSIutEyfUVdnvESjDtc9flNSRQKaDTHx1ZoUE_IpWqXCYkVJmHdvS3v9XT0cP
 6o_Jag9RmJ5RfKm5JFxiiiWugHnfrYSNaDAX9sVN5fnA8iqMUL1WpdGvsOS4oumduQGVINCgazFg
 jX8.tOoEWDThdTJHjeM8YEW6Y92OzOvA3L9bz5tm_aIfybewQ6elowQOdDLEalFYfGc3RxofeZVv
 fu0vruHdAd7sJSfDrY55j88FHIoGmlP7lMBkjs3JVX5tPp7PwZETGLpQ6Zjkto6JCv6ce2Inu56X
 nS7xPA1Xy0rIPabNzVwlPEOxA_mRbUHPjTEeEFWx77OxVbkcOpzAcC9MfpeTEVLQLEuS3rFQbkzs
 YB3kL9YsjZ1MuP1I2aZ_JNJjSFzyrNpcOqW73fC0tar6MgMHx9fMyvVs8_GrNQeDWXZRgpYKxSt.
 p5CSkLDyZ_pNlZQvxvtKDb5yxtFp3bUzbMBjqvIgbBFxZSkFOWE5_qrVwz.ejYBCCBzmTGR1a1Zr
 RtZuxb8WSKUm4MVGB5OQjdL9su5jOaIfxNfzOdEgOklCJ8JuCjJRgt9i0
X-Sonic-MF: <n3q5u8@yahoo.com>
X-Sonic-ID: b8dca9f3-f9a9-4aa2-b461-de55fd41c11a
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ir2.yahoo.com with HTTP; Sat, 16 Sep 2023 15:50:31 +0000
Received: by hermes--production-ir2-8464d7bd7d-m9vs6 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 530a508a51ebc6fa3e295ba6e4c690db;
          Sat, 16 Sep 2023 15:48:29 +0000 (UTC)
From: Nik Bune <n3q5u8@yahoo.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@microchip.com
Cc: Nik Bune <n3q5u8@yahoo.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt to yaml
Date: Sat, 16 Sep 2023 17:48:26 +0200
Message-Id: <20230916154826.84925-1-n3q5u8@yahoo.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20230916154826.84925-1-n3q5u8.ref@yahoo.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Convert txt file to yaml. 
Add reg to the list of required properties.
Add mainteiners from ./scripts/get_maintainer.pl output.

Signed-off-by: Nik Bune <n3q5u8@yahoo.com>
---
 .../watchdog/atmel,at91rm9200-wdt.yaml        | 31 +++++++++++++++++++
 .../watchdog/atmel-at91rm9200-wdt.txt         |  9 ------
 2 files changed, 31 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
new file mode 100644
index 000000000000..e9706b9c1e6b
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atmel AT91RM9200 System Timer Watchdog
+
+maintainers:
+  - Wim Van Sebroeck <wim@linux-watchdog.org>
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  compatible:
+    const: atmel,at91sam9260-wdt
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@fffffd00 {
+        compatible = "atmel,at91rm9200-wdt";
+        reg = <0xfffffd00 0x10>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt b/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
deleted file mode 100644
index d4d86cf8f9eb..000000000000
--- a/Documentation/devicetree/bindings/watchdog/atmel-at91rm9200-wdt.txt
+++ /dev/null
@@ -1,9 +0,0 @@
-Atmel AT91RM9200 System Timer Watchdog
-
-Required properties:
-- compatible: must be "atmel,at91sam9260-wdt".
-
-Example:
-	watchdog@fffffd00 {
-		compatible = "atmel,at91rm9200-wdt";
-	};
-- 
2.34.1


