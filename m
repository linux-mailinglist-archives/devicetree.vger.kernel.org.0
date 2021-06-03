Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54E23399F1E
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 12:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbhFCKlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 06:41:21 -0400
Received: from mail-pl1-f176.google.com ([209.85.214.176]:39584 "EHLO
        mail-pl1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229958AbhFCKlT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 06:41:19 -0400
Received: by mail-pl1-f176.google.com with SMTP id q16so2651957pls.6
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 03:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MBGbqvseaowVXgAUsLtxjTmL1uju2aQqqvQPrdOEUMI=;
        b=PtUIFX5j6+rZW5fTyueSPbez0QVHLoGyxaF0Xk260gvCiKzzUF/F057MwftAPyketT
         IOEzWxFOg5qGolkIJfCnFB4WQArM3fALgXkuTxBIZxs/x5ItQ6D08Gwg4D7JVFyrpQYk
         CgOLh21NWiEuMxa2EZ4Ji1KTUAtTS6mFeMnCALAc3UvKJDfR6ekbSXilJJmbt+RypvI/
         JvQh31+mFFJu2OAC0lc4L02wK8rz4sJWUUBfRaSQmysIyzW/favy1J5BRxSfEnXFraJv
         kkXjmoTXN3833DbXVge3JAIilnlTZFUve2s/k56YRWk0EG4bhzpPtibJQTzTkXRzJUiV
         xDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MBGbqvseaowVXgAUsLtxjTmL1uju2aQqqvQPrdOEUMI=;
        b=b1RNkbeLixW9gZPuoBORnPR1mOJp7dwghHyv92VVAEM//RFr20neEXw1JxMJUs7cQl
         Dan6rMWa0Nv0lMY1v4ciy6YXyobRo5DBCv3rNhGYSypEnhiCiGun+xP91qKmXvVQVbRI
         QnYyu+bmbfNzs+oY9JZ0aA6Y/zqVEdkxQP9RaAwxeqXaK/ijb1iBidtD4cfGJqg9hyZT
         hrrzssZ2H8WmnbgQWxbGOcHOt8dwExZq2xlGrcWcpcwP901/JTzt6eXxY3Lr59UrynRz
         Ukmj3pFk/UuxCNy9Gb3NmWONNJjkTwXzn3wmGlQfDaHKGOPr2dP7uzG2Zi40exEiYStS
         XPTw==
X-Gm-Message-State: AOAM533s6TwfZJKOLoiBjmJiQXG5FirCjNLwNm5aoNWm8BwA/SYenQJz
        Oc9UpBOG9KIbMBJSMslv9O/7
X-Google-Smtp-Source: ABdhPJwFnpLXEPr9AyaW4L1Hrgj1B6bqjOOn9Hd9qW37QhWeTeQE8lPs1HMgmrYB44H/jybAqv5pog==
X-Received: by 2002:a17:902:8a8b:b029:10d:af46:f3d5 with SMTP id p11-20020a1709028a8bb029010daf46f3d5mr3117703plo.22.1622716714689;
        Thu, 03 Jun 2021 03:38:34 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.41])
        by smtp.gmail.com with ESMTPSA id v67sm2053370pfb.193.2021.06.03.03.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 03:38:34 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 3/3] MAINTAINERS: Add entry for Qualcomm PCIe Endpoint driver and binding
Date:   Thu,  3 Jun 2021 16:08:14 +0530
Message-Id: <20210603103814.95177-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210603103814.95177-1-manivannan.sadhasivam@linaro.org>
References: <20210603103814.95177-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for Qualcomm PCIe Endpoint driver and its
devicetree binding. While at it, let's also fix the PCIE RC entry to
cover only the RC driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index bd7aff0c120f..cdd370138b9f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14254,7 +14254,15 @@ M:	Stanimir Varbanov <svarbanov@mm-sol.com>
 L:	linux-pci@vger.kernel.org
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
-F:	drivers/pci/controller/dwc/*qcom*
+F:	drivers/pci/controller/dwc/pcie-qcom.c
+
+PCIE ENDPOINT DRIVER FOR QUALCOMM
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-pci@vger.kernel.org
+L:	linux-arm-msm@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+F:	drivers/pci/controller/dwc/pcie-qcom-ep.c
 
 PCIE DRIVER FOR ROCKCHIP
 M:	Shawn Lin <shawn.lin@rock-chips.com>
-- 
2.25.1

