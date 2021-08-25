Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97C5F3F7592
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:07:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241128AbhHYNHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:07:43 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57322
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229547AbhHYNHl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:07:41 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D35BF3F322
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629896814;
        bh=UfizrBJBT6h793qifWAMSREo4JNWpi+qoZht6aRmJGE=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=V3N72qZ7ra27C6pMBhoIkTPHkpkk11qxR5DmQ3t0QLG2zbkOJpfx6q5vJZKOkekh+
         1PWunNRuMwmAYlxFaVsSiIaArzdCM2rJdPrEIOs6/lDeXoG5rQF6puIx5CIp0TVEUa
         1ILGEviLLoSU0eamDdQN+9wBX3tKdKR+HaELBtPmn8zzwWW8pMXe7UY3O1Da9SOTAr
         0hBasxcMAtu/aqBScRTcocdDN+sk9gEWFVgazyL5P5ApVaq6wRajj2eXexdcKE9MNE
         tNtA7jlPj4ySu+Jv6h6TZcKP5hgU3c+xVcjmyCLiZMULOtSgmwE53yaErq3nlqDd+N
         MvzsfwrBsEXrw==
Received: by mail-wr1-f72.google.com with SMTP id v6-20020adfe4c6000000b001574f9d8336so2612429wrm.15
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:06:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UfizrBJBT6h793qifWAMSREo4JNWpi+qoZht6aRmJGE=;
        b=WKOtXlL3rBNE3tXV9XMJEARXVpL21sdKP192wWcizPB1yU9skkESjEqxYIcV2IOrmk
         oG/1yTskGFl3Xp7ZmyoTExJbQiNh6rZkLV51+mMIV3ZxQmuxJfeVk2BfbaAImv9sg6Lc
         o40lQ4VcoD9a03Sp6UQrlLIKNPYE73JEtPQNsur8JN4kYb1nDO7X9ZSxsvpfVhwDf57h
         6gADd9gnVoxvh4s0jyHMHQQM1pGyb0OCRaQ1yE9Hn6Od+kdSu9rKDKdJ6stib5Pqb8YC
         L2P5eztGzup0wG2OdAEwLT3FLTn3Aqztv57G3Fxf/MOy6KofapdRFlz2vCGwT5woc+q5
         RGSQ==
X-Gm-Message-State: AOAM531Y63pUygr1ZMJsLgSdOhHRyDo4a3HKt34lSgI9V+hxEYzMBwza
        albiWg/7yrDwLXpw8eTFthzsPp4BtwT+nEeTK5bt/EdNT9f7NcUMcNbTpfti41q+WnKhuOfmw/K
        o5CNPnXsKcW4Qte+jg3LPKr4xzXypt3X2f9Q2bPs=
X-Received: by 2002:a1c:40c:: with SMTP id 12mr9149918wme.158.1629896811088;
        Wed, 25 Aug 2021 06:06:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzixd6QysPlsvWL7nertMLrUP2YTQueOD1OTVHyup8rVWyTa/PXx9YKm+yhpgfRrSNjfxxakQ==
X-Received: by 2002:a1c:40c:: with SMTP id 12mr9149906wme.158.1629896810959;
        Wed, 25 Aug 2021 06:06:50 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.15])
        by smtp.gmail.com with ESMTPSA id r20sm13300842wrr.47.2021.08.25.06.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:06:50 -0700 (PDT)
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
Subject: [PATCH v2 3/5] riscv: dts: sifive: drop duplicated nodes and properties in sifive
Date:   Wed, 25 Aug 2021 15:06:04 +0200
Message-Id: <20210825130604.203601-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
References: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
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

