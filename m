Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A83863F13E2
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 08:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231849AbhHSG55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 02:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbhHSG55 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 02:57:57 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6366DC061575
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:21 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id k5so10570096lfu.4
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 23:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rDC/gLYwvOlEBcZ79Yh8+riKPP0vuciRWzwexKgrr/s=;
        b=ptQjmwCHmK4AAiCmEdOPbQNuY82MJO3nfj7vElrysBMBmBuD/9CMqM7CnCFaeGBKlb
         AEeXIS1MAMf2AF+9plEumC9xXUb29QdLgkgCvrr085Sy8odh01DCdPLl6ZncjuUV20BE
         AgeZKPyDp3Je6ifxo5CaprVQQTOwrCVNwpO7J+kf4HFcRlAx3Orkizjww3IsKf/U6WR4
         3g4eqca7G36nl6mMPnURVKGFlxtpqhd15LOiCHs7NMy/PuefAVEaecCjikXRrunIXbIb
         53Oue84dpYN0MXGLOZwdNe9jFh1RXjpqxN0YSWRRHE77f0zCioGWGn4U/TYuPUmoWIeP
         UBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rDC/gLYwvOlEBcZ79Yh8+riKPP0vuciRWzwexKgrr/s=;
        b=ef6jS2QJ12lqPzBWotoIxkB6P0H1OzIgCVaZpuFvnko9kmwSBSVv9iLgja+S25+stw
         ma0gGqFdvRKT63W8NeaOABUkb4/rs3xlAvy29UaRlZMOF4dAoSolraH93ZoZiRUBcZCk
         BlklCbcX05EacoX4QMJo1MvWOIwn9Y2dzpPYGIndTr9M7V2EQlHFOkTMaHKYaNT5oxYJ
         yhMz5Zj/HCnUxWXiG7JPanlYLtJTci4cyVTzANRa/usuxFM7hbl9X3kvMzCvQbK4WVS6
         QN/JeJ60NH+znK+lfGntWGZWmvXFi0qdHI9dy9v4TlA5GQSdPAU1llRaum44qriYxb7j
         U4vA==
X-Gm-Message-State: AOAM531Bm8zMl5dQp7FH0PkqyhesG4yahY3jnoGN599xC1+KovRH8V2n
        vV7fh4MUfIwWFsTszBvz+qE=
X-Google-Smtp-Source: ABdhPJz8hlKmQHDRqHpLnRxzEvGhEWE1GjfZaoJgCZBjs21J/+6q9ll7RB7pDuvCcO5PGeQDntdiCg==
X-Received: by 2002:ac2:5fef:: with SMTP id s15mr9626652lfg.425.1629356239811;
        Wed, 18 Aug 2021 23:57:19 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o16sm206821lfl.309.2021.08.18.23.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:57:19 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] ARM: dts: BCM5301X: Fix MDIO mux binding
Date:   Thu, 19 Aug 2021 08:57:01 +0200
Message-Id: <20210819065702.15406-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210819065702.15406-1-zajec5@gmail.com>
References: <20210819065702.15406-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes following error for all BCM5301X dts files:
mdio-bus-mux@18003000: compatible: ['mdio-mux-mmioreg'] is too short

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index f9d3a53065ef..d4f355015e3c 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -370,7 +370,7 @@ mdio: mdio@18003000 {
 	};
 
 	mdio-mux@18003000 {
-		compatible = "mdio-mux-mmioreg";
+		compatible = "mdio-mux-mmioreg", "mdio-mux";
 		mdio-parent-bus = <&mdio>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.26.2

