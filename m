Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D85B079333
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728722AbfG2Sk1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:27 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:42890 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728684AbfG2Sk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:27 -0400
Received: by mail-wr1-f67.google.com with SMTP id x1so13045689wrr.9
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bkXWhG7MXe6STbKu1qqb3L1jlh1sGkN515kybH+rXAo=;
        b=CqHs7d9nti1w2rKX27XPzF2MS6YxULAmpUuD2Y0dgR3P+vs40IZlW1yVmzTvCE86Rm
         kxGKvKaFf1eJpxPRI9W9BuTHuTsfffO3zUjBznhceuVfgFf/bg11+vhwVYbumzLTCymr
         R4Ilw4euEfRoZgScQ9SbW+CiYPK/Fv/rq3KyHVJPZgMGNYZZJsOgZA70YJ8BT7eLg1lU
         AsXi3BND5nEDTC47udYJRv0/oWr7wZ3od4OsDJnplw4M4Ue6zoS+bm7e1VlMhaHurRcA
         UJQzXRiNPK/YDvw2HpIu5YDpktc8irJV7TkpW7xfPKSdt+lazPUR7svNyFSHeniUe8Y/
         MAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bkXWhG7MXe6STbKu1qqb3L1jlh1sGkN515kybH+rXAo=;
        b=qkamtpDR4ZK3hgpC62WeT+2btQ4CaTCgFxebqMsSPbmQt+0cPnFeJTlBWdJhHReJ6a
         0k8F57zLeTHgxspYXs/d8tRVb8GfCAMv67qMQfZG/zSr0DmZxV06DK0uQhJvdeAS5fXX
         FHn48ASwF1zQIbGpgqO2ArNvwFbZkMIsVNt2NMyLP77MDweyzXiiNBg7wGeOShr7rDZu
         0426AliVzDT3T1vD8f5grdwk/yrJnfXd7Mf0BLzxgQj1n/azLMtl6wNGQbfR6NQkK4/U
         jphfULjL6YoFS1enJII1Ib4lPlYLdqQeZXpP9tqoG4+c0GMjdsRo7gs4dpjFDKNyvYMY
         wRzQ==
X-Gm-Message-State: APjAAAVB9pxZ562cG/l5WxISkY0Qxfgf9ZtD1toEiDjEqkp95DzR2+rZ
        ca0cerFvZT3sGjzQXRgwFhplwg==
X-Google-Smtp-Source: APXvYqxSXQkF9cDxt8gMbHRF3vNlc51YWMrI43me2BpQRaRCIl9YH6NCkwxRiT3W61EJWzFoljIGRw==
X-Received: by 2002:a5d:50c2:: with SMTP id f2mr27809694wrt.106.1564425625466;
        Mon, 29 Jul 2019 11:40:25 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.24
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:24 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 0/5] Rework secure-monitor driver
Date:   Mon, 29 Jul 2019 19:39:36 +0100
Message-Id: <20190729183941.18164-1-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The secure-monitor driver is currently in really bad shape, not my 
proudest piece of code (thanks Jerome for pointing that out ;). I tried 
to rework it a bit to make it a bit more tolerable.

I needed to change a bit the APIs and consequently adapt the only user 
we have, that is the nvmem/efuses driver. To not break bisectability I 
added one single commit to change both the drivers.

The remaining commits are cosmetic and DTS/docs fixes.

Carlo Caione (5):
  nvmem: meson-efuse: Move data to a container struct
  firmware: meson_sm: Mark chip struct as static const
  nvmem: meson-efuse: bindings: Add secure-monitor phandle
  firmware: meson_sm: Rework driver as a proper platform driver
  arm64: dts: meson: Link nvmem and secure-monitor nodes

 .../bindings/nvmem/amlogic-efuse.txt          |  6 ++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  1 +
 drivers/firmware/meson/meson_sm.c             | 96 +++++++++++++------
 drivers/nvmem/meson-efuse.c                   | 70 +++++++++-----
 include/linux/firmware/meson/meson_sm.h       | 15 +--
 6 files changed, 128 insertions(+), 61 deletions(-)

-- 
2.20.1

