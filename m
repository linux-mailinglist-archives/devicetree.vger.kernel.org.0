Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 567893F758A
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240945AbhHYNGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:06:23 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57250
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240851AbhHYNGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:06:22 -0400
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9010D4076B
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629896732;
        bh=lrFOqJg8K+1XmVsF/GpvrcRXBvTi8X1Jdxp9tcz+qM4=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=GABSUjE+Fl/asVQF557BfZJ0qbfYayqHleFpFsCTMi86+dib5w20Y89snZBkmAcRy
         C36TPK4wQC//3n+x3x9jIucrLh0y42DrkT7k+oxz54ocYxpFzou4gswWhb+ZfnxHNy
         7xeNE/oQmkt4RkzcOOyyPhqNK68NdUlWxEaiYjSGozESlT/9wuZlWGh4sKRqUAmwR3
         8Lj3WIWfyd3EfjrbJnCQ1zUcCjoiv4iulEIGwjth4LzkHH7x5SULCqYf/1imBEIlmT
         jhH9y5CmwlJPaubqqN6s8x75v3/N+SQvq4Z85hiwphTLKGxE478yakTlwZ5eQ8PGaA
         t6fIMfv/KPPpA==
Received: by mail-wm1-f71.google.com with SMTP id y188-20020a1c7dc5000000b002e80e0b2f87so2830444wmc.1
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lrFOqJg8K+1XmVsF/GpvrcRXBvTi8X1Jdxp9tcz+qM4=;
        b=qDGSvN3rRr6nq5x42NeM1yktwXukBnkHaVG3t3+b+12ARBpzmbsS2V2JqXp3BjkOWS
         VbEA38uv9MjQqaYFeJdLAbQiitP6W7Geq0abgK8XcUW5pIRy72oWTWjeZS2MTKiAYMMj
         mMgds1pRh+OJaWUjNxTCCwW6F9Hf3W30htivo+rgowwFDKRjuASaoF+mxY52QgLRyFlL
         VcFrPzKq/N2GLUa4BHl18ENXxM89zi+lAcw4AigE6/Qey09sBtgi2lRTEnvW/a1HayWj
         gqH7y8+/nWB3cBm7yxCAtRhWbBPAKc/IwRQX1/rWXPZWOmPF9fxmwX61ZJTCTzfGmhoZ
         QqUQ==
X-Gm-Message-State: AOAM531e2I+h8lyZJTgBrUfV80TrSxJj3GCQ4blsfdSiua9kM0E+oQ34
        pvxujTTT3KZVJPnsOy6izZxubQQZY2RumSaPmWA0ZutelkW/gPIuxBV5A/MaebtoZiyiX2KEwqP
        m7VM5rQNJaXNvLcIfSvaC8FOegDN6OAQok34Qrnw=
X-Received: by 2002:a05:6000:23a:: with SMTP id l26mr9316787wrz.369.1629896732194;
        Wed, 25 Aug 2021 06:05:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyADruAn41uaMoIibr3RD756bAEGF/fXXqaWRQ4x7Vv3pmlISb8rI06kiDTgzghEeX1S6dBhg==
X-Received: by 2002:a05:6000:23a:: with SMTP id l26mr9316757wrz.369.1629896732021;
        Wed, 25 Aug 2021 06:05:32 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.233])
        by smtp.gmail.com with ESMTPSA id 11sm5338828wmi.15.2021.08.25.06.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:05:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] riscv: dts: sifive: use only generic JEDEC SPI NOR flash compatible
Date:   Wed, 25 Aug 2021 15:04:48 +0200
Message-Id: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible "issi,is25wp256" is undocumented and instead only a
generic jedec,spi-nor should be used (if appropriate).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. New patch
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 +-
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 60846e88ae4b..633b31b6e25c 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -63,7 +63,7 @@ &i2c0 {
 &qspi0 {
 	status = "okay";
 	flash@0 {
-		compatible = "issi,is25wp256", "jedec,spi-nor";
+		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
 		m25p,fast-read;
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 2e4ea84f27e7..9b0b9b85040e 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -211,7 +211,7 @@ vdd_ldo11: ldo11 {
 &qspi0 {
 	status = "okay";
 	flash@0 {
-		compatible = "issi,is25wp256", "jedec,spi-nor";
+		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <50000000>;
 		m25p,fast-read;
-- 
2.30.2

