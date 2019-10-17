Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F563DA4EB
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 07:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732817AbfJQFGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 01:06:45 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:51990 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726642AbfJQFGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 01:06:44 -0400
Received: by mail-wm1-f67.google.com with SMTP id 7so1045110wme.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 22:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=vc5hMa73OPr/x/aEf805fVYp+2tYvgPjEPvMghKb2Zw=;
        b=zh64szI5/P7kHr7xGyuurhRKHjg1Pn1Q28ubOkmOzG3Stwaf4WlQppsxqn+dNutVpv
         Yp9ECpelYfZLjI25E2yFrf5j4gxK5YunYg3Br2IVSqkK/4jF77prXesnCIAaRvYrU06q
         516AdjPwzMZ+S7nTMrdAZq6HlkPzGFMYWUmQhouxL0xUsRS+9Ct91pLNxgnjDTpcvU0+
         Z60oaEnCXX2Aa9eKW0lvTSpWGEuZLmL31s+hPdJUAe0wFgCg+CbW3KqndIWiAaOKVKjD
         3oFcBNzJVMivg8nPMQ95fwkpuydWpLCKG/B9xbbinhjU3YbV/0M3rzGTb3iA8yggNAYl
         ZAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vc5hMa73OPr/x/aEf805fVYp+2tYvgPjEPvMghKb2Zw=;
        b=LhE8k/nZwRvFixK9K9qpCCutc9GTsiVrVaDP47iP0DUfF2z3Hw8kAkn6lcijBMywAc
         Dmq3JY2x8cle2pFbkyLjk/d21eMm6APMsjNcSjQ42vYTFhFmJFqPXIDBtDN8Mcvzk+Dp
         DyDL7hDWViX1NRd2RQbBKRZ8HuT9olLXIAJjSVeGvhV5Ju3sj77gLDx22T9wXxl5awU9
         SirEXr/qpVe3WQJPF0wlvjfyLQJq6ycjBQf9WCEL6QkkeevyqvNA7VBPH/1MJ8Dv6pck
         e4zBKNtzZqzIB9qLCHPwdRk+LEdJKs5nUcliCJcZyrZGOiTe5I9eBZyB/zu2TrwpYXvz
         XI2w==
X-Gm-Message-State: APjAAAWCXH36csZ8nwSYvzHjXDzskNTil6tJPrKwP9Nsq0LKfmj3ewJz
        s0Ominn/LY+vwE2piY4ehAajlQ==
X-Google-Smtp-Source: APXvYqw07wwT75FOoNWJyD/an/XIle9yHvlb7113NxzJZiEpvXnUsfMUBXr2Xe/6iQ8HyyjCXNyUPQ==
X-Received: by 2002:a05:600c:143:: with SMTP id w3mr1048902wmm.17.1571288802451;
        Wed, 16 Oct 2019 22:06:42 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id b5sm1010762wmj.18.2019.10.16.22.06.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 16 Oct 2019 22:06:41 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 0/4] crypto: add amlogic crypto offloader driver
Date:   Thu, 17 Oct 2019 05:06:22 +0000
Message-Id: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
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

Changes since v2:
- fixed some spelling in kconfig
- Use devm_platform_ioremap_resource

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
 drivers/crypto/amlogic/amlogic-gxl-core.c     | 331 +++++++++++++++
 drivers/crypto/amlogic/amlogic-gxl.h          | 170 ++++++++
 10 files changed, 980 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
 create mode 100644 drivers/crypto/amlogic/Kconfig
 create mode 100644 drivers/crypto/amlogic/Makefile
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-cipher.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl-core.c
 create mode 100644 drivers/crypto/amlogic/amlogic-gxl.h

-- 
2.21.0

