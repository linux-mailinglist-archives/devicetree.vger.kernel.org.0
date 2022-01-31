Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 041114A4815
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 14:30:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376448AbiAaNa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 08:30:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358923AbiAaNa5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 08:30:57 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1628C06173E
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 05:30:56 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id j2so42683281ejk.6
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 05:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pbujpOeb8vpyMS6SbS4hnPoq6ntTwNGj5wKqwYCyC3E=;
        b=q1RnIR0KJNjjCvEKRNqNU2CV+XIdjFzKMTm7wjEzDDNr6CgIvBu1w9A3IhSy+Wwbtt
         QapKvxfdtsWG9aLqFzafOgsGpoSPjFkue9rnaaVMRHJJ4NBDr5wHrs/TKtHDGuy+ZCOn
         CBX2OxDZlSzZZ4Uhj14bC8/2GB4RvT5nRSXBjuo4R5lsba/x7ldjL7903JIybPAMpqjS
         hYOuPlU1DvYFlBq60CHUjSsHuorc6xoxMiFoXhxfkQkUYIW1gwgcyhv1HQEQ+31ECNCt
         81TJt/58pUv/QQ9SvVxigNkFG6iSEkpRlVhNmLUeyxODVoYTd4Ldns15298bqaR4R6w8
         qnfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pbujpOeb8vpyMS6SbS4hnPoq6ntTwNGj5wKqwYCyC3E=;
        b=nocQS+hoqNpW6Kn1K1+29uZa3hL1hTicEExWZoBVDS/XRAD22TMzlcWhypDlDvyJ5x
         QsPwMW+4yaJwQbZc62yvlOB4+OrvY5WSlFMgKJsy3DydxHs2RlBgVQs4XQz2dUowoo1C
         Nny/1tzVlsgh+HB0kDb0YIHqBh76mcrbhK+22uyLi8UAtViXjSnAfKPQ/LfWG7Q0PKHV
         WkyvwEWh9wA+xvH8hSa0zx/6DC8YnIq9apDEO691hit5i0v8o0BJrLqT319HO5fO5vMT
         3t9dwHZRt3Lfu8K5mTQ7/VmzIO24tcfr2xbL86Q8uA0NzlXvO+5ZQzhPBgVDf5K9oYa7
         hvWA==
X-Gm-Message-State: AOAM533h1q822oapSj4lX6ok+iAbYwf294d0cw09o6NImKmctst3vyqD
        tMsidPbX/YsAxOwWx039kAiHvA==
X-Google-Smtp-Source: ABdhPJw3YlEVU3k33VV1mysJdvZivOCxh4/+g94kGvDsZwaX7SHW6ZydduTiVHhuEXazDO5k5/KgSw==
X-Received: by 2002:a17:907:a412:: with SMTP id sg18mr17622904ejc.68.1643635855125;
        Mon, 31 Jan 2022 05:30:55 -0800 (PST)
Received: from fedora.robimarko.hr (cpezg-94-253-144-81-cbl.xnet.hr. [94.253.144.81])
        by smtp.googlemail.com with ESMTPSA id c22sm13094334eds.72.2022.01.31.05.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 05:30:54 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, brgl@bgdev.pl, robh+dt@kernel.org,
        lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh@kernel.org,
        skhan@linuxfoundation.org
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v10 0/6] Add Delta TN48M CPLD support
Date:   Mon, 31 Jan 2022 14:30:43 +0100
Message-Id: <20220131133049.77780-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Delta TN48M switches have a Lattice CPLD that serves multiple purposes
including being a GPIO expander and providing various resets.

This patch series focuses on providing support for the CPLD provided
peripherals that are needed for the switch to function.

The series has been refined over the last 9 months or so and currently
all of the code has been reviewed and is ready for merge.
We are still hovewer waiting for the DT bindings to be reviewed for a
while, but hopefully Rob will provide feedback soon.

---
Changes in v10:
* Rebase onto 5.17-rc1

Robert Marko (6):
  mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
  gpio: Add Delta TN48M CPLD GPIO driver
  dt-bindings: reset: Add Delta TN48M
  reset: Add Delta TN48M CPLD reset controller
  dt-bindings: mfd: Add Delta TN48M CPLD drivers bindings
  MAINTAINERS: Add Delta Networks TN48M CPLD drivers

 .../bindings/gpio/delta,tn48m-gpio.yaml       |  39 ++++++
 .../bindings/mfd/delta,tn48m-cpld.yaml        |  90 ++++++++++++
 .../bindings/reset/delta,tn48m-reset.yaml     |  35 +++++
 MAINTAINERS                                   |   9 ++
 drivers/gpio/Kconfig                          |  12 ++
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-tn48m.c                     | 100 ++++++++++++++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |   1 +
 drivers/reset/Kconfig                         |  13 ++
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-tn48m.c                   | 128 ++++++++++++++++++
 include/dt-bindings/reset/delta,tn48m-reset.h |  20 +++
 13 files changed, 460 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
 create mode 100644 Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
 create mode 100644 drivers/gpio/gpio-tn48m.c
 create mode 100644 drivers/reset/reset-tn48m.c
 create mode 100644 include/dt-bindings/reset/delta,tn48m-reset.h

-- 
2.34.1

