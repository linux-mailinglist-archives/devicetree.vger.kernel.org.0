Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4DF7A210D0
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 01:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726900AbfEPXAA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 19:00:00 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:43178 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726876AbfEPXAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 19:00:00 -0400
Received: by mail-pg1-f196.google.com with SMTP id t22so2263751pgi.10
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 15:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5SPI5RDPWdm7X3U8G9i9l916Umv8GEODUn9UXyetpFQ=;
        b=XqaResjbamVa27eUZH0ReqyOeLnzGjESnU4sd5uP71Q5DjrC6Inen21If1TxNy1eAS
         EUwh3Zd7mrs5/Cu5uCL878Xot+50PiUbvP8uAHxvZaDMO4L6wLl6b5Zn5TbkU/15oyDX
         Ki3YSd8i7BuCoLoxD8NnkrNgGtzAexmc0Ni1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5SPI5RDPWdm7X3U8G9i9l916Umv8GEODUn9UXyetpFQ=;
        b=VaUCjvQgIxRASXcUDnK2o61tW9j6kvass9GsK/wkw2pISggU8VL6AAOj/jQyQ7ZIzj
         ryUQ66pfTNfa/v17e1Qgc6kvgB/sy9OePa+EYGiGN+moXYiwCkG10n1U8p5uXNAnn3lv
         gWQUsd1bH2xNOY2M0cnB3oFyxyt/ixZMa2zsRDVKrIJ2G9QduAbMcINO5jp+ptpFZb6U
         Y8YtBsxhKw9QB3sHPE2UujvoAWTpQ/dV6TwS5P87HHDCpIz3Odym062078I4XJOKWM4G
         m6LnVaH6HyGqK3G9KQ9sGOlQgCNg5IggOiQ8V/fvxjgxFAs6C/d+Uipo//vYogvMy37l
         csjw==
X-Gm-Message-State: APjAAAXZ1NDcgfl3YrxQTbHHaKz0eIz+P8FEMQVE7umZYh//J6YYCXDt
        OYXmvwZYKhOBDnslKTCoYReEpA==
X-Google-Smtp-Source: APXvYqyBwuyMUc16C5THCTCHLcAVBc5sfzm5Lo0F2Kp/4BxCcSub39P/7nmc9SsQxcSYnZOu+IhC3g==
X-Received: by 2002:a63:6a4a:: with SMTP id f71mr52245653pgc.44.1558047599563;
        Thu, 16 May 2019 15:59:59 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id j64sm1769506pfb.126.2019.05.16.15.59.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 15:59:59 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Minas Harutyunyan <hminas@synopsys.com>,
        Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Cc:     Alan Stern <stern@rowland.harvard.edu>,
        Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
        amstan@chromium.org, linux-rockchip@lists.infradead.org,
        William Wu <william.wu@rock-chips.com>,
        linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>,
        Randy Li <ayaka@soulik.info>, zyw@rock-chips.com,
        mka@chromium.org, ryandcase@chromium.org,
        Amelie Delaunay <amelie.delaunay@st.com>, jwerner@chromium.org,
        dinguyen@opensource.altera.com,
        Elaine Zhang <zhangqing@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [REPOST PATCH v2 0/3] USB: dwc2: Allow wakeup from suspend; enable for rk3288-veyron
Date:   Thu, 16 May 2019 15:59:38 -0700
Message-Id: <20190516225941.170355-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a re-post of the last 3 patches of a series I posted earlier
at:
  https://lkml.kernel.org/r/20190418001356.124334-1-dianders@chromium.org

The first two patches were applied but the last three weren't because
they didn't apply at the time.  They apply fine now so are ready to
land.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.
- rk3288-veyron dts patch new for v2.

Douglas Anderson (3):
  Documentation: dt-bindings: Add snps,need-phy-for-wake for dwc2 USB
  USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
  ARM: dts: rockchip: Allow wakeup from rk3288-veyron's dwc2 USB ports

 .../devicetree/bindings/usb/dwc2.txt          |  3 ++
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  2 +
 drivers/usb/dwc2/core.h                       |  5 +++
 drivers/usb/dwc2/platform.c                   | 43 ++++++++++++++++++-
 4 files changed, 51 insertions(+), 2 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog

