Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3561C3DC550
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232832AbhGaJYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:46 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:59918
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232473AbhGaJYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:45 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 4C2D23F22C
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723477;
        bh=2SsoeL69SAbyVLuagHDmvrXJo7lE3+dC0c+iRSlRnVc=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=qFsTkO4eepm/DqCMQXppe8VxSEAFM3YwAlxSrj2U6Eq84QGni2PVt4TurlipA1zpi
         3T+zZjyKCuW6zs+t68drgEnyrmxHbgnk9NH22iluQ2ukdq0DAZ119RXehvWPRvMC0i
         yoMK5TDyeJxIITephJ3EqPUSs6O/F8Z1BZVYYZI/egfu+4SjbnXrBOgG0Ahi+FyDWb
         1H7eXVDPMMSnSAmqlZ76yGqap3y5+avNcSU4WX9nqQX2ZwBdLjdgQnkZlczwZLH8XQ
         j2O5ef3z3dMcMSEwLvWNJi9pBgRa/rsEnUeDlIx2tTSL8ueR2l6mTch8Ks+E4v8YFl
         9XbeRaN0KSLpg==
Received: by mail-ed1-f69.google.com with SMTP id c1-20020aa7df010000b02903bb5c6f746eso5845032edy.10
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2SsoeL69SAbyVLuagHDmvrXJo7lE3+dC0c+iRSlRnVc=;
        b=fvkCS7ChlS3Yu9kSOFVHNGFDxfYhN5rmQ+7Qy6LU2Qet2d/2BkT/t+h/MiSeSZTirA
         aEw2sJaguBUFekEY6H0nuSjDRWuSuVTX0xPFu79qXPbYCSN7hom3biDI8F7Ow+wxYjuL
         0sJLUHbV7O8s8s+8H2WC/L+/Szoa19+m/PEwNzBuJfB3G+5VP7ZGh/WYSEOJjsTzle3V
         XN0eAuKnn4pShqX2hSs+l+hATfqb6zTBChWWsDySgc7nx6rgqEyVxU6KZDMA1bxrZqMW
         gbYLu2OMhQZjbPQjh8lr4PVYCTQi6hDgbUhoTc6wjddqbwh2lSKRNh1jY9i4AikdoFej
         4WwQ==
X-Gm-Message-State: AOAM5312HIVbhyGH1n9HfXME2xW61JypLC0mgaJ5oB38XybYqhTka2ER
        skqnhHN222ScwzIzV8j9DgP98qjcDQHZHDgdWN/lbV+/CD/QWS17u5dEf7MLlJ3y81ufDq3ebWo
        3IDX776VpGeWgMrfEKPw33PmrxDo0NlNw5qRNw5I=
X-Received: by 2002:aa7:c3d1:: with SMTP id l17mr4578545edr.299.1627723474537;
        Sat, 31 Jul 2021 02:24:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeAnPajwclK+eQXY1ZtPp0NIkRYZP3KRr0MLG5lY5FR1vkdqt76BV8Rkpf4D3K9sS4iN6vpg==
X-Received: by 2002:aa7:c3d1:: with SMTP id l17mr4578532edr.299.1627723474425;
        Sat, 31 Jul 2021 02:24:34 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:34 -0700 (PDT)
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
Subject: [PATCH 1/8] ARM: dts: exynos: add CPU topology to Exynos3250
Date:   Sat, 31 Jul 2021 11:24:02 +0200
Message-Id: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos3250 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos3250.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index 77ab7193b903..a10b789d8acf 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
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
 			compatible = "arm,cortex-a7";
-- 
2.27.0

