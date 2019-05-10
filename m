Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 637F5197A0
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 06:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727018AbfEJEe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 00:34:26 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:40849 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725904AbfEJEe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 00:34:26 -0400
Received: by mail-pg1-f193.google.com with SMTP id d31so2350690pgl.7
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 21:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ib+MUjfQhZnZSro4VhngEMbvlKvKCZvtG3Xyv5qHdHM=;
        b=Y8kT4pXGqWTcxgxc4KCfDvBPKoX9ELoCs2hDyY4Ly2GO7yVbII5C5sIybh7CoMWWhn
         4irrfpAX6ysaErLDHDcQJRGttSZkhh9Ww19O4oEUoX5Wbl8w0QiEkoN7U8w2gWc7MbkW
         AqhObpLDDOK2kISIX3NSTtSucgohoBF4rSc+YzDtS8HF+vo0q/yfsdNP9L5CqD25sOsV
         PtGgfAAyumJepwJX9awssnffDPrKnW8KYZTbSbyPqXFjhgsqKv6kGET/MTYWpsHZkmK1
         39EJ/vXp90+YA8s+wb0a29uGlUi02OibPxvIzcamKW2OrcAS1QMohj5w5Mc1xXKnnSBU
         l8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ib+MUjfQhZnZSro4VhngEMbvlKvKCZvtG3Xyv5qHdHM=;
        b=aKz8bxA72EpEZ3FWqq5Kr4XoNozpWlN+cceOLdkHUO7rypHIhDd/IgTditnaH+HE1W
         lB/EzKc2j1TUr2Ky8HFOxWNcCc0sqIgLXo/m7ZN79rctbI+eAF7DGlhK3+DpFMYQeY1M
         2HptpUn7tDArOwnPK5WgTIUd/Zjyqj1btK5InSpdo2xtzkZ92goDzjpzGNoIm9piw1Uf
         /8YAzAjrAphUQVDlWS5nhzgfWcThiOpwQ6U4YigzjEBuE5D76J5dpoRFN3A+QpFZrqks
         deVr14g4wBIjFZfprfvG4QDvX2aH4Qn+h9vTm82Q1VXpLksnoVTbfnqeW9N5cyRbZmsl
         MgNw==
X-Gm-Message-State: APjAAAXbPRyjhYR3+HlzS6658C6RmVjmjr3N/cP+IwqF7+iMvIUOuIh1
        gO+he4gnsgl0aCv6mz/EUEgtdw==
X-Google-Smtp-Source: APXvYqzWbJYyDIfDb0r0u0JljNU5JZ51XRGaYNlxCB4WAlDG+AP+mkXCY46HRjIg+iRu5M3TEr3K5Q==
X-Received: by 2002:a65:4907:: with SMTP id p7mr11059685pgs.288.1557462864894;
        Thu, 09 May 2019 21:34:24 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s17sm4785317pfm.149.2019.05.09.21.34.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 21:34:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/8] Qualcomm QCS404 CDSP improvements and fastrpc
Date:   Thu,  9 May 2019 21:34:13 -0700
Message-Id: <20190510043421.31393-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series introduces the non-Trustzone based CDSP support, restructures the
remoteproc nodes in the dts, introduces the IOMMU and adds the fastrpc nodes.

The matrix_multi app is used for verification, the test completes 100% of the
time, but exits only succesfully 70% of the time.

Bjorn Andersson (7):
  dt-bindings: remoteproc: Rename and amend Hexagon v56 binding
  remoteproc: qcom: qdsp6-adsp: Add support for QCS404 CDSP
  arm64: dts: qcom: qcs404-evb: Mark CDSP clocks protected
  arm64: dts: qcom: qcs404: Add TCSR node
  arm64: dts: qcom: qcs404: Fully describe the CDSP
  arm64: dts: qcom: qcs404: Move lpass and q6 into soc
  arm64: dts: qcom: qcs404: Define APPS IOMMU

Thierry Escande (1):
  arm64: dts: qcom: qcs404: Add fastrpc nodes

 ...qcom,adsp-pil.txt => qcom,hexagon-v56.txt} |  35 +-
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi      |   7 +
 arch/arm64/boot/dts/qcom/qcs404.dtsi          | 364 +++++++++++++-----
 drivers/remoteproc/qcom_q6v5_adsp.c           |  73 +++-
 4 files changed, 358 insertions(+), 121 deletions(-)
 rename Documentation/devicetree/bindings/remoteproc/{qcom,adsp-pil.txt => qcom,hexagon-v56.txt} (74%)

-- 
2.18.0

