Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 152B245F601
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 21:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240876AbhKZUpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 15:45:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbhKZUnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 15:43:52 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3320FC061399
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 12:36:45 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id e11so20807401ljo.13
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 12:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KL+cXQOYHhgidLM99dBCGy7kasZp0rKjTyY/gJtJdQ4=;
        b=BMTsjWWZUf226r0O46xi6CYkFlWm4vfNRvYD+wh4KTBX2j3WsYChKyNieTjL5pER1x
         woEWSvm4nj3xg9A5atvpLm8FQ+6jaCBj2rl7zZQ6bR/PGxYWNZ+GtZc8YBVC7v6luAd4
         bpwGxCioARQeunnpIIG/XrIiksJiGK3/Bs2PHra56pBYCfw+2K+YMBMDUTkwOmkHFy3E
         8CDxI2CkNUghVdCU2c4RNZvNHgP9AeaVMmG+Qi2gI3k9BjeIdQ4OuiGfauMmxbplUaC/
         v8NxLw8ITZLXoUAxlfWZ6QQ0K7F0/d6WPDrGrLJuFGKmjssFYK4fA+jIdI+jCPQhnfwH
         tcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KL+cXQOYHhgidLM99dBCGy7kasZp0rKjTyY/gJtJdQ4=;
        b=nhXmqVyMVkZj0kl+VTQ+qNrantRX0AxBzeeGS1lTOLFVgPfAE6JGVM7JP00IQzeXEF
         nRmdWgotiu228CQO8yikikyTvAZAxtwFO72BKh9aTQ4z8rgM/RRjzhdyv1Y3b4BOPyXQ
         8qinZlgwJN7sqMBHG571Twaqu31rE08mg58sAKXSbMXZxsM+zBRuIlU2ZZi0QPLxpwOk
         s++dQLRKVpex6LMGT97m3cV9GuLY4Pr6M6CRfokQUclI+ErgZ/XZxpssJPsen+MMaf0o
         ZjAhEj89Xeo2yQ+4gSRSeO2Y+RJ/ohV8/r15MReaWV4s93GxcRaGrhRbZB3hZNfzKFMN
         mNFA==
X-Gm-Message-State: AOAM5308flve4wQqF5k717jKAOKVNw02XjokfRVGAlndgrFPUkxN+Cn5
        z1Gxzhy9RYM1Dlz9qpEy70KaEw==
X-Google-Smtp-Source: ABdhPJyAth1JfmI8KnvqiYVW7NfxbEhPUAsrlQ7saok2itcm6rdRZ1bWu82XuJvu51fkDxdqx1HIvg==
X-Received: by 2002:a2e:b5d8:: with SMTP id g24mr33611410ljn.250.1637959003359;
        Fri, 26 Nov 2021 12:36:43 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id u16sm583114lfu.42.2021.11.26.12.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 12:36:42 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        David Virag <virag.david003@gmail.com>,
        =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: exynos850: Add bindings for Exynos850 sysreg clocks
Date:   Fri, 26 Nov 2021 22:36:40 +0200
Message-Id: <20211126203641.24005-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

System Register is used to configure system behavior, like USI protocol,
etc. SYSREG clocks should be provided to corresponding syscon nodes, to
make it possible to modify SYSREG registers.

While at it, add also missing PMU and GPIO clocks, which looks necessary
and might be needed for corresponding Exynos850 features soon.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 include/dt-bindings/clock/exynos850.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/exynos850.h b/include/dt-bindings/clock/exynos850.h
index 8aa5e82af0d3..0b6a3c6a7c90 100644
--- a/include/dt-bindings/clock/exynos850.h
+++ b/include/dt-bindings/clock/exynos850.h
@@ -82,7 +82,10 @@
 #define CLK_GOUT_I3C_PCLK		19
 #define CLK_GOUT_I3C_SCLK		20
 #define CLK_GOUT_SPEEDY_PCLK		21
-#define APM_NR_CLK			22
+#define CLK_GOUT_GPIO_ALIVE_PCLK	22
+#define CLK_GOUT_PMU_ALIVE_PCLK		23
+#define CLK_GOUT_SYSREG_APM_PCLK	24
+#define APM_NR_CLK			25
 
 /* CMU_CMGP */
 #define CLK_RCO_CMGP			1
@@ -99,7 +102,8 @@
 #define CLK_GOUT_CMGP_USI0_PCLK		12
 #define CLK_GOUT_CMGP_USI1_IPCLK	13
 #define CLK_GOUT_CMGP_USI1_PCLK		14
-#define CMGP_NR_CLK			15
+#define CLK_GOUT_SYSREG_CMGP_PCLK	15
+#define CMGP_NR_CLK			16
 
 /* CMU_HSI */
 #define CLK_MOUT_HSI_BUS_USER		1
@@ -167,7 +171,9 @@
 #define CLK_GOUT_MMC_EMBD_SDCLKIN	10
 #define CLK_GOUT_SSS_ACLK		11
 #define CLK_GOUT_SSS_PCLK		12
-#define CORE_NR_CLK			13
+#define CLK_GOUT_GPIO_CORE_PCLK		13
+#define CLK_GOUT_SYSREG_CORE_PCLK	14
+#define CORE_NR_CLK			15
 
 /* CMU_DPU */
 #define CLK_MOUT_DPU_USER		1
-- 
2.30.2

