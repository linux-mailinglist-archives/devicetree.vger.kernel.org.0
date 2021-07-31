Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6423DC559
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233016AbhGaJYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:49 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:59950
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232915AbhGaJYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:48 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 60F223F23A
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723482;
        bh=ERP8Nj6BhzRSI6a/TCOdFNPpRXHoJA+/4PhYRhY4Cn4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ltZcAAlNLOY43R5wfUoIv463WaIZosnP5B0zkDYpunVh2xACR1sFOW5AZD8GBimRZ
         xpjawjZYOB2AMsCs4abW/yzJDj/UWFONqW4Z2Di0+v07/haMi+nGLRzYyL3+ZVcTRv
         G92Xffrnie/6DP0T9n0AivJbqi6fHKm3kvEnEOlm3YwP3MaisjiyAEK+V+iqLWTzvy
         Fa2uOG47+8SeNIvuguOtcMDoitht1rB4B/nFA1Td/hq9oFLBgN3GH6hYsPNdUA0rRI
         qcWAXsk/kIkf8bRDi/dnbVlqFZysXMrwqiNkSEmi+NTZ1tRtlOseUkP71kRR6NlZZd
         k0Y7FCSP/7VCw==
Received: by mail-ej1-f72.google.com with SMTP id x5-20020a1709064bc5b02905305454f5d1so3718133ejv.10
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ERP8Nj6BhzRSI6a/TCOdFNPpRXHoJA+/4PhYRhY4Cn4=;
        b=Hp09G2jGlZBo9jor9epSX4Mw/Owbbkys0/dyVVTIIjFfEAEltGJcWwrRw5S+JHJL0U
         0mdu+b/rczSl8Z4oP8D4wXmd2vy+IRA4DTTNuQKNCuakr4K5efAOvlIa/fZ3cxh/68/D
         eC4QIlGSL2o4aDq4Lj+rMXitCc6/cllbt+Ilutsu7pE9oMfmGcHQ6a74EDruBFWT195o
         FL6zd0WlWA/E9e8iCik7DX7ogME/VsgzUfESWQ32oGu8YUrSwnl/lZUrfpGxVQV04d4i
         ueVCObpfiOq58VeGrjYvdu/DL/Y85MCGxFkfhvO7rKeoSjY2yqnAqR8z55EBBrBO8aOA
         mFBQ==
X-Gm-Message-State: AOAM530DEXBWWgLXkFraSw+4bQdATBtMoFDp5n0jEJKv558pnAaH7bKf
        Nlc062XRojiuu9UNwlo5UxYFNrXHPR7T6umyV1IMw6G9UJQjg1jvc7ukM6oaFNToAcqgEMDuYfP
        PseQByxM4p2lfn8fakt3FBRbahsuh2WknjqTp7QY=
X-Received: by 2002:aa7:c2d7:: with SMTP id m23mr8435685edp.30.1627723482007;
        Sat, 31 Jul 2021 02:24:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWDPnTDXwoerV0fH7BKZWtc51zibHNXd/dd+1kecWozTV2HkLy5eSAhhDXTpFxZ0+A24W0fA==
X-Received: by 2002:aa7:c2d7:: with SMTP id m23mr8435672edp.30.1627723481915;
        Sat, 31 Jul 2021 02:24:41 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:41 -0700 (PDT)
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
Subject: [PATCH 7/8] ARM: dts: exynos: add CPU topology to Exynos5422
Date:   Sat, 31 Jul 2021 11:24:08 +0200
Message-Id: <20210731092409.31496-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos5422 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5422-cpus.dtsi | 32 ++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-cpus.dtsi b/arch/arm/boot/dts/exynos5422-cpus.dtsi
index 4b641b9b8179..412a0bb4b988 100644
--- a/arch/arm/boot/dts/exynos5422-cpus.dtsi
+++ b/arch/arm/boot/dts/exynos5422-cpus.dtsi
@@ -21,6 +21,38 @@ cpus {
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
+				core2 {
+					cpu = <&cpu2>;
+				};
+				core3 {
+					cpu = <&cpu3>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&cpu4>;
+				};
+				core1 {
+					cpu = <&cpu5>;
+				};
+				core2 {
+					cpu = <&cpu6>;
+				};
+				core3 {
+					cpu = <&cpu7>;
+				};
+			};
+		};
+
 		cpu0: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
-- 
2.27.0

