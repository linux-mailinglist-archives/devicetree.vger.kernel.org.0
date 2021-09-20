Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EE6541167A
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233188AbhITONH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:13:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbhITONG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 10:13:06 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF830C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:11:39 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id b15so50029769lfe.7
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D3q2FEF4t+d+FTNvfl6+GfCHpUBJ+rGaJlkHHGh/sS8=;
        b=bT4MRVlkUOjrGvAFtEqZZX15FJKeOUsqU4xqoMm9JihPd+YVpybExzpvY8zm/MFBtj
         GssHjwPKAjWZAEtL9JFUQ3TdfVVe5RMEbQ8UtmG8SpPU716iIxYtbcgPrFboapQqvjxn
         A3daCE6siFSdy8857DGwZstsCXaq/91yAeUolYQkAAYzkPiYPW5obibYPdASYST9CwDe
         A3saSGeyz1/C6B4uROtuFzPJqUD2yQ70DgvvZN7YYQ3cQQhUzeBB+a0Na4PDwrhd2gHX
         puqDakbUa4TPfGng4Zjh9nMKsXbV4HTxUGdWIVdmSh2z6Sb6DIkH/mIKptAq+eu/RSO8
         EqWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D3q2FEF4t+d+FTNvfl6+GfCHpUBJ+rGaJlkHHGh/sS8=;
        b=BRnSB7IdtXrJIAewlOd7KIf0oA6cVgqb9gZRTbZsa6tm9cy7f9unIzI7X4p8pLx1tZ
         mKAFBzInLc3Pb4U7EnE9XZLwxPHzQ56ezwg24cRtVmyMDeBWsEayixiCAP4rHo7Yq/Jr
         zvO3/21tEpO2b+2ms1PXUSEtms1jUf9fAkAdQQzXuUNsxpvMzHK7fJPzFOhekBaBaWCu
         HXiO2hl1Y2eexPIl1+JzTP/22hZ/gueTg0Gu2utLB6KwsgW7OW9+mM3Wlq5bLcMB5XmS
         TuKvynw8YyH/9/ymqMgQ6SV4/5TjFHsdtcV8poMiEsJuaYPboZ3zHgqp1HLZy90BZwgq
         cKrg==
X-Gm-Message-State: AOAM531lVJ5XGrTXfcAx8l7VUURRdbXKVWMQznwwgZ4S1HWxYGpVeUX4
        USoPw7TJ0sqFY2AI39MGpCk=
X-Google-Smtp-Source: ABdhPJxa6Saga0bVpxofIjX7C74A0OjMPM8pwSIgic2GkN+P/KFFaws0nSvgH4DXeVWpAah26gcY/A==
X-Received: by 2002:ac2:43c9:: with SMTP id u9mr20342837lfl.552.1632147038876;
        Mon, 20 Sep 2021 07:10:38 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b7sm1273938lfj.19.2021.09.20.07.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 07:10:38 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: BCM53573: Add Tenda AC9 switch ports
Date:   Mon, 20 Sep 2021 16:10:24 +0200
Message-Id: <20210920141024.1409-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210920141024.1409-1-zajec5@gmail.com>
References: <20210920141024.1409-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This router has 1 WAN and 4 LAN ports.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm47189-tenda-ac9.dts | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47189-tenda-ac9.dts b/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
index 049cdfd92706..07eb3a8287d6 100644
--- a/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
+++ b/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
@@ -105,3 +105,40 @@ pcie0_chipcommon: chipcommon@0 {
 		};
 	};
 };
+
+&switch {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "wan";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan1";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan2";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan3";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "lan4";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+		};
+	};
+};
-- 
2.26.2

