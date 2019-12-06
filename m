Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C77CE114EA4
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2019 11:02:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726317AbfLFKCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Dec 2019 05:02:44 -0500
Received: from mail-ed1-f65.google.com ([209.85.208.65]:33265 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbfLFKC1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Dec 2019 05:02:27 -0500
Received: by mail-ed1-f65.google.com with SMTP id l63so5357658ede.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2019 02:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EAvJfWkyWR+AqwH45vb7OdQ/ejgJ1D722M1KzKBLqNU=;
        b=DFttMATfsmSCeQvvYWYUxpzer6Vkitii5nW2aHuvNNv3pS/l2CnW//0LmGe2d/a5JX
         K3ntKEfzHD8h3ey0yht5svU93Lnu0VvACpK49dJ5c5Tk91ozdJi0CVXT/3lYKtdxU20M
         NrrkunhxObUHN1OpeafvG3rSGaZRZFNT844O4mljiWQWH2gDrojjy2ueiElHYV4y4Bsj
         JsAwhPN0uOtK04Re9e/Einc4uIZ3VeU1ctXKl/9b+DxFtL85yfTRQ9z/YkYagIxv8Y9C
         wvsFIWhwMA1zTeV0aK7dkEVmfH245dWAiPvqNFDvdWjhKLNNp7fV/bZa6UiajtYYJLnS
         b0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EAvJfWkyWR+AqwH45vb7OdQ/ejgJ1D722M1KzKBLqNU=;
        b=RFUb7AvX63AY772kNL9w6z9N0URyti3INmL27L+xGymNnsKOgKbzbPp1K+zNCZJW6Z
         l6orE3iOzDAny4zTVj5FlyYrGHW8fHhZWGjZPyF/m12YQHgHwZRd2/yY14Yg16Nl7TON
         KRq90lO1KXRkfAF2r+CnpznKrgNpCidXnUkZY1UvLz+jlvbpQdwQR7uMDz/ki/RoWRnK
         1vlC3o7mLfB739IKkcbV8/18Qo2v4+yF8loMNB1+gnCsDhuzdAo7Ec+EHQ2ohQE6U1tT
         mqTRgA50+NlgtIgsYCO398C/E8X5dxZ2tLa2u1VI3jQIEQtU6CNN4dzxOqg8qo+TEBTT
         Jgzw==
X-Gm-Message-State: APjAAAWskvohv5YnRt5lvXjpjhZ4eA1yi2+U56t6sh8y0UTM1CLuh7KD
        THLzN0LRVgfs2fL9Kc39q+Zi0E9foLY=
X-Google-Smtp-Source: APXvYqy5SQAlBOFPQ3Lsgyk1faem3zPDe6yWaPFjquElixuLqt7HnpG11CnVZHLnBLUCdj5tUMuRNw==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr14587402wrm.210.1575626544415;
        Fri, 06 Dec 2019 02:02:24 -0800 (PST)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id d14sm16372314wru.9.2019.12.06.02.02.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2019 02:02:23 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: dts: meson: add libretech-pc support
Date:   Fri,  6 Dec 2019 11:02:14 +0100
Message-Id: <20191206100218.480348-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support the new libretech PC platform, aka tartiflette.
There is two variants of this platform, one with the S905D and another
with the S912.

Jerome Brunet (4):
  arm64: dts: meson: gxl: add i2c C pins
  arm64: defconfig: enable FUSB302 as module
  dt-bindings: arm: amlogic: add libretech-pc bindings
  arm64: dts: meson: add libretech-pc boards support

 .../devicetree/bindings/arm/amlogic.yaml      |   2 +
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../dts/amlogic/meson-gx-libretech-pc.dtsi    | 362 ++++++++++++++++++
 .../amlogic/meson-gxl-s905d-libretech-pc.dts  |  16 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |   9 +
 .../amlogic/meson-gxm-s912-libretech-pc.dts   |  63 +++
 arch/arm64/configs/defconfig                  |   2 +
 7 files changed, 456 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-libretech-pc.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxm-s912-libretech-pc.dts

-- 
2.23.0

