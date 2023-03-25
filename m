Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 515706C8FA0
	for <lists+devicetree@lfdr.de>; Sat, 25 Mar 2023 17:53:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbjCYQxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 12:53:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231819AbjCYQxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 12:53:06 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E531116D
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 09:52:50 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id c18so4525039ple.11
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 09:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679763170;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5VOIjGylY9WGOefinV0JBeKQN6rOGlg5sVMpRj7URM=;
        b=b0ovAW9+SEAjtc+peHfDLX5rtcX8AXXRjl4iscRRow+ZVnuPzr6BDeLXCiuIR9Ma0q
         DPnFGtD4KWJIeUK6mRnggjQEzN6V/aF0Y6JN6ntXikumKJIV7ZdBu9vAQqiKsR012JVR
         xJRGO52FVXyMRzVuZK9DkFcatmALBnFLj7zhDp6XHSXwppQaKgIfQFqbcpHebk5ucMJ/
         67dwnIKFW4/Eaqoq0/JoOe971XslCX531qORSEm58DdJ2K0E/278Yf4oULn2wBTNJXdW
         49Nk7coEkY3z4mzeMLKVoxM4bgIV5HqI1Sk/T5YUXF0Wq4tFINMgLOecOnde+bgghH2U
         bWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679763170;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o5VOIjGylY9WGOefinV0JBeKQN6rOGlg5sVMpRj7URM=;
        b=7cmKVfVPIrY9zbUZB7DGUR2G88ESpabUaO2TJdgwjj6+pJ9cBwhAq4+ZdmRIwtZHOJ
         LpKkDD+KzvLn4toRLFdQR09HUGWL0c6pclQ4Wl+qXtP1VBIgvaE7QBCMwmSJoLiW0/k1
         aXJ6TFWGJCRoNexH6rt+Tyaf6a4PPr38OZJjYfuFZDCIUVbsXkI5SSg+Ce0eqc14Gvmj
         YgknIqs6yrNvmrWeJG1w+BBaZc5erhfWPstmtCeOMWirgB7AGNCGwodgWPaKfIXwjVbT
         jN5CUQBwTyV0wfWTysy0CQw1xkEBxqnFetkvMWM6ovHQqh4zYIfOClv0GGbZRF9kgdYA
         x5FQ==
X-Gm-Message-State: AAQBX9ceHyBpbSB5DjgC7WStyMRNt1Fnhej8ekEiVfOyTppsAih8Rapy
        UbjfZvPCtmApn8qi9j6U8HZP
X-Google-Smtp-Source: AKy350aXEhO03eb00DeoR6EXEXBTy8f+8NvpxkraBlsigoQlOsbG0I7JVtpRge3Gl5Z0UyYcRDWcCg==
X-Received: by 2002:a17:902:d2cb:b0:1a1:db10:7ba3 with SMTP id n11-20020a170902d2cb00b001a1db107ba3mr9473748plc.2.1679763170186;
        Sat, 25 Mar 2023 09:52:50 -0700 (PDT)
Received: from localhost.localdomain ([117.217.184.99])
        by smtp.gmail.com with ESMTPSA id p5-20020a1709026b8500b001a1aeb3a7a9sm14889787plk.137.2023.03.25.09.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 09:52:49 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, Thinh.Nguyen@synopsys.com,
        gregkh@linuxfoundation.org, mathias.nyman@intel.com
Cc:     konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 5/5] usb: dwc3: qcom: Allow runtime PM
Date:   Sat, 25 Mar 2023 22:22:17 +0530
Message-Id: <20230325165217.31069-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230325165217.31069-1-manivannan.sadhasivam@linaro.org>
References: <20230325165217.31069-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dwc3-qcom driver is capable of doing runtime PM on its own, but currently
it requires userspace intervention to enable it. But there is no harm in
letting the driver to enable runtime PM on its own. So let's get rid of the
"pm_runtime_forbid()" and make sure that the dependency is maintained with
child devices using "pm_suspend_ignore_children(dev, false)".

Also during remove(), the device needs to be waken up first if it was
runtime suspended. Finally, pm_runtime_allow() can be removed.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index f1059dfcb0e8..5f26bb66274f 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -920,7 +920,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
 	qcom->is_suspended = false;
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
-	pm_runtime_forbid(dev);
+	pm_suspend_ignore_children(dev, false);
 
 	return 0;
 
@@ -948,6 +948,8 @@ static int dwc3_qcom_remove(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	int i;
 
+	pm_runtime_get_sync(dev);
+
 	device_remove_software_node(&qcom->dwc3->dev);
 	of_platform_depopulate(dev);
 
@@ -960,7 +962,6 @@ static int dwc3_qcom_remove(struct platform_device *pdev)
 	dwc3_qcom_interconnect_exit(qcom);
 	reset_control_assert(qcom->resets);
 
-	pm_runtime_allow(dev);
 	pm_runtime_disable(dev);
 
 	return 0;
-- 
2.25.1

