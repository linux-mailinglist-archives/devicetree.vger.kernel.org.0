Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 871693249AD
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 05:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234403AbhBYEMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Feb 2021 23:12:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233889AbhBYEMU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Feb 2021 23:12:20 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C79C061574
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 20:11:40 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id d11so2477811plo.8
        for <devicetree@vger.kernel.org>; Wed, 24 Feb 2021 20:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kWvndBzAFJbUCgudW2fOtKqRm0n+8przz6MQZbJUpfg=;
        b=z4pBsimnaBnUQtZQfOxFmngvwePpdxMwoFXUQNzRUF6W57v0QRDbUckzNug5MJjice
         Ylc/0iP8yBDCx3i4li2GTnuEVaMOmwZBn7cxpoL6epUvjJlWDYCBAatTBs3BPyAguiJJ
         O6IggNMCEvlkIyPl0oaqW5mVKwsqr/ChMHMiL2HT+0+Luea5yXgjgADE8BxuTStQFk4i
         nBgUiYciwvHWE66gHpQcCFHhF1QJlcdjWLxEZUxwBIC/vUNwS7wBHDF1Ui62lPgDDbQ6
         fpMMPa9xBndwbaCSTG53HrFm5gb3XF/lAbz2TT/0Wp3PK8mNHGOrIIjZANC4Kj8dFJzz
         8D0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kWvndBzAFJbUCgudW2fOtKqRm0n+8przz6MQZbJUpfg=;
        b=DHlGkFqXgflJLNF5wudMpl/lF05ir5w1vHjv4cygMmEAWuZAp0U0B5vJe0wb/EqsmC
         uS70Jiu2mDbYgIxJaJg579u74nft548FWRcRYMA3yl81NMjANkD4cBsKpQxYxEHFBo7P
         PgGnmr8qhkpm6HrGX1yv4Ruz+PBXxW++H43Fza15z474owRYrUcxioN13EFEqkPY0Bx4
         YwP0RFM6viCZMwyZyrIHiP564C7WcSUjFqeLTrnEmbbJmVTJ9X85tdp2OAvuG19Q6dUp
         8ivJ9pxOqyPRSFJ8J6EsRdbjNfiG8mj4Ybw57rpnfTgZnhGzQfhI5poIB7cfhs6RDeJB
         mQwQ==
X-Gm-Message-State: AOAM531KDzB9gJEtdKTHA3Q+MxAodUpWHXroxOIxh31l4BhqOw5fxM7O
        69f/YVc8K0OQzwXNimat0se7
X-Google-Smtp-Source: ABdhPJxjzQUHOO9pmE1ewQkHZu3Xe9wtIoxLEISh0thnwTBmC8+3r4lMS1sM7XmWKFQW+4N+4+6qoQ==
X-Received: by 2002:a17:90a:cc02:: with SMTP id b2mr1240825pju.115.1614226299834;
        Wed, 24 Feb 2021 20:11:39 -0800 (PST)
Received: from localhost.localdomain ([103.66.79.45])
        by smtp.gmail.com with ESMTPSA id c12sm4155494pjq.48.2021.02.24.20.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 20:11:39 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/3] Add support for secure regions in Qcom NANDc driver
Date:   Thu, 25 Feb 2021 09:41:26 +0530
Message-Id: <20210225041129.58576-1-manivannan.sadhasivam@linaro.org>
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

Changes in v2:

* Moved the secure-regions property to generic NAND binding as a NAND
  chip property and renamed it as "nand-secure-regions".

Manivannan Sadhasivam (3):
  dt-bindings: mtd: Convert Qcom NANDc binding to YAML
  dt-bindings: mtd: Add a property to declare secure regions in NAND
    chips
  mtd: rawnand: qcom: Add support for secure regions in NAND memory

 .../bindings/mtd/nand-controller.yaml         |   7 +
 .../devicetree/bindings/mtd/qcom,nandc.yaml   | 196 ++++++++++++++++++
 .../devicetree/bindings/mtd/qcom_nandc.txt    | 142 -------------
 drivers/mtd/nand/raw/qcom_nandc.c             |  72 ++++++-
 4 files changed, 266 insertions(+), 151 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/qcom_nandc.txt

-- 
2.25.1

