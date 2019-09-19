Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED0B6B729C
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388129AbfISF25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:28:57 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:42544 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388127AbfISF24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:28:56 -0400
Received: by mail-pl1-f194.google.com with SMTP id e5so1045284pls.9
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
        b=RRpsPIuiBJnuKBdUY6V0x4+hBkYZMrgBDYGWMfKllUbD982ZH9yAwmJU5e8dPh+Uo3
         po9p2/lHZvJZjkCmrAoFuvCK/1Z8l6yT4w1I5aU55mAdNZEmZ0SFxubbu6dx/X/R23Kq
         WROHdjAFrQuwa3ZShhcbJUburskKc0V/JS6q4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HFlAwaqhm8dlhIw/iDdHiwYstLYBPJtkXdnpZsgY5Eo=;
        b=ZW1grLIVJSjkxZIZjP5PGxLUOyylHg9I5hlKE0KKIrWNBQs4UydBQYACi7/jmnlK8b
         LdJ6W93+lh8dyoYIvI9Z6q98uUt9YeAMn0macrd5UO6lTz3LQO1MX3lhISqqOq9ZpAB8
         zD/qgLjIriaKdNXN8ThwDflSfwzxP/1iUKkrM4mvKLuXJXikv087jRaHWRKiuIVPBfkK
         IC5gbBkXnPQKF9qWeajLVnJ9WQe1sk3MRkVYo87V8UfIQ6p3nDo2qxK3OvPvaSBud0RW
         ALn3lMZNZQrxZyRzwt5UbPr7VUMEuy5gmtv5Ws2ivvgzM32vF0Ts/Ml6G365a/d+RBSc
         tkwA==
X-Gm-Message-State: APjAAAWdBhK7odJob5tjh+xeUmfN9aG+65qKP53/bMygAqPwZNPA6Y9n
        awfYcVrXob00ZThmzyjL2MyvPA==
X-Google-Smtp-Source: APXvYqxbOgq1HDVr1LGevm/V0Fyf1WFz9mP7w7bIeVUZhpKQfytlplyhSQTNZCS1BhH/JexW+9Zemw==
X-Received: by 2002:a17:902:9896:: with SMTP id s22mr7836198plp.207.1568870935949;
        Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:28:55 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: Use libretech model, compatible for ROC-PC
Date:   Thu, 19 Sep 2019 10:58:19 +0530
Message-Id: <20190919052822.10403-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So,
- append the compatible to "libretech,roc-rk3399-pc" and
- update the model to "Libre Computer Board ROC-RK3399-PC"
  like other libretech computer boards does.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index c53f3d571620..e09bcbdd92f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -9,8 +9,8 @@
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Firefly ROC-RK3399-PC Board";
-	compatible = "firefly,roc-rk3399-pc", "rockchip,rk3399";
+	model = "Libre Computer Board ROC-RK3399-PC";
+	compatible = "libretech,roc-rk3399-pc", "firefly,roc-rk3399-pc", "rockchip,rk3399";
 
 	chosen {
 		stdout-path = "serial2:1500000n8";
-- 
2.18.0.321.gffc6fa0e3

