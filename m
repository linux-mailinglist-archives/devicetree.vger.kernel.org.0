Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CD2C257554
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:29:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728083AbgHaI3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:29:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725954AbgHaI3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 04:29:31 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E1AC061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:30 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id n3so1934069pjq.1
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t6A3T3U5sg4xL1HitgiJe+Mzl2G7Jnk/XQSObf5ZPYs=;
        b=NcnQx+gcvea+q7x2gF4i9HH52VjX5QYP3dhOG6QAqqnGluW5VrDzjPn3+Y3NrEnsGM
         OJvBk6gd2stHL6vuDbxWOj+0l9LX6UaDNfgBN4CCrhQmeoNnCWNSyBIQkX6PGsvL2yfy
         FSsCEA3fd0TGQLCUnCgyj8TRD0h/x12kaCaow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t6A3T3U5sg4xL1HitgiJe+Mzl2G7Jnk/XQSObf5ZPYs=;
        b=s2ja/cbHdFh9xuG0rcwsAlAIOCTlHQayy7aY8DKG5wMY9ze0QQt+upusbeAmpiW18S
         kDaNlRPobzEK8cEmdUaaSgZSGiDqJlVH6BRvnsvjrAMBWTXvkNY2c+CJkOV74LtyIHY7
         fOgOeAFhH9nZ8gIVQKoMkmLRFhswJKAHxiXcmDAPQkX7rns1PIEt5FXXjlhi5leEmJkN
         DgvIJ+Uq12LNGx76vAOBOxN2NbPWyqhYWFxCrqW0qBIu3PfwG59QMbV5+07BxeWd/UrP
         VeftTxhx2soVMiYn5Cdpfo8qI71q0/O1ZJxo8CyryH+R1RV/Uz7YL4JFgomkgfkdTXSg
         zeBA==
X-Gm-Message-State: AOAM530q7LyP8G3btklQDDwisGekIUG4u4rwnF98G4G5TpD3tw9HOusb
        n4IfnQM5QTb1xkUE2Im8ymkF1g==
X-Google-Smtp-Source: ABdhPJzgmKs58w58u0Z3ZJSaXlgQqY+sNHsP4FQFmMe51tjTSRqPyk5BEGr1hbZE83+xRZkAU5bwYA==
X-Received: by 2002:a17:902:24c:: with SMTP id 70mr283058plc.284.1598862570169;
        Mon, 31 Aug 2020 01:29:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
        by smtp.gmail.com with ESMTPSA id b5sm6411335pgi.83.2020.08.31.01.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 01:29:29 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date:   Mon, 31 Aug 2020 13:59:10 +0530
Message-Id: <20200831082917.17117-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2 Starter Kit
- C.TOUCH 2.0 Carrier Board

Changes for v3:
- resolved Johan comments about sorting node properties
- add copyright to Amarula Solutions
- update px30 dtsi author
Changes for v2:
- collect Rob A-b
- include C.TOUCH 2.0 carrier board
- skip 10" OF LCD as it requires separate dts with panel support.

Note: These baseboards can be used for i.MX8 SOM's as well. So having
baseboard on respective SoC seems to be easy rather than making it
common across all.

Any inputs?
Jagan.

Jagan Teki (6):
  dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
  arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
  arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0

Michael Trimarchi (1):
  arm64: dts: rockchip: Add Engicam PX30.Core SOM

 .../devicetree/bindings/arm/rockchip.yaml     |  12 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
 .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
 .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
 8 files changed, 343 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

-- 
2.25.1

