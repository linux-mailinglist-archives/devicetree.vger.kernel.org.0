Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE16B3F2858
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232762AbhHTI0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:19 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46282
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232454AbhHTI0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:17 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A17164075E
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447460;
        bh=yOjRHckXfh8MDflQfjYiz4YEqE8miSPemjVb3I/vxsA=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=eaYAscjuYfGn2rT3CShNkH3wtzz0qeRtYUq0xlv9w2FTfs/W22AxhjpI/Phd0g1tl
         i8uoghXCrgCRw316LBHt7RG3h1zHQRxrmu1IazzFxnnOYQI2mTCv/eHrDRhnUA2yyl
         nxHIQ8VrVqLK8nGhLatriB0N2tWobm3sPaO4vbDb3t3uMw25/fGyopE+XtkEIFw251
         TtRciM0ZfFbzvuedOET9FWmofD46dzVBselr1KH+4unOpuNIqFhXrC0EBHdTyt92tS
         HbAyOlB7XIP7WzFVSNySFBsYC6mQkN3kzg+sBYil76rJnj67boIiICvFqiwGAcKCek
         Wn9kU1MB/5koQ==
Received: by mail-ej1-f71.google.com with SMTP id e15-20020a1709061fcf00b005bd9d618ea0so3378347ejt.13
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:17:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yOjRHckXfh8MDflQfjYiz4YEqE8miSPemjVb3I/vxsA=;
        b=ODaTyLJX/xlhFVCRCeZJVUYY72m2XHVmGMvSQxt/mseNcZPL2wyR6iWQeI0NOMe4G4
         uA2IdFZSqMXjWcNWQq2ksAqCOgqYXJquD5p9jVhp1WvMH7VzAdUaQuwC+fCgsRy/tHiT
         1DqUlu0fAhPQOCGPXp5bmEmtbZu8GI0hjtySGcGE/A1gPfjlM33zs82IoyvKa94fqqSN
         uLvPS6NCXlLMAq80IteYU/LdmQ7zoS6Cw+WxQK1YjllSNPsFi+4MKI+t6JJmhm0TMgG/
         AZIM+GqadAeirtbKOQaUG5RapxjT/VEEWtyM5kTQZh9+pYrfGhYAL+W3UcVaQcRLKSAe
         vezA==
X-Gm-Message-State: AOAM532DhM8UgwFhCXudygzt/GVq127kcIneSZ50YhE541ZaXrAw8MtO
        /shrCiPSK4ojv3JmoIO1rh1wf6c46NohfTO19PNqfcghn/dqvO8rJpu91l8cfJri3Hw4iCsAJi4
        5BuUmZgI39r3sU/2z9IpkL+aJ366J9NjE/Ey0WJY=
X-Received: by 2002:a05:6402:160a:: with SMTP id f10mr540047edv.355.1629447460461;
        Fri, 20 Aug 2021 01:17:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwTKhIXh/wQkiam+jDiIJMsZytCrGinhmIixM8tb1chHNWPio4haTinyP7ejx20wdIF1XMViA==
X-Received: by 2002:a05:6402:160a:: with SMTP id f10mr540024edv.355.1629447460363;
        Fri, 20 Aug 2021 01:17:40 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d22sm2488041ejk.5.2021.08.20.01.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:17:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/3] ARM: dts: arm: align watchdog and mmc node names with dtschema
Date:   Fri, 20 Aug 2021 10:17:32 +0200
Message-Id: <20210820081733.83976-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820081733.83976-1-krzysztof.kozlowski@canonical.com>
References: <20210820081733.83976-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the watchdog and mmc device node names with the schema to fix
warnings like:

  mmci@50000: $nodename:0: 'mmci@50000' does not match '^mmc(@.*)?$'
  wdt@f0000: $nodename:0: 'wdt@f0000' does not match '^watchdog(@.*|-[0-9a-f])?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 2ad9fd7c94ec..bcb3f581977a 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -215,7 +215,7 @@ aaci@40000 {
 					clock-names = "apb_pclk";
 				};
 
-				mmci@50000 {
+				mmc@50000 {
 					compatible = "arm,pl180", "arm,primecell";
 					reg = <0x050000 0x1000>;
 					interrupts = <9>, <10>;
@@ -275,7 +275,7 @@ v2m_serial3: serial@c0000 {
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				wdt@f0000 {
+				watchdog@f0000 {
 					compatible = "arm,sp805", "arm,primecell";
 					reg = <0x0f0000 0x1000>;
 					interrupts = <0>;
-- 
2.30.2

