Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5324C41AB2D
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239891AbhI1Iwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:52:35 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53618
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239796AbhI1IwM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 04:52:12 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C21A94019A
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632819012;
        bh=9+M3zOsXaCPGsy+Y7A3HK2jtwWbSZ2cmPLzUVQxLrjg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=p96zupMrTPBt866gZ6AwyGZHNeH0nAxgbpYbxue13nOGLUm50081/jpcC+MWIjIo+
         h4GO7Ott9o3Mg+ySuxfP9P57/3nvSPTPJnZrEgE9gyeo+8WWjJRazXrO0MgP2Tys+2
         w9i8xpiQMJtqca7wzhOPkyXtL4auDwuAAe3yyuFZGL5prYKkUDFLiK5UxEpUlNpDoh
         dJAeL8/owfl1FjDf1uZOxRaVt2STZXCXx5/aFnX/lcLVRVLWF4VG9hL9eVARJzbTTW
         2DZNmeKO9pfX9vPQsqr3iQAAHZ7sgvj5mnYLL1BFLKdJ0EzplceogFPTqre4CFvMot
         76TxtdUuW5McQ==
Received: by mail-lf1-f72.google.com with SMTP id d22-20020a0565123d1600b003fd0097d747so730062lfv.2
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:50:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9+M3zOsXaCPGsy+Y7A3HK2jtwWbSZ2cmPLzUVQxLrjg=;
        b=3VGEjADWU50qFzmfSSrX063y/RwENzpLWZOwDyMbMx1BqzVWTQyIkp1lxulewc3Z6v
         HHoHeOYbi/sqHwvhAuIKa3OKCpV9Ohnlp9dkN9CuIKITg+8EAJni0T5DIiFZ2a5TshQE
         LOB+okTYL30M3OCG+4xGD6yAE2lL3mvH0BFYR6jqxT/wZokgdSb3dM3tR3+rZ+K+3rtI
         c9Fr/dCVoSCxfiHfgJgEr+NhFMlxOkFfV4nSDBZ2EuVJvPFBWyyupfuM79twzEQg/cC+
         HfXK30oxcMexc4K15ZPNgqGKqYYNHtbUf6I201nsI3HG/OwPQXblGL/WNT2GeRYRE7Jg
         2EcQ==
X-Gm-Message-State: AOAM531VfTN7Uw4J2QVNH7sxA701BZ0u6Rsaz+gTAIcltHzHxnJfebbV
        9K97Eu5lUDOGgCYRMxDbJHdDagOeB7RiAYJxfnTf9dIT5Cai6aSmN5rIV8KLmMro0TLWFdAgoyz
        0QcAZYsT1u/g5KrDh6JSeFHuvJUtXkg35XtYKgag=
X-Received: by 2002:a05:6512:13a0:: with SMTP id p32mr4522402lfa.492.1632819012271;
        Tue, 28 Sep 2021 01:50:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxd1p1KF27X5q/HMw+Wy8K3uWfL4WhxDC2Ry8lcW1WZpEG8XLZ+MIvFRBAUiAMpcYmQVFUpMw==
X-Received: by 2002:a05:6512:13a0:: with SMTP id p32mr4522379lfa.492.1632819012109;
        Tue, 28 Sep 2021 01:50:12 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h13sm1848419lfl.205.2021.09.28.01.50.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 01:50:11 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 11/12] ARM: dts: exynos: remove unneeded DVS voltages from PMIC on Arndale
Date:   Tue, 28 Sep 2021 10:49:48 +0200
Message-Id: <20210928084949.27939-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The S5M8767 PMIC does not require anymore a safe DVS voltage, if the DVS
GPIO is not enabled.  Although previously bindings required providing
this safe DVS voltage, but since commit 04f9f068a619 ("regulator:
s5m8767: Modify parsing method of the voltage table of buck2/3/4") this
was ignored.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-arndale.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index a771542e28b8..3583095fbb2a 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -240,9 +240,6 @@ pmic@66 {
 		vinl8-supply = <&buck8_reg>;
 		vinl9-supply = <&buck8_reg>;
 
-		s5m8767,pmic-buck2-dvs-voltage = <1300000>;
-		s5m8767,pmic-buck3-dvs-voltage = <1100000>;
-		s5m8767,pmic-buck4-dvs-voltage = <1200000>;
 		s5m8767,pmic-buck-dvs-gpios = <&gpd1 0 GPIO_ACTIVE_HIGH>,
 					      <&gpd1 1 GPIO_ACTIVE_HIGH>,
 					      <&gpd1 2 GPIO_ACTIVE_HIGH>;
-- 
2.30.2

