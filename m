Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D5BF57BB7B
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 10:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726651AbfGaIYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 04:24:20 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:32821 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726481AbfGaIYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 04:24:20 -0400
Received: by mail-wr1-f65.google.com with SMTP id n9so68733383wru.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FvbjEUb/Th+01Zl6XcdJ8odyub7JsODLUUEoKLKzNZs=;
        b=KfFL/BC5xXufP3lnLyJas5UbmqihmA7JUqE/ABeqHp+2fHzgoTfjS9RR52KjZgfybD
         OWqofiqs+lXpz8e0FIe9QWueOTgbduVw5Tu7tP8cuMt7q1VkNTncx+hrHp0bk3rLNevY
         bdMNp54T7/xGH6YVjA9tk69Nak4tnRzf5LN3TZWpM+rQ+ggpa2/uhsg5ZiXOS8voq1am
         YRaf94BMdbjKllwNF37cCZCid8eMt8jn7R/szwHsN6HzXtGZj4raMFsnW8K2fMyfKg9l
         1gdwmtDgDU6DaWK7EH3XLMPjP3X/ORYHNdbq0XnyeTsQkRB6EbRn6NRBUYcB929zc6XB
         N2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FvbjEUb/Th+01Zl6XcdJ8odyub7JsODLUUEoKLKzNZs=;
        b=Hd9pC1yYxDGIfylwPpReYRb08d/RvL0n017SoOc3CaeNtASnlg/xy/9D5h506WzAom
         Fai21FujmQzrHVxzeMt/ZoEg8pCpxrsfCPva7Q1/qttN02kwfNchNDTyv4t3f69PCd2l
         JV2kBxVQS6JdM0XkzJv/dNYRBim581hnGEmcq4uNirrf4+dT3lSXwG4w+BOYhomSlW73
         ZXuc9Be7xq4GYd7T79G3tcPI1AGL77xwglxhRUYptgnTwAyfKOAF+34yYkz8+5UPuluP
         LmaOBGEoO3Rc884rPdeivDT+8PKyRY9fboaFCAkcCPeblomANWQumrHCpg8aZreLHVUm
         tOxQ==
X-Gm-Message-State: APjAAAXMVKYefLhO3p9irfKKvgvIveAgjQYOpmrAIBcyLH6y4GMQNuZ9
        EyaYOpLi89NvHXGMFsLsnuWD2A==
X-Google-Smtp-Source: APXvYqx8lMDuI8fETzlBpD+Nb0OwlBL7r+bY0XigWErXCCrG7/5RRdFHxOGqoR3XxYQElGTaiYN9dA==
X-Received: by 2002:adf:f646:: with SMTP id x6mr140810646wrp.18.1564561457832;
        Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
        by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 01:24:17 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH v2 3/4] arm64: dts: meson: Link nvmem and secure-monitor nodes
Date:   Wed, 31 Jul 2019 09:23:38 +0100
Message-Id: <20190731082339.20163-4-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The former is going to use the latter to retrieve the efuses data.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi   | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 6219337033a0..b8244efb85fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -117,6 +117,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index f8d43e3dcf20..2b07752e034f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -100,6 +100,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 	};
 
 	psci {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74d03fc706be..d244d9783718 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -161,6 +161,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 		read-only;
+		secure-monitor = <&sm>;
 
 		sn: sn@14 {
 			reg = <0x14 0x10>;
-- 
2.20.1

