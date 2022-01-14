Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4891248E73D
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 10:17:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234768AbiANJRt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 04:17:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233430AbiANJRs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 04:17:48 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B74CBC06173E
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 01:17:48 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id u15so12844074ple.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 01:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FJ9jWVX1cVZCB+AdFkPwR6feqDBzuwKx9n9aDB+L7eU=;
        b=I2yvcth0kmZOxW74KiHSV0WxKJxUyNqtsCVuC3+JWwo9CpTjnYKAhYjNx+JMQR2X6O
         zmb4ao5EvvaOvpoyaFAHNSWRRjyx3SgRX6Q6aQ6OWC/BiiHQBmJkXWjjlXlLF87LtJae
         vvSEtbNxr4E1hLssV3cz822trWugBc6hG1XiT81y9V/9gw5O99sLMFJ/PQbou4w9hMYm
         8caGnt1+98lhATlKi0v8eHzTWn9rY9KfvCCCNA7H4MwFsOMsBV+xvGJb02CL5qpvfiT+
         F5v53Ja4zmjWIZRLGGwxmh9oI8lnrhKnxcjtU0evKie/DiVDH69Ik/RzhRkA5/CtV0WW
         TbXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FJ9jWVX1cVZCB+AdFkPwR6feqDBzuwKx9n9aDB+L7eU=;
        b=lzKEKh1aAkbf4K8IP33LXT114ezOdSnRqU7JU5XOhVjB+o14JWFZ/azYg4uoCNqpHY
         2SXkmVRLvUrSFjZc8Z0pXah3Da155KLi/oS4XQ1a3SwEsT0PgxtJ5unCb0vWjCR82za5
         tYeHOCzxcEQQJbWTJnpITAeM1EujMXjfyymglXfTehGZJbWtcOWVktTzadmOSVHSgLwV
         HB3tCTQKqMRp7oFDNz0i/XBJm9uqEZnpm2ZaiJ+X5/su/PCiAwh9U6ZxRZDWGGVaQ4z5
         2Vu+OaLO/nu4sXYd+B0MGkGDq3dNuYInysinyDUY5w+X3Ydec7AzErzYo6+6N2rYcoxI
         Q3Pw==
X-Gm-Message-State: AOAM530qn8Mr4sxhFiNPBWNMrs5HA3seGQE9mutgJtvkJiDDIU0S+YaR
        TAGaVdf2sFzscCilyz2Mha8q3Q==
X-Google-Smtp-Source: ABdhPJx75BSifsQTkjSXcEqinHM6jB1Blts8AJKZqvpt94lFvVTRer5DSG20FM2kQzE3HdQKFYRzWA==
X-Received: by 2002:a17:902:c10c:b0:14a:922d:39d5 with SMTP id 12-20020a170902c10c00b0014a922d39d5mr457595pli.66.1642151868162;
        Fri, 14 Jan 2022 01:17:48 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id z3sm4237179pgc.45.2022.01.14.01.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 01:17:47 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH v3 0/3] Determine the number of DMA channels by 'dma-channels' property
Date:   Fri, 14 Jan 2022 17:17:38 +0800
Message-Id: <cover.1642151791.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PDMA driver currently assumes there are four channels by default, it
might cause the error if there is actually less than four channels.
Change that by getting number of channel dynamically from device tree.
For backwards-compatible, it uses the default value (i.e. 4) when there
is no 'dma-channels' information in dts.

This patch set contains the dts and dt-bindings change.

Changed in v3:
 - Fix allocating wrong size
 - Return error if 'dma-channels' is larger than maximum

Changed in v2:
 - Rebase on tag v5.16
 - Use 4 as default value of dma-channels

Zong Li (3):
  riscv: dts: Add dma-channels property in dma node
  dt-bindings: Add dma-channels for pdma device node
  dmaengine: sf-pdma: Get number of channel by device tree

 .../bindings/dma/sifive,fu540-c000-pdma.yaml  |  7 +++++++
 .../boot/dts/microchip/microchip-mpfs.dtsi    |  1 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |  1 +
 drivers/dma/sf-pdma/Makefile                  |  2 ++
 drivers/dma/sf-pdma/sf-pdma.c                 | 20 ++++++++++++-------
 drivers/dma/sf-pdma/sf-pdma.h                 |  8 ++------
 6 files changed, 26 insertions(+), 13 deletions(-)

-- 
2.31.1

