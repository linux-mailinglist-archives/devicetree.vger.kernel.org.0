Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF37529C28
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 18:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390627AbfEXQ1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 12:27:38 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:53955 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390337AbfEXQ1i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 12:27:38 -0400
Received: by mail-wm1-f65.google.com with SMTP id 198so10006045wme.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 09:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PW1SRGUIIosnHzTIT8oKHW+BHMniX6kJc68l082Nb68=;
        b=JlhIiBr0LN+EnwR1yra8h8TfNP6AP5PihbHAG9CnLQaVbccxa0gL7XOEb/qPhw6xw2
         21kLfpqUhTCojwj+D/mGusUKs1jjVDGZkz3LyvpjNo1f2NpWouYSEFgNjb88fjsgv8mL
         DFLkoc+BPr3wl3/HYo7l/01oJB4c4rb0UtJ6Qy/7LkGxaxf+dyC5mTwsnvKUy3b/Dtsh
         /P9qWaIzy+l2zGV3aFtyeAOq9GU001faEsS2NFsTAZDM0A978menzvnuZlzVr5h3mazT
         i5FN0VuhV+N5XaldGyHhNDVl648ByGwe16b4tRcdlbaVE3pVIcTICNpEb3pCFCJ0ByCv
         ygkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PW1SRGUIIosnHzTIT8oKHW+BHMniX6kJc68l082Nb68=;
        b=FxFd9wjIBrbYz0aQv9JCg1DCqp3CjziL9UwTHrolP2uGQoQcEfWATFD0dku3zTZQCS
         V0jU4AJaUM1OQrs3Prwnjgp9mPVJP/WS3ReqO33GrogURJc4z4sP8qpuIL1phBFwfF1K
         Ivrg2N52mLRP2Y25hfowbR20+X02T27KAB4i/zadM9i/KBag9Yl1A/Hbr0kOPETdxl54
         sHg0grJAw0ipS564s94TKKCCd6zzuy4SwDQejNb7kIKhLzNm/C60yIru1Cd39QOeEZSA
         lhiZKs3sap3LByqZLTQl3USbg/dEbzK5ba8S5fqn34RdhxaK75rlp7vvU1ac74QpvGwY
         9kLA==
X-Gm-Message-State: APjAAAWFOm6x7/vaRj2SBaneJlz5k2yy7FOLvlX1yBghAlE1KWEeA2QW
        mavg/W0xQ64+nD+8NFUO0Lnzk4+OnXQCKili
X-Google-Smtp-Source: APXvYqzFigln+kJPy+/t7Xbc8DEEH5LN8284rdnJjkHyVa5UHTzba6b6EgaPOigSNNHqYBAD5qkMHg==
X-Received: by 2002:a1c:38c5:: with SMTP id f188mr507266wma.9.1558715256725;
        Fri, 24 May 2019 09:27:36 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
        by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 09:27:35 -0700 (PDT)
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
To:     linux-crypto@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: [PATCH v2 0/6] crypto - wire up Atmel SHA204A as RNG in DT and ACPI mode
Date:   Fri, 24 May 2019 18:26:45 +0200
Message-Id: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Socionext SynQuacer based 96boards DeveloperBox platform does not
incorporate a random number generator, but it does have a 96boards low
speed connector which supports extension boards such as the Secure96,
which has a TPM and some crypto accelerators, one of which incorporates
a random number generator.

This series implements support for the RNG part, which is one of several
functions of the Atmel SHA204A I2C crypto accelerator, and wires it up so
both DT and ACPI based boot methods can use the device.

v2:
- update DT binding patches so the SHA204A and ECC508A module bindings are
  in trivial-devices.yaml.
- add acks from Linus and Mika

Assuming Rob is ok now with the DT binding patches, can we please take
this through the crypto tree?

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>

Ard Biesheuvel (6):
  i2c: acpi: permit bus speed to be discovered after enumeration
  crypto: atmel-ecc: add support for ACPI probing on non-AT91 platforms
  crypto: atmel-ecc: factor out code that can be shared
  crypto: atmel-i2c: add support for SHA204A random number generator
  dt-bindings: add Atmel SHA204A I2C crypto processor
  dt-bindings: move Atmel ECC508A I2C crypto processor to
    trivial-devices

 Documentation/devicetree/bindings/crypto/atmel-crypto.txt |  13 -
 Documentation/devicetree/bindings/trivial-devices.yaml    |   4 +
 drivers/crypto/Kconfig                                    |  19 +-
 drivers/crypto/Makefile                                   |   2 +
 drivers/crypto/atmel-ecc.c                                | 403 ++------------------
 drivers/crypto/atmel-ecc.h                                | 116 ------
 drivers/crypto/atmel-i2c.c                                | 364 ++++++++++++++++++
 drivers/crypto/atmel-i2c.h                                | 196 ++++++++++
 drivers/crypto/atmel-sha204a.c                            | 171 +++++++++
 drivers/i2c/i2c-core-acpi.c                               |   6 +-
 10 files changed, 781 insertions(+), 513 deletions(-)
 delete mode 100644 drivers/crypto/atmel-ecc.h
 create mode 100644 drivers/crypto/atmel-i2c.c
 create mode 100644 drivers/crypto/atmel-i2c.h
 create mode 100644 drivers/crypto/atmel-sha204a.c

-- 
2.20.1

