Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDDAAE35C2
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2019 16:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2502873AbfJXOm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 10:42:58 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42311 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2502871AbfJXOm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Oct 2019 10:42:58 -0400
Received: by mail-pf1-f195.google.com with SMTP id 21so4037063pfj.9
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2019 07:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=NOOJOsxqHyn9AIr6ypTkEVIyD6HHzZy3a7yfdgUD6yA=;
        b=h6komROc6h8RGeYYNYnFEouCCElzVFdunOny/OFPlTSBbE5B9R5V8n3vP3rMEXKNLh
         HcgLDIcHgnpiHBDdMc49NZVTwIrypxTd91Vbx2VC3XfN5emIFzMByQfhxcXi1CjlHxKI
         gp9XINyTt2x2EhOqnng6aYHiOy1L6GIIUySNMpQzQpujU+WCaZbBz2tEAcblutRs3jfR
         R/YEQWcd6ifqfLES2J7fhvU1g+ShU07BNi6dOyUe0u4wdzNg+p2T2eQQbdAbOi0fwobS
         10oIsmYkgKrqi4mnE33LkzRtAqfOhvSQLmj/aAqHwvoz7yGXbTFTZWyJred3CsaGL5if
         gFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NOOJOsxqHyn9AIr6ypTkEVIyD6HHzZy3a7yfdgUD6yA=;
        b=dEyzYVVqMT12Xuj/hupIWtPLUwCOwYGClJpIwQ4OKQASkrAFAp6z1M72rfixREZd1h
         x2mjdyCK81ZJDfa6g2OFM7HabDViHlF/NAtLHjazw/dIOfZY1DuP+E2LNZW99CFe6U1/
         IShj3FfMzvTcHruCSVC63xkD+sVmmgdUdA5+3lE4mlpX1YEJV63nMm6xUXxfnR5dejIt
         gy9NE+E+uxFBuWOuntOW0LD6Ruq8OLPzvlJBNrlztNz45gxbFeom7a1lxnsaRjNPqHAH
         cV0wS+OVOeP0zfl6f8Ei81L8+nSKFp2z/U2kFEi6DJ02L9NNK7dVpbf/wcO2o0xXTYGw
         OYCw==
X-Gm-Message-State: APjAAAW7dwnrVzHZf2Mer1eqG4z1GC8IR/8vPCPrVVXp8h7SfnNvsNJ4
        3gnLtWN/4ThB2+iLdRyEhWok
X-Google-Smtp-Source: APXvYqz/X3rMwuLvNMllP5jTvRzrOorlDB389gW90QS3BAVNtJFKjwn6dyAElAfQ6shN3bCZKMLEAA==
X-Received: by 2002:a17:90a:c306:: with SMTP id g6mr7494628pjt.38.1571928175650;
        Thu, 24 Oct 2019 07:42:55 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:997:a0de:81a:ea25:468a:5918])
        by smtp.gmail.com with ESMTPSA id 193sm29059810pfc.59.2019.10.24.07.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 07:42:55 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        darshak.patel@einfochips.com, prajose.john@einfochips.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add support for Thor96 board
Date:   Thu, 24 Oct 2019 20:12:32 +0530
Message-Id: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for Thor96 board from Einfochips. This board is
one of the 96Boards Consumer Edition platform powered by the NXP i.MX8MQ
SoC.

Following are the features supported currently:

1. uSD
2. WiFi/BT
3. Ethernet
4. EEPROM (M24256)
5. NOR Flash (W25Q256JW)
6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools

Link to 96Boards CE Specification: https://linaro.co/ce-specification

Expecting patch 3 to go through MTD tree and 1,2 to go through freescale
tree.

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: arm: Add devicetree binding for Thor96 Board
  arm64: dts: freescale: Add devicetree support for Thor96 board
  mtd: spi-nor: Add support for w25q256jw

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
 drivers/mtd/spi-nor/spi-nor.c                 |   2 +
 4 files changed, 585 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts

-- 
2.17.1

