Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0043AFA3A
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 02:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbhFVAmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 20:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbhFVAmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 20:42:02 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02001C061756
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 17:39:48 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id pf4-20020a17090b1d84b029016f6699c3f2so687014pjb.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 17:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rOHLQhB/zsp0QBNgF7Of8RLVs1zhcVo1qCLsNxBTdmA=;
        b=bEc1qtq4Oj3ScROAT3XarW0kD2iIdoMYwVC88tInIfEh7npnyMDXy0QsRE0tHN4RES
         tYhVkMpGhV+R7F8xr2Po8qgLcQsTTWuHCDXwZLDiBWzKh8t1Jdw19pdsPhJZhOzTu8RR
         m1GyF76BM8wBIb/gJyGZnrY463F+HV+JY5pD5SZ7J7wUVTyMuuV0+Sq3dDOOGtHTBZS+
         9WiwU4yYMntJCNMuINN78RGlXOXJ5j7iRztj9/yCK34WaBkKm8z4kUZsxjUMZcndPZwg
         3JViFKu8txANG5ugut03ITUc49iYSSLNTSHAEI5oQMhexrMWLXT+h25/uJMd8FcO7VTI
         0dTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=rOHLQhB/zsp0QBNgF7Of8RLVs1zhcVo1qCLsNxBTdmA=;
        b=bcxE6mRe4L6nPkS59QULPdGixaktMEXmIXNdLdXjF360YLiNXf0Deknd6rmdWEHqtN
         bHnyaGTmj/6Q00Ihicb39am0wIyYxmrIsRjYUYN2xaZio74aQ1mQYiHEdjXSDeagwcAk
         tvAupaC12VrMfjj/n758UqS6lVCwziVa7Nz4AK2koa7kNyZ4DPB8wXq1jyXCjuD6arnf
         GrgL8YViFTsbRLfuqQUIEZP5rj4VjYt7QtqfGUrvzRQVG8HjxTAFOXzO+idYGVVLLJVZ
         OpEAEBXqBYsX8XNI9XMW1zjgUY5VL0nS9sij/y9CaNsJr5ujhIjPL4+RAkJAftUAYS8p
         sj7Q==
X-Gm-Message-State: AOAM533Mx1zOWiPSp7XWsl2msTyFmWBQ760dOQnFvdMrGmcQPgBjPo65
        L7TsRP+7DJjEM0lIkS6C1MuhCQ==
X-Google-Smtp-Source: ABdhPJxEKCaZYYRjjpA2vP6kFRaRaTSjTUfJoPCzCAxaalKrP/S8V43ufV8t4bp1+ZYc5NwJIkMY0w==
X-Received: by 2002:a17:903:31d3:b029:ee:bccd:e686 with SMTP id v19-20020a17090331d3b02900eebccde686mr20751488ple.1.1624322387588;
        Mon, 21 Jun 2021 17:39:47 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id h11sm17722762pgq.68.2021.06.21.17.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 17:39:47 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Benjamin Li <benl@squareup.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: mailbox: qcom: Add MSM8939 APCS compatible
Date:   Tue, 22 Jun 2021 08:39:17 +0800
Message-Id: <20210622003919.10442-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210622003919.10442-1-shawn.guo@linaro.org>
References: <20210622003919.10442-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Qualcomm MSM8939 APCS block to the Qualcomm APCS
bindings.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 5dc1173d03fd..96b29aa6c338 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,ipq6018-apcs-apps-global
       - qcom,ipq8074-apcs-apps-global
       - qcom,msm8916-apcs-kpss-global
+      - qcom,msm8939-apcs-kpss-global
       - qcom,msm8994-apcs-kpss-global
       - qcom,msm8996-apcs-hmss-global
       - qcom,msm8998-apcs-hmss-global
-- 
2.17.1

