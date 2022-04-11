Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B039E4FBB4A
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 13:49:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345409AbiDKLvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 07:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344951AbiDKLvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 07:51:45 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F941AE78
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:49:31 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z17so1621325lfj.11
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KPSuZGByI87QsH9m8PpQqLZznscpjYkc9YqqDy/ojVQ=;
        b=hNS3WpWUzvSNewhx5PaqtesigPp1npOedb3SwD2BhYS7pVJ/NbkS/Gy8nhj/mjS1kt
         m8YNOyOF+4wpogt3/6diMgZaCnI1M2FK9+2QdBdgLPqzd5H7orFhJiFv0XgQqifj8UYu
         0BWd/cf7QUkvOLv0Q4UArtR+ozBeDxw6zDEhYhSJHj0HHr0TsHtyXs0YJQLHH5ztWJjz
         8NDglswRvBivaYFkZNr+E9+j0vDDIup517s+PWpHinRS29BVsO+g4afM4KdWiJOG6GYJ
         8AjEezzUbH9Fa/d2sx0Cd50kduWGU1CkrcYYQ8DYU3onV3DP8qk/pUyYQCfaLkqKrhrG
         yvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KPSuZGByI87QsH9m8PpQqLZznscpjYkc9YqqDy/ojVQ=;
        b=I+wcvi27kWRf7hf/KrFSHSRF0UAhLT1vFmtyha56mtOoNrcrXgDGFpZl1iatcOUJSB
         XVkcqlkMYwRGe+sfJCfoRLgWjLJSvtN2pq8GRvLMLytJY7Nd0ibP94ukkfD52JBSMRvb
         tNP7B9XWWEnrqlcP7lAptHXkpGsm7JGMoOQgb30CWY/a1jQda+9LTgAfC6SIQ/79bFVO
         d7R/nHxFUDYXn/F/FNF4jpugx4xQZH7BBbHcsRUZrzcPnIHw7Ze/ZOy6t/2/b1lgYYcH
         ftr4z6+MEddJT+ZtWrnUDpQ4z3wLBib+J9T9w+MsYl1okCUCz2oEPPysNZq2ODwhGgOa
         O4Hw==
X-Gm-Message-State: AOAM533Wd7HutuLS9aAgsdHmLEyDUEAtWXIgBmELTWkFNDEa/42rBLtG
        fI2FVW+0CcRN/nPHb75m2n6x5A==
X-Google-Smtp-Source: ABdhPJy/upLw1Kc5zdQ2ipXC1RLAreMIumuet2iMpvQ3/V7rmku0CYB9aofhcADSbGigz0Mxu1+0MQ==
X-Received: by 2002:a05:6512:15a3:b0:46b:a5ad:421f with SMTP id bp35-20020a05651215a300b0046ba5ad421fmr3824032lfb.618.1649677769560;
        Mon, 11 Apr 2022 04:49:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y21-20020a05651c021500b0024b5d56484dsm587973ljn.83.2022.04.11.04.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 04:49:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH 2/4] dt-bindings: pci: qcom: Document additional PCI MSI interrupts
Date:   Mon, 11 Apr 2022 14:49:24 +0300
Message-Id: <20220411114926.1975363-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411114926.1975363-1-dmitry.baryshkov@linaro.org>
References: <20220411114926.1975363-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Qualcomm platforms each group of MSI interrupts is routed to the
separate GIC interrupt. Document mapping of additional interrupts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index 0adb56d5645e..64632f3e4334 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -57,12 +57,14 @@
 - interrupts:
 	Usage: required
 	Value type: <prop-encoded-array>
-	Definition: MSI interrupt
+	Definition: MSI interrupt(s)
 
 - interrupt-names:
 	Usage: required
 	Value type: <stringlist>
 	Definition: Should contain "msi"
+		    May also contains "msi2", "msi3"... up to "msi8"
+		    if the platform supports additional MSI interrupts.
 
 - #interrupt-cells:
 	Usage: required
-- 
2.35.1

