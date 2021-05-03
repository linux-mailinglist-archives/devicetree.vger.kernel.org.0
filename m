Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 594BE371250
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 10:13:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232956AbhECIOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 04:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232752AbhECIOj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 04:14:39 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83303C06138B
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 01:13:46 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id h11so3661638pfn.0
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 01:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pkyuZ9w9SVl5FNnTg3eNaI04ikRI6sqPwMnFjLPyWLQ=;
        b=fp4ehAXbPy0P6QBADkWiA21e0FoLHzCjhS54WtU2bE8qN93Dbn51PdbbNhzAJLVGAZ
         vvLV0u6j38q1fycArjrR0+SLk8lJGofW9ZT5vJheOSj/cFhv1Cktop3M97XaOgKDqkql
         E9p1Rrfj7cDKhPD2m5s+qajfu8rte0woyJ+jzXCVH6GsOaHFO9va6HENeibL6+apYutP
         GQxfBoDADxGD/X64cOTXZNgaEHQZmQFF0znz0Sq+i+aM5aH3emKpOi74A/XH9EwVtypm
         QcZ404dfi1KkxYUEkt+16yOQdZgOh5vAyfFXlcCUBQkPCA0Wb/eUFD0XjOJK5apppJVu
         BFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pkyuZ9w9SVl5FNnTg3eNaI04ikRI6sqPwMnFjLPyWLQ=;
        b=HU3zzC9isOmthzF7q2wIlE7nvlzAwMzCgOQH8FzK/qZNSPyzIFIXWuJvztDFkEzNF/
         khaWc58v9fZ5ugHQibl8cU5DfiRlrKtow74NRRDeM0dZG5vN6P0jFbvIDhcA2JFApF7S
         OEDMvL48m1fCPqhDo08JGniyQfgrZYVSdmx9G5RkrFr4+PnWLh2hkhRjhLt8rworcS3s
         5EDWpURd7iAIPb/oo52Oy0duGC2ORqUt9YJVofzBESf5PaNQc4jt0Mj3BdDosOm5nD+C
         HrMfMTbcbn9gqMzCr7BjHFH3+QHFrbYOq827yOC9wdpJJaxN4a3QXOHiuBzV1lkXuzjz
         nCHw==
X-Gm-Message-State: AOAM530kU3zo7ubpzYgvst91qw3OqomhnqOYCQAXCZxGPXAYBx7yrhqH
        3qb2iSDOWHSbdZdEt3i8kBkTEg==
X-Google-Smtp-Source: ABdhPJzE6UDcvwvHjiHnJkj5mXksff61vxr4Jb2FBfg4LorAI4u1JoIBcipCTnR2dyU6Ojd0nHE7tg==
X-Received: by 2002:a63:2c92:: with SMTP id s140mr17466249pgs.39.1620029626072;
        Mon, 03 May 2021 01:13:46 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id fa17sm12031939pjb.17.2021.05.03.01.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 01:13:45 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Benjamin Li <benl@squareup.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: mailbox: qcom: Add MSM8939 APCS compatible
Date:   Mon,  3 May 2021 16:13:33 +0800
Message-Id: <20210503081334.17143-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210503081334.17143-1-shawn.guo@linaro.org>
References: <20210503081334.17143-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Qualcomm MSM8939 APCS block to the Qualcomm APCS
bindings.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
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

