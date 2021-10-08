Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBA494261C9
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237054AbhJHB1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbhJHB13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:29 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC6E8C061768
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:34 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id x27so32284827lfa.9
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jPqe703H6IymTOKSZQDO6LX/0zlyxMHngDY3uRoclEk=;
        b=uJgSuxFdLZN7ePM6wH+96t2n+DPHBqLeAszdom840iKOnzfwFlh2K5EJv5ccn5i5Ay
         c88gbpvUK06xWacn0aiVry6qdIVO7XPnk7bSUbK58enUzsnhWDrRqXxJ4MNTLdZPMSdn
         dPaD3f14YTf9RML2mrVyY/I7q3qwi1594f1m8PaxaZJ/BjJP7dTC5YrI5mR3JEZsNgd7
         Vc0HHhDOLI2GG3fftoBoEIDBZxFMwzL/JwTg6+pK4xh+KSk3U3yFGxEUNm5adh4SW7VE
         X0OH61CY+P1x1j22mebXtnvq5ns5NLo+68qXt3ULXVayT1/o+JAuC/YagrWRwIItXrhd
         dj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jPqe703H6IymTOKSZQDO6LX/0zlyxMHngDY3uRoclEk=;
        b=TWxsic3mHJd0Q0wV5Jbk18P2N2yt+CmyAE4HizejENKZSEpMlaZxMgDa0r3SevA6bU
         sYiJu+LHwcZ0NUs7PW+C9oCdICGw0SQStnpuzXSqd9aCEoe+GxlyvHakng75DUXCg6DP
         cejX7N7uJYIxpN506u6Znot3lfk70ZY+Z5M9Miz/EpkuZrwX/aifApu3T0KXB5Alz2dp
         UPP8gJ4CleNjy2UQ00Lk9y8G5UOCCkmeadpgaQ7022bFuQ716HJFhfhQxfbGj7D4yK8g
         cnbn307l3ZsqdcKWNr3PKdFMyGwjfh7LxPdMK9R3sf6Aacnir7P1fN27N2KY4erBZHK3
         lbng==
X-Gm-Message-State: AOAM533E0m8qFtrGzR8TkaicHDWXGVfG8snT+9F6BYhyndy7PmUOe6/0
        6jp03h1UKwjmkzdugskXgxCoMw==
X-Google-Smtp-Source: ABdhPJwMxbV0vtkbZvaATJwbz9qAxRs/uR2BDyciy0OSyfS7SqgfG/Kd1ol93HvioqxwiS8XVjW/gQ==
X-Received: by 2002:a05:6512:c24:: with SMTP id z36mr6419114lfu.62.1633656333297;
        Thu, 07 Oct 2021 18:25:33 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 08/25] ARM: dts: qcom-mdm9615: add gpio-ranges to mpps node, fix its name
Date:   Fri,  8 Oct 2021 04:25:07 +0300
Message-Id: <20211008012524.481877-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename mpp node to mpps@50 (instead of mpp@50). Also add gpio-ranges
property to mpps device tree nodes, adding the mapping between pinctrl
and GPIO pins.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index dda2ceec6591..cfff1a5706ed 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -300,7 +300,7 @@ pwrkey@1c {
 					pull-up;
 				};
 
-				pmicmpp: mpp@50 {
+				pmicmpp: mpps@50 {
 					compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
 					interrupt-parent = <&pmicintc>;
 					interrupts = <24 IRQ_TYPE_NONE>,
@@ -312,6 +312,7 @@ pmicmpp: mpp@50 {
 					reg = <0x50>;
 					gpio-controller;
 					#gpio-cells = <2>;
+					gpio-ranges = <&pmicmpp 0 0 6>;
 				};
 
 				rtc@11d {
-- 
2.30.2

