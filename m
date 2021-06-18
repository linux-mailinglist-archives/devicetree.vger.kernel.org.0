Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2232E3AD3F6
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 22:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234298AbhFRU5z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 16:57:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234277AbhFRU5x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 16:57:53 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D1EC06175F
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:43 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id c84so6358349wme.5
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nu7i7hLOMrckKPqlCt5sNsYJcGzmceqdUWEuYkCyCyg=;
        b=HVFgLbvqQNXI6qA1sE6VpDEA4GddUHSB6CrLP4qKefQQSXz7W0Ds60omAmp8dIYzWd
         RtyqIEQ2vGMs49bTn+D+djIxm1wpBVX8S1g3HxRCh4Q4y0Fo/4+mS13GxyqbjGdNV45k
         ZDr80L0ZCnDnnGgMclEu8CzEQPo00f/Lgpn/tYLCML8HoMtdqlD+rQsWjGjTj3stoIga
         +TlDXRJhI79hfWcmRVS41GOl0fnRkmCijWNQatXqHszA8Cu8elI2MiwVGlX1xk7uiTaU
         BzANaHT9jvyKszDwr7pPGlKqdtGezM5AJg99C/Hft/5I/NkF1o2vs3+T3k67Ijh8w6nW
         X4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nu7i7hLOMrckKPqlCt5sNsYJcGzmceqdUWEuYkCyCyg=;
        b=bbi68H+Wtc5fz4vMgfFz2a1iZiwZnuhwKdlbWbe8LO61Gg73xftfTixuMKCdsNStU3
         Z7Qk/w/TZxyjevMe3UZPpACOutGA0MiQe7i3kGfGv94/Sx5zKB5Ia3xwb4n5rBOIRze6
         noPw/UMWUlL+HKBvVtSCiL1k3uC7DvW+176ScmMbNdzG2kbZZLESMjYhUB1KWG90I72q
         b0v+S88bDVMOD4kn8reYXCw3M6VLHVPvROnj7/UiZ/iKRO9/0HRO5JcBb4l+pwjVeJ/a
         bhfXgl78u7tpkdZYaWcst4nNObHeK1N3I6bwX+XGkniVQO97ETJOQazDXioJPhus2E3C
         KngA==
X-Gm-Message-State: AOAM532nSYU8/ETS+IOGFDYAz5pu+csVUGbY6mTLNjaJ52tFvEvz+slI
        Vm2kNvmQH2jCBCIEzbX9//tfBg==
X-Google-Smtp-Source: ABdhPJyUSyW4TuFB1EWQs4HKnLWcAB4ImpT6brXRKzrXolm5W20JLasuhMVSS3TqF2YW4sXrOe3zeQ==
X-Received: by 2002:a05:600c:282:: with SMTP id 2mr13775691wmk.98.1624049742338;
        Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j12sm9745476wrt.69.2021.06.18.13.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 2/5] dt-bindings: add vendor prefix for edimax
Date:   Fri, 18 Jun 2021 20:55:30 +0000
Message-Id: <20210618205533.1527384-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618205533.1527384-1-clabbe@baylibre.com>
References: <20210618205533.1527384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for EDIMAX Technology Co., Ltd (https://www.edimax.com/)

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ed1769310f0d..800d0536be75 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -333,6 +333,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edimax,.*":
+    description: EDIMAX Technology Co., Ltd
   "^edt,.*":
     description: Emerging Display Technologies
   "^eeti,.*":
-- 
2.31.1

