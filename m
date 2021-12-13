Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A786472B2F
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 12:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235330AbhLMLVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 06:21:12 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35208
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233009AbhLMLVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 06:21:10 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 077873F206
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 11:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639394469;
        bh=xdfPDnUa/UcvSSeLF3saSWMWAAoRJzBhdsMDRnO/JDQ=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=cT45xyvOpvnt49ktn1vPtJ+rWa7i52BwtFfgkpC1OdRjYTDuysqdovuTPM8NvLymU
         hqZEpfYITJyJe5NWY2iUpto/2u5GkbvI54ibE5LRq8XyluDv3FvyHHB8225v3PCN38
         sw4xtnLgvma6/J6SWk62t0JOaOq/lHOVk/7l6MJLB25l0ufKeGv20cVNRfVR8ZSB+P
         aq1PjT/7kn/6B4259nbj2HcrPK1lcb8l1ovqqmtxGZ6M3QWveoCxwq28KkOyd6C+3E
         wWM9X00gYiA1GYoq5lKNJojZ03Ki3Db0cMpmeca3SocKhkhYu15YKdf0kpjejig4Ij
         95XQiCaeHyeKg==
Received: by mail-lf1-f72.google.com with SMTP id q13-20020a19f20d000000b0041fcb65b6c7so5140279lfh.8
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 03:21:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xdfPDnUa/UcvSSeLF3saSWMWAAoRJzBhdsMDRnO/JDQ=;
        b=iy6RVFATg3IlIym5ZbAeHV/OTmdNCxfO3M9PIcXJQ/MkNZROoUV8SDud8e71OFygns
         6SLTVl3bRZiCcAo+tmOEHwG3Jz2aWU/e/JcJhMwj+xv48W+fw56ACOnM503D+wWaiYcK
         kzlZGZMaqbVaAjsJSR8utldMHZ8jtjeFBViJz+x9HmX/vzcZTCAu482ciynnsJYO2rSv
         BtXCVUoJs45hQ2IzBbKEiqSjuEKtazrciITmHKno3z52NKIoty8sm/kVeucbO1ZM1VrI
         RKgBDmASp2LQUNPVnhvME6WFANKEbXWid90W0oPvRvUVUtuSVbwYadp0J0TQu10c3TtY
         EUaw==
X-Gm-Message-State: AOAM532cbeoHhsrlWsmFRMTl1P/EDUjlqUIRlD+TO9o3kIU0+2dxmRtZ
        gh71B7LhGAH2Kje+CsXRN1eF2vTNgY22HZoAvZexMcfv0fn8CNmxA1SnvL6o9qo57TWUxopZkWY
        kOwsrRYVNOzeEBG7X4crsjam9sZOGL67+SV8nztw=
X-Received: by 2002:ac2:5317:: with SMTP id c23mr28053344lfh.525.1639394468226;
        Mon, 13 Dec 2021 03:21:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwWZO1hjyHi3R4CUnRLP/FUuM1hUtLtmHevibc8NPWHgNjYpl3AgKLpdoWTlWW3NXfnSe/3ng==
X-Received: by 2002:ac2:5317:: with SMTP id c23mr28053326lfh.525.1639394468040;
        Mon, 13 Dec 2021 03:21:08 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bq18sm43660lfb.88.2021.12.13.03.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 03:21:07 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: soc: samsung: keep SoC driver bindings together
Date:   Mon, 13 Dec 2021 12:20:57 +0100
Message-Id: <20211213112057.16709-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Recently added Samsung Exynos USI driver devicetree bindings were added
under ../bindings/soc/samsung/exynos-usi.yaml, so move there also two
other bindings for Exynos SoC drivers: the PMU and ChipID.

Update Samsung Exynos MAINTAINERS entry to include this new path.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/{arm => soc}/samsung/exynos-chipid.yaml | 2 +-
 .../{arm/samsung/pmu.yaml => soc/samsung/exynos-pmu.yaml}       | 2 +-
 MAINTAINERS                                                     | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/{arm => soc}/samsung/exynos-chipid.yaml (93%)
 rename Documentation/devicetree/bindings/{arm/samsung/pmu.yaml => soc/samsung/exynos-pmu.yaml} (97%)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml
similarity index 93%
rename from Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
rename to Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml
index bfc352a2fdd6..4bb8efb83ac1 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-chipid.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/samsung/exynos-chipid.yaml#
+$id: http://devicetree.org/schemas/soc/samsung/exynos-chipid.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Samsung Exynos SoC series Chipid driver
diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/arm/samsung/pmu.yaml
rename to Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 0bbd89265b28..c30a6437030d 100644
--- a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
+$id: http://devicetree.org/schemas/soc/samsung/exynos-pmu.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Samsung Exynos SoC series Power Management Unit (PMU)
diff --git a/MAINTAINERS b/MAINTAINERS
index 79ef55bf2ca7..8926b925514d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2554,6 +2554,7 @@ Q:	https://patchwork.kernel.org/project/linux-samsung-soc/list/
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
 F:	Documentation/devicetree/bindings/power/pd-samsung.yaml
+F:	Documentation/devicetree/bindings/soc/samsung/
 F:	arch/arm/boot/dts/exynos*
 F:	arch/arm/boot/dts/s3c*
 F:	arch/arm/boot/dts/s5p*
-- 
2.32.0

