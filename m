Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7C42411530
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238876AbhITNEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:04:32 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33254
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238849AbhITNEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:04:31 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 775E43F302
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632142984;
        bh=UfizrBJBT6h793qifWAMSREo4JNWpi+qoZht6aRmJGE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=h7msZLgID9c4U+hUwUlpY1qofWMd6qzPkpr1HLDN3FNyxY1ht5a+dr9FbUYWzr+cy
         YHVy01Lg8478g8wlAwOUu/K90BgaY3TZ+AANtsP53s1sQDKIsqsTpCbk7F2moJZiPR
         373Ku7AOhbperXQwXktKO8ZDzUB2uGwp1ZTGd2Zz6FuZ0khnyPoI6YS+P8dlNWKpww
         Ccx5X1C9+xM5YBbgQhml2+YTODtKDDTeZJrLQu0lM6Rw/CulIWzs+6AgC+VHPbrOmn
         Wh/ev8PeB4j51OJgbRtrewhFX8/RBappV4YO35E9sU/foA55EXzwpef4epvJOih3tj
         pGNKLOMH3MonA==
Received: by mail-wr1-f72.google.com with SMTP id s13-20020a5d69cd000000b00159d49442cbso6005111wrw.13
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UfizrBJBT6h793qifWAMSREo4JNWpi+qoZht6aRmJGE=;
        b=fBIZdIZC18lWVEkFx7SO4Whbt7eEv8K9gODI1J3c7ibg3ZdMIHY1jHk3RuCr0LVEgV
         SWGq5u5erVR5MOyW/6yPzbQYtBAUQJs3RBSLKYICn8WQ4sJFYBY4hNwXKeJue2wKE+s3
         /p4B9uSsS5+sgH7aU8rrfmO4wtHkkEis46ygM8l/DiaZ13VZHWr6u0iSVjNOiTP26YeB
         DVRF/ThoToK4G+Kx1YHZcROlEEMTP+u751CBvevupAQJ4RsTmwz02lNl1mQqbVTgmWtY
         HDzuw7dirkAnzIdzpUl03EQa4n32jHQLr8lthdNq/Bq3NBDkO4J4NeFgnnnv9Hj6aeUm
         LSlA==
X-Gm-Message-State: AOAM531zxqvoLejfUlhLZ+E3TM6iAWZUwJX/wR87decMAZIdjOOJFRC5
        fvBVSxLqG0EV/OY/IZNcXfYKVwHv17Dnoqkny2l8mg5UT4QVj8xo/62aNfDj2W6+dRgi1ymAzel
        42fzelrkEV5BZhDKWEmRbVjb1pVClvE2ew7aIhFw=
X-Received: by 2002:a1c:228b:: with SMTP id i133mr29327848wmi.179.1632142982543;
        Mon, 20 Sep 2021 06:03:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx/BB9e96BfKaLLJbiEnOqtb29yH57oOh/zntshgoog9DQ8mK0SbPb2pcaq0hwTZ3DzpPLfZA==
X-Received: by 2002:a1c:228b:: with SMTP id i133mr29327794wmi.179.1632142982023;
        Mon, 20 Sep 2021 06:03:02 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id g22sm18015331wmp.39.2021.09.20.06.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:03:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v2 3/5] riscv: dts: sifive: drop duplicated nodes and properties in sifive
Date:   Mon, 20 Sep 2021 15:02:46 +0200
Message-Id: <20210920130248.145058-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
References: <20210920130248.145058-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI file defines soc node and address/size cells, so there is no
point in duplicating it in DTS file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. None
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 5 -----
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 -----
 2 files changed, 10 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 2b4af7b4cc2f..ba304d4c455c 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -8,8 +8,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "SiFive HiFive Unleashed A00";
 	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000",
 		     "sifive,fu540";
@@ -27,9 +25,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x2 0x00000000>;
 	};
 
-	soc {
-	};
-
 	hfclk: hfclk {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 9b0b9b85040e..4f66919215f6 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -8,8 +8,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "SiFive HiFive Unmatched A00";
 	compatible = "sifive,hifive-unmatched-a00", "sifive,fu740-c000",
 		     "sifive,fu740";
@@ -27,9 +25,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x4 0x00000000>;
 	};
 
-	soc {
-	};
-
 	hfclk: hfclk {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
-- 
2.30.2

