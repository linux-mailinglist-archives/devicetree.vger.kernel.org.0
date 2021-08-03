Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AED03DE60D
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 07:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233740AbhHCFNt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 01:13:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233769AbhHCFNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 01:13:45 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE7DAC061798
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 22:13:33 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id e5so22278685pld.6
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 22:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A/eExhXdIB0K8jv2+SmtKO1+FtOUyPYgVYzl6RJq3V8=;
        b=UTBe3IQVAlVhEdWXsxUvzz2ICfA2z/fzXCB4Q5r+4bdnmj6mJoVLFsQE2GZqliTgUA
         6raQ3ESffrnA6PFRdfN9nUwhzoiQlNbnvPQiGYKlHIzsoIpQEPi75Jq8wDIYDUI9+cBk
         ZSD5pN7WfoHn2au99FIOdL6aoYbAxI8arJ3dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A/eExhXdIB0K8jv2+SmtKO1+FtOUyPYgVYzl6RJq3V8=;
        b=aABv1L5AvdbJkEaBY6W9oF1bYj0DmCcVI6GY9EMOrcDkK5Wfnt1KA4QrBFDWVo81Gx
         V0cH7BEcn4/p5Rx396EVzRVwWSxjrzF+xDYIbBiOfe140ISbvjaxGh1eUrA4qycIoS7T
         +pEqgcA3ONU3BVnW60PUuVpocl/lka9PNvmG16RerWC3urlTBB8vZM0ym/fS4PZUogaC
         6RAnvlH4KF8u9BLGpNbiJJpeRb1219xVts7iLNMUSbLCvSCO0g+ue6UPCImkdEt5ggzS
         XZ59rvDCJHRRNbUFvGzT2F5Q7dGC85dR7N83cQXCIIjUxYpbrFffD+8s9pXKMO8hSOh0
         lJ+A==
X-Gm-Message-State: AOAM531RLaDfuay9XDlDIV+NGQvNIqKInfIx7OWfes27e2Rz/2Zvy1x5
        XCVayNY5PZfFbkJnNibhTdnL9g==
X-Google-Smtp-Source: ABdhPJzQt8TWRZsHH1uJM4CJVQw+lKk4RiXB/VDw+tt52D8vL7+IRXvqOexSWAwzK6UWFlXEaBzIUg==
X-Received: by 2002:a63:4e51:: with SMTP id o17mr949944pgl.126.1627967613386;
        Mon, 02 Aug 2021 22:13:33 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:c800:1b1d:5677:31a7])
        by smtp.gmail.com with ESMTPSA id x25sm115732pfq.28.2021.08.02.22.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 22:13:33 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] arm: dts: mt8183: Move pinfunc to include/dt-bindings/pinctrl
Date:   Tue,  3 Aug 2021 13:13:17 +0800
Message-Id: <20210803051318.2570994-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
In-Reply-To: <20210803051318.2570994-1-hsinyi@chromium.org>
References: <20210803051318.2570994-1-hsinyi@chromium.org>
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
2.32.0.554.ge1b32706d8-goog

