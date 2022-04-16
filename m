Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A897503767
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 17:41:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232468AbiDPPnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Apr 2022 11:43:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232461AbiDPPnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Apr 2022 11:43:13 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DBD8434B5
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 08:40:40 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id n11-20020a17090a73cb00b001d1d3a7116bso1364325pjk.0
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 08:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HJhN+lqO5QfhYgAtNvvwhhSwf96KYqEAp+AGuYIx/Sg=;
        b=i2te6qXoU//4cdVhxTEwWC9pQ+FLUAN01QKcchdcuodcAJwbfhQJllgw/eQUEYwalY
         ILoiuc4BF9gWt1XbnAm0LhhIQD6RfAttYt9HcuEI0J5K0hVmhKB1JUCdRIZiNrQCqS9q
         J80ddrHOUtp7OHmoRmomb/Vzt7fb1Leh+vbFuuNYejIOflz1QH5yuM7W+RxF/FF0wVkJ
         ctb7uB3TCHVsQkpa99GO5b7hKLTaEngL2zA3Ufp2xUZSgTUSsjdNgGit9OGLNjul/9mb
         xJQihTCDh9//bSbHJlxHiCD6R8mNiLnjYPzSR7/qjD3ViL8vn2G0FIbXYnbd90f9P/o8
         jxBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HJhN+lqO5QfhYgAtNvvwhhSwf96KYqEAp+AGuYIx/Sg=;
        b=F1SRB64QySJyA9wmnSiI74r/j5HHwFTK5rGBh9G3cFsW4Vzwk7GOFT2lTKgLlhkW5G
         mr50ssFyb/1QhYO1Z7HtYsaAc8P/djewS4eycJNuiNdmaFs9nm9OTTcnzx5RNXPouUFi
         tIU5Ku6saZ/1f5sJIZ9umlbWKicC8bbypUyWrDKFjT0tWTtaJUIkV9+sBQqXfpxRpg0R
         BwKXczsL/wgAv8ayNQdyfoPSV1ECgthXuaLtQrcXA3x1bhi65jvN2+J3O/1cbhhUinrE
         STziF36xP0N/5EBdqgZHrtbMlGV4zv/ApGT7CxcI2BrzUXkc09WyXMFT52BAbWKXUmPp
         LQcg==
X-Gm-Message-State: AOAM531ybyE82iZWU7cA/yI/y8njs/R/RCVNc2N1iO3Z6O6RKwbEwt+S
        7A+TfbXJX3Ak/3ZH3mgiURgxNQ==
X-Google-Smtp-Source: ABdhPJyHueERVmn+pCpI9GEtlGf3EdPV3lE8dAHtr7BQ2HucdY5SkmFUF8jn57BKT9OWp0AFFTW7lA==
X-Received: by 2002:a17:902:7e85:b0:158:c12f:d662 with SMTP id z5-20020a1709027e8500b00158c12fd662mr3733805pla.141.1650123639924;
        Sat, 16 Apr 2022 08:40:39 -0700 (PDT)
Received: from localhost.localdomain ([134.195.101.46])
        by smtp.gmail.com with ESMTPSA id z16-20020a056a00241000b004f3a647ae89sm6358681pfh.174.2022.04.16.08.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 08:40:39 -0700 (PDT)
From:   Leo Yan <leo.yan@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v1 3/5] interconnect: qcom: icc-rpm: Change to use qcom_icc_xlate_extended()
Date:   Sat, 16 Apr 2022 23:40:11 +0800
Message-Id: <20220416154013.1357444-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416154013.1357444-1-leo.yan@linaro.org>
References: <20220416154013.1357444-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_BL_SPAMCOP_NET,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit changes to use callback qcom_icc_xlate_extended().  This
is a preparation for population path tags from the interconnect DT
binding, it doesn't introduce functionality change for the existed DT
binding without path tags.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 drivers/interconnect/qcom/icc-rpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/interconnect/qcom/icc-rpm.c b/drivers/interconnect/qcom/icc-rpm.c
index 45d23aaeabf6..2ffaf9ba08f9 100644
--- a/drivers/interconnect/qcom/icc-rpm.c
+++ b/drivers/interconnect/qcom/icc-rpm.c
@@ -16,6 +16,7 @@
 #include <linux/slab.h>
 
 #include "smd-rpm.h"
+#include "icc-common.h"
 #include "icc-rpm.h"
 
 /* QNOC QoS */
@@ -395,7 +396,7 @@ int qnoc_probe(struct platform_device *pdev)
 	provider->dev = dev;
 	provider->set = qcom_icc_set;
 	provider->aggregate = icc_std_aggregate;
-	provider->xlate = of_icc_xlate_onecell;
+	provider->xlate_extended = qcom_icc_xlate_extended;
 	provider->data = data;
 
 	ret = icc_provider_add(provider);
-- 
2.25.1

