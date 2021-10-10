Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A697B428188
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 15:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232216AbhJJNeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 09:34:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59598
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232035AbhJJNeS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Oct 2021 09:34:18 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C10263FFD9
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 13:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633872738;
        bh=VSngw+BuS10HO2dYkx/MXwvMPY51PJ3deWKl4r4S3qQ=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=ccG44VLTMq8SHBMal3otjLWgjTFtQbaHA3W+bM7qLALLAAUwugkNnF78e1+XIRAsP
         bGEFBg4eO8MefGzsT+GKieazKm1OPSA5m2AiKMQNwBMXXrhQ6ofHICYCM09v9Copeb
         ZuGGM44meRKQGnG33jrf0xa+LgIo1PipZLO7gRRDy6Z3/fDT9RZIgKeEvyES6cNGUl
         1dp/Mz2J+rSEA/yspdhGq3if0i9PtzLOdPN8C+4WAIC6Z3WsGS5k3Z1VrX5Xq1fZth
         fZQCKFNrMpIUsby3kp9ORQ5fcewjhQpF4VW9lBT4OJOrTADpnTQg9NX4ZS46qBBkQj
         9g9r6x/4azR6g==
Received: by mail-ed1-f71.google.com with SMTP id c8-20020a50d648000000b003daa53c7518so13349563edj.21
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 06:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VSngw+BuS10HO2dYkx/MXwvMPY51PJ3deWKl4r4S3qQ=;
        b=5ZcxasE0eoQJiModFi4k8k4ak4KKnS7/M323EQtozEmnRIP0qJUWjpZYfm8AtnYOA9
         Es88+MNYSF+mwHvTVnN1JVlXOFveBO+fOD5v5YClIZT4OYUKEBgDTbIJZl1uykt5jOi3
         sXOUEEQ5JmxZ1O21TwMtwWej5I09RpeSBLDkf+rlAb1pKeA21oXQyNjj+ebpXGw/27vR
         wqKybIqeCgrjc3THhWZVEhN+uaVimIN7LFvKGSEpK/z+XSJ/e0xqyBrTA07WVWBKGE1O
         K6EuYanZbsao/DKzGl5YctbSvXLl+jBJkNmCWLHET8QYjEQAxh+BGfDY47Kzfb9qmUer
         0qAQ==
X-Gm-Message-State: AOAM533todxsAq5QCPR7Nwb7RC9PqrE96+EyGtdabppAGeW2ZPl+bDS5
        ySt3jiSI4Pq3EfptO8Y4nbow+ZS8We0OMJLYe7ts1YVXWLMNxj1jl89IdnSPkqxTO742Am31mjH
        HjWWEqlVlYV8BVi9eWhFlK3qNczn+OEXOFitpF+E=
X-Received: by 2002:a05:6402:3512:: with SMTP id b18mr22194684edd.15.1633872738374;
        Sun, 10 Oct 2021 06:32:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxX28avd/zYMEEZvi0uTLj2965i0Y+AZSacZrycO3LtcE4wcV3oD4ApsvkCpz0voOrsfU48g==
X-Received: by 2002:a05:6402:3512:: with SMTP id b18mr22194652edd.15.1633872738168;
        Sun, 10 Oct 2021 06:32:18 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d25sm2547476edt.51.2021.10.10.06.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Oct 2021 06:32:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6dl-prtrvt: drop undocumented TRF7970A NFC properties
Date:   Sun, 10 Oct 2021 15:32:15 +0200
Message-Id: <20211010133215.145722-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neither the bindings nor the device driver use/document
"vin-voltage-override" and "t5t-rmb-extra-byte-quirk" properties.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/imx6dl-prtrvt.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl-prtrvt.dts b/arch/arm/boot/dts/imx6dl-prtrvt.dts
index 5ac84445e9cc..56bb1ca56a2d 100644
--- a/arch/arm/boot/dts/imx6dl-prtrvt.dts
+++ b/arch/arm/boot/dts/imx6dl-prtrvt.dts
@@ -67,11 +67,9 @@ nfc@0 {
 		ti,enable-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>,
 				  <&gpio5 11 GPIO_ACTIVE_LOW>;
 		vin-supply = <&reg_3v3>;
-		vin-voltage-override = <3100000>;
 		autosuspend-delay = <30000>;
 		irq-status-read-quirk;
 		en2-rf-quirk;
-		t5t-rmb-extra-byte-quirk;
 		status = "okay";
 	};
 };
-- 
2.30.2

