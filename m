Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56A0E475CE6
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:10:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244558AbhLOQJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:09:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244434AbhLOQJR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 11:09:17 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09166C06175D
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:09:15 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id az34-20020a05600c602200b0033bf8662572so16330238wmb.0
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dz9umB5IGIToqYZftMBO3IU3Cs19TgfRkZ7uiNPvoRw=;
        b=Lckz/WAa0xszZdKca065FH4mciLh/lYpayGiAm3jCEqUBANW+FM5KouHbtkuh9xUZi
         wc2OyvBCIn6/4n3DOEjw1QgJPxDyngupSYwQKM4N+KuBUV5GTUoVZUdOQUlqJ/UeaY90
         aWQDdTZxYyWTfIVpsbJOBv81+jjlmae6J5VzEHaUYvFwpq+6OlE1wQNopYOmLbGN3wDk
         1oU8cvmfiDR8XLBOuyV6LFBavUi2Y8WARzAbj1AbfuBovQoQ+OSDkYxU/aUZ0DNqo4Qv
         og2PXuI5ykIrXEozOAfw06I3+RTM7P4k6q8zqtb6yi/1J3JcIpOTA5z9RC8whXF7Ge42
         lJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dz9umB5IGIToqYZftMBO3IU3Cs19TgfRkZ7uiNPvoRw=;
        b=n3FsFBgsXM0gNfOOdI9vH0IpbcOq6/L4/+LKJYUG8qKPW9Qf/3JI/RaxB82aAzbiOP
         guQ7aEeeoXgmRILvQxsLkyYwHbIs2uSV0JH0wgFTBG35WyxuN+ChBmjtM1FhBhjfo8k1
         zBSHMe07lk+vgIJ/m2kzvnz3AF/0J+XycrcLCzy0ubfBmjPFxf0yms1u2ifEofjUDVTb
         5zOFPYe7N64s/wWgtL1ianJdk0uCkbC9R43Gcr22TopWnTITGXbf7K+ZHg2irlgJNMsb
         CJf8inRdfWe34Spn6CaqT39hFZjqOuf4x9iHN3AcKwDZbESoH9tBXrJ0nfLLxDxW9VCK
         WSbQ==
X-Gm-Message-State: AOAM530lgeTWgaNphenYj7xoWlv5A9wqZH80qRdyChVAuMViyHr96ScU
        MQKOephFRawP0WhunjItJYuBaw==
X-Google-Smtp-Source: ABdhPJwyEiH0fomN/E3toR4LTUG8ouZsXe50NaVQvsh+mAJZehnftHhVnF2WZv6uA4D3FjmVmvUPZQ==
X-Received: by 2002:a05:600c:21cd:: with SMTP id x13mr547905wmj.52.1639584553539;
        Wed, 15 Dec 2021 08:09:13 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id j14sm1859285wrn.88.2021.12.15.08.09.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:09:13 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 4/7] dt-bindings: arm: samsung: Document E850-96 board binding
Date:   Wed, 15 Dec 2021 18:09:03 +0200
Message-Id: <20211215160906.17451-5-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211215160906.17451-1-semen.protsenko@linaro.org>
References: <20211215160906.17451-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for the WinLink E850-96 board, which is based on Samsung
Exynos850 SoC.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index ef6dc14be4b5..00f122197476 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -205,6 +205,12 @@ properties:
               - samsung,exynosautov9-sadk   # Samsung Exynos Auto v9 SADK
           - const: samsung,exynosautov9
 
+      - description: Exynos850 based boards
+        items:
+          - enum:
+              - winlink,e850-96                 # WinLink E850-96
+          - const: samsung,exynos850
+
 required:
   - compatible
 
-- 
2.30.2

