Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DC8449713E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 12:18:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbiAWLSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 06:18:37 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56076
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236270AbiAWLRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 06:17:00 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3E1613F1C4
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642936619;
        bh=y357G77gKMHlTfzCL6+HEz+/UzqdnZT/McDbXpsW3BM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=KCEyfW1Y6dhBG3hW8vyZXJjvQbrD3oKyZFy9b8+yB+ZaGJP2IulJs6Kbm/d2a/7mX
         6TvYjaztkoBVaZIeZgSzq/PidKwSQgM6xK8evA5FNuF2WeNB4PJGfZic2aZyavpaTx
         kdTZBWgTVmosWR2b8JbQIMS7W8/S69VT9r0NOiCTb3fzmKKV+rP/zEIv/dLVB7D4iF
         45isw5dEVFJAl+JZExXPXd/9QilYsEN3DRJDctsW3bEDH/1NDqxENauFS8IzMcY8HY
         OAc82syuHmC4AH3GFVpCRKpts/CXBz+Do1wfHBrAmV7k89PxsrocODhUYABuLbkQqg
         14NEpFGZjlAZQ==
Received: by mail-wm1-f70.google.com with SMTP id n19-20020a05600c501300b0034d7b01ae4dso5297862wmr.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 03:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y357G77gKMHlTfzCL6+HEz+/UzqdnZT/McDbXpsW3BM=;
        b=uCEv68aou2q8wWLPhAiLh45zjElMTEsN7J8e3gufl3fLGNfV+s7aHXEkGPWCBbFIOk
         GVh+BgY65ehbSnijLYZ6p6C64bJMJMdTpHFy/qXAI1BXfcmRv5DgjXqkj2IK04u2Cz7R
         I7HYftRvZKtmEAA+eJkQKSgXKfDO/wGqRhKu1bLbmQNxvTdlujam0ENnr0H2OnQOu3bj
         ttFzk2AOxr7yntizE8TKPMMC8Q148SxKZ+OGhSXb0YxRIqTKbRQYQYaoEll7dcNyH3Ou
         mkfSr1KK4v87D9SxFOIsY3CKUZTPIru8rk6zk8pGxsJwAXo32f09NMQKbxZnUITfNZPF
         Hu8g==
X-Gm-Message-State: AOAM530J7FeUOdNN6RW0GbdMbuwxxrf1AjRNGKlE1Utj0TBFBC65J1fA
        CDS0vgVNJMMoCOutsSSHRRLQqp8onlZiQdj4yDW/B2RGElXhEPPtFhgRUhcyEvQCE0svPXC2ppn
        2xIUlk+r+lmn8k+lbRVYwUf3/0RXGPBAiN1aJZPE=
X-Received: by 2002:a5d:4906:: with SMTP id x6mr10245499wrq.552.1642936617998;
        Sun, 23 Jan 2022 03:16:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwb59CpOjfY8CfprDukjo6039z0OQ3gfs8X3bsvt8yvFXtOAvk66eFpeVM1qtu1DqKws8uQug==
X-Received: by 2002:a5d:4906:: with SMTP id x6mr10245485wrq.552.1642936617866;
        Sun, 23 Jan 2022 03:16:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m5sm10143729wms.4.2022.01.23.03.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 03:16:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/12] ARM: dts: exynos: add USB DWC3 supplies to Chromebook Peach Pi
Date:   Sun, 23 Jan 2022 12:16:40 +0100
Message-Id: <20220123111644.25540-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
References: <20220123111644.25540-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add required voltage regulators for USB DWC3 block on Exynos5800
Chromebook Peach Pi board.  Due to lack of board schematics, use same
regulators as on Odroid XU board (using same MAX77802 PMIC).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5800-peach-pi.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index 77013ee586f8..fd6f80a9c64e 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -1072,6 +1072,16 @@ &tmu_gpu {
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

