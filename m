Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE87496C85
	for <lists+devicetree@lfdr.de>; Sat, 22 Jan 2022 14:26:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiAVN0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jan 2022 08:26:00 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49340
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229878AbiAVN0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 22 Jan 2022 08:26:00 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F3B2B3F1E8
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 13:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642857958;
        bh=8fMesucJS/Q/CHcDtWavokH1YLXI1OKktuJiUdUDTLs=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=GzUqFmu1KOVpaDKr/t6akjdkqEqJ/4Yogf0L3IYwdf5ZGHVkKF0jd7ZArvD5hziWz
         1SLwY1frzkw+5n5sPzk/xEiADGOTGuTJ2EGR6ntRBeLKhUlX1MY1EFKcZzY3xew6Ad
         UcneQ0zSEWePdFi09Aq8X6wx8wcaB+J3r+mRIo3jzi+p0xtaKAAcsp4jPGwDUOKsjZ
         QJ3z2Qdq599+pd8aWbiYtcSUBXVp1Q6gDTNeGMIIGaytXcHHUjpZOhvLps8VDiwCYg
         dKXkucRU+wsRvt1GHhRrF7xhhjKPFk91moFSEyjeZglNcAXkfV3psYlaKxJmCCl8xQ
         gEx+Ltddsm+YA==
Received: by mail-ed1-f70.google.com with SMTP id f21-20020a50d555000000b00407a8d03b5fso507291edj.9
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 05:25:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8fMesucJS/Q/CHcDtWavokH1YLXI1OKktuJiUdUDTLs=;
        b=zEJPclzry3nOeebwxU3avbP4IaE8XVNCx/6QQ+YLGyjXDAXQec8ZVkhjtastYVJea8
         h32dH9ADU+qdLTAMx5nrNvV8qTgYZXj6O31Nboagb2oVSkz2UoyGTX98XNgJlzoRJdFs
         XQ5YSnqibLcaEwAFJWArkY4QLu2WEIYoaN+SgoR2plRgEsWrqK8ftasHD0ie1b4mQqEZ
         89+waypIU7juZjU8NTCxROgpfbsNfDzcBQnqXRP3ykMFl7qrexJAyBJiNjHisgyfettZ
         P+KIm27iQjLPln1xFrPNHAA3YjLQMn94xvkEU0y9nN954BheUoEdP9iG/i1ZFCU8nQP/
         HSyA==
X-Gm-Message-State: AOAM533F4rDCNcdbC3W20NvTFwX/KZmG71Cs8Xxdxxb25pKFF2yfDHM2
        kg7uc0cxL2Z+bKWD1a1ruNx2SG2bu6spi5ueR6n73UCSxv3usJ34S0aJmdX183/BYO7I/LB6I8m
        k85ZRgZ+8dhP3g718pdwREhLAezaeZPRwsEGQ8Uc=
X-Received: by 2002:a17:907:2da3:: with SMTP id gt35mr6700219ejc.493.1642857958514;
        Sat, 22 Jan 2022 05:25:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyNLq+wl/T1aIhyqPK0PgngG1nTaJ+rpaL0m5ALl8KOG7N8L+TA5ORWK4t1DsKSjwTs3nbw4w==
X-Received: by 2002:a17:907:2da3:: with SMTP id gt35mr6700198ejc.493.1642857958277;
        Sat, 22 Jan 2022 05:25:58 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v2sm2373060ejb.114.2022.01.22.05.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jan 2022 05:25:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] ARM: dts: exynos: drop old thermal properties from Exynos4210
Date:   Sat, 22 Jan 2022 14:25:52 +0100
Message-Id: <20220122132554.65192-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The samsung,tmu_gain and samsung,tmu_reference_voltage properties of
Exynos Thermal Management Unit driver are not used since April 2018.
They were removed with commit fccfe0993b5d ("thermal: exynos: remove
parsing of samsung,tmu_gain property") and commit 61020d189dbc
("thermal: exynos: remove parsing of samsung, tmu_reference_voltage
property"), so drop them also from Exynos4210 DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

I'll take this patch via Samsung SoC. Adding here for reference, so
Rob's robot will not spot DTS issues when checking against dtschema.
---
 arch/arm/boot/dts/exynos4210.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index 7e7d65ce6585..2c25cc37934e 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -527,8 +527,6 @@ &tmu {
 	compatible = "samsung,exynos4210-tmu";
 	clocks = <&clock CLK_TMU_APBIF>;
 	clock-names = "tmu_apbif";
-	samsung,tmu_gain = <15>;
-	samsung,tmu_reference_voltage = <7>;
 };
 
 #include "exynos4210-pinctrl.dtsi"
-- 
2.32.0

