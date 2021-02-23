Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36C193233A7
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 23:19:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbhBWWSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 17:18:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbhBWWSu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 17:18:50 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E357C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:18:35 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id v1so24112579wrd.6
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UOWr9d9lq0sjyNqrHH38BMtESbANjRbnbDGooX/xjQ8=;
        b=MKwlftHyyZGE3othtgMueaRHkmaajvrUXsaVYoAx670mrzccorJhqLtyleUQAEYrCd
         suzFsQeHhogqSKhfzYnaXilqXRfFPxFKLzFcTH733uTZc3yK29Ukwsw6laE5AJWZTlQL
         UMyMB27jbFxhUDyJ6qor7SrKDMJXFhi2G7sTS+s6kcdUpWAbrbf5f7xF08IfVmBChJ1N
         4MX1tPr1/5ZbXUl407mcoItffg5bXvEFp7UeIGh+KRMFngmZGL5hxlWjmbBLw3nnhQ92
         UtTSais/T/XTcduQ/8HQur1E5xaNtKFgTsrXewtoN04/eaXGus6LK7aunjozLwx5c85p
         a6WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UOWr9d9lq0sjyNqrHH38BMtESbANjRbnbDGooX/xjQ8=;
        b=YuUGGepfXCeYGDNK5Oev26qE16pz6VcxeEBejjRw7Am1D23FbY8hOtQiWWJke72yDl
         J3IMMmD5AmbCinYYnjPWQae+qITo5IjNuF6IQDalzsVkO1FhN4/ZBo8HH1oUsfCv+Tem
         YUy+5yhCYii6ur90JP7nJnCw9u5k9LIpZTF5H+g+SZaa/aLvAMXRiHpLJ6y68lP600sJ
         4X4u2nw1pDtNPNw4TjzuUGiCyEeVqh3dE6CwT0Oiu+hZb9g31VVkrvnoXa3XZULt8hsj
         E+2BgSzrswQ4gHtFLTSlNI8wPOth45+F8YHRRHx88EuCUFvHSXHfqjGblkYsKKLM0pKY
         bl8Q==
X-Gm-Message-State: AOAM530r/bElK3ESVCrkIH9HFU4A7DzLd3tsSnndAoTU1O6fk26kfJ4K
        yxILS67wLqoSF+608/hOosV4gw==
X-Google-Smtp-Source: ABdhPJyET+QxjGHr9GQWKV2tzcZtwrRpuGCUPQ0oFhxKbHTjMAg50XZI9bCQscPIpL6+/UkcI4ikHg==
X-Received: by 2002:a5d:6a0b:: with SMTP id m11mr28305380wru.414.1614118713821;
        Tue, 23 Feb 2021 14:18:33 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id o129sm4035934wme.21.2021.02.23.14.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 14:18:33 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: fix reset GPIO level on pumpkin
Date:   Tue, 23 Feb 2021 23:18:26 +0100
Message-Id: <20210223221826.2063911-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The tca6416 chip is active low. Fix the reset-gpios value.

Fixes: e2a8fa1e0faa ("arm64: dts: mediatek: fix tca6416 reset GPIOs in pumpkin")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 63fd70086bb8..9f27e7ed5e22 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -56,7 +56,7 @@ &i2c0 {
 	tca6416: gpio@20 {
 		compatible = "ti,tca6416";
 		reg = <0x20>;
-		reset-gpios = <&pio 65 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&pio 65 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&tca6416_pins>;
 
-- 
2.30.1

