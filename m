Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC543765DB
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 15:14:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237156AbhEGNPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 09:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237135AbhEGNPS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 09:15:18 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BF4C06138B
        for <devicetree@vger.kernel.org>; Fri,  7 May 2021 06:14:17 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id h127so7568781pfe.9
        for <devicetree@vger.kernel.org>; Fri, 07 May 2021 06:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z5uRcm+z5t4aeBxWsSjq74fZr3pDWXQjhRR69I0+uIA=;
        b=H3z2qCoLD7IfYuyroPiDy5fAoe2wbDqn1Vnl1mTG/23sUSa0pIb0dBthqVqkDnwxv5
         +gkIBUv8mIFN5pvK/ryk7yl35ZYzq+8nnwQcXY1Bpe0XvVy4vkIQdRhY7J5N1+YssF8D
         5HxJZYjzDawin42Sq91HpOpWvSq7lxCu0Nmcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z5uRcm+z5t4aeBxWsSjq74fZr3pDWXQjhRR69I0+uIA=;
        b=XwdXOZCZRnRFw4HuM8dsRYDGXhUmEdGQQi5aNWd2tsyVI6vXAW0nEHulcgahQGeYml
         JuN1uhHiJ1yZOibdXo+ED+UYdwENwAxy17WoJR7pQkpBU6Va4pb/D0R16tM+JBk1Un7Q
         EBcYA3j8nuHFZYH2skY7N5KynhlhwdcOZDW/mGwtuRhiOb/67T8AQmo6UZkFMgbYfISe
         b0GYObosmuah9q9D3zQh1qY8dGVm+An+nT0NoC7pHKgvoHzLVIkHywLYCflEV/5B4I7m
         JEer2qLinToYeVdWlR0dPqwrjsLhOw+UOq8LICxdDnSa+o3P2OKHB/tRhamWVChYWvNC
         e6Jg==
X-Gm-Message-State: AOAM531atDGf24Rzpi4R9AM29nNO+kK+SjlbjY1gkHR4eKM3WEW9/52x
        uDdzZlUva+YdCFoLm8kv2BTt3A==
X-Google-Smtp-Source: ABdhPJwXgl15gc0vRklpyyJcdK2f9/dPf52EGEjnqBHI+xiQ73HrxYgQkGwIjLYder7XGpt9XbxDYQ==
X-Received: by 2002:a62:3106:0:b029:25c:cd66:3be1 with SMTP id x6-20020a6231060000b029025ccd663be1mr10438925pfx.29.1620393257211;
        Fri, 07 May 2021 06:14:17 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:711f:8553:a124:a19])
        by smtp.gmail.com with ESMTPSA id z29sm4656539pga.52.2021.05.07.06.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 06:14:16 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v21 2/5] dt-binding: i2c: mt65xx: add vbus-supply property
Date:   Fri,  7 May 2021 21:14:03 +0800
Message-Id: <20210507131406.2224177-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210507131406.2224177-1-hsinyi@chromium.org>
References: <20210507131406.2224177-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vbus-supply property for mt65xx. The regulator can be passed into
core and turned off during suspend/sleep to reduce power consumption.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
index 7f0194fdd0cc..2c45647e9f0b 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.txt
@@ -32,6 +32,7 @@ Optional properties:
   - mediatek,have-pmic: platform can control i2c form special pmic side.
     Only mt6589 and mt8135 support this feature.
   - mediatek,use-push-pull: IO config use push-pull mode.
+  - vbus-supply: phandle to the regulator that provides power to SCL/SDA.
 
 Example:
 
-- 
2.31.1.607.g51e8a6a459-goog

