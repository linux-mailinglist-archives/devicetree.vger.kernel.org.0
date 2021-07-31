Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7B4D3DC552
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232898AbhGaJYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:47 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:59946
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232758AbhGaJYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:46 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id B12F73F243
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723478;
        bh=HDsVJHbLYdehvdLjNS9gFGVYyn3GWDKvQhj/fRkHz3k=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=r3J2xVRSTITLOfnAUBHizqpat79WL6Bug9H9YJMAtDC2Xj8WPxJ7gYo2w3V4Lm1RE
         dYJ8LYDt1S5WrWABXV02U1Gee9dQRaJT/zYbLozJmhrEj7152kIUcvFBsu5bd861mb
         naoXVfgchFNNmJg4+n4rvq3JLXattV9RHP+cwchz2asHragkdWg7KF6txbrlZY/NfU
         O1ULzkI4jDGfkFbOoH+C45kM55p3cOL3m5uvbXuuUkbCojWcE7q9ISbKaFov5qaEcY
         G4s7FSVKBpdtVqSXNR3lxaMYl6iyHJRlC7TTnc4VGubJft/dl7axlL0kYLMp8MiG5+
         heim5UCqcgIog==
Received: by mail-ed1-f71.google.com with SMTP id dn10-20020a05640222eab02903bd023ea9f6so1055021edb.14
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HDsVJHbLYdehvdLjNS9gFGVYyn3GWDKvQhj/fRkHz3k=;
        b=r0xaGeCHx6T7+HiSdZckduCeMwKV4oBNp3w1HGpzfvzvW0B7RwqL1pXz/e8MvC80uY
         lCHGz5hD3DWy5EeNUr9B5NLZyXKVe8XbFN1/x8+tc7bhnqPq7uOlxYCDZbnHEKniefuP
         jGVhV25gWztEoZymrbQAr1fk0I++R7fOhDsOVgbQ380bF8yOFfWoe/ty8f/oEtj9soao
         tBpW7BsmeAyL3yDt4XMst+tRXOJWoiqLXF/kUOmEjNW20VlMQt71zJKgU+pPV8Tw2lF3
         GKWGh3opuDbxVdAw2uk5UIwUIWsPYhDTiiOK/dsgyBXPk/JpJMCJf2tyfPyyvJX4XVGF
         ranQ==
X-Gm-Message-State: AOAM530HqKOoGF7zC/MypuzSKyRU3djj3g3DZfqDJi6p7VWMiRi4aaMm
        VtbdpiPEmqkhUYmIpOn4JdeS3Ow4LR9Pwj1ka5Zknp13yPHx7BOraROYzRm3AsmJIfQA5IuhbqR
        Y+YUG0KCtczYdOP24b30MFMCINLHqDeBHu3F+Yu8=
X-Received: by 2002:aa7:cace:: with SMTP id l14mr8188594edt.14.1627723478394;
        Sat, 31 Jul 2021 02:24:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuIJmHBiFSjnUtPJTyExYA/Xbvt6uMsTVXP7lA49p4XG3mtpPWK0r+g1e+pbMZwXbjTXj+Xw==
X-Received: by 2002:aa7:cace:: with SMTP id l14mr8188584edt.14.1627723478243;
        Sat, 31 Jul 2021 02:24:38 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH 4/8] ARM: dts: exynos: add CPU topology to Exynos5250
Date:   Sat, 31 Jul 2021 11:24:05 +0200
Message-Id: <20210731092409.31496-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos5250 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 2ea2caaca4e2..4ffa9253b566 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -50,6 +50,17 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+
 		cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a15";
-- 
2.27.0

