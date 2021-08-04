Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0E33DFAA9
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 06:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231837AbhHDEkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 00:40:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231767AbhHDEkv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 00:40:51 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44142C06179A
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 21:40:38 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d1so1693248pll.1
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 21:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=C6y5SxeHxcQPbiYJNEuZUOdXAMN0f3Xc8xH9Ygbn/hNDSn14ghCz0sGQpITHos0BQa
         JrE3C1CglA2pwcaHfx7/EB6VvB87KaT0YahU+WcFsOJAhonOJmDG0QEomSkc79ULEe47
         N4E2PLpRaZTHaXuiPsG2pcdkhjy2EjYudYnaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9jhmmW00U1t6nu8Et2gPe9VWIRq7R6Jr8Ar5v9ZMFtg=;
        b=fZOfa9lRXkyYw8n/c2c+o9fKLLIQ7zfbpmcO8mIDCc5Ks+rQfcMpIPFcDILFnc0LHU
         IZCPxv1h5pUfO5vftkVZijT7J5aZNuHO/PV9jL4p/5zglQ2umedBpFX4wDLunePYfzdW
         UEKtcoHYkZ4cKi3KL/sjxTcA1LJV3ITEPaggaXHNETIv9E8xFVM4MiBLt21ZlQSmBsXX
         laQQKDsfDW/UEkrkiXgIxi+OtX1kJJZqhP0rzK3OSf7byEbj8wni5wDqaaXm1X7+iuZA
         hceQbx2oh8Ni1R4O5v54O5dFfr95j4+5JuBIggl6IIH22aDxzFasAhLUQH0zGsx0nMKZ
         x/1w==
X-Gm-Message-State: AOAM532p1wHQPMruELk+eOpKdFltOHaUJds2W+0x5jEkDvrqtTI5sXAK
        oJF/WjLvb+khGb4+PxaDXG4k6RagxzsdHQ==
X-Google-Smtp-Source: ABdhPJwRCZNNwOft/vBDSjHy8F7s60+dQbATz9EE8dK0AkmsFjq5q4WBV9dh1tP917W4u9TI2KWUaA==
X-Received: by 2002:a05:6a00:a18:b029:382:e172:653e with SMTP id p24-20020a056a000a18b0290382e172653emr25615508pfh.19.1628052037658;
        Tue, 03 Aug 2021 21:40:37 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6fea:f7c3:8233:dc51])
        by smtp.gmail.com with ESMTPSA id t9sm1075355pgc.81.2021.08.03.21.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 21:40:37 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] arm: dts: mt8135: Move pinfunc to include/dt-bindings/pinctrl
Date:   Wed,  4 Aug 2021 12:40:31 +0800
Message-Id: <20210804044033.3047296-1-hsinyi@chromium.org>
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

