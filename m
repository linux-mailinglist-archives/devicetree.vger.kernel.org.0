Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE01242BE5D
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 13:00:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233849AbhJMLB4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 07:01:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232949AbhJMLBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 07:01:34 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C83C0613A7
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:57:13 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id ls18so1894221pjb.3
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QbohWyUs/XEVgJ1sMzx5GgNA+CoHQz7FKaMhz+WvP7Q=;
        b=aWBDPo+XkPYlTM+uRegDzpoN/h679h+9ZFX3Yb9ikiuC3BwoIicwyXzxblfl25u0t3
         i5hZ37SfyfUxoCbkac0k50s5cSs+jzDSeCG1Bwom8E1qXnf7oRa/WW4UXuQJKHy9zOy5
         5vZ+mQlfFWydlI+nust7zAkVmD06HPzMi3IKNbqqaqjqwpRkSX6hnIuyx93XDMABUq9t
         NLcA5PhZSyybf5HxtP0nkCgOemXMKS/zVuXkIJWwjtgsj/EGXw/qfjU6ztOIFUxMU3WM
         q4DQ5WcKsw8MsEXV8uFB8pkhHcMU2nMiMrv8xOxmku5gk0KIWuF73+3c4DueG3kbPVnE
         G9XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QbohWyUs/XEVgJ1sMzx5GgNA+CoHQz7FKaMhz+WvP7Q=;
        b=Ha67OGtD7/Uvg3dKadTEDjO77AH1CikLIfsytWTdCLIE9jCOFnVs/5VbIFIR6YS/Oi
         P+JjT9KaCPQMIDdCW7MAgNI8oROJRFj3BUsJlRjH8TJDj62OeNzvEkzAcWImVFaVLDeD
         A8i8lx4VSdp9LN/HE5UiUnrjhg0RpoMZrth76J0tiHRTs3B3KZ1sj+30LzD3FV5CyzGC
         NbjqUKl3jKIzYMJnCssYZ0GysDye37EIDY2nt+GdYnXpx25CM/KqITyLMHFYGUWVicpO
         iwZQtJlxB5e9raxFqDwxQAXrOJhZV3AiZYXn8v+9ICE+ZoSMnCYA3VWJrO7//yhZ5zNY
         vTuw==
X-Gm-Message-State: AOAM533E+dNKzsjObk4kcfJLhJco9sXlqbmb/hYhlGB1dZkmrAfX6E8b
        89X6NxyQKbnar6XPHmDz5Hzujg==
X-Google-Smtp-Source: ABdhPJwywYk4PJNAhFCjlu9JSdHG6UaMaytxyWqC5ooJQNf7ZtdtOTA3vvINGm9UW5P007G9L1NphA==
X-Received: by 2002:a17:902:6947:b0:13e:8e8d:cc34 with SMTP id k7-20020a170902694700b0013e8e8dcc34mr35131854plt.88.1634122633168;
        Wed, 13 Oct 2021 03:57:13 -0700 (PDT)
Received: from localhost.name ([122.161.48.68])
        by smtp.gmail.com with ESMTPSA id b13sm6155351pjl.15.2021.10.13.03.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:57:12 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thara Gopinath <thara.gopinath@linaro.org>
Subject: [PATCH v4 17/20] crypto: qce: Print a failure msg in case probe() fails
Date:   Wed, 13 Oct 2021 16:25:38 +0530
Message-Id: <20211013105541.68045-18-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Print a failure message (dev_err) in case the qcom qce crypto
driver probe() fails.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Reviewed-by: Thara Gopinath <thara.gopinath@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/crypto/qce/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index 576c416461f9..cb8c77709e1e 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -281,6 +281,8 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	icc_set_bw(qce->mem_path, 0, 0);
 err_mem_path_put:
 	icc_put(qce->mem_path);
+
+	dev_err(dev, "%s failed : %d\n", __func__, ret);
 	return ret;
 }
 
-- 
2.31.1

