Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76758479B2B
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:10:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233345AbhLROKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:10:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233337AbhLROKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:10:31 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3DFC06173F
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:10:30 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 207so7865773ljf.10
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lFt6X0KER9eQ+C0OYY/wY0eK0N3IsPMop2A/RWQEB+8=;
        b=Sv78hEqnXqXaU8ZsZL+1SFCTGZio744Bua3QkrdgMwABcuhMRNQCQxnq6V0H8yLzRp
         5B8s9Bg9pgSENp2SVlkwmR3dJJ5UqmCa8VuXdkROUho77JvyIz6qXMdYXrjIwnvD9hUZ
         NoqUDmdcjf315URgqhjhttQX7CtaSZsNn1LdQeS5ceZGIPARlPqIBu2tgMdvbnYr1C78
         OxRm0+p4tN+jFDxYauWeNHdWDuTm+9R8RtAXs+U3czmoq+IaFgOmwSkA19Plt9dGVJpY
         rvi3HlXMH9o315iWLFMvnPFvQt43yaHctk/N29/w5Gj/noEQ3P3FRScTEIlLu7UBp0GA
         nZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lFt6X0KER9eQ+C0OYY/wY0eK0N3IsPMop2A/RWQEB+8=;
        b=UqeG5nMOH0bV2dDG992EeUpKeOlruYFTRPGm7mNlfTxTd7DqJMOal8uUf/QGv86mo8
         HkEH3h4seGawNAAOzb/ydJV8pvj7iVxkvgxvlbwuEYwTVhIWTPv/wB1f4L93uHuCql6V
         dskUndienMNNETsZavaCeP91kzDuTwt0/eVqqKXV1hg0X2RCCdv3zjaRlXxWmOHoaJ80
         buaO87OiTRZe1RLbtepYWawCIJ6mA7WTYbOREFMVMTDdWEN+02d8LwX8sOxZ3eZkruYV
         Xrx45zVNMndxsGr4a6NIqQkTKmBA6KF8tHvS1qKg4RpTA/CDFLbyJe3U5phMv7B7LU7Y
         6JxQ==
X-Gm-Message-State: AOAM530CZGBKF5d78b3IeJwj7w0KEZV9x9aRX5cw8Z0QbM307DKL2/sz
        LgtXOJn1cb9mMFBQ384YdAzvKP4xOnmHI4kx
X-Google-Smtp-Source: ABdhPJxQx+BiEdXyNqa+ssNg1vIeTyUlhVk9vDvWUSuNBVNNrFZigv7asswBCg3rY4KUd29fi861xA==
X-Received: by 2002:a2e:a305:: with SMTP id l5mr7140349lje.73.1639836628838;
        Sat, 18 Dec 2021 06:10:28 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id c2sm145789lfh.189.2021.12.18.06.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Dec 2021 06:10:28 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v5 0/5] qcom: add support for PCIe on SM8450 platform
Date:   Sat, 18 Dec 2021 17:10:19 +0300
Message-Id: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. Add support for both PCIe
controllers

Dependencies:
 - https://lore.kernel.org/linux-arm-msm/20211218140223.500390-1-dmitry.baryshkov@linaro.org/

Changes since v4:
 - Add PCIe1 support
 - Change binding accordingly, to use qcom,pcie-sm8450-pcie0 and
   qcom,pcie-sm8450-pcie1 compatibility strings
 - Rebase on top of (pending) pipe_clock cleanup/rework patchset

Changes since v3:
 - Fix pcie gpios to follow defined schema as noted by Rob
 - Fix commit message according to Bjorn's suggestions

Changes since v2:
 - Remove unnecessary comment in struct qcom_pcie_cfg

Changes since v1:
 - Fix capitalization/wording of PCI patch subjects
 - Add missing gen3x1 specification to PHY table names

----------------------------------------------------------------
Dmitry Baryshkov (5):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
      PCI: qcom: Add ddrss_sf_tbu flag
      PCI: qcom: Add interconnect support to 2.7.0/1.9.0 ops
      PCI: qcom: Add SM8450 PCIe support

 .../devicetree/bindings/pci/qcom,pcie.txt          |  22 ++++-
 drivers/pci/controller/dwc/pcie-qcom.c             | 101 ++++++++++++++-------
 2 files changed, 91 insertions(+), 32 deletions(-)


