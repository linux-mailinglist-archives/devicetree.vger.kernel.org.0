Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C28B4261F6
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242028AbhJHB1u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241550AbhJHB1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:45 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 794C9C0617A6
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:45 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id t9so31419485lfd.1
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eRXNWHuPd38vN0RWOcJ4q4RHGL96UR0p/zcT0YWhKTU=;
        b=sXE/eokBQnk60sMw5lWBy7jhROc6GuZGLiOdTuXJ6YRADlfelKLdAijTh9GVCPCPh9
         X5f2UvW6CMDzqkGyBaA9E/pTjKqxOqXMaBnJxiqkNzCbxnSv/Qi90sD6fjN01SjI6Ldc
         qsMqDtoHT8VswmMd01z3Fds+in+YbSjA7wV9WQ54W+GQTebOsi+sPuVkd8A+cJPmOk+P
         Y73mGGD7ec2z/tQZ7Y37BZL0qtVEdH/yZSRVbt0SipTEeINgPdG4bejlX52XxBhvGfaQ
         0fKpH7N6iTh9+0L9LmgAHaxtjhwUI6zEYcLsu5Jc/cLnGF+RbHn7MoRLSBQkMFcNorgA
         NIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eRXNWHuPd38vN0RWOcJ4q4RHGL96UR0p/zcT0YWhKTU=;
        b=50WrDvVKlYNypzbzkDMDBrQeuUcY8/IyughzWG32SrCoFdKWIiFi4U7rNYxsRST1cy
         2hE9UFMDc14qZJ1VCtZjJv01vtHZK1KLdd9Y9K03SPkGdrWyCYr4k2HAthUP6OUgG/Vf
         zIT3OElr1BksrJ+0pvJTODEibHNK42t0zD5C2ZBOZq4iKoqr+ziCf7XotWw5cvMZ4BLy
         N5RrcOrAwGBGyrHOxe3VVndGJ/98FNE48M/d7RCjIfZXdmJm6jazz0kSIxusDA4mpkpg
         Y5aGRQKJQCvynAw4MMNquhd42AdIyMpBhjrvio5naAfF2JFNHtypx7VelKv/g++S8Yhy
         iRbQ==
X-Gm-Message-State: AOAM533e9sTWBXicrAYPG+AWcz4kTY3HgloJKwTIPYY8M/7EtHAfCFyu
        4rKL96UlCSwqxj0s9nfJYgC8gvZcpiY0vA==
X-Google-Smtp-Source: ABdhPJzdwYYOHak+ok2LG8aFPMRytg1r0MqaPHeikvw5/pVuEW0puGgbKabv9hmR2usFiGg0yJHryQ==
X-Received: by 2002:ac2:54a6:: with SMTP id w6mr7407261lfk.61.1633656343905;
        Thu, 07 Oct 2021 18:25:43 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:43 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 24/25] arm64: dts: qcom: pm8916: add interrupt controller properties
Date:   Fri,  8 Oct 2021 04:25:23 +0300
Message-Id: <20211008012524.481877-25-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the pmic-mpp is a proper hierarchical IRQ chip, add interrupt
controller properties ('interrupt-controller' and '#interrupt-cells').
The interrupts property is no longer needed so remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8916.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
index 7d9e25dd9e3a..55a386d05809 100644
--- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
@@ -96,10 +96,8 @@ pm8916_mpps: mpps@a000 {
 			gpio-controller;
 			#gpio-cells = <2>;
 			gpio-ranges = <&pm8916_mpps 0 0 4>;
-			interrupts = <0 0xa0 0 IRQ_TYPE_NONE>,
-				     <0 0xa1 0 IRQ_TYPE_NONE>,
-				     <0 0xa2 0 IRQ_TYPE_NONE>,
-				     <0 0xa3 0 IRQ_TYPE_NONE>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
 		};
 
 		pm8916_gpios: gpios@c000 {
-- 
2.30.2

