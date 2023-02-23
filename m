Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 791626A01E4
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 05:23:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232944AbjBWEXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 23:23:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233224AbjBWEWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 23:22:34 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13F524AFE7
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 20:21:24 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id c2-20020a9d6842000000b0068bc93e7e34so1956101oto.4
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 20:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01ISZatEwoHnY9nhwEKU5Czp8lSia2kyO6GGxMXIwAw=;
        b=JQrrLrdxv6bM2+L67OBB+Xf34SWha01vxINwnQcSCBnjvnWad9irHinJ76Xc4lpyzT
         Vu+zx4c3kQiKOjEiC5oRG+C3RTNSFUNrxoBwGTV3iBz540FYnTfKumPEkkyUJYE9sL0c
         OHgEMrzb4ZD76dNYLoAhuT+Nf6Pj9yn3N24h//Inr1QjxF3edYsebyWybk3vaSlL/RM6
         KBkass1tjXqgioefiFe8uCf8Z4diOos8mLySzfeN8N+ZVC/yz8kY0cPT5utC7e7jMvDG
         dhUxZU9hKCA9NJ3R5q2VBdgOKkzZsI/5Xs9xidjMVTmOrcAVzChitwgYQ/Eemledr8Mk
         4q5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01ISZatEwoHnY9nhwEKU5Czp8lSia2kyO6GGxMXIwAw=;
        b=PAHQ8cuZH//UsXRaZ9KAW4evymvRrPrOtkfTEDhnH5+oUs4iJX25KrJN+yZAC020Cy
         UzDFv2S1Kv6QysaX2Jx3E52EE3LGLOv7QWODhkXXQhb6VDGClqgSdjHsq2UBrTZO266e
         lRWAw23/NFSXG8S75/4DMnk6P9gJR6m/5Bw7Da4SvHAh19yp6AvwCsHvJDIe0vllNSm3
         bfzUnLOiSMEd+QUw/Z9yltdtf8gHnKvXJHigeE+xOeFYD6OTnDcbLPTMtZl4CztTk1Tt
         nDHp/chGd5QwEYy6TwoVawgvrqY+hBPiGktKXyZnmc+a4X/J83HbYvfwbP+XR3pMNxVH
         yesg==
X-Gm-Message-State: AO0yUKWa9wL4CX+sUwh4uh3gz0zI396jiio0g9TLcOCOuK4tF/yjedzq
        peaMRsNyZkrZ+s0AAfvIfit/9Q==
X-Google-Smtp-Source: AK7set94hn97PVKoIygtCMvlArbY6ADOZ2OLeOPxpSypXWW/9O/AF5J2vaGYfbwLoA7rVDTZSR+Orw==
X-Received: by 2002:a9d:3e5:0:b0:68b:d0cc:d1c2 with SMTP id f92-20020a9d03e5000000b0068bd0ccd1c2mr1825532otf.19.1677126081271;
        Wed, 22 Feb 2023 20:21:21 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id y16-20020a4acb90000000b005200c4b6267sm1448576ooq.9.2023.02.22.20.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 20:21:20 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Virag <virag.david003@gmail.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: clock: exynos850: Add AUD and HSI main gate clocks
Date:   Wed, 22 Feb 2023 22:21:29 -0600
Message-Id: <20230223042133.26551-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230223042133.26551-1-semen.protsenko@linaro.org>
References: <20230223042133.26551-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add main gate clocks for controlling AUD and HSI CMUs:
  - gout_aud_cmu_aud_pclk
  - gout_hsi_cmu_hsi_pclk

While at it, add missing PPMU (Performance Profiling Monitor Unit)
clocks for CMU_HSI.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Rebased on top of most recent soc/for-next tree
  - Added Rob Herring Acked-by tag

 include/dt-bindings/clock/exynos850.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/clock/exynos850.h b/include/dt-bindings/clock/exynos850.h
index 8bb62e43fd60..afacba338c91 100644
--- a/include/dt-bindings/clock/exynos850.h
+++ b/include/dt-bindings/clock/exynos850.h
@@ -178,7 +178,8 @@
 #define IOCLK_AUDIOCDCLK5		58
 #define IOCLK_AUDIOCDCLK6		59
 #define TICK_USB			60
-#define AUD_NR_CLK			61
+#define CLK_GOUT_AUD_CMU_AUD_PCLK	61
+#define AUD_NR_CLK			62
 
 /* CMU_CMGP */
 #define CLK_RCO_CMGP			1
@@ -227,7 +228,10 @@
 #define CLK_GOUT_MMC_CARD_ACLK		11
 #define CLK_GOUT_MMC_CARD_SDCLKIN	12
 #define CLK_GOUT_SYSREG_HSI_PCLK	13
-#define HSI_NR_CLK			14
+#define CLK_GOUT_HSI_PPMU_ACLK		14
+#define CLK_GOUT_HSI_PPMU_PCLK		15
+#define CLK_GOUT_HSI_CMU_HSI_PCLK	16
+#define HSI_NR_CLK			17
 
 /* CMU_IS */
 #define CLK_MOUT_IS_BUS_USER		1
-- 
2.39.1

