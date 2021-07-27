Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BBAC3D73F7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 13:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236417AbhG0LCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 07:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236462AbhG0LCq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 07:02:46 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD1DC0613C1
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:02:46 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so4369321pjd.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p6xuRUHpcGQs5eq1jKvwySsSmC2GFWn67Q0w7eS6EPs=;
        b=cUb/2cDKn+kDycoRMgKRvfqgevtzh0aEeaAL28/IMmmBDtC7mEGslXSomHPZYTBaOY
         0MXBfR2wdJwdmuTBemay8bHU93O2YAkK+H70C05rg0XZ7nF1u+wNVxo5j0/V6xa/ba8Z
         OK2t0fjdO1FbSrwSeI6/1uIt1XEUJ2V4EVB4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p6xuRUHpcGQs5eq1jKvwySsSmC2GFWn67Q0w7eS6EPs=;
        b=kmg+NZBbA1ZWkfk0ZwvUm7+VFr+5paOUSY8RlDMABUG06qaQIUvbY5nkqHZ5L/v+dP
         jjXdsDpv3XPAz6hi6hcQV0IUAU0Ha1t2GBpCqsxEysYTYu27aF2CCfYM0sUM9W8pWHjO
         JQbHLuco+hRmiEyRZbdByqFw/4qGS1/mu40hL4XVNz69R7fj68jJcA1XAC4eVlsbrrqt
         lCJ12qwqYoxfADNu2jWKcIJQFuElkKm8xLdFzx8ekAkoKGz643ZUw4iLbJioLPxRa4bB
         wPC9ZZGbFHe6DopxuQxpF8AHMtZWUzmi1+bFcksoLnhqZuxAaljXVlVpyFH6ZPxIkii+
         U2+Q==
X-Gm-Message-State: AOAM532sjbNrlrQ9UjWNeSy/wKlXz2gYtR96qBeat0dJRglvOUiePEJP
        Y1d15fS9nhiRLF8Op6u0RSnXjE3Goy9wRQ==
X-Google-Smtp-Source: ABdhPJykNwzx0rI8jjHQMeuyocw1gausM1uqd+GK6kNDets4ZJ7ARYHkxlBe8eY/0WNr0Q2ipWdfJA==
X-Received: by 2002:a65:6555:: with SMTP id a21mr23204572pgw.53.1627383766137;
        Tue, 27 Jul 2021 04:02:46 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5176:76cc:2193:9b8f])
        by smtp.gmail.com with ESMTPSA id 33sm3553683pgs.59.2021.07.27.04.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 04:02:45 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] arm: dts: mt8183: Move pinfunc to include/dt-bindings/pinctrl
Date:   Tue, 27 Jul 2021 19:02:31 +0800
Message-Id: <20210727110232.2503763-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
In-Reply-To: <20210727110232.2503763-1-hsinyi@chromium.org>
References: <20210727110232.2503763-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move mt8183-pinfunc.h into include/dt-bindings/pinctrl so that we can
include it in yaml examples.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi                        | 2 +-
 .../mediatek => include/dt-bindings/pinctrl}/mt8183-pinfunc.h   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename {arch/arm64/boot/dts/mediatek => include/dt-bindings/pinctrl}/mt8183-pinfunc.h (100%)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index f90df6439c088..1933045da95de 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -14,7 +14,7 @@
 #include <dt-bindings/reset-controller/mt8183-resets.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/thermal/thermal.h>
-#include "mt8183-pinfunc.h"
+#include <dt-bindings/pinctrl/mt8183-pinfunc.h>
 
 / {
 	compatible = "mediatek,mt8183";
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pinfunc.h b/include/dt-bindings/pinctrl/mt8183-pinfunc.h
similarity index 100%
rename from arch/arm64/boot/dts/mediatek/mt8183-pinfunc.h
rename to include/dt-bindings/pinctrl/mt8183-pinfunc.h
-- 
2.32.0.432.gabb21c7263-goog

