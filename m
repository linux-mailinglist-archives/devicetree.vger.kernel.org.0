Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 521E91EC25E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2020 21:09:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726842AbgFBTJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jun 2020 15:09:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726174AbgFBTJV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jun 2020 15:09:21 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA3EC08C5C0
        for <devicetree@vger.kernel.org>; Tue,  2 Jun 2020 12:09:20 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id e8so15078113qtq.22
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2020 12:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=RjLoP/+arqDIfWivf17mO3emx7T1Yr20LPV777uADFI=;
        b=p8FYmyoCRCjdlVZU5ESaG+sAk3HcfFVM8Fv7A1Y9wbjQUTqJ3alICGMUq/U5FryADW
         ameGi/xvO9frrvC3CsPIL1O+mlylIt515o2oyPP/Cv500IA1Fz50yb5w/xTiMptF5GVe
         tn9ZKTwrEAtxES8YCMTf5USzzcrGOA2jw8F1fawYV0hkqlkeISqX6OfwnLE9h6QFfLjB
         RbJ0znoC7ES+qJAyc0AEFcP7aqpYJquZur8cKNQwuEKL3FDlyNDGqkIp1LPl9SjdI92D
         A0Axn4YMsCMdmk1prf8q7JbX+F1hOwUSxwiwqCf5+mlIKABmjG5JGaGF8iFeFlgMEc7S
         jZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=RjLoP/+arqDIfWivf17mO3emx7T1Yr20LPV777uADFI=;
        b=hx8eVy91Yb8hZYvtdcwhPdlluH/IxYvFPsqMskDIFyPg5bkG4CjEi8SeF9CY2OtqX/
         d3Ob6FG0BQc5PRoOOSCrw+o0CxmFAwNP8XhPlmpBX4xNlU7icRgr/RGOccfnstCfGmFS
         g30R7toTrLL8nrtvmmMFQPYOstuzVqzfqtWkbWqcITvQ9Qz7Wdt25/7oHct9847uBGyX
         WBJ8uMCnGsiZKfzFv50h8+bPtupCp26Hj5uX376CBHNIQDOnXqKDZrDIO4utWjTFzkzE
         ASKzbMVfxVjrZIFNBCaYTCpqRpuI3tfC2CYud6wLrZIaQM2SxnB2NoxMz4Uh3tFbxk5o
         TIJA==
X-Gm-Message-State: AOAM530r4HLaRWbFcmLLhqXFw2oCQSLvIUAKW8Pb6VaIFsy31Jh/O4PK
        52jS4OaszQ5uVcszpu8aYlqjXpoec8gB
X-Google-Smtp-Source: ABdhPJytyITqNVvRzIVs65TR0qKxKwSOuDVkoE/oCPjF60Pjpjm4nar097A1l298rXNyQhqg/e1tCHoYROVU
X-Received: by 2002:a0c:a3a6:: with SMTP id v35mr27214898qvv.206.1591124959818;
 Tue, 02 Jun 2020 12:09:19 -0700 (PDT)
Date:   Tue,  2 Jun 2020 15:09:12 -0400
Message-Id: <20200602190914.218541-1-jnchase@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH v4 0/2] CH7322 CEC controller driver
From:   Jeff Chase <jnchase@google.com>
To:     linux-media@vger.kernel.org
Cc:     mchehab@kernel.org, hverkuil-cisco@xs4all.nl, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Jeff Chase <jnchase@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device driver and device tree bindings for a Chrontel CEC
conroller. This is an I2C device that can send and receive CEC
messages.

Changes from v3:
- address devicetree comments
- revert interrupt mask/unmask in cec adapter enable
  (the driver relies on the interrupt to get the physical address)

Changes from v2:
- fix formatting errors
- mask and unmask interrupt in cec adapter enable

Changes from v1:
- fix formatpatch.pl --strict errors
- additional comments
- enable and program logical address register
- add flags to aid interpreting transmit done status
- move ch7322 out of devicetree trivial devices

Jeff Chase (2):
  dt-bindings: Add ch7322 media i2c device
  media: cec: i2c: ch7322: Add ch7322 CEC controller driver

 .../bindings/media/i2c/chrontel,ch7322.yaml   |  67 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   8 +
 drivers/media/cec/Kconfig                     |   1 +
 drivers/media/cec/Makefile                    |   2 +-
 drivers/media/cec/i2c/Kconfig                 |  14 +
 drivers/media/cec/i2c/Makefile                |   5 +
 drivers/media/cec/i2c/ch7322.c                | 503 ++++++++++++++++++
 8 files changed, 601 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/chrontel,ch7322.yaml
 create mode 100644 drivers/media/cec/i2c/Kconfig
 create mode 100644 drivers/media/cec/i2c/Makefile
 create mode 100644 drivers/media/cec/i2c/ch7322.c

-- 
2.27.0.rc2.251.g90737beb825-goog

