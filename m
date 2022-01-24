Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFCF2497A42
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 09:24:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242222AbiAXIYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 03:24:10 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:42938
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242183AbiAXIYC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 03:24:02 -0500
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 422AE3FFE9
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 08:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643012638;
        bh=6MJYb8WcqWhjeyozgAW+GAp1i5m+HDM/agR5Nt4YXgk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=mmjmnK13bRSdTiAGO0O8qiGw27BWceV2GD5hkBJ3VFLfboTGPD1MA2emIZjs6Yfof
         mMROc6vlzi4Ncpos2XhK+pI3YNZNKZPVqI8lLceIMPysvD/HCB8+PaVIFaBqA1RUHs
         Hl55hElJwylkrQvaVcJreEer2Ysscrfqo1dpVqpL7GeKxGaY/wUNLMf4QGXXYpYex7
         xM9qFMY7DItjPTIgauHmdyNW4z6h+am5v/aqKtRoFiae/2qOkuE4UXxASEFJyjbR02
         8PFhD9G231HfcAoPg57uD5xVgodHWRiorKgJqXOzIPKZj8h+e6nZpGo5YwJsIshGED
         E58dbU3TrIEVA==
Received: by mail-wr1-f71.google.com with SMTP id h12-20020adfa4cc000000b001d474912698so1528562wrb.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 00:23:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6MJYb8WcqWhjeyozgAW+GAp1i5m+HDM/agR5Nt4YXgk=;
        b=tPaiE2iA2DUCkr5gnbyF8bMXnPclYWCrRNwyx4bxJn+nBj8PvfluJY4jih9uVgpzub
         IPahRBoX2oFUmLFJHPiYsjT+HCufBcVvKFouHyFsZhC87sJ/cyQXQ/+vJXFVkJpqFEOp
         9is3vRd032bafISUv2EVzz1J0y96kPdHIRicTf7cGRYUkhDfnIRnf4wepI0m1Ev0stDk
         AIlM35LUGmbd2c3EY1KUHG23tIysoFg9I6fdiZFCqyWOryCrG7duYXUAUKrdDscB35J7
         NDPbI3zW85185phs1dfdX90xa2rUMvj8EfiiwlTNAxmcfH0metHyVLM2H43BJbg5GgvD
         ntxw==
X-Gm-Message-State: AOAM533aZHJIFSpL1sEpErvQrrOPrz7aqxFE4qeC5Wk8ei34/arNz5MH
        3omvoj0hTDoD1nH4CL0wsOyWI/yq9ygmKSDkn0ESSwZ2CCvdJyYwsAPZB5jPRLo/VdFM6tJjQ2u
        zVL99FI/RFVSDbFPy4D2E/Z2H1xYj27hUc7rKHmI=
X-Received: by 2002:a05:6000:1543:: with SMTP id 3mr13030936wry.98.1643012636546;
        Mon, 24 Jan 2022 00:23:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxGKdmyKgG7q+F9YXGqPhXojRHXYyPuTj4cdnyu4gQtA6b0oE0q4HED2u/bDAahosOh4nheLQ==
X-Received: by 2002:a05:6000:1543:: with SMTP id 3mr13030924wry.98.1643012636413;
        Mon, 24 Jan 2022 00:23:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m64sm7148550wmm.31.2022.01.24.00.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 00:23:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Subject: [PATCH v6 3/4] mfd: dt-bindings: google,cros-ec: fix indentation in example
Date:   Mon, 24 Jan 2022 09:23:46 +0100
Message-Id: <20220124082347.32747-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124082347.32747-1-krzysztof.kozlowski@canonical.com>
References: <20220124082347.32747-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct level of indentation in the example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 525ab18005b3..4caadf73fc4a 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -203,7 +203,7 @@ examples:
             spi-max-frequency = <5000000>;
 
             proximity {
-                    compatible = "google,cros-ec-mkbp-proximity";
+                compatible = "google,cros-ec-mkbp-proximity";
             };
 
             cbas {
-- 
2.32.0

