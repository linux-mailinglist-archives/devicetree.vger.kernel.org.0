Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 303302568E3
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 17:59:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728442AbgH2P7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 11:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728412AbgH2P6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 11:58:44 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 214C5C061236
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:43 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id m8so2219048pfh.3
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MZ+O4LsEt26/bO1S7FmN8cAqvXJ4Tlfs0jPsv8jKi+U=;
        b=ljhum2dLbF4VvYtN4qJIDmyalFKBqIXbGRX8hWQjDkXZtk5Yys+EqKTUH6kOrdvXvN
         3q58FRB62zhVR1EOdb/TIVC1sNymiWuw8i7EAq6KnMf5Cm85KhjvWGRDlbnlkPUtIhMh
         PbB5aJkSvsXvstNGV3jGzNEqCMz79Oy8IuKXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MZ+O4LsEt26/bO1S7FmN8cAqvXJ4Tlfs0jPsv8jKi+U=;
        b=IYJWfARl4VkPwcZzYyEho3kWjRACrfZcWq4m+lFwu3zzAHNqVpDxyRuZBZmR6S8XTz
         c4mgUYtTPkmLfMmLt4vrUZAj7WezPKp0RWaUUV6F0QkXLYuZQOs+3Z4heQnWEKpLM43U
         dfhwbaVsammNIQTqfFnTSZQzlCMfnGaDiZtuJRnCqXG+553iQNRS1/f4OdfJ4VEk/vFG
         aLqTgbc8tT2NfhRqSlfvYYjF9tGpIJCvOfnHUOo0+R/EYgShvtoYEaa3gshyzJkCqm0I
         l85/CK9JvU5BxRUWnqPKHYrF0mfKkXMWuI46D6kGOq7dtjSz/SKlpQnEFuM3hhJjChTf
         1AqQ==
X-Gm-Message-State: AOAM533MJxicjcEfPqunP/odKLHT+yK4PinI8ONjHb02LuiRyyGEjT4C
        wnaKF1KbVSt3n38Is4ZgMHxs6Q==
X-Google-Smtp-Source: ABdhPJzEcB+o7wItuxgbQQLsj33yMDZo2V1Gtq8/mqoiG4pegOIOA2BEG59zkXuSYUTV8HwcvYNIEw==
X-Received: by 2002:a62:2bcc:: with SMTP id r195mr3481135pfr.123.1598716715401;
        Sat, 29 Aug 2020 08:58:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id j20sm3131714pfi.122.2020.08.29.08.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 08:58:34 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date:   Sat, 29 Aug 2020 21:28:16 +0530
Message-Id: <20200829155823.247360-1-jagan@amarulasolutions.com>
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

Changes for v2:
- collect Rob A-b
- include C.TOUCH 2.0 carrier board
- skip 10" OF LCD as it requires separate dts with panel support.

Note: These baseboards can be used for i.MX8 SOM's as well. So having
baseboard on respective SoC seems to be easy rather than making it
common across all.

Any inputs?
Jagan.

Jagan Teki (7):
  dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  arm64: dts: rockchip: Add Engicam PX30.Core SOM
  arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
  arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
  arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0

 .../devicetree/bindings/arm/rockchip.yaml     |  12 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   7 +
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   |  21 ++
 .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
 .../boot/dts/rockchip/px30-px30-core.dtsi     | 231 ++++++++++++++++++
 8 files changed, 340 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

-- 
2.25.1

