Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 605EC476774
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 02:38:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232577AbhLPBiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 20:38:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232576AbhLPBiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 20:38:14 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F09BC061574;
        Wed, 15 Dec 2021 17:38:14 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id x1-20020a17090a2b0100b001b103e48cfaso945524pjc.0;
        Wed, 15 Dec 2021 17:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=ny74sKKlGn4y/2GVgIq/cp/05igibt9sBbFc0LAH/Jc=;
        b=N/uhHxThb5c9SMFk7lVJLalvUKEKn/OYj3z8IzHa/iEtmv1p4jlCIbTC32o5g2smye
         YNSisimzvR2sXpPnlyt0MUm829jAqrHEuB+6E0tsyhAQHzrJGKBydafGrqFVulwVW0wj
         5NOAg3vUNRKwiNmi/POED0RxLlXm/SSlS90LKCVym6TDQrVtXrRH42Tc4eXmkjP1zEyk
         URrBUG5N8q0Ye5g9PUngD06jL0quiYuFlrtiP2FVb4/lTwYWCdXakJau8SGdS0Uw3H0k
         S1yuSZJf/O4o83PnNFcz9obYKv1jDtgKhgnE9IcS/JiORHDUQB1LAQq0lyboj9TSfCvt
         +NlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ny74sKKlGn4y/2GVgIq/cp/05igibt9sBbFc0LAH/Jc=;
        b=uDPsjvsDmHeIFS3H051whe84I3eM8yGTxwHg2mGyg1tnLsYSpUK3NebDyaz7xAo7Ya
         +f+JvNVl1xGHfb+59xwud/AL6jJ/KXg2LfGeg+bTTsvjQwfjLu3bBZOgRR2Z9pUELmmS
         svKap2Fe67SvB/QgQbNqOEJtJVZP/6iwA26ycu9jDqu1rPJab49OzYYGv/xHrN8b4fvU
         YLtsjSSRLo5DzG/fNoPboW1xXDAy8pCXJGVCYxF+svK9lmZLVsDN6DEWx8foPWRpvwjC
         0cCd+tzz6u7VqrjcBjnIjnJmPh15y4zwqRYhAq/vHnSVxLGrt2yPcYE1Ufgf0wXK3Era
         6KcQ==
X-Gm-Message-State: AOAM5314Qo8n4fxWX8OZxA7+tdeKPCLJxVWsDOgh6YBnkXIWQK+jyTEY
        bcatCTtHOkUPkFOVJ5miQf1L2wYAfS0=
X-Google-Smtp-Source: ABdhPJyKgs8Dgpqh6eltsViAqCR/cFvdf/5Tz7SBWPC8t29C7f2QSud9cxq1tOAt3lSm8ZfbNcRotg==
X-Received: by 2002:a17:90a:50:: with SMTP id 16mr3107753pjb.190.1639618693972;
        Wed, 15 Dec 2021 17:38:13 -0800 (PST)
Received: from scdiu3.sunplus.com ([113.196.136.192])
        by smtp.googlemail.com with ESMTPSA id s31sm4277624pfg.22.2021.12.15.17.38.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Dec 2021 17:38:13 -0800 (PST)
From:   Tony Huang <tonyhuang.sunplus@gmail.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linuxkernel@vger.kernel.org, derek.kiernan@xilinx.com,
        dragan.cvetic@xilinx.com, arnd@arndb.de, gregkh@linuxfoundation.org
Cc:     wells.lu@sunplus.com, tonyhuang@sunplus.com,
        Tony Huang <tonyhuang.sunplus@gmail.com>
Subject: [PATCH v4 0/2] Add iop driver for Sunplus SP7021
Date:   Thu, 16 Dec 2021 09:38:14 +0800
Message-Id: <cover.1639557112.git.tonyhuang.sunplus@gmail.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add iop driver for Sunplus SP7021 SOC

This is a patch series for iop driver for Sunplus SP7021 SOC.

Sunplus SP7021 is an ARM Cortex A7 (4 cores) based SoC. It integrates
many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD card and
etc.) into a single chip. It is designed for industrial control.

Refer to:
https://sunplus-tibbo.atlassian.net/wiki/spaces/doc/overview
https://tibbo.com/store/plus1.html

Tony Huang (2):
  dt-binding: misc: Add iop yaml file for Sunplus SP7021
  misc: Add iop driver for Sunplus SP7021

 Documentation/ABI/testing/sysfs-platform-soc@B     |  22 +
 .../devicetree/bindings/misc/sunplus-iop.yaml      |  65 +++
 MAINTAINERS                                        |   7 +
 drivers/misc/Kconfig                               |  12 +
 drivers/misc/Makefile                              |   1 +
 drivers/misc/sunplus_iop.c                         | 496 +++++++++++++++++++++
 6 files changed, 603 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-soc@B
 create mode 100644 Documentation/devicetree/bindings/misc/sunplus-iop.yaml
 create mode 100644 drivers/misc/sunplus_iop.c

-- 
2.7.4

