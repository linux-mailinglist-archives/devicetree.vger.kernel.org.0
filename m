Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DAC054E05C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 08:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726045AbfFUGMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 02:12:51 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40857 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726027AbfFUGMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 02:12:51 -0400
Received: by mail-pg1-f195.google.com with SMTP id w10so2824357pgj.7
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 23:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=hc7LlnhYKlripj8xIjUSqdLS+0TxDwaADDzz2U0auf4=;
        b=zVvpyVBj1fJ344KOE4nUWG+7s5KWzpfOGopnV2cFnegqyPWrCuMoxxX5v9HH9Z5msi
         N+J6AD7cAuJIKQSVYE4eCOBxlRNxKKlEfoKXWCdtKYRLsKnaFQGQhfcaPOo4UKJVgZgK
         YLlilwII4SMLYxedxWDej8qvRFt9apfjzAZ5YWe8JdxKcqQzRCWNFlC8WpUSUJNerk9s
         87e4tSDIkvdWO0XeezqDlD/2W8YEFn/gCClGB6eAmReP+Mjb/ECtelZA9y3w8YukhTzX
         PGGG/3c8JxaIjGdLnwQnIfiP5eo8MTaf6AQDcw9BJ/b4GAS6IhnLQLehh+TOV9g30aSz
         OPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hc7LlnhYKlripj8xIjUSqdLS+0TxDwaADDzz2U0auf4=;
        b=AQeLOw2s2IJDVaEHUPkDWTOeOaNPBMRhClpWlwfnfKK0Ttwf2Rg6k6iF4HE08HMjHX
         ITdbHxbP9U1blrWNZP+A8mHKm7TZKW6x203j5otZKiI/26O0DAPYxrQlgzNqJFiytu7q
         kxsYWoQ4W6ip8dmwvPrbGz6qSCtJh4vR+eai22cT/hiRrnL7cPLVTLcYnZHgGsSO+czW
         zxs2xluE+brcTW3+duntZXZs/ysISm9h2RyaPr3+Uf0JBeOB0KAABb/J9ODNBkFb05W4
         S8F8r3CRUi1FHP6bxyBb1wfc3mTN6khA3hX06v65seEXdSHvIvy55CTxGq08fhsndZSg
         HLYA==
X-Gm-Message-State: APjAAAUSdL1Ru8ftt9lDUAHlt3BcHgkVdYXiUR6Q8FAceafcIbhUQZJH
        zuu1860i/KOylGq8Bm1pr51IzQ==
X-Google-Smtp-Source: APXvYqz+VB2OyxZohTciMXy6FWLRoUom4/hSeT25jg2KnM8hP9F1uMaTXlETllBlDuISal0kQwrtzA==
X-Received: by 2002:a63:3d0f:: with SMTP id k15mr16737667pga.343.1561097570369;
        Thu, 20 Jun 2019 23:12:50 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id x7sm1266134pfm.82.2019.06.20.23.12.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 20 Jun 2019 23:12:49 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/3] Optimize voltage switch for the SD controller
Date:   Fri, 21 Jun 2019 14:12:30 +0800
Message-Id: <cover.1561094029.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set is used to optimize voltage switch for the
Spreadtrum SD host controller.

Any comments are welcome. Thanks.

Baolin Wang (3):
  mmc: sdhci-sprd: Add start_signal_voltage_switch ops
  dt-bindings: mmc: sprd: Add pinctrl support
  mmc: sdhci-sprd: Add pin control support for voltage switch

 .../devicetree/bindings/mmc/sdhci-sprd.txt         |    7 ++
 drivers/mmc/host/sdhci-sprd.c                      |   78 ++++++++++++++++++++
 2 files changed, 85 insertions(+)

-- 
1.7.9.5

