Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C117326C390
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 16:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726509AbgIPOSm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 10:18:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726615AbgIPNcn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 09:32:43 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E8F8C014D6A
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 06:20:23 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id u9so3179066plk.4
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 06:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=tdOFUZh3LY5QuHGnOCX8BttL0CjvetqcKHFgt32bNC8=;
        b=kDeOGHzo6ODa94vjhKjernayhpGqi6FSvbuGB7wrUZzSHldsXMPnTScMhpe6RHf/Ur
         EV0eCx9jn2zVRvmx9FvD6B1n/e7VV99+DZxtOA1dtRTrFalnMWDDrorI6vzT+67TPyi1
         aSuOd9dsEXmuIq+93YPAqWE87V5euz28b23JOL7A69AjEYMPb/9wlfQcBJRTQ3h8smSr
         jbjaY6XcstN6ZhjSzNAYhc7HeKeB43MPw/cj+heXa0dTaJm9S7UaTAmU2nNpptZwA5KS
         iym0vwUvjz/IhoH93a/XkTa5II5GG71PmnhgKpxEq4cVVRrI7iMpLq/eW6A0N3S6r+ka
         hX6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tdOFUZh3LY5QuHGnOCX8BttL0CjvetqcKHFgt32bNC8=;
        b=GVmjpPUWGTHSi1v/M3P/8L4oIHk+xTG+tUucr+YjyJRbdqk1CCEZohviD5eH7/4OEZ
         o+HCeqWJqfRBJYs00TmKBaPLBWLU/JzCGHqWoPZ4xCQGkuG7y4GQ1+35gQynZPqxvXRI
         MQ0sRKdYgV9mH8onzt1QJxZAcgnWtFeX54qlDMf8UeAbg3h+D8gqbIfjXKxsPD0JzsEs
         2+swSCuB+eSkPUL8PMtgLdBlLCAn8Wk/A7dYDkZu59hIRtZMs9/jkI/FgTgIZnrOU/qn
         w7eG0rFCX5pcwyvvLxBQveD46poohRf1dFj3mALNAgne1fxc5X5+kTSfpq+WMFaR5NsS
         QFmw==
X-Gm-Message-State: AOAM530JzYyjYcOb4/wMwrzJPLtUVostqMGSEewmn1j2Z3YDx1AvhAb/
        BjzYJOod8hI1r5qGbzLl0ws6
X-Google-Smtp-Source: ABdhPJyQiaAIah4+UzyR8HWiFAgzNuGj44Kivt85wD300DAf5M8dYhJwGxHEE8pWE6wo0kHuV4qWaA==
X-Received: by 2002:a17:90b:3905:: with SMTP id ob5mr3849182pjb.61.1600262421090;
        Wed, 16 Sep 2020 06:20:21 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id e123sm17615726pfh.167.2020.09.16.06.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 06:20:20 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
        vkoul@kernel.org, robh@kernel.org
Cc:     svarbanov@mm-sol.com, bhelgaas@google.com,
        lorenzo.pieralisi@arm.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        mgautam@codeaurora.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/5] Add PCIe support for SM8250 SoC
Date:   Wed, 16 Sep 2020 18:49:55 +0530
Message-Id: <20200916132000.1850-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds PCIe support for Qualcomm SM8250 SoC with relevant PHYs.
There are 3 PCIe instances on this SoC each with different PHYs. The PCIe
controller and PHYs are mostly comaptible with the ones found on SDM845
SoC, hence the old drivers are modified to add the support.

This series has been tested on RB5 board with QCA6390 chipset connected
onboard.

Note: The dts patches will be submitted later once driver bits got applied!

Thanks,
Mani

Manivannan Sadhasivam (5):
  dt-bindings: phy: qcom,qmp: Document SM8250 PCIe PHY bindings
  phy: qualcomm: phy-qcom-qmp: Add PCIe PHY support for SM8250 SoC
  dt-bindings: pci: qcom: Document PCIe bindings for SM8250 SoC
  pci: controller: dwc: qcom: Add PCIe support for SM8250 SoC
  pci: controller: dwc: qcom: Harcode PCIe config SID

 .../devicetree/bindings/pci/qcom,pcie.txt     |   5 +-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   5 +
 drivers/pci/controller/dwc/pcie-qcom.c        |  11 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 297 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  18 ++
 5 files changed, 334 insertions(+), 2 deletions(-)

-- 
2.17.1

