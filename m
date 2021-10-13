Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A77942CAE4
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 22:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbhJMUXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 16:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbhJMUXU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 16:23:20 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B05C061570
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 13:21:16 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id y15so17075201lfk.7
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 13:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r9r/KMUuJs+tkad/0K0bK5fHd+5ogWwdHmJs3FLaKFo=;
        b=d86rz1z4KPsaLxI85KfGLAzHXqqb+1+dpWFfqDeF6ebHeASc59TzpECWY+ZHRQcblF
         RNE3AbgHHjvqSmBewAUCZ7TqVQgWmqt/axbFdU6Xt7OurTdqa03oiD99bg1WY1x0K31s
         r6R14qJrjoCtb3wRp3tHd0KKUs0jOqFmRLO8wl0t84/hVD0AYlB8jz9IEWfQPDvFOvq4
         2eo2+Mshh3GoPvzWnnRO06onYOlX0oBrEEK7WZ00OJTE1l/o0+hncglPM6MRSHr7lyWC
         bAD7tSFysxVm/liB0xE3dEVacLpmcqtMXRVmgrC/WlGRGpgDbD4oIp5ZN5NTCfVEhCIX
         t0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r9r/KMUuJs+tkad/0K0bK5fHd+5ogWwdHmJs3FLaKFo=;
        b=r2IYQNEYgjXYScW0wK4BBJbMCFMGJr75qnguU6ecC4waj8WUlHi6DClNFAzwUfhzsg
         UcN01NmkN/q0xqGjwiO0LrdQGCkhCDa2yCT9v6eI7OA+5/PcvUy4l007tjzwHxXgX/2t
         fmOgsY58ytZkgR8KWE/leuquxQfvLWlbaMtJSsp5BqIGy9lSo1xC5q2iHMlKf2bPUKVK
         bTGp1ks53ynp13kl/JS7d3UZgGagGiVr4xfEXoTVKBXM+9eJ+fhhAg9xW+GC6lmqUFLe
         SK/TW3IhQQUHh5txmN7FVvqpYOnlLO7ESsEa3dT6zYYZHIYxlYXPkymdCrrpJFnvlbFI
         UGSQ==
X-Gm-Message-State: AOAM531tVNBMpcl+X35/e8djhcX9r4eygu/Zkfj1tntg1iawUEVomg6R
        zLsGp/bfvcvymkC8OWUypctL0w==
X-Google-Smtp-Source: ABdhPJwn4I2M+h6lNkEmLGc6VzjoOLwPopEPgz+gS5pdVdMhyHPsqeSZtcv6Nat0nOrfoi4XzpdUfQ==
X-Received: by 2002:a2e:4a0a:: with SMTP id x10mr1589324lja.146.1634156475002;
        Wed, 13 Oct 2021 13:21:15 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id b30sm44665lfc.110.2021.10.13.13.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 13:21:14 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] soc: samsung: exynos-chipid: Add Exynos850 support
Date:   Wed, 13 Oct 2021 23:21:10 +0300
Message-Id: <20211013202110.31701-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013202110.31701-1-semen.protsenko@linaro.org>
References: <20211013202110.31701-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add chip-id support for Exynos850 SoC. Despite its "E3830" ID, the
actual SoC name is Exynos850 (Exynos3830 name is internal and outdated).

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/soc/samsung/exynos-chipid.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 7837331fb753..fdf806e4b6ed 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -54,6 +54,7 @@ static const struct exynos_soc_id {
 	{ "EXYNOS5440", 0xE5440000 },
 	{ "EXYNOS5800", 0xE5422000 },
 	{ "EXYNOS7420", 0xE7420000 },
+	{ "EXYNOS850", 0xE3830000 },
 };
 
 static const char *product_id_to_soc_id(unsigned int product_id)
@@ -167,10 +168,19 @@ static const struct exynos_chipid_variant exynos4210_chipid_drv_data = {
 	.sub_rev_shift	= 4,
 };
 
+static const struct exynos_chipid_variant exynos850_chipid_drv_data = {
+	.rev_reg	= 0x10,
+	.main_rev_shift	= 20,
+	.sub_rev_shift	= 16,
+};
+
 static const struct of_device_id exynos_chipid_of_device_ids[] = {
 	{
 		.compatible	= "samsung,exynos4210-chipid",
 		.data		= &exynos4210_chipid_drv_data,
+	}, {
+		.compatible	= "samsung,exynos850-chipid",
+		.data		= &exynos850_chipid_drv_data,
 	},
 	{ }
 };
-- 
2.30.2

