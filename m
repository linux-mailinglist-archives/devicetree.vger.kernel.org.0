Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA22482F82
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 10:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231262AbiACJhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 04:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbiACJhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 04:37:07 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C0EAC061761
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 01:37:07 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id i31so73774927lfv.10
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 01:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FmlVT1AXE+HDliZOHtHIhhai4JiN6uCj6mcj/yzjTPg=;
        b=E6RzK3ucTj2ytUJ4Y6nk2RAanvOP0kISYxcYHnHDWCbFDnHdQfg/GWMdqJm58CqxYC
         +7q4Yp1rYsjqQTjeVV+4s5yQ5kEBlZ+81FgrdCY+HjNOM4EE5A04SVK7M8Bht1GcYuUF
         cH2UVRiZyaJzUt8EITpR94pY58Fu++oDM7ELn/OCB62Rl9LYIlftwd1sME58wcZz4Dve
         IdR1FiQHwRVGYOGnyk3qJagHDdM6dgJkjJAGuLZDRzmJ7yw638PqZCE2JrC2+axdXQQt
         MhNDVQMZ14PNNdIViujYflfarqxLmML82EKDvdRTmXnSTKuwuMmYedNGbl0wBVQcn8E2
         ErPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FmlVT1AXE+HDliZOHtHIhhai4JiN6uCj6mcj/yzjTPg=;
        b=IWHpIr7nwsDV5bosloDAjO4SCk/4m2wX4wTMJxUNDVIgxcZdIqGKrNn9uGRjI71EYm
         IQAY2+xraALTJLaQlOFfow+ztuZ9D01z/oszCL+uPv8aTBJJ2h1AV+z2DYun2cv6l5SN
         Go34CyWgY9itipMCLJ+P6+vd+bHoZj4S0/pSfP+j4FIudmZ3yQpWL8asB12Xyt0rD7AT
         JrcXdgVIi0kvZUan+RFa1X6wjT20eHl6kX59TuESQmozxStiiC0uNjwAOLB3lG1n31Hy
         Gjz9E6nPUto5fipN8hhW6mh/Jch0Yko/1owCIY+CuzbmngMEbE2kQxi1QEyovXK7qYVu
         HvHw==
X-Gm-Message-State: AOAM530bL9cQsXsKYAhq5Chk/+QFUzEfBafSjP1jx/cAPekmTMpag6YD
        iBO9dCHZfFPNTmGopif9SZNENw==
X-Google-Smtp-Source: ABdhPJyEgP4i9Ls7K7RLynrtgF6870z5JNk0K/T+tA+D4lKutEws3hkJFpV+XDkjiVKlKyGJFgcXFQ==
X-Received: by 2002:a05:6512:a8e:: with SMTP id m14mr39502559lfu.423.1641202625215;
        Mon, 03 Jan 2022 01:37:05 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id h2sm2165437lji.50.2022.01.03.01.37.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jan 2022 01:37:04 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org
Subject: [PATCH] drm/panel: Extend ACX424AKP bindings to ACX424AKM
Date:   Mon,  3 Jan 2022 10:35:01 +0100
Message-Id: <20220103093501.637323-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The panel ACX424AKP seems to only be used in prototypes, whereas
real products use the 10 pixels shorter ACX424AKM. Extend the
ACX424AKP bindings to also cover the ACX424AKM. The ACX424AKM
was used in a few different mobile phones from Sony Mobile.

Cc: devicetree@vger.kernel.org
Cc: phone-devel@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/display/panel/sony,acx424akp.yaml        | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
index 78d060097052..059cc6dbcfca 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx424akp.yaml
@@ -4,7 +4,12 @@
 $id: http://devicetree.org/schemas/display/panel/sony,acx424akp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Sony ACX424AKP 4" 480x864 AMOLED panel
+title: Sony ACX424AKP/ACX424AKM 4" 480x864/480x854 AMOLED panel
+
+description: The Sony ACX424AKP and ACX424AKM are panels built around
+  the Novatek NT35560 display controller. The only difference is that
+  the AKM is configured to use 10 pixels less in the Y axis than the
+  AKP.
 
 maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
@@ -14,7 +19,9 @@ allOf:
 
 properties:
   compatible:
-    const: sony,acx424akp
+    enum:
+      - sony,acx424akp
+      - sony,acx424akm
   reg: true
   reset-gpios: true
   vddi-supply:
-- 
2.31.1

