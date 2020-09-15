Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6291F269FC4
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 09:27:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726132AbgIOH1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 03:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbgIOHYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 03:24:43 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A760C06174A
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 00:24:41 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id w7so1432521pfi.4
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 00:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PoM8dcszi4ABBEkuvRZ20RPA0JshzdDSlrpShM9qdPc=;
        b=QQRnPO9DxxyQF69n+gAvyc5ZVThhlnOSdWwS8Q9nDB2v74a7XMzWD3iwM1BlhU8Xpx
         N+7b7q225OlQDQ2Q+v/5IbSfrS4tzAIvbEpLWRa2BVkYgXHlZKVAhsdzbba7HZJ2EVr7
         7uFjMe61muiKhTdkjeBe01EZxFxKPFBjt657vCgdBHW9ev9m2ckHLpo9Wx2lHAQuylPg
         Qd7lB4e/alOo18mlRIMRZl9fAAQTOXm/l5ddG+zTmR0CLvhvuUuYYJd2/AjRFdQPEDlw
         zN81QDuhpYU073BiLjtRAlOhm5tgztu1U/v6YzmfzXO3N1lxFvD/iPsfI9j2a0bvUPsk
         h0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PoM8dcszi4ABBEkuvRZ20RPA0JshzdDSlrpShM9qdPc=;
        b=goTioM9/vgNhECj+rmQJImQO1jnQG84Nf2F6n7EAFEvBYQPo7qD1iULnlydFSnmomX
         dOE2QRjQayoslTvfYcS7eRTlrmrq5PQql/Ql48e0T4PVL5nYS+hODdtlh6eEqGdRzanL
         zrZ+p5rgm5RL5NUK5jWy7l+4XC9BPwd9/JwAqhOUrX1pkCRFdyM3HjurtrQO7ilWPcAb
         CKoE4YUDsq+AOLAhTdbaMf2rzjZuRG/Ge9iMA606vr7KPH0EJxtTf+bc5hOWizL0N8d5
         ydNsHmoYfd7Fp0jaqdfUR3qLNS195tAxMTE8qc3LX+TH3prS0HvgEJs9E3J8XQiB0006
         XsbQ==
X-Gm-Message-State: AOAM530FrhQSMlHEdrUtC0yrMzVHuo4GjlI6WKxfQKxUKcQChhzS6YbG
        PwVk90/F3AnMQpF5IjKEjoqw
X-Google-Smtp-Source: ABdhPJxbviGwmECdlzw7W63+DAmIWNu/LdmyT7qT+q7QnH5RbqsKAv3ZfzzIg5OxnW91hpmdMbLcVg==
X-Received: by 2002:aa7:8816:0:b029:13e:d13d:a10b with SMTP id c22-20020aa788160000b029013ed13da10bmr16313072pfo.39.1600154680676;
        Tue, 15 Sep 2020 00:24:40 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id m24sm10701501pgn.44.2020.09.15.00.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 00:24:40 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     amitk@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org,
        tdas@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/5] dt-bindings: cpufreq: cpufreq-qcom-hw: Document Qcom EPSS compatible
Date:   Tue, 15 Sep 2020 12:54:19 +0530
Message-Id: <20200915072423.18437-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915072423.18437-1-manivannan.sadhasivam@linaro.org>
References: <20200915072423.18437-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The hardware block which carries out CPUFreq operations on SM8250 SoC is
called EPSS. Hence, document the compatible.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Amit Kucheria <amitk@kernel.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
index 33856947c561..9299028ee712 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
@@ -8,7 +8,7 @@ Properties:
 - compatible
 	Usage:		required
 	Value type:	<string>
-	Definition:	must be "qcom,cpufreq-hw".
+	Definition:	must be "qcom,cpufreq-hw" or "qcom,cpufreq-epss".
 
 - clocks
 	Usage:		required
-- 
2.17.1

