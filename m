Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A17E2E1043
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 23:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726841AbgLVW2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 17:28:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726282AbgLVW2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 17:28:21 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253AEC0611D0
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 14:26:53 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id i24so14395888edj.8
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 14:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QM3qTNIGNxG/WHeZll7yyCa9Z+1LXQcPrYea97FUIZM=;
        b=xpXcwW8quCCuPqxyQZj2SpKSrzj/zkryI+VwMag56clV+jcfZcIIFKL8soE2BoTbNL
         WylfRmHyEQP0zXxGtpirQ+q9C9LnK4fgTSoTBh/wM3QaJgPOJ+W4OERNi6qan+qhJtYU
         tfuygKi8jLoTG3UC19rsnJ0fVcb8zVnfHgo2dpApzbt52n/dq+LmQAdcQWshgnEfznSh
         hm+xkpP9/UHmB3RNy13LMIfBp/asFo+dZZXDmmUpgKyN+strf9BX2dkkq+Ss5yX6jF8f
         olQ8LSE0h3Um7/QKEG8xactGpvCwmkwhaKPtiDImEst0ro07kkAGCgCjHp8LIfJNEZSD
         smlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QM3qTNIGNxG/WHeZll7yyCa9Z+1LXQcPrYea97FUIZM=;
        b=Ngb44G/Uxi4CUOwP6ufpddNip4MbbVwjSa4m7fNAEc5SDmndt7XLbRzLZxXr8/tmmD
         k4JKSUs09JHjDt5TOo+CaMS1S2eD6A7hobq4lGADeQ+/YP5FULpFpgVtSycZ5a9geI7B
         b3YsWkrRzK+iPbSbx2+jSnoG8pXkiEkzLx90nd/CELasTbHVrYeLif/XGN9yMCAvsBhh
         q1QOV+pQsMqLQlfe+q4UJ9nVXLe3lfKE3UAlTEHCBuz2W8rpOgUX8HTkr9KT1LFprD9p
         56LyRUGcxkV3yMVH9NybygtV0V+gWBv3hS2eLhbAP9s3E79pROtvNAkKZoG3lbQJSgNn
         pKlg==
X-Gm-Message-State: AOAM533rjVCDdcNPeQbILq+dxUUFtQ3a0F0wOf+FB86ZlO/XlyhwifY5
        26SOd1fZArst/qXXZhKjv0Qs9Q==
X-Google-Smtp-Source: ABdhPJySHq30/8MvKbEXin/mTMu57vy/4J8Vl2P3EGx+35Mk/rcBJce2OTlDJz7DA4LHpKHkv2/vxA==
X-Received: by 2002:aa7:cb49:: with SMTP id w9mr22911540edt.357.1608676011907;
        Tue, 22 Dec 2020 14:26:51 -0800 (PST)
Received: from localhost.localdomain (dh207-99-167.xnet.hr. [88.207.99.167])
        by smtp.googlemail.com with ESMTPSA id c23sm30515385eds.88.2020.12.22.14.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 14:26:51 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
        netdev@vger.kernel.org, andrew@lunn.ch, linux@armlinux.org.uk
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Subject: [PATCH 4/4] MAINTAINERS: Add entry for Qualcomm QCA807x PHY driver
Date:   Tue, 22 Dec 2020 23:26:37 +0100
Message-Id: <20201222222637.3204929-5-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201222222637.3204929-1-robert.marko@sartura.hr>
References: <20201222222637.3204929-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Qualcomm QCA807x PHY driver.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 281de213ef47..a86731f86292 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14546,6 +14546,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/regulator/vqmmc-ipq4019-regulator.yaml
 F:	drivers/regulator/vqmmc-ipq4019-regulator.c
 
+QUALCOMM QCA807X PHY DRIVER
+M:	Robert Marko <robert.marko@sartura.hr>
+M:	Luka Perkov <luka.perkov@sartura.hr>
+L:	linux-arm-msm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/qcom,qca807x.yaml
+F:	drivers/net/phy/qca807x.c
+F:	include/dt-bindings/net/qcom-qca807x.h
+
 QUALCOMM RMNET DRIVER
 M:	Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
 M:	Sean Tranchetti <stranche@codeaurora.org>
-- 
2.29.2

