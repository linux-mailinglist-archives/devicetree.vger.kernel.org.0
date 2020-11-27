Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26AB32C64F7
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 13:11:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728235AbgK0MLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 07:11:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727455AbgK0MLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 07:11:45 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61433C0613D1
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 04:11:45 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id n137so4428933pfd.3
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 04:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kInwNk/ThkAgXZIESon1lxicNanN9RlxTXl9tfSYT+I=;
        b=zZXMT50j8fpsSR9O3vwTH0Ef9TewOi3i33MIdyzu2LDCBfr/dzO7RxkYlcA/vgwign
         oGU1ScnOIElX2ANISgkRCZPSeIfpBDN/kfWYTysfbdzPgUYa4jXUzOK6G+/O8fXNMn83
         Et8YtCexsSG1yhO50qJADx9Z3hfzd30kdHTpdUPWimJe7fdA3VfNQKKXSxtzQ+Ae2jOX
         BSj65UltBzWDmBtswd4tPuNJhR0MqdnzF/69JgAQXx+3FVO/BuyhfGQ+jea8+5MT3ymk
         YzEx+eFFLQk3ncak3iP6PyH0ey3f8qyDBQ1pW2M4IyvdLPM6K6R18zN4nUYcSEqFHvVq
         Y6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kInwNk/ThkAgXZIESon1lxicNanN9RlxTXl9tfSYT+I=;
        b=P4jvuW6xIHKmMnTEmy91shCv2XKwMsZLgMWaDfeV0fHElUSfg8KZFdxVIzKvJyp7Lm
         KrMumI212ZHQbLSD91PH2Q7Urhwmy/eDf8TSmI9WWL63CFMJ4V7yIyU3+gOoUo2Kqk+0
         m8y2nJP6/qlrQunWjb7EKIfLEWjYuGRPbcLfNkClxLw7Ys3/m5gzIQYCTQkxPajD9qke
         BHur1MjhEW8b0Q55u0sH1CWODb0MjLD8BE/+okWqw3LaNQ6NIehURJF8bisJ2CaOrzdf
         6sGnObygAlU8v63MPDtZmMTG1IrwIFSJj19cZikvMaPNGbz77IbpzcKM8Cxf6D278U3r
         XV/w==
X-Gm-Message-State: AOAM532dWyqbaRl7HI1gytuL9+wXIX5Wia9a7R/dkAXHj77Tk3QVngUk
        XUqZKvfl7vjuhVBH1rT+G8vWBQFJYmsL
X-Google-Smtp-Source: ABdhPJy6w3VuqZfxvgs7p/xNNoQ4aWfZ60iPK6rbgnuMp23sdlb4oCMycDPoZeG/kjghWZfBzOvrlg==
X-Received: by 2002:a17:90a:aa0e:: with SMTP id k14mr9718005pjq.153.1606479104900;
        Fri, 27 Nov 2020 04:11:44 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:480:e2cd:2509:49c2:a270:1438])
        by smtp.gmail.com with ESMTPSA id g8sm7318790pgn.47.2020.11.27.04.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 04:11:44 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/3] dt-bindings: msm: Add LLCC for SM8250
Date:   Fri, 27 Nov 2020 17:41:25 +0530
Message-Id: <20201127121127.158082-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201127121127.158082-1-manivannan.sadhasivam@linaro.org>
References: <20201127121127.158082-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LLCC compatible for SM8250 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
index 0a9889debc7c..c299dc907f6c 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
@@ -24,6 +24,7 @@ properties:
       - qcom,sc7180-llcc
       - qcom,sdm845-llcc
       - qcom,sm8150-llcc
+      - qcom,sm8250-llcc
 
   reg:
     items:
-- 
2.25.1

