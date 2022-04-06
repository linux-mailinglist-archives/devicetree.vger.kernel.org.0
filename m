Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78C7B4F549E
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 07:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241750AbiDFFJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 01:09:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1577418AbiDFEQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 00:16:33 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B662B4A64
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 17:26:55 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id by7so1222835ljb.0
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 17:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZJIDxh5h3xPAYvxF7KaWafzjs7B60rYIXrQJSv7BOCI=;
        b=Gui8J8nHlGvZsHcPlfJUcI/1dbl8mbvBGjGtKplPWHsVloJjtznMuBxCtBhzS+NLjx
         fak+MpqzR7vdpsamMOI6IT4zrMUZCaSURzjLWy56gL8sg3SIA8Io1MBmcoWe8Kpwp/fk
         3B5gUaWKARJplHhkXeNtdPTqg/nDSKRuaBqlCTitqeF85d+K5AbkIE9F6jRpcN0Q0sP7
         EArUAvxj2N7BugF9i7CL3ixxi4E28gzGutknc0i6nUGwj0I99b4G8wTlPw0zHttfrx/a
         a+cid+aoo3phnK0U4rZmY3L1ObM5s12VvpnmIhTjBFj57zVb5stxmbj+yhjZCBcP2cKz
         3LyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZJIDxh5h3xPAYvxF7KaWafzjs7B60rYIXrQJSv7BOCI=;
        b=boPRLEZTvqWqNh4bxZcZZBj9nIL9F9Xt9r4AGT4jMRZy8z1XKgrbiBP4AnoD+JxIuX
         /ZXoG8jDnCy9v1YHKScGmmZTBNoxMETcGrC6R9XcW3jVL34FjjO0TqtLGU2pgnCwTRRc
         PiHkPZDgR1XO4qC/VCc3OazQO1SDMO4uOJHTueKlH/Ggft71x7E1TCzXvbpJmIDAs3pp
         biDWA05RGC5Tx1VtoPP/oXMJRBsE3beayD3kUQntlHcoe9BN4HQeVwAT181IG6VQBWmK
         umxSv6lzRdGq6udPsWJU5IDsajuj93135SlRBGNmOMWlz71uy1wCjXrpA/AF3dxidghX
         lMWA==
X-Gm-Message-State: AOAM532m5qtRufW/kbFA66Yd3GJnGJ+l7K5g9BjZRqNUZxQyy9DSg4kH
        7GiB4kkfXzCF1yqz/IsswZMTdw==
X-Google-Smtp-Source: ABdhPJzloO/bpr3ndOYIgiINYYgIxblBzRDIKipWU4PxFSXgtWhAlGaDjroKNFIKMRi3oYMTamsYZQ==
X-Received: by 2002:a2e:97c9:0:b0:249:8404:a5b7 with SMTP id m9-20020a2e97c9000000b002498404a5b7mr3638092ljj.57.1649204813240;
        Tue, 05 Apr 2022 17:26:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c21-20020a056512239500b0044aa21dadeasm1660270lfv.60.2022.04.05.17.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 17:26:52 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 3/4] clk: qcom: gcc-msm8960: create tsens device if there are no child nodes
Date:   Wed,  6 Apr 2022 03:26:47 +0300
Message-Id: <20220406002648.393486-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220406002648.393486-1-dmitry.baryshkov@linaro.org>
References: <20220406002648.393486-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently gcc-msm8960 driver manually creates tsens device. Don't create
it in case there are child nodes inside the gcc device (which would
include the tsens).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-msm8960.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-msm8960.c b/drivers/clk/qcom/gcc-msm8960.c
index 051745ef99c8..a6e13b91e4c8 100644
--- a/drivers/clk/qcom/gcc-msm8960.c
+++ b/drivers/clk/qcom/gcc-msm8960.c
@@ -3641,6 +3641,9 @@ static int gcc_msm8960_probe(struct platform_device *pdev)
 		hfpll_l2.d = &hfpll_l2_8064_data;
 	}
 
+	if (of_get_available_child_count(pdev->dev.of_node) != 0)
+		return devm_of_platform_populate(&pdev->dev);
+
 	tsens = platform_device_register_data(&pdev->dev, "qcom-tsens", -1,
 					      NULL, 0);
 	if (IS_ERR(tsens))
@@ -3655,7 +3658,8 @@ static int gcc_msm8960_remove(struct platform_device *pdev)
 {
 	struct platform_device *tsens = platform_get_drvdata(pdev);
 
-	platform_device_unregister(tsens);
+	if (tsens)
+		platform_device_unregister(tsens);
 
 	return 0;
 }
-- 
2.35.1

