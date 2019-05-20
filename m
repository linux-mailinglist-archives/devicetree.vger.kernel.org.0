Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D452C237D5
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732731AbfETNOK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 09:14:10 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:55419 "EHLO
        mail-wm1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730458AbfETNOK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 09:14:10 -0400
Received: by mail-wm1-f47.google.com with SMTP id x64so13241289wmb.5
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 06:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vM5pv+BQoP8scy/zAPoM9eQQv0k4Qnfy+iC/Zx6yuYA=;
        b=DabpozCTljhiuQK9QrebXpccXYRwzclUP4vK0OAUbMnMu8Qi58I1NDibj54SEIzo9R
         SfnCaxEkMc1Uhdq6rWh/mtI+LMm7hE2XA2b/qc24IaNYdJxgiJ4inIINn/lNJFeQmbhT
         U6u861AXckob5AeViOuw7bdQpgi1gr/i0VUVEY9rWOr7l3JvW1TcI73XuF41euXOMweY
         oJiPBWWWrGDfUv2u/7sjvLfeb5dZv/gsC8joINdnsphCFGB1U95/yJ07bFAnyAhcsju+
         ydyhcwyD3O69Rhjdo4/s82FLSxIAeAmGk8mi3zLZfDKdtei4lYhuWo/B9QH1jRCblrzy
         R/dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vM5pv+BQoP8scy/zAPoM9eQQv0k4Qnfy+iC/Zx6yuYA=;
        b=ZiJ0agAJCNHq4JJR/jPWnguCBHvIWJOk1X/gO0cPIdC7hHvd2E4faJLJOP84+xpm20
         Y7sBGnhOD4PJPUMyNLsBsJsUfbCcW6QEjbNzhXfQEf5fX5UHWrocpssNR0VdL3xdWwYF
         Aj3E0S1/fXtUTZe9q3JT/5RWY6Zj/WUHOd9hNB1OIUq7ZBGFLdon8cgKQZNvpDaMdKj6
         VF/mYBsum7i4GjtMmmwNQzLijxkJ7kAVwaG+Go2L/Ydr0oof3rOeLzekRreqO8VrHnEd
         bUeWUBUmDd5L3XkxuPhP/0xFa+h5QT8FTehdldYU9hTcyopCrbGrLtmUYuf8R9Bb3tG8
         8isQ==
X-Gm-Message-State: APjAAAUSi5FDKrjlHV+IOnoBn7EQshxEEpgN8IcOoMb0VxvO26P7TRRy
        p7h7yBb5pjQHfKYDp5ZHeUNGdw==
X-Google-Smtp-Source: APXvYqw41vjWwxdNzZM0t2ysXvFl+JiMozP82cEPi/tn/xJK/zONQePg6F113T5Q7tayNsVVWoxfzw==
X-Received: by 2002:a1c:7d8e:: with SMTP id y136mr17488503wmc.129.1558358048365;
        Mon, 20 May 2019 06:14:08 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z8sm18054284wrh.48.2019.05.20.06.14.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 06:14:07 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: meson: g12a: add ethernet support
Date:   Mon, 20 May 2019 15:13:56 +0200
Message-Id: <20190520131401.11804-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add network support to the g12a SoC family

This is series is based on 5.2-rc1 and the patches I already sent last
week. If this is not convient for you, please let me know, I'll rebase.

Also, you will need to get the clk tag "clk-meson-5.3-1-fixes" (to get
the update MPLL50M id) from clk-meson [0].

Changes since v1: [1]
 * rebased on v5.2-rc1
 * s/eth_rmii_pins/eth_pins
 * fix MPLL50M typo

[0]: git://github.com/BayLibre/clk-meson.git
[1]: https://lkml.kernel.org/r/20190510164940.13496-1-jbrunet@baylibre.com

Jerome Brunet (5):
  arm64: dts: meson: g12a: add ethernet mac controller
  arm64: dts: meson: g12a: add ethernet pinctrl definitions
  arm64: dts: meson: g12a: add mdio multiplexer
  arm64: dts: meson: u200: add internal network
  arm64: dts: meson: sei510: add network support

 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  7 ++
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  7 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 90 +++++++++++++++++++
 3 files changed, 104 insertions(+)

-- 
2.20.1

