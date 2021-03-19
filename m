Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730B834205F
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 16:01:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbhCSPAl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 11:00:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbhCSPAY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 11:00:24 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2543C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 08:00:23 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id w11so3077260ply.6
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 08:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5Nw3l3C9BhgQoUREMWsI0hgInH8MQVfR6+8IVWCIdo=;
        b=LRfVRr52FqDBkEVxTUXWNlPa4tABOweGyyPlJeYU/Y4rVMgc4Bk30CXouKPWd/ngAt
         c/kNNTvvcSVlT58veMoXnjecZ2pAftOLbWfUWf3A0DdBhBsC71WmhL1mRSBbGB05GyBc
         JN+r9/zzKisMlhi4ItfeSr0fcJVsk9KuCM638bJikQJG3c7J2r8i0WOcImvgzyzWp+/V
         UB0XnGmHoUpNFBN7v99yEwj8hBysFV+73wkjXSmvv4wrWiiJ4ds14SaWY1Ow7AEnLml+
         Lp2hbrVKQwlQ2+VOIV40epu/D99cdP2CPfv27K1nIh6+jWmkbLx+pwAWKQi78eXDjAdt
         U4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M5Nw3l3C9BhgQoUREMWsI0hgInH8MQVfR6+8IVWCIdo=;
        b=FRVzkqBIw3fF6mIO4eCXbcCLHq7+uvHxSa6FiSaUXGDSoSQCiHLzLGjb6+kYpxjFE5
         O/tSq55sel98ex3eduGYEeTzhYNhjqqbWdfPSWIOzv6ysZKh4HS1RH8rWxDDo/9R9Bty
         tgXS+WKYiooOphkqyE6ZKIHfdjQ4LdJxPPvQY2Lmt1a2AK4VShyTA7Oiteod/hiROSqU
         7Oy3CdE75f8C0JNeL9EXK7WyO0lhgXSjDlQNipyQuBYecICHTjFnFyOgrEvDWqPvvsWa
         6IhHEVRQyhK2uUEkhuheDyYpZdHWYpJNw6I6F9gh/c2jde9yP7b6CoC1xgD3ByJ4494d
         7ORw==
X-Gm-Message-State: AOAM532H7owfWjxKLCUH+J6Xx1Cxorcx8G0ZzasRfDnfikcigcNduxqJ
        HR0+lwHTPlMItjcMauHZjvg0
X-Google-Smtp-Source: ABdhPJzRdG3EHRNcsqeZH3zxvrakB+67UgBZfGqv+04SW1ZSsKQqM3nJoZmfPsjgN7aWs6aw8q5tdQ==
X-Received: by 2002:a17:90a:be07:: with SMTP id a7mr10450804pjs.75.1616166023408;
        Fri, 19 Mar 2021 08:00:23 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:387:dba9:92f4:36c7:1aec:59de])
        by smtp.gmail.com with ESMTPSA id h19sm6092345pfc.172.2021.03.19.08.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 08:00:22 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v7 0/3] Add support for secure regions in NAND
Date:   Fri, 19 Mar 2021 20:30:07 +0530
Message-Id: <20210319150010.32122-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On a typical end product, a vendor may choose to secure some regions in
the NAND memory which are supposed to stay intact between FW upgrades.
The access to those regions will be blocked by a secure element like
Trustzone. So the normal world software like Linux kernel should not
touch these regions (including reading).

So this series adds a property for declaring such secure regions in DT
so that the driver can skip touching them. While at it, the Qcom NANDc
DT binding is also converted to YAML format.

Thanks,
Mani

Changes in v7:

* Made "size" u64 and fixed a warning reported by Kernel test bot

Changes in v6:

* Made use of "size" of the regions for comparision
* Used "secure" instead of "sec"
* Fixed the sizeof parameter in of_get_nand_secure_regions()

Changes in v5:

* Switched to "uint64-matrix" as suggested by Rob
* Moved the whole logic from qcom driver to nand core as suggested by Boris

Changes in v4:

* Used "uint32-matrix" instead of "uint32-array" as per Rob's review.
* Collected Rob's review tag for binding conversion patch

Changes in v3:

* Removed the nand prefix from DT property and moved the property parsing
  logic before nand_scan() in driver.

Changes in v2:

* Moved the secure-regions property to generic NAND binding as a NAND
  chip property and renamed it as "nand-secure-regions".

Manivannan Sadhasivam (3):
  dt-bindings: mtd: Convert Qcom NANDc binding to YAML
  dt-bindings: mtd: Add a property to declare secure regions in NAND
    chips
  mtd: rawnand: Add support for secure regions in NAND memory

 .../bindings/mtd/nand-controller.yaml         |   7 +
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 196 ++++++++++++++++++
 .../devicetree/bindings/mtd/qcom_nandc.txt    | 142 -------------
 drivers/mtd/nand/raw/nand_base.c              | 111 ++++++++++
 include/linux/mtd/rawnand.h                   |   4 +
 5 files changed, 318 insertions(+), 142 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/qcom_nandc.txt

-- 
2.25.1

