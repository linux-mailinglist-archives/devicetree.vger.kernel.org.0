Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C78BE497124
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:17:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236204AbiAWLRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:17:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56028
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236244AbiAWLQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:16:57 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 486E63F1C1
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936616;
        bh=mZrAftbEtCYMgTENBFFGXCuFnaLbp5VnVYmLha/DMRk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=q7Wf+b82yeRbxpLxTEj7U9g6qKmjrY6Q/kSdOKdTtkmZtij4HztQ33mX+ltyPMCSV
         MCu9ce/9f1GvgzHaFeHvdWZbcYSY9W5zbIpoCe1UDMYgtBrr2dlLHPPteExpvPfRTD
         ugy/QFSTrth2lSDsjvI8N+ZlFd0mHOuxDkBNnnX6DSFjHlpf83JEpl6ZojkyIGZ3vx
         lBhvBzmMaUI5YA+M9QII6eLi3CuJ8E7TtGJ4Hx5elTUD+pe7Zn4VONCZ3vAEhu6Tfn
         o2QwAu1Wta1Vr9x92WC8d64nlLK7TMeLTDD8Ho4pBJRJgfv1T5hyYEg5jXhqTNnZt6
         f0hB9vuESDD2A==
Received: by mail-wm1-f72.google.com with SMTP id o193-20020a1ca5ca000000b0034d78423625so11651955wme.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mZrAftbEtCYMgTENBFFGXCuFnaLbp5VnVYmLha/DMRk=;
        b=bBEToxQ7aFmFQET+as9zYyXTsoQpY9WAaOY8Fkm4v3TzP4SvSFH/JqpQcKELPSvksQ
         dPulRMjunGI2EfZQNTh3hJuwtEMg6KyBSVGIM/vuWXNMx19nGb0C3GABYJF0qCoukGpP
         c+HvREwwXA/poR8wVF924EOcf+d+vwTQTz8yMPkWucEzrTpFFsD3mlmDGBeRawV73WUb
         2X17ftVYBon/mhAr40V8kE69jKyqt3IGbT4f/oesOuoWnXFGErcA/2/vtGRxLzoBxwaz
         uACzuy5Wti47P9+5AdeQlw/kvEJy4/cROHEhcesbYF/mKQvXL+VTyUJDm6JRHA8T0dyq
         gSQA==
X-Gm-Message-State: AOAM531zw9IKVHXBmFQR1xuffFnZLJq6zszDzSfw361oQodwCE6AYbGz
        VaVabYbJx71sY+SgVCi3FSaYkumTeDDuKVbec/NPcpEgdL/jlclsKDUMQaTpBJrpTN74NF892Rh
        kmTBTJlxcyrASh61B6RjYNBF5/AF0LDsbuBm3Ek8=
X-Received: by 2002:a5d:64a5:: with SMTP id m5mr2349925wrp.596.1642936614110;
        Sun, 23 Jan 2022 03:16:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwbgZpejnF9FsaGyv4Km9SlVIA0mLrJyWVOdw4PpZPzd2pNEg41zEEfiODSBE5ZfvFaMZwUFg==
X-Received: by 2002:a5d:64a5:: with SMTP id m5mr2349911wrp.596.1642936613937;
        Sun, 23 Jan 2022 03:16:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 05/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Spring
Date:   Sun, 23 Jan 2022 12:16:37 +0100
Message-Id: <20220123111644.25540-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5250
Chromebook Spring board.  Due to lack of board schematics, use same
regulators as on Arndale board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-spring.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250-spring.dts b/arch/arm/boot/dts/exynos5250-spring.dts
index e0feedcf54bb..138f51f974c7 100644
--- a/arch/arm/boot/dts/exynos5250-spring.dts
+++ b/arch/arm/boot/dts/exynos5250-spring.dts
@@ -553,4 +553,9 @@ &spi_1 {
 	num-cs = <1>;
 };
 
+&usbdrd {
+	vdd10-supply = <&ldo15_reg>;
+	vdd33-supply = <&ldo12_reg>;
+};
+
 #include "cros-ec-keyboard.dtsi"
-- 
2.32.0

