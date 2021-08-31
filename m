Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE1923FCDE1
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 22:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240620AbhHaTfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 15:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbhHaTfh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 15:35:37 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97B26C061575
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 12:34:41 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id v20-20020a1cf714000000b002e71f4d2026so2440577wmh.1
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 12:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gCKmSK8tJyGyjy1KDjrNXNc5xFC9cf88E1v15sSABiw=;
        b=kk8mMUnBToKUgloCDsKsDHAmxDrzaPoeyu5MBvvdc2mX30tR53u5VmfGuvM95N1BHi
         ER9lsdhneD93owQMUCvSeK76ZjndN14qNCYAwMJk0smutQ2s2d5AmVMLH3nVzV0+1Oog
         8Ecp+nU0NAExC3qNXTFuRJux6XtWCJMfDiobRr465/kCvCyD4l9JxORdP6UjTE1gBNZb
         tHvtlpGvdelOHiVJ3LdCSPQYUQ0gRKuL+uEsdujZ5it82y2klIblC9hMnGyNeivgWxE+
         2Yom4VA/FQksUtapPlQExcLRkte9hBklyHJ6hyUIfrSpzL8pg7+1YOCHtRRTX+NWlPZp
         oydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gCKmSK8tJyGyjy1KDjrNXNc5xFC9cf88E1v15sSABiw=;
        b=gmLZzG4Ls/dWyuYg8OU+exiHGZdIrxiRZ+EfsdVoJcpHr7++hLghsoRrszg9K0EWzX
         DpJVPO2unsFZCLaYUi6zRbrJRfso5HrM9ElDTfUnjZ7T2d88s2rlkPYLqqKYHL2ehSkp
         Ls0zFSrnmyRK1Y24+ria91BLw36GUcEfYYCWEUtINitqUb5zqcabibcIHN4kqp+h3i19
         jYfRzXFa7CI2JfzT4qgOlQZWfoTktr6JhshsAHfCNGqaOYCiqeTAvSlCdqn41DxIPtb2
         FXaWr78uyRYRPfkAc/1lfW5eUA9qTIsEJ6bf0yWv2vkSa8fUeyGMp2Xx47r5DKi5HsEv
         NoYQ==
X-Gm-Message-State: AOAM531o+M04soRS3k50eywVED14O6JqmfTfSiWm0W9ju8ApOI4n204B
        ZJRtTA/0EkI4lbLZFAeegVsh2w==
X-Google-Smtp-Source: ABdhPJxAWbZiz9taMTujZGFGlmjyd+VIxuOVPHSFR8nRrYJ3u2Tvqhb+ABuQ2aQc/+zNRZYLFEExYw==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr5913703wmi.178.1630438480223;
        Tue, 31 Aug 2021 12:34:40 -0700 (PDT)
Received: from hornet.engleder.at (dynamic-2el0lv6sxxeorz8a81-pd01.res.v6.highway.a1.net. [2001:871:23a:b9:6e3b:e5ff:fe2c:34c1])
        by smtp.gmail.com with ESMTPSA id n4sm18708324wri.78.2021.08.31.12.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 12:34:39 -0700 (PDT)
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
To:     davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch,
        robh+dt@kernel.org, michal.simek@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        Gerhard Engleder <gerhard@engleder-embedded.com>
Subject: [PATCH net-next v2 0/3] TSN endpoint Ethernet MAC driver
Date:   Tue, 31 Aug 2021 21:34:22 +0200
Message-Id: <20210831193425.26193-1-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a driver for my FPGA based TSN endpoint Ethernet MAC.
It also includes the device tree binding.

The device is designed as Ethernet MAC for TSN networks. It will be used
in PLCs with real-time requirements up to isochronous communication with
protocols like OPC UA Pub/Sub.

I'm looking forward to your comments!

v2:
 - add C45 check (Andrew Lunn)
 - forward phy_connect_direct() return value (Andrew Lunn)
 - use phy_remove_link_mode() (Andrew Lunn)
 - do not touch PHY directly, use PHY subsystem (Andrew Lunn)
 - remove management data lock (Andrew Lunn)
 - use phy_loopback (Andrew Lunn)
 - remove GMII2RGMII handling, use xgmiitorgmii (Andrew Lunn)
 - remove char device for direct TX/RX queue access (Andrew Lunn)
 - mdio node for mdiobus (Rob Herring)
 - simplify compatible node (Rob Herring)
 - limit number of items of reg and interrupts nodes (Rob Herring)
 - restrict phy-connection-type node (Rob Herring)
 - reference to mdio.yaml under mdio node (Rob Herring)
 - remove device tree (Michal Simek)
 - fix %llx warning (kernel test robot)
 - fix unused tmp variable warning (kernel test robot)
 - add missing of_node_put() for of_parse_phandle()
 - use devm_mdiobus_alloc()
 - simplify mdiobus read/write
 - reduce required nodes
 - ethtool priv flags interface for loopback
 - add missing static for some functions
 - remove obsolete hardware defines

Gerhard Engleder (3):
  dt-bindings: Add vendor prefix for Engleder
  dt-bindings: net: Add tsnep Ethernet controller
  tsnep: Add TSN endpoint Ethernet MAC driver

 .../bindings/net/engleder,tsnep.yaml          |   78 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 drivers/net/ethernet/Kconfig                  |    1 +
 drivers/net/ethernet/Makefile                 |    1 +
 drivers/net/ethernet/engleder/Kconfig         |   28 +
 drivers/net/ethernet/engleder/Makefile        |    9 +
 drivers/net/ethernet/engleder/tsnep.h         |  166 +++
 drivers/net/ethernet/engleder/tsnep_ethtool.c |  382 +++++
 drivers/net/ethernet/engleder/tsnep_hw.h      |  236 ++++
 drivers/net/ethernet/engleder/tsnep_main.c    | 1227 +++++++++++++++++
 drivers/net/ethernet/engleder/tsnep_ptp.c     |  221 +++
 drivers/net/ethernet/engleder/tsnep_tc.c      |  442 ++++++
 drivers/net/ethernet/engleder/tsnep_test.c    |  811 +++++++++++
 13 files changed, 3604 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/engleder,tsnep.yaml
 create mode 100644 drivers/net/ethernet/engleder/Kconfig
 create mode 100644 drivers/net/ethernet/engleder/Makefile
 create mode 100644 drivers/net/ethernet/engleder/tsnep.h
 create mode 100644 drivers/net/ethernet/engleder/tsnep_ethtool.c
 create mode 100644 drivers/net/ethernet/engleder/tsnep_hw.h
 create mode 100644 drivers/net/ethernet/engleder/tsnep_main.c
 create mode 100644 drivers/net/ethernet/engleder/tsnep_ptp.c
 create mode 100644 drivers/net/ethernet/engleder/tsnep_tc.c
 create mode 100644 drivers/net/ethernet/engleder/tsnep_test.c

-- 
2.20.1

