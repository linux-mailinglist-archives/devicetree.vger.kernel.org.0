Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74DED49713A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:18:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbiAWLSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:18:37 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56090
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236274AbiAWLRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:17:00 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F3B3E3F4BE
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936618;
        bh=oFyg+gwb7XtvC7QbtaeH/MyDAvhazxDlD6i95VQK5XA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=vJN5ZXeWlHeGIfbb6QuAq6Ql0HkFtyZurbuLagsTNwiVr1hEyX5H+g5P2k02ByR0O
         kJCf1zU6CH/eTWqULKEYCg0YN1xgUUZQ6Zdb7gOm6v2Fi0i8u/iM1fd16mdJNuKktp
         tvDXPCE4RzUTta1m1HrdU25i7FHFvJ5rme4OqtrYhE54WjtXjYO3YKC8RIcmm6wHPh
         AXlboLZlWAkGSdjNozOyMJWu/xaYwv5uIYfQ6+imqp2eU+UKfRwNaXG/g2gfLt8W+U
         Aw3WiFsbrwB5wk9hZt2GfoJqr2UA+gTRl+w/w7PUOYKerXNjZxAfdMEA/18qIatOD0
         +z8HOqx1xx0QA==
Received: by mail-wm1-f70.google.com with SMTP id s1-20020a1ca901000000b0034ece94dd8cso2950677wme.5
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oFyg+gwb7XtvC7QbtaeH/MyDAvhazxDlD6i95VQK5XA=;
        b=WTmcsr4VO9eXZpWBL4hPfHdb9tRKWYeFq+S+HsKvkwmfo1zQ1IHvwAfGOCnJJfbhw6
         fWdiZAaXDzUgNHe+4tMsBeLaOgqOwZxtxdEgjmTWVR8Pk/tFu0vI8siZbRP7icV03xYX
         U/dZbdsSoSVnQGkWFhYwCx7e5YN/+WWIyhG5TArkWvNzQlyP8EXeauat53CqVFrakj4e
         XILNDnZCDGADvUdYapF18KfXDdPLrIOYjxTHMzrwLl16NagjUPrhqhqi88CaYjOVNvMm
         OmX9ib3kD3AYE5sdMMX3xm6qi97hP3eZIchnXWOV0iDVDlcESEIM6n5HpwW5c3ak/lEM
         XMRg==
X-Gm-Message-State: AOAM531ADsNy37qUqPlhVGipEsxlf7bM/XFlRyN1VrGB6CImyLMIiG5L
        W1tabSBKHLVMfedAQTePPbatJdTTV4I8K+iPmbHOkvCxl9jmmw44QFEIfI2uzeskNJ5wT/Bhbao
        hc5NV7M+Y02qdLDBIto3aexsT2hmNMdpcVaEVL/I=
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr7582896wmj.59.1642936616521;
        Sun, 23 Jan 2022 03:16:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzl/THDIXXxYVsa2sg8+CimTWrhi2Zjb2hJxs9yZ1xXuWrxrnlJt2icnBT+iFNOebYeJ8eo7g==
X-Received: by 2002:a7b:cb05:: with SMTP id u5mr7582884wmj.59.1642936616338;
        Sun, 23 Jan 2022 03:16:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Peach Pit
Date:   Sun, 23 Jan 2022 12:16:39 +0100
Message-Id: <20220123111644.25540-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5420
Chromebook Peach Pit board.  Due to lack of board schematics, use same
regulators as on Odroid XU board (using same MAX77802 PMIC).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5420-peach-pit.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-peach-pit.dts b/arch/arm/boot/dts/exynos5420-peach-pit.dts
index e76fb104db19..6252089e4350 100644
--- a/arch/arm/boot/dts/exynos5420-peach-pit.dts
+++ b/arch/arm/boot/dts/exynos5420-peach-pit.dts
@@ -1090,6 +1090,16 @@ &tmu_gpu {
 	vtmu-supply = <&ldo10_reg>;
 };
 
+&usbdrd3_0 {
+	vdd10-supply = <&ldo15_reg>;
+	vdd33-supply = <&ldo12_reg>;
+};
+
+&usbdrd3_1 {
+	vdd10-supply = <&ldo15_reg>;
+	vdd33-supply = <&ldo12_reg>;
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
-- 
2.32.0

