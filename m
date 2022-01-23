Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71BB5497119
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:17:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236249AbiAWLQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:16:58 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38420
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236236AbiAWLQz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:16:55 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4496F3F32C
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936613;
        bh=grI5UfAEDAIP80sPof/wJdxtniWt65JOOqzZgKpwDAo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=v+8DeblTUjeFPYy3Bz1ZpaYt6NVCu4PfpjYkOc1U7vIoEPBLxyPSVDk3M9hUgfKlu
         AyUcG4OmFR+vu4bgn919KdDr2m6jtDzXLJp9RpbendqqQFNTqdR0047v7fi79PgPfX
         S7l0GA9R4STO1iQf9gTzTZE04O7He1Ijzls/4HY/93rvwN4TrBO3YKYX/Y1Zie+FT6
         HYZJ02x9y8Ug1XANcDtQIZR1AQpXOmP9gQIqSBkQ8HNrxfbNBsaV6B/3jwplRiu2mV
         tmmylyknHowzgFBG/S4hueN6Gad+MibMr/jmiLEst0O8qUjidw7wSGQVDHzW7tSeQp
         1JiUuwMs9KEzA==
Received: by mail-wm1-f71.google.com with SMTP id m3-20020a7bcb83000000b0034f75d92f27so1015047wmi.2
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=grI5UfAEDAIP80sPof/wJdxtniWt65JOOqzZgKpwDAo=;
        b=o/SMpnhrU2WtwKI20YkahW6hL2CveSl+n1O33ywrpB+/DvvduUrj7++oL6dzEPv9yO
         U/JJb6V4mcHRK+XcpBy3wnD9ohBwpjLXO0gArVq5JAHnwznwHnN9oTGncHWMRi7l82X3
         vNOeWB3kXaXyfvsGgFbHl1NDAmfrJx2gQeRxXyBOpaJGo6d8jCe8jTyYNsg72jbk/1YF
         L2xhxtWkhXwZJBVtDs0EyuFwWuS9lx4gFtWppX6FDtiN9A/p+7XiIvIUN86AGagGsSaq
         dojPi4Wk3pNr+Fq77baVUhtzooIiNU+TpvHIgduSp0NzOMB0ovbDA+kk86Zu6/7yzEET
         luEg==
X-Gm-Message-State: AOAM533/TN8Ygme7QQjT+MppjH7r1EcrioLltg30AZKhVsV6dK4o1xgd
        izgVNySzTYwqCzskyooz/03KgLeTDuKVX6tCVzQOT17ecN4KxrMeECr8wZbbpEpRIpn1cnkFkBm
        vqWVRpxsgJi+6AniWltfktnjYzRvpr6X2854Gj1U=
X-Received: by 2002:a5d:5887:: with SMTP id n7mr3788126wrf.95.1642936613068;
        Sun, 23 Jan 2022 03:16:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyxdELQf6sIqrI/0YVD1AI+KkjLutbJQyLtovsY93KZNKsW7PHRBKT0U90IZXspsKI6wQudDQ==
X-Received: by 2002:a5d:5887:: with SMTP id n7mr3788117wrf.95.1642936612924;
        Sun, 23 Jan 2022 03:16:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 04/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Snow
Date:   Sun, 23 Jan 2022 12:16:36 +0100
Message-Id: <20220123111644.25540-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5250
Chromebook Snow board.  Due to lack of board schematics, use same
regulators as on Arndale board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-snow-common.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250-snow-common.dtsi b/arch/arm/boot/dts/exynos5250-snow-common.dtsi
index 2335c4687349..ccb32d53d598 100644
--- a/arch/arm/boot/dts/exynos5250-snow-common.dtsi
+++ b/arch/arm/boot/dts/exynos5250-snow-common.dtsi
@@ -698,6 +698,11 @@ &spi_1 {
 	cs-gpios = <&gpa2 5 GPIO_ACTIVE_HIGH>;
 };
 
+&usbdrd {
+	vdd10-supply = <&ldo15_reg>;
+	vdd33-supply = <&ldo12_reg>;
+};
+
 &usbdrd_dwc3 {
 	dr_mode = "host";
 };
-- 
2.32.0

