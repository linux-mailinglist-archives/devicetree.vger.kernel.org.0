Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A629FD5ABB
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 07:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbfJNFcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 01:32:06 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:33258 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726140AbfJNFcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 01:32:06 -0400
Received: by mail-wr1-f65.google.com with SMTP id b9so18066551wrs.0
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2019 22:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
        b=cRqLzJK9lJrzLH1r4rNUMpRvPCQQKB5rPJ5QPg7YyDp8fMfycNYirondsQkTjFceJ6
         ioRTE6ZkDNPDXDmCf6sTrknQZiOwRWOksZXeJEd02Mj5bccyQkq3nMd1FAR3Pl2k2Uvg
         5g7rTSB/9hCW3YLuNKlwgkVri0Uu+3vwu3vLvtCSmmxV+PSAp4ZQFZHZNNx0tYJ+buAf
         Imgshxznob8AnLOBG/3Ks6qNfWlJ7S9sw3a6P9jk8Osn1lkzKvXDVCSSmzPoSP53bhON
         7QdhfrUpN14Rd9ujAvdrOuon50Yj8UUUEz0SsI9F2u1JCT8xgQLyOkQi8Vi9HTl2Qa+p
         pUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VV3IaZnskbUr1GiFO2X9yDGhA134LORR3NXQx0QiOlA=;
        b=Hnm06EjW9phthSTmDHHO4PFUwB6qvlqA0t6HykUoahnPZlJ217J994XupzlZ9hfzaU
         N/BcripZrifKAztE1BKx39H7Dq2wPrmpL/fy48lF0/WpncawQs299rDRkmVJLLBwmES/
         TqmTX1qqBbGjvdIREGxbRCj02b+iLTmGX7ZOSpwAeqAm+y/peFIUgXk9DkuuDpNaaM1k
         ex+IA2jOtHrffDKGctjdTFl5t1Omi/yNTMTTWgpFQkiki1uZOqMQI/9ZqsXcFxaKYxUp
         3o/NlV/BNaJY6H7QC5kgG+MfU6JcjS/lne7ULeR6gD6V53NqDc95t9mqtccEDBBqUFqH
         2RgA==
X-Gm-Message-State: APjAAAWgdk/sNPe+2fOck4aYEOrxSS94XnoubR8ni93IIJv17+E1s9Mz
        Z1d4Ys5i3G7+Ne/ilKFVLgkwYw==
X-Google-Smtp-Source: APXvYqwaGzOSKxB6TEqQpVVf3oyhcigvwBtITeEf+3ldzPzepGPpOShz3H63eqnPZOaXvDvtl9vrWQ==
X-Received: by 2002:a5d:5488:: with SMTP id h8mr24154767wrv.284.1571031124058;
        Sun, 13 Oct 2019 22:32:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Oct 2019 22:32:03 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 0/4] crypto: add amlogic crypto offloader driver
Date:   Mon, 14 Oct 2019 05:31:40 +0000
Message-Id: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello

This serie adds support for the crypto offloader present on amlogic GXL
SoCs.

Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc

Regards

Changes since v1:
- renamed files and algo with gxl
- removed unused reset handlings
- splited the probe functions
- splited meson_cipher fallback in need_fallback() and do_fallback()

Corentin Labbe (4):
  dt-bindings: crypto: Add DT bindings documentation for amlogic-crypto
  MAINTAINERS: Add myself as maintainer of amlogic crypto
  crypto: amlogic: Add crypto accelerator for amlogic GXL
  ARM64: dts: amlogic: adds crypto hardware node

 .../bindings/crypto/amlogic,gxl-crypto.yaml   |  52 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  10 +
 drivers/crypto/Kconfig                        |   2 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/amlogic/Kconfig                |  24 ++
 drivers/crypto/amlogic/Makefile               |   2 +
 drivers/crypto/amlogic/amlogic-gxl-cipher.c   | 381 ++++++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl-core.c     | 333 +++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl.h          | 170 ++++++++
 10 files changed, 982 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
 create mode 100644 drivers/crypto/amlogic/Kconfig
 create mode 100644 drivers/crypto/amlogic/Makefile
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-cipher.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-core.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl.h

-- 
2.21.0

