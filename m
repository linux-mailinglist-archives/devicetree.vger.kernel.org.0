Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 636E63DB856
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:09:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbhG3MJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238686AbhG3MJu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:09:50 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3941C0613CF
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:09:45 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so20506410pjb.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=VgT+e2A0IF77HhCmq2v6gbviN4IFKA14+DyHg8G0xXNc0t531MsdMsNgKTJhiUViYc
         ggx33OQt6gRHAzv/ahTT5A6vhoFV36OjYD4WTGda6NKOqY8jeXrwa6D+n3QeM+2d9vxi
         aKgXY76W0OMXpUKyeu4ztuhnxxFUYijR1+F6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=laOBuILjoOHcq3jWTt9dJKsXSG7Y2KmqPBWytbGwurEK640FGRMDs6fxOqxDCMMiuQ
         07QffSOq188KhB7ADndACFWCDIKq50LTEny6hPVg2cm3XLk6y19vei4/flaDuPBmCDH5
         mlptCTwlH872BpoCqqWuUPzRsx+fc0yZ+DafRr0j5S1cg2xtVRZ7aCWMuJy1CUwmzjH9
         L3ekhW+UZ3sNzYZqTE62ZcciQ0rkDl3t456VFo1ROw4TIGmfRM/G1LVY3KnIubx4u0sX
         lvsxrkRuTkme8Qv35aB2dERGnCsHg8EQkrnBUYnZk1k5hcBRHi1bHJKNgnIKf7WCCCir
         HUPg==
X-Gm-Message-State: AOAM533xkfqbxKiOHS92Z31LkHI1TgAgf8gsXi9N5CfowE+nrSNma4yc
        ah5F9GvK04jne4SZtkEcj0rqzg==
X-Google-Smtp-Source: ABdhPJyUiLCxqCC6f1d5CYwKUP8Qk7BYcm75N+d9XbtZsZfdM08Fxck+IkBKHdeny9OLqapp+4YTTQ==
X-Received: by 2002:a62:8f0b:0:b029:356:ba53:a041 with SMTP id n11-20020a628f0b0000b0290356ba53a041mr2443083pfd.10.1627646985133;
        Fri, 30 Jul 2021 05:09:45 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:c144:3a3e:e06f:59])
        by smtp.gmail.com with ESMTPSA id a9sm2182071pjs.32.2021.07.30.05.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 05:09:44 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] arm: dts: mt8135: Move pinfunc to include/dt-bindings/pinctrl
Date:   Fri, 30 Jul 2021 20:09:35 +0800
Message-Id: <20210730120937.1435204-1-hsinyi@chromium.org>
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

