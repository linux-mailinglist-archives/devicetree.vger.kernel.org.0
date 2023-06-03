Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43D59721064
	for <lists+devicetree@lfdr.de>; Sat,  3 Jun 2023 16:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbjFCOQ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jun 2023 10:16:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjFCOQ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jun 2023 10:16:58 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2522A133
        for <devicetree@vger.kernel.org>; Sat,  3 Jun 2023 07:16:53 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5149c51fd5bso4456180a12.0
        for <devicetree@vger.kernel.org>; Sat, 03 Jun 2023 07:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O54gSo+fwIZHpUPtsacTlq8N4OyPd5rKpC6/rcb62mk=;
        b=jftqAIeO9/e/T5dFo8TeLbAje15pg3JVWxxGAGO/up+9Apj6dQLTykDeQhrgyiiJU3
         C0tG4D5kUqLp62amF5C3nnA5yaEvWJEaJv3qv5FKhGJc+7ZAeem69xNw1nVdtFrxN94g
         jgna6H9ZUoKVSXcJLa8duySAk28/WRAaX9qsGTpYBkrKPcJUvEyLtGDdSD5MfBYY2Wo6
         nFdApzSf+x+ZgMBrsBXyFrxmj0Ms9rTqIaX88l544jl0Lt/Pb7pMhFUs7HFAKQhbWmZ1
         cS2aJuU6764gCaBy0vkl35FUMyf+vxv8coTW3vcPh3KcziF4CC+V3gS0u+Aa7F07kpKW
         9pZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O54gSo+fwIZHpUPtsacTlq8N4OyPd5rKpC6/rcb62mk=;
        b=YeDFJx01q0+i1hYFgDJjvGOm3oF1Ym0NpNLPcWfL8VxQXN5o/1ImpPg7kAFo0nAumz
         FPaA9tr1smXqqqtoV0iVgNwfEiYkMKPjrYCyStreG0eh/LUYEvbJ4CX/+pySOKwUChsA
         58iTZsvZY9FS7AIZlZJw5ZPGBFFbv7dvor2ar2kgVDGAskilnP2lVvIZJMyIKQIOl5Qi
         Q6wSAF2NO1QXcmpVlnO7ISHHImi5v6y55j2rm+XB1q7I5Jk7oClX6rFNIg87Y2RIVGYL
         O/h9Omx8qRxbXG7ERw0IgY0ssl2WpanIqaLYzc3Jw/pegkdmdu2QMFhGgO6RD+B4zdRq
         3zQw==
X-Gm-Message-State: AC+VfDwSHDNsKBHuO0hX1e+rCInGWDmlNLRhuv1wBZ4KozMDc6oet4VA
        QCcFSNdHdYpXOvK2wu9OBNU=
X-Google-Smtp-Source: ACHHUZ7O5+bzZmIbUuXuY51BZS4e5mKKjwMt3gsJra08cWTcdYXFAeeRPDmcKScHQEM5phGCw7CRYQ==
X-Received: by 2002:aa7:cb54:0:b0:504:8014:1554 with SMTP id w20-20020aa7cb54000000b0050480141554mr4493966edt.28.1685801811428;
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from shift.daheim (p5b0d7f08.dip0.t-ipconnect.de. [91.13.127.8])
        by smtp.gmail.com with ESMTPSA id d6-20020a056402000600b0050690bc07a3sm1832740edu.18.2023.06.03.07.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q5S3m-001osZ-1j;
        Sat, 03 Jun 2023 16:16:50 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v1 3/3] ARM: MR32: fix dt schema violations
Date:   Sat,  3 Jun 2023 16:16:50 +0200
Message-Id: <7db1786220cb6948bbddcecda17147908d25f91c.1685801691.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fixes the "duplex-full" typo, adds phy-modes for the internal
switch and the attached PHY-chip. This also includs adding
pause support for the internal cpu port.

| ports:port@5:fixed-link: 'oneOf' conditional failed,
|  {'speed': [[1000]], 'duplex-full': True} is not of type 'array'
| 'duplex-full' does not match any of the regexes: 'pinctrl-[0-9]+'
| ports:port@5: 'phy-mode' is a required property
| ports:port@5: Unevaluated properties are not allowed

Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index bca39b30ace8..e0ad79fac7f4 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -186,16 +186,19 @@ ports {
 		port@0 {
 			reg = <0>;
 			label = "poe";
+			phy-mode = "rgmii";
 		};
 
 		port@5 {
 			reg = <5>;
 			label = "cpu";
 			ethernet = <&gmac0>;
+			phy-mode = "internal";
 
 			fixed-link {
 				speed = <1000>;
-				duplex-full;
+				full-duplex;
+				pause;
 			};
 		};
 	};
-- 
2.40.1

