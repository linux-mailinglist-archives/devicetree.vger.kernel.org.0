Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C0BA581DCA
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 15:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730424AbfHENn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 09:43:28 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:51635 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730338AbfHENn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 09:43:28 -0400
Received: by mail-wm1-f66.google.com with SMTP id 207so74829368wma.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 06:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JhUROw1HvhUxcOE9NaUVqqed4sa60oTqgrJfdf5Zd0w=;
        b=vUJfOghBWCqqLATCC18WkSf+axtMpfn3516CSlWGv8IM33ESEoYS7LgHT/JXThmFV+
         R50C/1ljsKosMRkum31NKzxE5GcDf1+cS4PqPboNZkOM842UqaJBkA6t+fVzr5B7cSw8
         XrDB8nUL6WKJ6Mv3ra5McwOCZvYWzVZDnZVLE8WfPFCysZiJfbQgJUiuCEnGzfFunNoe
         wyO7bkgzybB1vzbiu5vUMKJXNhS0d/6ZypXY2dk8Do5vE1HttC9naKxVdJJ53oPBMZlL
         3WC8lqxQs75xql5XaRGCWP6WetYgx47N/5VY5WQpugIwIDIdpTY4OBGqzyq6IPkpqlYQ
         MNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JhUROw1HvhUxcOE9NaUVqqed4sa60oTqgrJfdf5Zd0w=;
        b=mfQm3Oe6pPsX4Bo8lvHbCZjVzgCW1idjEO7z4Ypc96tSBxbwYdp4Sw52bD8xJJpQzd
         YLDB7Ts7F+fTSNCJFDMINrTVNOngYDRlFHQG2DP9irhOXFCIsUbAU0MgyOsqG7263e8v
         F9oUApIYqUa4+87brPf/UP0iCIvkg41qg8IBBBMjcXyJn8Mc8gbRn08IWD5YMfYfYXDe
         9+/aVYkDVLQVjsAS1P4g2U6F/KWfcd8/wTweSoSemrN5gX3ITC9W9Qq74k1L6sMKFTzU
         EYeznDtUKqrlxxj4ZAWOSqM+BlqabKDe36ieApemFwjvlvqa4JLd2qL92SM56eSDX946
         uxiA==
X-Gm-Message-State: APjAAAUjgqCPUUkNGMx2duLVnos89KtlPHEUOO7Tc4/uW9iMKwgplksV
        k5Gk/WzLLHAgP0gbHUlRZ0bC/w==
X-Google-Smtp-Source: APXvYqwRQ8LTdh+aO2Wutd286Aw3WmG2Oy0ABsRw8fE9gC5QuZErdhrI3Sy/Vj9G8jN3TZSG3y4rYg==
X-Received: by 2002:a7b:c5c2:: with SMTP id n2mr18523606wmk.92.1565012606039;
        Mon, 05 Aug 2019 06:43:26 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id t3sm67835842wmi.6.2019.08.05.06.43.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 06:43:25 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] drm/meson: convert bindings to YAML schemas
Date:   Mon,  5 Aug 2019 15:43:16 +0200
Message-Id: <20190805134319.737-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset converts the existing text bindings to YAML schemas.

Those bindings have a lot of texts, thus is interesting to convert.

All have been tested using :
$ make ARCH=arm64 dtbs_check

Issues with the amlogic arm64 DTs has already been identified thanks
to the validation scripts. The DT fixes will be pushed once these yaml
bindings are acked.

Neil Armstrong (3):
  dt-bindings: display: amlogic,meson-dw-hdmi: convert to yaml
  dt-bindings: display: amlogic,meson-vpu: convert to yaml
  MAINTAINERS: Update with Amlogic DRM bindings converted as YAML

 .../display/amlogic,meson-dw-hdmi.txt         | 119 -------------
 .../display/amlogic,meson-dw-hdmi.yaml        | 160 ++++++++++++++++++
 .../bindings/display/amlogic,meson-vpu.txt    | 121 -------------
 .../bindings/display/amlogic,meson-vpu.yaml   | 153 +++++++++++++++++
 MAINTAINERS                                   |   4 +-
 5 files changed, 315 insertions(+), 242 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml

-- 
2.22.0

