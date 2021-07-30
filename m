Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DF983DB85A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:09:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238739AbhG3MJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238775AbhG3MJx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:09:53 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83623C061796
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:09:48 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id c16so10818564plh.7
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A/eExhXdIB0K8jv2+SmtKO1+FtOUyPYgVYzl6RJq3V8=;
        b=QRJz5lVdjRsvWISh2iV2BSbzouh75mPkyhUJhTIBAgiabqTwhFKu2CNTn5uW1GSAbF
         PIdyIdyddC137sV65D8pSc7pAtBLyB0FehzbL5Iq9nXGn6QEJZPbdQPD53BKfiv38HcX
         GfB0hSiNCUrRywKrRFHSFvA72qqnDuemCUmy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A/eExhXdIB0K8jv2+SmtKO1+FtOUyPYgVYzl6RJq3V8=;
        b=Rg1Hb7TLd9LBn00u3r+XOOGIy+Cpm3Ama+6Xy1CO4KY5HQSG4WCvvAAvelNmcHMWxW
         5+LqgDNNgFjiSFlz1kP2zUkKZEvBcccW7AXunDSBG8GD7X13/AViSr9sK/5kWqkr5+k5
         rkBNbnap3kyqZ2sWuihC6pKCGsfe/e9MnSqDbcmtfopTyMm8zoNuJkyVIJK98BJz/zxP
         XoKNkMLKEzHRyWVIdnGpqZ/nBnKUVpOn++b+NSPQM9coGYo6jBNvKI8DbvEFqMlbJVH/
         CBXBcJ3B1VHCCGDLhOeAZYsdjPKWkPq0OjEqxoLqmXq+RO7Yuc81qyCC+6Fs6vh4qDos
         p/Mw==
X-Gm-Message-State: AOAM530k1yqAObKAOCojgpD0KfxepSRsdJ8P4qUC1+CxX3ym0+IME2Lx
        3V+CeAIZa98aQbYlWiLPX2TGEw==
X-Google-Smtp-Source: ABdhPJwYYlJ/bHg3Ia2iSzowLObpVO3bMpgvCuXtEZnF/wZSyLvxIbXfeCaP4TVBTVk2ugT6ZnFGyg==
X-Received: by 2002:a05:6a00:124b:b029:358:fcd2:fa37 with SMTP id u11-20020a056a00124bb0290358fcd2fa37mr2597130pfi.35.1627646988084;
        Fri, 30 Jul 2021 05:09:48 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:c144:3a3e:e06f:59])
        by smtp.gmail.com with ESMTPSA id a9sm2182071pjs.32.2021.07.30.05.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 05:09:47 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm: dts: mt8183: Move pinfunc to include/dt-bindings/pinctrl
Date:   Fri, 30 Jul 2021 20:09:36 +0800
Message-Id: <20210730120937.1435204-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
In-Reply-To: <20210730120937.1435204-1-hsinyi@chromium.org>
References: <20210730120937.1435204-1-hsinyi@chromium.org>
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

