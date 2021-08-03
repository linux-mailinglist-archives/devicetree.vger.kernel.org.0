Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C60283DE609
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 07:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhHCFNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 01:13:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbhHCFNl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 01:13:41 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B761C061764
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 22:13:31 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id e5so22278555pld.6
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 22:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=RoS1gW+/fNn3RB/dhB7nzScfvJQQsbjLIhYDsYTl4X0jCg/h6AdY/6PJ2cal4rof+Q
         97up+1FPQ2T64Co6AQXQiG1sD2aLoBpYSklNlcXon3aybN5XRHDKLLLG/mVlgPkBLdmy
         9OU0BiUeS5WVY1Zr85FSYBPV0B/PsMOTUCUFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=qzs2S0Alp37jKk56uoycqfQvUnAJIvLUOs5qXyt7Nv4NVEcUim08K2EV0lwxK5n9Gy
         BvbXjPc2EQ5bo1wOCptVtU5d7/NoWHdXXldYFyBnhOGKPaQkmUcTYiLhizBQg1T6U074
         AmIWWUovwYbXGSf5qwnUOaZi1VyMJe5G/EX3eEiCJZqJDyk6Q0kBdeuB2hA61Xk0+EBY
         S9dKkAIfOE3gJTu27XEoQvLYJ2kuWPwRU1edRmVHzNqoYiECuO8qzTGGXinWnqN6spTe
         Vg/V08lJqeWxOwMEU7QBRYPF6XLcBAx9Y31JcOmvS/ijWIt2nNeyFvNEjo6CHiov4gez
         DLhw==
X-Gm-Message-State: AOAM533PgGTqoMUJB9kLi4epagEui+d7XTjOylyrIkxjbMIgig35hxDl
        1LcW/ufbZg4/JIu6hwYEFKrYuA==
X-Google-Smtp-Source: ABdhPJwXpzsjl4OXSLsWVSfF8lTblrp6AM92riWciamL69PeJ7AqgmVERsB7T488R7e4C4w22/Mp9A==
X-Received: by 2002:a17:90b:1d8c:: with SMTP id pf12mr2499451pjb.130.1627967610468;
        Mon, 02 Aug 2021 22:13:30 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:c800:1b1d:5677:31a7])
        by smtp.gmail.com with ESMTPSA id x25sm115732pfq.28.2021.08.02.22.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 22:13:30 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] arm: dts: mt8135: Move pinfunc to include/dt-bindings/pinctrl
Date:   Tue,  3 Aug 2021 13:13:16 +0800
Message-Id: <20210803051318.2570994-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move mt8135-pinfunc.h into include/dt-bindings/pinctrl so that we can
include it in yaml examples.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm/boot/dts/mt8135.dtsi                                   | 2 +-
 .../boot/dts => include/dt-bindings/pinctrl}/mt8135-pinfunc.h   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename {arch/arm/boot/dts => include/dt-bindings/pinctrl}/mt8135-pinfunc.h (100%)

diff --git a/arch/arm/boot/dts/mt8135.dtsi b/arch/arm/boot/dts/mt8135.dtsi
index 0e4e835026db0..a031b36363187 100644
--- a/arch/arm/boot/dts/mt8135.dtsi
+++ b/arch/arm/boot/dts/mt8135.dtsi
@@ -9,7 +9,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/mt8135-resets.h>
-#include "mt8135-pinfunc.h"
+#include <dt-bindings/pinctrl/mt8135-pinfunc.h>
 
 / {
 	#address-cells = <2>;
diff --git a/arch/arm/boot/dts/mt8135-pinfunc.h b/include/dt-bindings/pinctrl/mt8135-pinfunc.h
similarity index 100%
rename from arch/arm/boot/dts/mt8135-pinfunc.h
rename to include/dt-bindings/pinctrl/mt8135-pinfunc.h
-- 
2.32.0.554.ge1b32706d8-goog

