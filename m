Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68CFC3E8FC2
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 13:49:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237483AbhHKLtK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 07:49:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237454AbhHKLtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 07:49:01 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5500FC0617A5
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:48:35 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id h9so3714198ejs.4
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dVbMUoW3ODB/HqrQj9QMsvg4UcjoOQphLtGJOfXQLG4=;
        b=tLqQ1Q4ZmDF0GWwO+C3F55BzoRVX2dKIyhgtgjHKKcJn/PcEISO/vhg4T66jllGPyg
         TjL2SEOYBd7o3vq+4AF3hONbsZpQByl/Rk2hxzZOAGtutCcFzU52yl9J+ILf6urD6uWk
         3t5Jn8isV1aAB6i+H0GzYszNThuxbsDspjFZ3A/anNv1LF1M3h/KRpVJ3Xveg4LiBPXt
         7WP3eNNpcEqwwR0rFHbuaOYmivA4J05/89x6Bko10CbWApIzxD0+KQdxxTtG6Gab2uAA
         OCrlQrN1jcMFhV/PJcP27Mks2CN71g1Hoy/V/qTiQq+3EGsfugqpRtw2o9PGX9/IjGTl
         zzCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dVbMUoW3ODB/HqrQj9QMsvg4UcjoOQphLtGJOfXQLG4=;
        b=fjU+Topc6/Osdq2oSlGvg6BfWxecxzs8SieC/+0XmU9Kf6uZ5qrvfOo/oymUsX97Ks
         JNve5eraU+Z712jFWLt9ej8L6x7F0/JZZmUZxz1MRIJ8zTeULmNFU0RBluev9BPrVpV3
         y3R6grV/tG/jlkBJX6c6kaFN4TdOKiqdGQKIfFj8bMMIDziPeauJTezmS3pJaK7PlI0l
         BQZ1+nk+1osDRDr2+M0nGvEqnpySmlzOez//R19xub/SNfGhs7FnKUKp4I37LCDMOMOV
         MBKFI2UHWKlAIxt7RDLlk8s4Jnlr0I+oWj5Q1kzhcHFw9BJX2FLghbgajlsTTvx+qp1A
         sPIQ==
X-Gm-Message-State: AOAM531LRcPHUDpSErwXdBzLX4fU1GHMOilfOJqRHz49RKGXN71JZzJ+
        SjYOdEGiWbf2OGVIvfj7CmGKBw==
X-Google-Smtp-Source: ABdhPJxJLRHsH9CfRsfHJsy6TvmFx2W6Ic3KvGkXHyeQaKob/XnyuXcDZvw12C575KwVBsfnb1InOA==
X-Received: by 2002:a17:906:5413:: with SMTP id q19mr3265627ejo.422.1628682513955;
        Wed, 11 Aug 2021 04:48:33 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id i10sm11096232edf.12.2021.08.11.04.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 04:48:33 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org
Subject: [PATCH v3 3/7] dt-bindings: serial: samsung: Add Exynos850 doc
Date:   Wed, 11 Aug 2021 14:48:23 +0300
Message-Id: <20210811114827.27322-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811114827.27322-1-semen.protsenko@linaro.org>
References: <20210811114827.27322-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for Exynos850 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - None

Changes in v2:
  - None

 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index f064e5b76cf1..2940afb874b3 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -26,6 +26,7 @@ properties:
           - samsung,s3c6400-uart
           - samsung,s5pv210-uart
           - samsung,exynos4210-uart
+          - samsung,exynos850-uart
 
   reg:
     maxItems: 1
-- 
2.30.2

