Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7EA3AB756
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 17:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233234AbhFQPYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 11:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233189AbhFQPYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 11:24:33 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E91FC061760
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 08:22:25 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id f10so989043plg.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 08:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t3VBOOGlpRXUk6Elyyu+C5MP6tVzgArpUvZpOpWPMDA=;
        b=pC8IEpg1+we6cCjnhwE6G4oRFiT6llxsX6ut4VHTJLLNkA2qVBylVQTbKbvGz8aYDs
         dpNztOULCC36hhr9E874GQUkT4ZnQOkf573fFUVi5ezel8TL46SAedy3wVSOIGZDFuNx
         ldav8tyViTZvFAPWW+jtZJ3NWvebkDn1eRK2zbYhOr69h9FCuVP86fi5SLR+94WnmZL6
         oAZezkjJ5TTklLCa25W/nBOhxdkGauKzF5JTkuccD8cSkjAJomotX8dRpDuaVfbBLtmr
         2XVSL5PmVtQ31oUkGqEZ465dLWL5tH3z0vAJesmSPybXDfQKS/BA4srJA23EWyHaFHe0
         EcEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t3VBOOGlpRXUk6Elyyu+C5MP6tVzgArpUvZpOpWPMDA=;
        b=MgOS3zMzr5DVHxwgeNQ93ljOhHXJDceFvEq6ZgNZfYdaOh0aR99DqHgvVyXJVVO4Dy
         hHC/j/WMqvATpWwzl3AdPD66U17Y4pSRhR6eLkW3xeMUpwASbz7Ld/EHtwFBZ2q1LGn3
         FQ25NhF9vzh92qUKhqIY8j88kjSn2GhpUiVg89tWqe+SboLUxVeYvcztjDQss41kjpVP
         3bIUhcQUM6FgP1FEtfTnW8qcGR3IWk8Xqdwwxdl0XIEDWljZjdleGHC8G7qQfG1K8IAC
         r65UMzlZxIyZZSMMavQKDcmi4ZD103buBd8HLdESSaUwx0kSqVkfti6qU997y4/wqaEk
         M8DQ==
X-Gm-Message-State: AOAM532N529uzrut+pT1afila5rqWfpe6gD7twIO9GrWuvizdkYID2mG
        Y3GGJxf3wHtmcHKqPRuiUi67
X-Google-Smtp-Source: ABdhPJyuPHqiYje2qgrEQiTa9Y0W5sbhCeqPSt1tLXOd11NwER+OKaimJUUAH9QX7ucMkF4VL285pw==
X-Received: by 2002:a17:90a:8e82:: with SMTP id f2mr17310369pjo.177.1623943344769;
        Thu, 17 Jun 2021 08:22:24 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:601:a552:f5:b632:aa12:8667])
        by smtp.gmail.com with ESMTPSA id n69sm5639857pfd.132.2021.06.17.08.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 08:22:24 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     kishon@ti.com, lorenzo.pieralisi@arm.com, bhelgaas@google.com,
        robh@kernel.org
Cc:     devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        hemantk@codeaurora.org, smohanad@codeaurora.org,
        bjorn.andersson@linaro.org, svarbanov@mm-sol.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/3] Add Qualcomm PCIe Endpoint driver support
Date:   Thu, 17 Jun 2021 20:51:59 +0530
Message-Id: <20210617152202.83361-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for Qualcomm PCIe Endpoint controller found
in platforms like SDX55. The Endpoint controller is based on the designware
core with additional Qualcomm wrappers around the core.

The driver is added separately unlike other Designware based drivers that
combine RC and EP in a single driver. This is done to avoid complexity and
to maintain this driver autonomously.

The driver has been validated with an out of tree MHI function driver on
SDX55 based Telit FN980 EVB connected to x86 host machine over PCIe.

Thanks,
Mani

Changes in v3:

* Lot of minor cleanups to the driver patch based on review from Bjorn and Stan.
* Noticeable changes are:
  - Got rid of _relaxed calls and used readl/writel
  - Got rid of separate TCSR memory region and used syscon for getting the
    register offsets for Perst registers
  - Changed the wake gpio handling logic
  - Added remove() callback and removed "suppress_bind_attrs"
  - stop_link() callback now just disables PERST IRQ
* Added MMIO region and doorbell interrupt to the binding
* Added logic to write MMIO physicall address to MHI base address as it is
  for the function driver to work 

Changes in v2:

* Addressed the comments from Rob on bindings patch
* Modified the driver as per binding change
* Fixed the warnings reported by Kbuild bot
* Removed the PERST# "enable_irq" call from probe()

Manivannan Sadhasivam (3):
  dt-bindings: pci: Add devicetree binding for Qualcomm PCIe EP
    controller
  PCI: dwc: Add Qualcomm PCIe Endpoint controller driver
  MAINTAINERS: Add entry for Qualcomm PCIe Endpoint driver and binding

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml | 160 ++++
 MAINTAINERS                                   |  10 +-
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-qcom-ep.c     | 775 ++++++++++++++++++
 5 files changed, 955 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-qcom-ep.c

-- 
2.25.1

