Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 680113988F8
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 14:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbhFBMJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 08:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhFBMJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 08:09:49 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BCFC061574
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 05:08:04 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y15so2016838pfl.4
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 05:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wv/GqpQtVNJ6eNnlYZDDtTKJU5/2n/Y/EinQRXFDYco=;
        b=eN5huYwTTRQ6lO7k84mC91zHWmWx1hGyAM9oB3wOgB0t+ZcgT5dd7zm8sKR0qwNcfX
         1AGy4y9eo2pioscpIY/xsYANPlB9QivENGooFgvJxNwv8izUnlzzx2BT8lDUa5e5y0hk
         m7autFSC0cDZFCaBR3v2NCyhU4yus2Fv6niICUYaQZvRvJSBGgeVUJZkgW0V5an6B46p
         fBAPzlS1Uj03keu3H5Bf/0K/BRmNNIr/F3rGWVTVLoI/4pHnjqX5O1CAqco8nBxV5Eya
         bCamUHCdSpOqr+b6qAPwlD1sk2R7elpvRIXaIoNP5g4+2TAqmriUxkxNthn3msG3MGXi
         G22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wv/GqpQtVNJ6eNnlYZDDtTKJU5/2n/Y/EinQRXFDYco=;
        b=hLG9pDZiXcnD/6K03KCERD0Cb+p9fxZp8FrV00MKeDQtbGQML9oE1UJUm4VBB4TpH3
         Fhjsd46sM7gL+glufsNbaWt4VJ7fAk8dvF/akLAIduoDDElbWuo3Abf12Im4zoFr2gSc
         I2BC/v2GgGEBXAMnJ+bv9oR6Uy/cHroGDWFSakJotd1nM5b0TtYnEVASlZuDFr6+rhKI
         BozswlEKY/tCCdVqacpIZFbgPBKX2yg8gWRAgpfGYG+tZrnK9RLexSYFAp7oGDqeStJ9
         RqCQFqDANxJo8DZSuWG/tkEGNDkDLxXDbLdbwwJU0TIPsHhyRwiZXdnYjOVhlW6GtTLB
         sUFw==
X-Gm-Message-State: AOAM531eOqFy6UP6jMgd9/nmQs5UMsFG4n2DnSG4aTmF1fVgw54DY8m5
        QbquNoSD1jOjzBILquHxXkru
X-Google-Smtp-Source: ABdhPJwZAd0XPU9npLeIfYpA8KAgDMiYPcVfnAmsvna5Q2CZJs8F9kFS7HeOrOvb2wp3nfGZKVC5/Q==
X-Received: by 2002:a62:ee0b:0:b029:2e9:a790:f273 with SMTP id e11-20020a62ee0b0000b02902e9a790f273mr21176365pfi.24.1622635684052;
        Wed, 02 Jun 2021 05:08:04 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.54])
        by smtp.gmail.com with ESMTPSA id h18sm12502907pgl.87.2021.06.02.05.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 05:08:03 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add Qualcomm PCIe Endpoint driver support
Date:   Wed,  2 Jun 2021 17:37:49 +0530
Message-Id: <20210602120752.46154-1-manivannan.sadhasivam@linaro.org>
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

Manivannan Sadhasivam (3):
  dt-bindings: pci: Add devicetree binding for Qualcomm PCIe EP
    controller
  PCI: dwc: Add Qualcomm PCIe Endpoint controller driver
  MAINTAINERS: Add entry for Qualcomm PCIe Endpoint driver and binding

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml | 139 +++
 MAINTAINERS                                   |  10 +-
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-qcom-ep.c     | 788 ++++++++++++++++++
 5 files changed, 947 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-qcom-ep.c

-- 
2.25.1

