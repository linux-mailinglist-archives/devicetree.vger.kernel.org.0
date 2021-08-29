Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37B7A3FAB0E
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 13:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235194AbhH2LS6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 07:18:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235110AbhH2LS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 07:18:56 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6966C061756
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id oa17so7594328pjb.1
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Arc8MLbQGORTfnllzb9XqumYXQOOLqfc3BqQz0AWku4=;
        b=Uv/VdgLu6eSIHcpmiTO7AwYc9VoukGcIIPxneA3+pJkw/BWF6mYfuQTyMH/5f9mKya
         aGWdy64ZqiE7Dnt97ylyvZDDp1wTMZW5MpG9LJclfHxUVCUDtOSllD2z2z4FSC3/xfQu
         uN5p1ThZ78hIP+Vivxm5wHiil4XG5oteEa1kBJjQqrESqYpm7IvzKVfVY0L9h1PIXJVh
         LzZfAQAY8kN2u1py6qjQ/NgT9nAGRP3fuJdLm1DUS9DQlwPFJrFkPxoH/VA7yqVXl2KW
         9Dai2ThLSqSUMVnqOUhAyzG1/g4nMVb9kggvSf8yiNJzQo+k+sdZ935bJhvorWdWp1mZ
         coEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Arc8MLbQGORTfnllzb9XqumYXQOOLqfc3BqQz0AWku4=;
        b=PoFf+XtWwHGw3eF9N7HPTmXybnhzywXlhuUh33f2KQCv6Q+cY8Vzam1AP4q96p2FIF
         ty+/uCrUCmrW6NbXdxic9bTl8mMb2agXAD/8SDQFTKOEDB5Ym83a7VBH/TLadfnNBszW
         R4usHsuKLK/f6I3PhXtvj7YP5aAG7HjpCaBP8e1/xONlY2Zh/YK6LmZBNWyAK700QNOM
         g37Ecd/oX1ArlHzeb/mpIh9h+0eF7mbWxAfj/zztVYUW5nBKW/vr92/ahSScqo5pTuxg
         2Uu7T3sFSdnK+xGX1xsaz4rnZMTMyP05cIdC/pyqJ9ir7LCc9VeYg33U1GBprboPfUp+
         xihg==
X-Gm-Message-State: AOAM530XT3igBu2WZL+HtDIp8juUjp5uhtlN5GE9auKhOXw2mzY3SQRN
        7YmQ3+jzelTODnWs18PCMcX1qw==
X-Google-Smtp-Source: ABdhPJyWq3Urrw8O0dnlUQMYr89y8flztcBNoCJlpWwlViyqJHX6LlOo2FScfSYdFD7TKGzG5QAG1w==
X-Received: by 2002:a17:902:bd81:b029:12c:b6fb:feef with SMTP id q1-20020a170902bd81b029012cb6fbfeefmr17356836pls.84.1630235884480;
        Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id gn12sm16857115pjb.26.2021.08.29.04.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845: Fix qcom,controlled-remotely property
Date:   Sun, 29 Aug 2021 19:16:28 +0800
Message-Id: <20210829111628.5543-4-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210829111628.5543-1-shawn.guo@linaro.org>
References: <20210829111628.5543-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property qcom,controlled-remotely should be boolean.  Fix it.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 6d7172e6f4c3..99e023314ae4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2315,7 +2315,7 @@
 			clock-names = "bam_clk";
 			#dma-cells = <1>;
 			qcom,ee = <0>;
-			qcom,controlled-remotely = <1>;
+			qcom,controlled-remotely;
 			iommus = <&apps_smmu 0x704 0x1>,
 				 <&apps_smmu 0x706 0x1>,
 				 <&apps_smmu 0x714 0x1>,
-- 
2.17.1

