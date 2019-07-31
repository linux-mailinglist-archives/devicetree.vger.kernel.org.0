Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C944E7BE2F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 12:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727841AbfGaKUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 06:20:13 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37340 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727487AbfGaKUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 06:20:13 -0400
Received: by mail-pl1-f193.google.com with SMTP id b3so30311644plr.4
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 03:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=qG0whHfhXOjtcfLzk188sCOar57eu2kC3PTAbz1gCBo=;
        b=OJw/xktcfO+P4ZQakjW7xr5hrf9cUCU/WoE6ccO8ljF+2fnEBdH+PiLzw/mr+QN3ZM
         xcGe6PTn+eUF8ZHKDSEPxaMT2bvttHqJGAvz8OkjnCxA7ZXm9hXRTjgd93xa5RDfD7pn
         aJSJMLq2r8GboOskpZVxFDFt5UvuWnUYd6nms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qG0whHfhXOjtcfLzk188sCOar57eu2kC3PTAbz1gCBo=;
        b=Ge4LR5JGYi0zjS5bfaHfq6wAQi71cWf/nVXcwcN5JGbwiPrR/zp8cUybSgYnrhPxKm
         1lcM80Tzr6hF2mFUTi18bZxEXlJldUqWo4rLdAFtpeLKrOANhLnezs4/4EfJ/D1lq2m9
         QaoglGjOoKR8KgNKle4omxXiqGFS38nGDpju5C1paUhBJt/Z0iCUwNh2T6vlrWW1MkYt
         +wbxodN13n5gKI6VC6VUDaxgBPqtBX+mExosnd47v0w011lfotj+GWdoDLSFuWB8ohTs
         0DKdvmH6g9zwVZzUrHS3/bUiPFCTSlWQrGOIsxL6IN4IWYUUYHnERJZ0h9NSMPNFbCFD
         wzqw==
X-Gm-Message-State: APjAAAVPHcVr13q+toxB+micoR9b2hR+mAiVHH4qZOIsBysfDBjsVc1z
        PJTGDBkdpN/KiJkNlNyJpAsbNg==
X-Google-Smtp-Source: APXvYqxo4nj3CQ1TbR22Q60IlXDAeO1/mETjinmS8a+Y2ov0Lk7OIA4TM0/MdXOXuCjdEFt/+9QbHA==
X-Received: by 2002:a17:902:383:: with SMTP id d3mr35046302pld.176.1564568412688;
        Wed, 31 Jul 2019 03:20:12 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id 3sm71161776pfg.186.2019.07.31.03.20.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 31 Jul 2019 03:20:11 -0700 (PDT)
From:   Srinath Mannam <srinath.mannam@broadcom.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Srinath Mannam <srinath.mannam@broadcom.com>
Subject: [PATCH v2 0/4] Reset xHCI port PHY on disconnect
Date:   Wed, 31 Jul 2019 15:49:50 +0530
Message-Id: <1564568395-9980-1-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set adds a quirk in xHCI driver to reset PHY of xHCI port on
its disconnect event.

This patch set is based on Linux-5.2-rc4.

Changes from v1:
  - Addressed Mathias's comments
    - Modified mapping of HC ports and their corresponding PHYs
  - Addressed Rob's comments
    - Removed usb-phy-port-reset DT property.
    - Added quirk in platform data using HCI compatible string.
  - Add phy ports in phy attr structure to have enabled ports bitmask.
  - Modified #phy-cells of sr-phy to pass phy ports bitmask.

Srinath Mannam (4):
  phy: Add phy ports in attrs
  dt-bindings: phy: Modify Stingray USB PHY #phy-cells
  phy: sr-usb: Set phy ports
  dt-bindings: usb-xhci: Add platform specific compatible for Stingray
    xHCI
  drivers: xhci: Add quirk to reset xHCI port PHY

 .../devicetree/bindings/phy/brcm,stingray-usb-phy.txt | 14 ++++++++------
 Documentation/devicetree/bindings/usb/usb-xhci.txt    |  1 +
 drivers/phy/broadcom/phy-bcm-sr-usb.c                 |  9 ++++++++-
 drivers/usb/core/hcd.c                                |  6 ++++++
 drivers/usb/core/phy.c                                | 19 +++++++++++++++++++
 drivers/usb/core/phy.h                                |  1 +
 drivers/usb/host/xhci-plat.c                          | 10 ++++++++++
 drivers/usb/host/xhci-plat.h                          |  1 +
 drivers/usb/host/xhci-ring.c                          |  9 ++++++---
 drivers/usb/host/xhci.h                               |  1 +
 include/linux/phy/phy.h                               | 10 ++++++++++
 include/linux/usb/hcd.h                               |  1 +
 12 files changed, 72 insertions(+), 10 deletions(-)

-- 
2.7.4

