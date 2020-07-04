Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD5A2214893
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2020 22:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727831AbgGDUQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jul 2020 16:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726909AbgGDUQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jul 2020 16:16:16 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AA49C08C5DE
        for <devicetree@vger.kernel.org>; Sat,  4 Jul 2020 13:16:16 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id g67so15683436pgc.8
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2020 13:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=unbi+ErtXGEpjZ7mTZCUZSj2ptQEHBPY2/eLC0ZdP1U=;
        b=E9K/zHqVn44ma+qEP7rzwjdICU95LJDxKrOypppHltehlmyUi2Q3HjmqYsz8lVchoN
         or07WtnVJyonDHzyFdN7YRdnkv/TVz7NW+WdMm7HDMWwpd1evjLJlFvXDRJmdWvWNvKI
         osIzqPVDdtf+N0OOo4U05v38XK5MZ0Nlkh7ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=unbi+ErtXGEpjZ7mTZCUZSj2ptQEHBPY2/eLC0ZdP1U=;
        b=Wmy+UQcj1Lb/fT7uYLchWC+D3jCDmTRsh4pYdCEm8YS7sEiHaXml7PTBEpZoQbT+9H
         0idzo/+0YffuxD5g/d3/yRhnsDvGRwj0DWz4RQzYUaVG6fMQWG1Hvi9zFVd8gzsR/ubX
         DacypcRvirepDck3d5YRFkXs8w9Z1d8QO3e/C7Bypr5wXdnewDjzTZRfdKvtI343JLhV
         uGZ+R4CFsWDjffaRY4Z5fFvYOe9Lz4BSYNsWtzdwnyDCcB8zwtJvrLAeiy0LxNDBZqtd
         o4DbSp694Yu1ZgHkAgNGe/bOvTzdWMXzQZu0HH0Bu878fhMCvw9m9kJlCBbc0wiPO4A6
         7Tgw==
X-Gm-Message-State: AOAM53325ljEDvp/mFwVFP9DJIzwmXdNrYaj7i+6YOgIoYX9OzxOCpVP
        UHvK1/mbU9V26bweoIJB1u5mXA==
X-Google-Smtp-Source: ABdhPJz26eE/zGkBDDZSNeEHJMAiEb/EyHQDs6hggVFUQ9JhKEGPhXnPtIjSU+KUBxCIefxAWXJGRw==
X-Received: by 2002:a63:f04d:: with SMTP id s13mr14418806pgj.100.1593893775418;
        Sat, 04 Jul 2020 13:16:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:bdf4:3289:4b66:dcc0])
        by smtp.gmail.com with ESMTPSA id d16sm14960791pfo.156.2020.07.04.13.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2020 13:16:14 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Tom Cubie <tom@radxa.com>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/4] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date:   Sun,  5 Jul 2020 01:46:00 +0530
Message-Id: <20200704201604.85343-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

This series moved hym8563_int pin into rk3399pro dtsi and
rest are similar to v2.

Changes for v3:
- move hym8563_int pin to rk3399pro dtsi 
Changes for v2:
- add more trivial cleanups
- update commit message

Jagan Teki (4):
  arm64: dts: rockchip: Trivial cleanups for RockPI N10
  dt-bindings: arm: rockchip: Add Rock Pi N8 binding
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts       |  17 ++
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 270 ++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  60 ++--
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |   2 +-
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |  75 ++---
 7 files changed, 367 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/boot/dts/rk3288-vmarc-som.dtsi

-- 
2.25.1

