Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5728D42CAE3
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 22:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbhJMUXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 16:23:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbhJMUXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 16:23:19 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3740AC061749
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 13:21:15 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id n8so16949591lfk.6
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 13:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c+pdIjVhlHP+7rLIgR547hoyyJNbKcaM94b/z/uUGNg=;
        b=mUKylLN0rmroc7iuJFfT8v5mKbMKa0vrIVpPwGOZfgE1DA5AMzomYi78UPeXsPtFlD
         JNmzE1mQotpBQy9iA10PpWwn1B7kv04/5mOA43jMANaCCgWI2ZuieVoI6gso6nfd0PYE
         8FfZYOuYw/T+0+uKeE6kvE/Y4it4+nVMKq7hc8VaPRV+zIoId9jA3NON4aA2feMlpS6h
         zj91YsD+GIL1zz4nVj6QuX+/RLU1hFEPmFV6VHaT11D2Eh10t/gX3aibbEZWSt0EBw1x
         owgKRxIRZzFSA1YLAjThZ/k+ExiOVwVz5pecaasIC5Ws+ICpIk/EZWujeHmnn/cl42I8
         t4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c+pdIjVhlHP+7rLIgR547hoyyJNbKcaM94b/z/uUGNg=;
        b=Ay36N7mMVvWBJp5k4cuM7TYNINUWgNWxKXK6OvYtwXD7M2cWAihhbYiZmOavjfqEcC
         b/oYW4wCI2HT5UqOeSw0iGsP81ZDTlUwV1QpLdAsNGhRVC+eIF3ytqosjNZZ4odr+jHR
         7Q8nIfvykqu5PoJi5uTNx9UXXEJEH9rk5LrmdZhbN7FZn02FkX0gFlsgqTY/Ixp1dW8k
         1RYrZ6yTMkvET2nTVjvjR90Z+mz8y9pYBgPah7cMxbUWyoTUCiSudctjR6+FPtYP+ItM
         OAq+HP/YQYCb12t+PSP+PAPvsZI1lUOoo3J8uR156ayY6n0Cr9Rqmb50diFOLPB/eAXN
         uY6A==
X-Gm-Message-State: AOAM530Q0WBPwHNLHg3LbTxzSC4GqN6iGueEve0lYMwgk3JMuvquSGZZ
        yOR5OGMpauu3wWW+H5D2AmJ1vA==
X-Google-Smtp-Source: ABdhPJxPwBPXAbXW7RzLbkgwhZFxOovy0H0wBCrL/A7/65cB6zORLS1yJXZVdUrexPiIl7I/lxKVoA==
X-Received: by 2002:a05:6512:3048:: with SMTP id b8mr1041308lfb.517.1634156473544;
        Wed, 13 Oct 2021 13:21:13 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id bd19sm53567ljb.28.2021.10.13.13.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 13:21:13 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: samsung: exynos-chipid: Document Exynos850 compatible
Date:   Wed, 13 Oct 2021 23:21:09 +0300
Message-Id: <20211013202110.31701-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013202110.31701-1-semen.protsenko@linaro.org>
References: <20211013202110.31701-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for Exynos850 chip-id. While at it, use enum
instead of items/const, to reduce further cluttering of "compatible"
list.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../devicetree/bindings/arm/samsung/exynos-chipid.yaml       | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index f99c0c6df21b..bfc352a2fdd6 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -11,8 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    items:
-      - const: samsung,exynos4210-chipid
+    enum:
+      - samsung,exynos4210-chipid
+      - samsung,exynos850-chipid
 
   reg:
     maxItems: 1
-- 
2.30.2

