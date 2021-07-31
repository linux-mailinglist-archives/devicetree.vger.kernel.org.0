Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2893DC54D
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 11:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232705AbhGaJYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 05:24:46 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:59910
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232371AbhGaJYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 05:24:45 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 4C2C53F114
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 09:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627723477;
        bh=kGo37r3WhFCeIFTyZEtB2b0clBfBYswptDUZjNvqtBo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Pn5AM4+RTr3v2gvWU1GhJ6S64vSgytYHeNA6eItQhTIv6qNo/LWYeYVa5A/DBGcsP
         eIfLt8k1wW7JwwWG1ltx1ob2wJWvBau/4iqAfFJDKIzlW8vqIoLsvCpX9uQTr/pH59
         d3UuqaLmYqumd+msboGpIUQyo0fRwCgGqFQrUoDkOqiPuAbY3VLLA3BqPXc+zdlhuJ
         tDSwlKFreAwZUPLAXTfvwqv/alcbTp/ccKii84eaUPffFlxtsRdlhtkaARXkAmqkxL
         Dl+FfugIrK4btbosHu9Cva7YtijZUDZgGYqUTB4p9WkegXUlPKv4BXM8E4YeOwDcTY
         8AOVpOrnjb56g==
Received: by mail-ed1-f69.google.com with SMTP id a23-20020a50ff170000b02903b85a16b672so5886901edu.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 02:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kGo37r3WhFCeIFTyZEtB2b0clBfBYswptDUZjNvqtBo=;
        b=kLzAY9YVwvf5MhMNHWAP2kA/9X/9Qc5vRS/eyqeCqJGpOxNibWsfenO6KMMcYTdREx
         bxr2mILbl9zBz9yfQxOP1770J092pj7OjmgIL8SqBIEKdlUpq+1ctRqLXa6NMp/5xtDM
         W/SIxtDaXnj86I5Se3Ch6WXEba/TSG1v4FSJyh3SxKpFWpoxRix9RLvehLoa8eruOkjr
         pNostpDbqWl4RlTjg5RGBi71KDpRkZyeUNHu60uHXw+noZLvFLSWIwCJQ/2XkyF+LIzx
         MtOsr8wy5lNf/gS6rzzpiJd4Z12nqcPNme2xoWz0uI1JynFbSqI1JeHcKvsuqrd8/+yK
         nXXA==
X-Gm-Message-State: AOAM530AjDP2mIXjjdrzRVtgTFnMyZbyd6/PTciwtsKayljQxBIF+d3Q
        9LU80R5NX6am9wNnYrQxUD9ZEi4cP/8YKPTBW2RugS92r86QKzgFEOZBLcBrPweUkYjzHYpwIHD
        IMAxtXWKOoUX8kwbA7XyhyB5T72VqcPGXdH9Fs5U=
X-Received: by 2002:a05:6402:28f:: with SMTP id l15mr8056971edv.131.1627723475765;
        Sat, 31 Jul 2021 02:24:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaUYFBiBXOj/YrSnv2G1IxSRpz8mT9DY7R7LnPnM3pnBBdSPX26G/dea1pdGER5HCdqQwzig==
X-Received: by 2002:a05:6402:28f:: with SMTP id l15mr8056962edv.131.1627723475618;
        Sat, 31 Jul 2021 02:24:35 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id r16sm1947693edt.15.2021.07.31.02.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 02:24:35 -0700 (PDT)
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
Subject: [PATCH 2/8] ARM: dts: exynos: add CPU topology to Exynos4210
Date:   Sat, 31 Jul 2021 11:24:03 +0200
Message-Id: <20210731092409.31496-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
References: <20210731092409.31496-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe Exynos4210 CPU topology.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4210.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index 70baad9b11f0..7e7d65ce6585 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -32,6 +32,17 @@ cpus {
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
 		cpu0: cpu@900 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
-- 
2.27.0

