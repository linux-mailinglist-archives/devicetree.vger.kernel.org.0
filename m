Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC29643DCAF
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 10:10:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbhJ1INR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 04:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbhJ1INQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 04:13:16 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 379E2C0613B9
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 01:10:50 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id v16so3866928ple.9
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 01:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nathanrossi.com; s=google;
        h=date:message-id:from:to:cc:subject:content-transfer-encoding
         :mime-version;
        bh=MAly2iZKcBbQJDaNxPhgWBngmMpLu3rVz+Azr51sx24=;
        b=I1yxwJyom2XRVdWQGyaHgPAxp/r72Dw6LQnFWFt07fH7tSpaF5JOKd5/tih4kO+rWZ
         3iHfQeSHk3wQvdrKkMjuK4ZcOR6No4tmogm36jcffx5RqQT9mIvdoBJLzgKy2V6Q/AVq
         g0h2CxKvS7DVNt/GlVds66SOuDI0U663D44Tq+GV2KJY80gWs3cIrRQkNEpWNM8CdNMC
         zjWrbSrDRfbrsxbqvYgERl5Ei7QUwJKRvb7muh9cpLzYyEFl2oFZPq/+BV6PXbHs3gJ8
         vzbV1/u6a7RZGThCaHoyEcEJffD3B0Dyg1XncEOmReVxXINDiNNoD14byGWZ+NBh4XoC
         BxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:from:to:cc:subject
         :content-transfer-encoding:mime-version;
        bh=MAly2iZKcBbQJDaNxPhgWBngmMpLu3rVz+Azr51sx24=;
        b=dJodHQvCoOf/5vxM7JVoZ6KLM/aoxK40cM//e/wwbBngmjRzEvzFg3crGDYShXalA4
         gVTLBCLqZnkke8GcCz6TGHGX5L0lL7kg8RY9ZAzkWA3CcIwWigY7j6nAINEIs8/TC5SP
         k7ACXXEezS8YWlvCc64SoMKNBSbv7cZi/FzC1Kv1kLa8KOoJB3j+ZnSwF+ZSoPClzrfi
         jEH00HbbsfF2FZJs2KL/wcf1gD3L0PGONcJO7nSXZao2Ez123F8nSH2FVaUzeCsvtnkA
         iOWcWyaja7dJ6qk5etGMZCkQnogveM5VOphMGQUP3LvLAAHWOzGrZstr315KEysP+o//
         Dhxw==
X-Gm-Message-State: AOAM532SYJHg0F4lEL0jlBntoIQGvc6fO3g9LtfBGjayBf0h82HRxE+H
        7Hp6LnAcD8/zEK+T8Ly1LIhtjg==
X-Google-Smtp-Source: ABdhPJz/zr5adLuvZKmC8Av0h4S09ArkE9wUmTXFOACTB3FYppdw+fl1k6Q80Mod5yLBeNRGQ+jq8A==
X-Received: by 2002:a17:90a:b296:: with SMTP id c22mr2880678pjr.13.1635408649697;
        Thu, 28 Oct 2021 01:10:49 -0700 (PDT)
Received: from [127.0.1.1] (117-20-69-24.751445.bne.nbn.aussiebb.net. [117.20.69.24])
        by smtp.gmail.com with UTF8SMTPSA id oa1sm7439285pjb.6.2021.10.28.01.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 01:10:49 -0700 (PDT)
Date:   Thu, 28 Oct 2021 08:10:30 +0000
Message-Id: <20211028081030.719265-0-nathan@nathanrossi.com>
From:   Nathan Rossi <nathan@nathanrossi.com>
To:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Cc:     Nathan Rossi <nathan@nathanrossi.com>,
        Nathan Rossi <nathan.rossi@digi.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v3 0/3] Driver for TI INA238 I2C Power Monitor
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nathan Rossi <nathan.rossi@digi.com>

Changes in v2:
- Added device tree binding for ti,shunt-gain to specify the target
  ADCRANGE for the ina238
- Reworked ina238 driver to use hwmon_chip_info API, and addressed
  various review comments

Changes in v3:
- Fix schema error for ti,shunt-gain binding
- Address review comments

Nathan Rossi (3):
  dt-bindings: hwmon: ti,ina2xx: Document ti,ina238 compatible string
  dt-bindings: hwmon: ti,ina2xx: Add ti,shunt-gain property
  hwmon: Driver for Texas Instruments INA238

 .../devicetree/bindings/hwmon/ti,ina2xx.yaml  |  22 +
 Documentation/hwmon/ina238.rst                |  56 ++
 Documentation/hwmon/index.rst                 |   1 +
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/ina238.c                        | 644 ++++++++++++++++++
 6 files changed, 736 insertions(+)
 create mode 100644 Documentation/hwmon/ina238.rst
 create mode 100644 drivers/hwmon/ina238.c
---
2.33.0
