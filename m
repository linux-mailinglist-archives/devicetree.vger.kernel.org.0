Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 975F52AC349
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 19:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729243AbgKISKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 13:10:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729956AbgKISKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 13:10:43 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 003A3C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 10:10:42 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id x13so7813964pgp.7
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 10:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DVV3bJrXqfPx1wuLLV5iO8azqLq6P7y4LmMXw4UFISs=;
        b=Ui0O9rgEpFyxIpNNlCYSJCGsoUsI+pPLUja/sxGhKQEqseTd6rblDvzCRXSNGRHvoM
         Llw8AzfcobtWB/yAKgQpsoiqI2ce39PM6XBB3x2YXahmfcbP5uEh1u/MtVnKT8XBewED
         ja35W6nqwJ3qxDGnLoXtEi1YIlmJgg67nmsDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DVV3bJrXqfPx1wuLLV5iO8azqLq6P7y4LmMXw4UFISs=;
        b=F/X4WuKKXaqv/83a9IJuGpaRdh4cKxaPk36BDB3iHCvsjUK2MmmbUx0MYtDRL5ev1r
         B6uNUTfXKjGE9vffQBGSQYitjRxfcm2gg3ls/p/pnaZlCamESoRvNjNWwnX7DDg9W0kG
         A6QDWMLFw1tUMHicFabGVVaTK6AFJ3OGYCKPy+dOLyxC44bRalEHsT+L7quQhgTKap+H
         x44i3BEGWlUqAaoShfWgVxXqiAIrTledhRI7MoPe4GWq8h+iqGMpD2GZilIg3mcUygSh
         KtOjvAD2jm/tNo+whvlIYAz9W2ZnI6UysrQnxJDj9AMLiU8K3Rl4Y/CxN/1HyLnZpGlv
         SMSg==
X-Gm-Message-State: AOAM5309iifchy81aZzExw33n6RPSRHSqz02FvCYryFPUgDdvaTE/o6y
        sDyz8QTbuwr4mvqghohtuYrr8nUzFXajT5uW
X-Google-Smtp-Source: ABdhPJxcjQpkYc9csJLgDY1Zwj5sp09LlNtW+CmwPUj2525XmHLuzGlrpSKGale1f1VpUP+uZCtPhw==
X-Received: by 2002:a17:90a:6283:: with SMTP id d3mr422262pjj.96.1604945442506;
        Mon, 09 Nov 2020 10:10:42 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
        by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 10:10:41 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/9] arm64: dts: rockchip: Engicam PX30.Core changes
Date:   Mon,  9 Nov 2020 23:40:08 +0530
Message-Id: <20201109181017.206834-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Series support Engicam PX30.Core SOM changes along with C.TOUCH
Open Frame 10.1" board.

All respetive LCD panels are in Mainline already.

thanks,
Jagan.

Jagan Teki (7):
  arm64: dts: rockchip: px30-enagicam: Enable USB Host, OTG
  arm64: dts: rockchip: px30-engicam-edimm2.2: Enable LVDS panel
  dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
  arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
  arm64: defconfig: Enable ROCKCHIP_LVDS
  arm64: defconfig: Enable PHY_ROCKCHIP_INNO_DSIDPHY
  arm64: defconfig: Enable USB_SERIAL_CP210X

Suniel Mahesh (2):
  arm64: dts: rockchip: px30-engicam: Add WiFi support
  arm64: dts: rockchip: px30-engicam: Add BT support

 .../devicetree/bindings/arm/rockchip.yaml     |  6 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-engicam-common.dtsi     | 85 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-ctouch2.dtsi    | 22 +++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   | 59 +++++++++++++
 .../px30-engicam-px30-core-ctouch2-of10.dts   | 77 +++++++++++++++++
 .../px30-engicam-px30-core-edimm2.2.dts       | 22 +++++
 .../dts/rockchip/px30-engicam-px30-core.dtsi  |  5 ++
 arch/arm64/configs/defconfig                  |  3 +
 9 files changed, 280 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts

-- 
2.25.1

