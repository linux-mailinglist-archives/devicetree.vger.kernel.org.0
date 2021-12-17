Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DBFC478249
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 02:46:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231963AbhLQBqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 20:46:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231975AbhLQBqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 20:46:23 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A9EC061756
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 17:46:21 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id b22so1454055lfb.9
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 17:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cxvNEtCPBXzjljfYxRKeW/Fan3oOoMNu2DZyjmhfjvA=;
        b=J2cmMX9yPq/Ya7mojZVUDevjq9DPnp9gmygKFrXo4+8Lbp6Y30nK3Os3dMx3BjYL4W
         ZUO5ZZURskVs7Oe6xseXFUyy3+Z3Ow4Lx06Z0guEYJUPZIz2Fjx+XoVgfQAT4mUs+8QR
         ppb0M7NixWLO3PffJ4j2H+ACbL5w7xEMO1yDIXyPm6WkDUk/gTNkcBbACPBjevtsf/7r
         rksTvt/RSOxmwSE8NaVdGllK28XKotYt99OfphVMts39W/m+DnSEj8KiDVgYZhJnAx4w
         kp4OJtae2qPnRaAtJs7VvTIoi/Rs/wiXNSTV6JWl/vpaVynTKV8BrLGGuZSXIJtleaxD
         WaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cxvNEtCPBXzjljfYxRKeW/Fan3oOoMNu2DZyjmhfjvA=;
        b=vrMgrtwGbnnxvn3hghp1QpW6xrLO/TKoWr3Rgm1mPH+tDfcN2or0W3q5fnIVLm2EIb
         J5uB8rCJu/fOHsO8gvSjZZfl/BPOyv7ZVdu8pZNMmzREZm64dI8JKCXZtwuogXOaNJzn
         XM3VaCeiEXUnt0CO9y4RmTTaXQFlrER99HkhU2efM+rr8MfEW8Tf+Ffw6v+0tm+idRRD
         Kp7alc7VpMtIAHrALBW17Jk5OTsWmaG5wk7BrfWrVH+9T7urlrqXJscHqxLjOEAQTT7V
         D54axJahIBFo3Zf+QbB7OARW/QdJw2P45dCyJEwKL1gjSAL3GkM03M2aZEEpw/uGgV2f
         7dNA==
X-Gm-Message-State: AOAM531ZFDPZLkYzFTq7QAe1zWMVVbZdVkfdnUchP7Q7xcv9MY1tl5UZ
        aE3LaBlQ20omxbLuLpWgXRqZ3Q==
X-Google-Smtp-Source: ABdhPJzAwjbT//kCiYNb9F5m6aaC2cNrCdyFupPxliFHi8QSIQiEBD1odDhPdbAaJERTspo4oW9jSA==
X-Received: by 2002:a05:6512:3b11:: with SMTP id f17mr845275lfv.374.1639705579331;
        Thu, 16 Dec 2021 17:46:19 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id r10sm1431021ljg.116.2021.12.16.17.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 17:46:18 -0800 (PST)
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
Subject: [PATCH v3 3/7] dt-bindings: Add vendor prefix for WinLink
Date:   Fri, 17 Dec 2021 03:46:09 +0200
Message-Id: <20211217014613.15203-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217014613.15203-1-semen.protsenko@linaro.org>
References: <20211217014613.15203-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

WinLink Co., Ltd is a hardware design and manufacturing company based in
South Korea. Official web-site: [1].

[1] http://win-link.net/

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - (none)

Changes in v2:
  - Added Ack tag by Rob Herring

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 4698213611db..25f94c723cbc 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1328,6 +1328,8 @@ patternProperties:
     description: Wiligear, Ltd.
   "^winbond,.*":
     description: Winbond Electronics corp.
+  "^winlink,.*":
+    description: WinLink Co., Ltd
   "^winstar,.*":
     description: Winstar Display Corp.
   "^wits,.*":
-- 
2.30.2

