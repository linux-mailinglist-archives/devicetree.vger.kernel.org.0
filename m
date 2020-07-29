Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED9B231D16
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 13:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726385AbgG2LCh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 07:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726353AbgG2LCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 07:02:36 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38554C0619D2
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 04:02:36 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id g6so11932076ljn.11
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 04:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=1p/nSgtdkS6RT0uc1pBBiZ0bICji/pIROwSE8og0ow8=;
        b=J4JNa4qv37g5NWhBZaCQ6BSM4/d/4LhSFiar9U4kEG1i2rKPSVsEm+Fi8hKHagbjfY
         FMmRzv4n5fI1oiRuRrqBAigKBEDKfDpQkmdU1hF5Hb2wrPd0RYLtwZfZcNUDrgR00N28
         P0ni9WYCj3H0SkyvzjgPmQ2ZHPfwcdPB/tTwVzD6hjQixcu3B9VhV8Lez5vvBOfV+r17
         WADwPsa4XwUOp582XaBFDPXdzqjiES56KhLM0bigcp1sUM2nFMa1Jyf/fWQZvqNoLQMt
         iA7FBArFOPGLNwrJcCviaqhgISDg+DLIyCKQbZe9IIw+cjncMD0tpFx3WEOnd+tfCV8f
         Tx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1p/nSgtdkS6RT0uc1pBBiZ0bICji/pIROwSE8og0ow8=;
        b=Q42WxUArs3GHzc/5rphDM4n61Xnijl5cI2N9Ot6XHTx5Q3k4hPONsIFPbuN2l2QaUI
         Vwx2VU2nKm3/s2M9xN5N1xFi6U3zpQUmL3XYBqp8VQmok9i3iYLe1u5DgkqCdqlgv3wJ
         hDvGvymy2INXODRD8WUAqNh5/Yi8CITxQSwwb4VN0LU5kL8Q1/Lk1OWD6A5JlQOllk8k
         msFZ3mkwbMX3vvlB5saqEBIwoTVqf2IZB3hXHP3A9wItVqebONOd4BxBJb9XEMLNnvpT
         tcW1jDHxp7wyJFZM+HfZcoQDAwxllEVMfg0MUdBjUlm0dO20oE8iCjH9mdHvHmwzYYqG
         6OVw==
X-Gm-Message-State: AOAM533FDvB2T3/PXKdnSvEBC2GF5MxMiq800QAlnS1vWnfA0VnQgfRw
        /KJSdPPQTIvva4DITYMXyX/vXQ==
X-Google-Smtp-Source: ABdhPJwS6idbGKr5FM/mOnpu6U7dl2edJHUeJHk5Ns8Mz2Wno5b3USCog8R6LSKoFnKylkncCVQUEw==
X-Received: by 2002:a2e:8799:: with SMTP id n25mr14700332lji.416.1596020553627;
        Wed, 29 Jul 2020 04:02:33 -0700 (PDT)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id e12sm329283ljk.74.2020.07.29.04.02.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 04:02:33 -0700 (PDT)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ssantosh@kernel.org, s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, santosh.shilimkar@oracle.com,
        robh+dt@kernel.org, lee.jones@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        wmills@ti.com, praneeth@ti.com
Subject: [PATCH 0/6] Add TI PRUSS platform driver
Date:   Wed, 29 Jul 2020 13:02:02 +0200
Message-Id: <1596020528-19510-1-git-send-email-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The Programmable Real-Time Unit and Industrial Communication Subsystem
(PRU-ICSS) is present on various TI SoCs. The IP is present on multiple TI SoC
architecture families including the OMAP architecture SoCs such as AM33xx,
AM437x and AM57xx; and on a Keystone 2 architecture based 66AK2G SoC. It is also
present on the Davinci based OMAPL138 SoCs and K3 architecture based AM65x and
J721E SoCs as well.

A PRUSS consists of dual 32-bit RISC cores (Programmable Real-Time Units, or
PRUs), shared RAM, data and instruction RAMs, some internal peripheral modules
to facilitate industrial communication, and an interrupt controller.

The programmable nature of the PRUs provide flexibility to implement custom
peripheral interfaces, fast real-time responses, or specialized data handling.
The common peripheral modules include the following,
  - an Ethernet MII_RT module with two MII ports
  - an MDIO port to control external Ethernet PHYs
  - an Industrial Ethernet Peripheral (IEP) to manage/generate Industrial
    Ethernet functions
  - an Enhanced Capture Module (eCAP)
  - an Industrial Ethernet Timer with 7/9 capture and 16 compare events
  - a 16550-compatible UART to support PROFIBUS
  - Enhanced GPIO with async capture and serial support


A typical usage scenario would be to load the application firmware into one or
more of the PRU cores, initialize one or more of the peripherals and perform I/O
through shared RAM from either a kernel driver or directly from userspace.

This series contains the PRUSS platform driver. This is the parent driver for
the entire PRUSS and is used for managing the subsystem level resources like
various memories and the CFG module.  It is responsible for the creation and
deletion of the platform devices for the child PRU devices and other child
devices (like Interrupt Controller, MDIO node and some syscon nodes) so that
they can be managed by specific platform drivers.

Grzegorz Jaszczyk (1):
  dt-bindings: soc: ti: Add TI PRUSS bindings

Suman Anna (5):
  soc: ti: pruss: Add a platform driver for PRUSS in TI SoCs
  soc: ti: pruss: Add support for PRU-ICSSs on AM437x SoCs
  soc: ti: pruss: Add support for PRU-ICSS subsystems on AM57xx SoCs
  soc: ti: pruss: Add support for PRU-ICSS subsystems on 66AK2G SoC
  soc: ti: pruss: enable support for ICSSG subsystems on K3 AM65x SoCs

 .../devicetree/bindings/soc/ti/ti,pruss.yaml       | 383 +++++++++++++++++++++
 drivers/soc/ti/Kconfig                             |  11 +
 drivers/soc/ti/Makefile                            |   1 +
 drivers/soc/ti/pruss.c                             | 183 ++++++++++
 include/linux/pruss_driver.h                       |  48 +++
 5 files changed, 626 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
 create mode 100644 drivers/soc/ti/pruss.c
 create mode 100644 include/linux/pruss_driver.h

-- 
2.7.4

