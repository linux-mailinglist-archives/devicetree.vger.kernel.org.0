Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14218356C32
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 14:35:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234665AbhDGMfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 08:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231347AbhDGMfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 08:35:24 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F42DC061756
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 05:35:14 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g8so28206451lfv.12
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 05:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QPwZbbCtwddX1ETVmC9sL+2rHZ9GDM2CB69S8yxOwiw=;
        b=u/hL/61+jJvuhtS7Yz30gL5RMzr40ig08Wlff07SakL7P9PUwKNLEJgEZFCZ6UkbvU
         WDAdiEurhk8zDsCLpNkvmA0vsaXflxfMHyESoQ5ycNj/L/MZQqkNFvqqaGWSuH6ForN/
         33HsSXqmThY8TaFPZcfCOClqhSvA0t5f/HDtubMeUMg7utt9TFNcjQs6JjGHFUrSMh+2
         VcZPodZ3plbMXIetOGHYz2+sG6v3Ed6W9ml2Yui625Uv47QnN+TqfR+kVf1uVlmYvAJS
         n3BAVdvEIsEUJRm9/A+30mBX8ZiXSFeJgwGVKN4h7nDCirYO379xumJfyphTHuisrG5L
         g2PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QPwZbbCtwddX1ETVmC9sL+2rHZ9GDM2CB69S8yxOwiw=;
        b=KkjJM2qhvwxtSZPt+6MU585XuVpg8IuPOB9aQNR9hnb/RSf30Pcvec6mlnUudkxS8C
         lP8xAXP8XjaLN736xU+GfCvLT2dasE1nBb2ZwqvgZ9KXm8V9lnNrUvbmiBj2JKEDSqI+
         f1l7t5nTnpAG8vOwjjBl6z4W79lCAh9XoRDjNwbX8lW8eK2+eegozfPr/12SrD3ifzFX
         nFtoJ+HVVflFPXay3wOV00yR5vXwYJygODnLHUeMCYoux4Sxk7BDoWtcsm2uzYysf0fF
         zeL+UlEILkMN5WTcXHN0su4EClyJyj0U00dtta+Yr7wmo3BYcre3RF8Q8DqcXcjrldyJ
         3+WA==
X-Gm-Message-State: AOAM53321CQBU50UNKgJigw5/PW3k3EGEjcYMLVPXW7uRW5NytUkf91a
        3Z9EGSsX5OKQi5OPPVXNCOoV+g==
X-Google-Smtp-Source: ABdhPJxB4xEJkKj0w7QFu99MVULY8VTweDQ/zqdRrQZA8RfAnmQ+ouDkNb8kEetT5jKmbt1uET/Gsw==
X-Received: by 2002:ac2:4148:: with SMTP id c8mr1804334lfi.307.1617798913071;
        Wed, 07 Apr 2021 05:35:13 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a31a:e13c:2100:794f:8ac9:2d59:66bd])
        by smtp.gmail.com with ESMTPSA id g5sm2531347ljn.82.2021.04.07.05.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 05:35:12 -0700 (PDT)
From:   Kornel Duleba <mindal@semihalf.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
        mw@semihalf.com, tn@semihalf.com, upstream@semihalf.com,
        Kornel Duleba <mindal@semihalf.com>
Subject: [PATCH] arm64: dts: fsl-ls1028a: Correct ECAM PCIE window ranges
Date:   Wed,  7 Apr 2021 14:34:38 +0200
Message-Id: <20210407123438.224551-1-mindal@semihalf.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently all PCIE windows point to bus address 0x0, which does not match
the values obtained from hardware during EA.
Replace those values with CPU addresses, since in reality we
have a 1:1 mapping between the two.

Signed-off-by: Kornel Duleba <mindal@semihalf.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 262fbad8f0ec..85c62a6fabb6 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -994,19 +994,19 @@ pcie@1f0000000 { /* Integrated Endpoint Root Complex */
 			msi-map = <0 &its 0x17 0xe>;
 			iommu-map = <0 &smmu 0x17 0xe>;
 				  /* PF0-6 BAR0 - non-prefetchable memory */
-			ranges = <0x82000000 0x0 0x00000000  0x1 0xf8000000  0x0 0x160000
+			ranges = <0x82000000 0x1 0xf8000000  0x1 0xf8000000  0x0 0x160000
 				  /* PF0-6 BAR2 - prefetchable memory */
-				  0xc2000000 0x0 0x00000000  0x1 0xf8160000  0x0 0x070000
+				  0xc2000000 0x1 0xf8160000  0x1 0xf8160000  0x0 0x070000
 				  /* PF0: VF0-1 BAR0 - non-prefetchable memory */
-				  0x82000000 0x0 0x00000000  0x1 0xf81d0000  0x0 0x020000
+				  0x82000000 0x1 0xf81d0000  0x1 0xf81d0000  0x0 0x020000
 				  /* PF0: VF0-1 BAR2 - prefetchable memory */
-				  0xc2000000 0x0 0x00000000  0x1 0xf81f0000  0x0 0x020000
+				  0xc2000000 0x1 0xf81f0000  0x1 0xf81f0000  0x0 0x020000
 				  /* PF1: VF0-1 BAR0 - non-prefetchable memory */
-				  0x82000000 0x0 0x00000000  0x1 0xf8210000  0x0 0x020000
+				  0x82000000 0x1 0xf8210000  0x1 0xf8210000  0x0 0x020000
 				  /* PF1: VF0-1 BAR2 - prefetchable memory */
-				  0xc2000000 0x0 0x00000000  0x1 0xf8230000  0x0 0x020000
+				  0xc2000000 0x1 0xf8230000  0x1 0xf8230000  0x0 0x020000
 				  /* BAR4 (PF5) - non-prefetchable memory */
-				  0x82000000 0x0 0x00000000  0x1 0xfc000000  0x0 0x400000>;
+				  0x82000000 0x1 0xfc000000  0x1 0xfc000000  0x0 0x400000>;
 
 			enetc_port0: ethernet@0,0 {
 				compatible = "fsl,enetc";
-- 
2.31.1

