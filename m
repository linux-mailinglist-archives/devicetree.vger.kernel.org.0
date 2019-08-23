Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 837CF9A811
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404993AbfHWHDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:04 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39698 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405008AbfHWHDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:03 -0400
Received: by mail-wm1-f66.google.com with SMTP id i63so8015497wmg.4
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8bvFZYOOWbciidOH/I9lMYm8n7mRLKVoh4XQnIxXums=;
        b=kC/lzVfZUUGHHcb62P+i2HWLr9INMDQhZtTuS0Kq4wKm7wg7inFaRwCJpNk76Bx6So
         CYiDAlrHSUIxo6WCwRzJrEDJH3bqOiOonb17PcyiVgjIHahlQOLr8fwKe1X2PPEzrUuo
         GYxq7XLR9WGQX6zGLYZ6uMM/UiYY7iqmHlke51UUHC0z3FbZlYZTXYXgJ0BlyoTy9ERG
         mrpN+gGOem0lozxhG03hrWjtAfYvlA0kp4T6QmStAZRZEDjKajpigB+H3x8NbWbxN72C
         F4oCPfKynoeEE67PoD8GOOB9uT2FnJ3z5ju01qFhgz0zH9F/LOOzt6l6hgxAQ0fmhjUA
         n+SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8bvFZYOOWbciidOH/I9lMYm8n7mRLKVoh4XQnIxXums=;
        b=OurbgFjnaxX1P/mZsa7eRTG9OlpOE7z3D/RjDk0xapY97+JBI+bzXBq3eXU6cQawPA
         8eS12gFp+fpG+BGSMYO9xBA1+8r1LpEwOaffL7lvNuSxp6iVFKgOtyVcy0CXV/M/Limi
         v0PYlzHHXZ7an6jHBtXWMaHF07R8zM/T5tEzp9KEU4w9VeqFv8TF4kOh94OA25YeBEe1
         Lp8yf5OkjHEzFv3uegQRDKmjxtZNJfpjRP26WYPEEWjOv5Aow2PY7isCPwTV/Y5ccrVo
         hrm/dxpxsNICLbR3MmtH2eQ8AY1xmy9RMF8KfnfdGVe1JGVohU1BED0dSKSX96PYFq8a
         RfbA==
X-Gm-Message-State: APjAAAV+o25Jcy5Dh74wtRmcEQdJ6mJjkqSTbewXW6KKnMQWLkLkimVT
        gopshGzjZLHVOkJOeK7ZcNkoAw==
X-Google-Smtp-Source: APXvYqxlo25gmqlaRYG7TGhQ/LohMFW/zSGas3jbT1AdbAPrDC365o7N9sowEhnteOW5MHE7iRgFHA==
X-Received: by 2002:a05:600c:296:: with SMTP id 22mr3045698wmk.148.1566543781652;
        Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 08/14] arm64: dts: meson-gxl: fix internal phy compatible
Date:   Fri, 23 Aug 2019 09:02:42 +0200
Message-Id: <20190823070248.25832-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: ethernet-phy@8: compatible: ['ethernet-phy-id0181.4400', 'ethernet-phy-ieee802.3-c22'] is not valid under any of the given schemas

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 7a3b674db11f..49ff0a7d0210 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -709,7 +709,7 @@
 			#size-cells = <0>;
 
 			internal_phy: ethernet-phy@8 {
-				compatible = "ethernet-phy-id0181.4400", "ethernet-phy-ieee802.3-c22";
+				compatible = "ethernet-phy-id0181.4400";
 				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <8>;
 				max-speed = <100>;
-- 
2.22.0

