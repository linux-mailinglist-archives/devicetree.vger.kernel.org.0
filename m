Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29C9E414DB4
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 18:05:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236417AbhIVQGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 12:06:46 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:39672
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231712AbhIVQGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 12:06:45 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C44E53F320
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 16:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632326714;
        bh=am6HvhYMUQG0l4YQDLjqW15GPRKaMpXA2sBsBZSwSw8=;
        h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
        b=BSKFbjKQJu2MGLI2h5Lc5HSvbmoyHWs7vsNhZc+55vnCUaknkiRodo+IRwrfr4iw0
         2voceXrgKFCbAPDFiwURdf1mtTV453NwO7Wprc8QiV2Zr7Jl22YhYMTgvYyPQT539u
         Pqd1UtwlatksZT3nbPWZXcUVBppuJZpIEsubkDyQjU57a95IF6EFizSv2kIYSwSPkH
         PC9wqHWz27lQD/WF/tCYBBHhBDKp6EcEqMgr6yacH0lpM36fYHONC+FUv4FehquCSb
         fb1Isx8xxVZqmZOekmmoo7o/62zgb2N0QDXYCWUK9YbgM8OYDL2SaFcVwJUgsefpEe
         P7GOD1dpQ9ygQ==
Received: by mail-ed1-f71.google.com with SMTP id z6-20020a50cd06000000b003d2c2e38f1fso3649605edi.1
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 09:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=am6HvhYMUQG0l4YQDLjqW15GPRKaMpXA2sBsBZSwSw8=;
        b=CLE5Z1SHIECJ/AXwDRp0Wk0gkAN7QuUR5CewqhmrbYeL3L71VfSKy7AhV6VIhX0+dq
         40jk1MFyGu8Qr0t7E9ujDzlSbXA7O0y4VValgNBpvD03l9h/qoh1zG4pPStiLBb9Cmz/
         uUEtYIcHAFTE11Duss+txB6XeNfH1/9gnyR5liWIuthLs6HKPp6RQTn6VY3XVBuYkinI
         LRmwcTWDFkfF4sATsOxjEGcgFLqGrLfxCe+tMA8nX8Ofs2auuJiV0TOcM5dcR+5s+lP3
         SLK+3bi5SkvCubtvkHSjN/rhILcAOYtbxs1HmE1kKVDqP+BJQcarYNehRjK4YO4uiBLw
         yK+w==
X-Gm-Message-State: AOAM533C5l3tvlP8/Q7+Biaign+jeXlCIHIBJEOXNZ1mtZO0oNlNT/5U
        2nTpfGig6pTKIA3ze2DWApJdv5RCG+9qBuEFRKD/LqZESpqeVUY3hcxQs9dYc1ekIjG6W5+9MUL
        th1u2fSRLSKBk4ZXP6VptT4I6RVPPrhUrP1O4XIc=
X-Received: by 2002:a17:906:718e:: with SMTP id h14mr302541ejk.365.1632326713300;
        Wed, 22 Sep 2021 09:05:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8bDWBvCoh+uqmD+95itTH1Ems+DKgL3XEMXBSbfrZ0KQf/4dDkPPwClcn682BfTFNhzCFcw==
X-Received: by 2002:a17:906:718e:: with SMTP id h14mr302524ejk.365.1632326713104;
        Wed, 22 Sep 2021 09:05:13 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id l7sm1511135edb.26.2021.09.22.09.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 09:05:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] powerpc/powermac: add missing g5_phy_disable_cpu1() declaration
Date:   Wed, 22 Sep 2021 18:04:35 +0200
Message-Id: <20210922160436.130931-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

g5_phy_disable_cpu1() is used outside of platforms/powermac/feature.c,
so it should have a declaration to fix W=1 warning:

  arch/powerpc/platforms/powermac/feature.c:1533:6:
    error: no previous prototype for ‘g5_phy_disable_cpu1’ [-Werror=missing-prototypes]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Drop declaration in powermac/smp.c
---
 arch/powerpc/include/asm/pmac_feature.h | 4 ++++
 arch/powerpc/platforms/powermac/smp.c   | 2 --
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/include/asm/pmac_feature.h b/arch/powerpc/include/asm/pmac_feature.h
index e08e829261b6..7703e5bf1203 100644
--- a/arch/powerpc/include/asm/pmac_feature.h
+++ b/arch/powerpc/include/asm/pmac_feature.h
@@ -143,6 +143,10 @@
  */
 struct device_node;
 
+#ifdef CONFIG_PPC64
+void g5_phy_disable_cpu1(void);
+#endif /* CONFIG_PPC64 */
+
 static inline long pmac_call_feature(int selector, struct device_node* node,
 					long param, long value)
 {
diff --git a/arch/powerpc/platforms/powermac/smp.c b/arch/powerpc/platforms/powermac/smp.c
index 3256a316e884..5d0626f432d5 100644
--- a/arch/powerpc/platforms/powermac/smp.c
+++ b/arch/powerpc/platforms/powermac/smp.c
@@ -875,8 +875,6 @@ static int smp_core99_cpu_online(unsigned int cpu)
 
 static void __init smp_core99_bringup_done(void)
 {
-	extern void g5_phy_disable_cpu1(void);
-
 	/* Close i2c bus if it was used for tb sync */
 	if (pmac_tb_clock_chip_host)
 		pmac_i2c_close(pmac_tb_clock_chip_host);
-- 
2.30.2

