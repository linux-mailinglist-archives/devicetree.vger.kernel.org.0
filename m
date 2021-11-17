Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B340453DB2
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 02:25:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhKQB23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 20:28:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhKQB23 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 20:28:29 -0500
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3FD6C061746
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 17:25:31 -0800 (PST)
Received: by mail-pg1-x54a.google.com with SMTP id j18-20020a63fc12000000b002dd2237eb1cso417984pgi.5
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 17:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=jzis9D6fqTyyLA02o3dSfzs5yeXW2O0+Qf+DxR2EUps=;
        b=bTiS7jnTXeCNNkiePPmzv8eI5F02AN9TpuuVmOQmReiT1bttmG112fOlQa2HVmv7iK
         vaqEBALepUgjzMRx6MtkCQ/yMlvPV+V2UB1XXSG42pyi/mkcKk80NE7oG3E2Er2By4Iw
         aA2rTyz5rOvRZONXeD3K1GdbBbHYBjDKxA3B+jegyj3qAfQxakwKdwSnGzCAZZKr9D8S
         0i88cUzVgCzmVzhpLpqul3o6ducwtkzVXjgo4n6eevI3iq7iorMJ2yGjjECmT5hbNF1q
         tnOB6GZDkgwU89OAMty7oTApkK18b7Qs4fVGCcYFL2InhDBPtToim1uW5H5sFycHfOx0
         yLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=jzis9D6fqTyyLA02o3dSfzs5yeXW2O0+Qf+DxR2EUps=;
        b=n1B78motQxkah2+Id/8ua8+U7FWKayKj96Xd3pkI9JYoowEbfsZf5gAFl1JLZ721t3
         iYmpNHzAmgz7mMtkPQNgJxRvKwexJzUHGgKUoDJWwV+5ttpM6B5I5fHbfkhZTxwE/K3S
         ENKmHeN7LlWsgPkaP3XW8CQDcNFgtuGWCukTTtIEyseBMzxtkadXrQz0vXcua0xTGjOH
         PASkrDgByso3EjY295Q+pbcacLe3dhrtcCX+Mt8MzsUotCeZ8dywTYyoslOJLMu3hOo9
         1woKDEWGVJylcfZ1dcuIIZalJTs8nf8LjFesWZ15ouyYn65EEYxbUPYSAsfJebNa4Pks
         pq2A==
X-Gm-Message-State: AOAM533qcrj1ktXxMexHvZtAR7FQMFI9WO/G1xgJtEbCqkRFLeNT0t1N
        UoOmpjqUgpxs8F20vsLR6oNctC0=
X-Google-Smtp-Source: ABdhPJxKbny7Hyg+azjy336lJqICWE1jEiVwfA8cEngT+yLZ0bq0tdD7vltBF4qoJcDK4j3FUxDsi/A=
X-Received: from wak-linux.svl.corp.google.com ([2620:15c:2c5:13:784a:d347:659f:f1f3])
 (user=wak job=sendgmr) by 2002:a17:903:18b:b0:141:eda2:d5fa with SMTP id
 z11-20020a170903018b00b00141eda2d5famr50271146plg.63.1637112331084; Tue, 16
 Nov 2021 17:25:31 -0800 (PST)
Date:   Tue, 16 Nov 2021 17:25:12 -0800
Message-Id: <20211117012512.1081593-1-wak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc1.387.gb447b232ab-goog
Subject: [PATCH] ARM: dts: nuvoton: Fix FIU reg definition
From:   "William A. Kennington III" <wak@google.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, avifishman70@gmail.com,
        tali.perry1@gmail.com
Cc:     joel@jms.id.au, openbmc@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        "William A. Kennington III" <wak@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current definitions have a reg-name for "memory", but no
corresponding reg space defined. These values were taken from the
NPCM7xx documentation and tested on real hardware.

Without this definition, the FIU driver does not take advantage of
direct read support.

Signed-off-by: William A. Kennington III <wak@google.com>
---
 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
index aca0e0e390d8..c164ec9fc96f 100644
--- a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
@@ -181,7 +181,7 @@ fiu0: spi@fb000000 {
 			compatible = "nuvoton,npcm750-fiu";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0xfb000000 0x1000>;
+			reg = <0xfb000000 0x1000>, <0x80000000 0x10000000>;
 			reg-names = "control", "memory";
 			clocks = <&clk NPCM7XX_CLK_SPI0>;
 			clock-names = "clk_spi0";
@@ -192,7 +192,7 @@ fiu3: spi@c0000000 {
 			compatible = "nuvoton,npcm750-fiu";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0xc0000000 0x1000>;
+			reg = <0xc0000000 0x1000>, <0xa0000000 0x20000000>;
 			reg-names = "control", "memory";
 			clocks = <&clk NPCM7XX_CLK_SPI3>;
 			clock-names = "clk_spi3";
@@ -265,7 +265,7 @@ fiux: spi@fb001000 {
 			compatible = "nuvoton,npcm750-fiu";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0xfb001000 0x1000>;
+			reg = <0xfb001000 0x1000>, <0xf8000000 0x2000000>;
 			reg-names = "control", "memory";
 			clocks = <&clk NPCM7XX_CLK_SPIX>;
 			clock-names = "clk_spix";
-- 
2.34.0.rc1.387.gb447b232ab-goog

