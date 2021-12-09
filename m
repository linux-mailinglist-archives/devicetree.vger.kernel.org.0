Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1605A46DFE1
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 01:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241683AbhLIBBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 20:01:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241669AbhLIBBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 20:01:43 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5958C0617A1
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 16:58:10 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id cq22-20020a17090af99600b001a9550a17a5so5667544pjb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 16:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1NxoQXSULZwxl2gxUiZfPfGIr3nuzFPbF8g//zTGa4Q=;
        b=np/8mN0gL/fahRKFqS2LntCEHVoYzpIosEw6uTv39v5hOxxbI4khVaBNijAzrUhpsu
         sHgaCw3j3YRhX0o8wCob3dJjBiQKNqMX6ARnnF6BM373n8uhdEZ+8EZ9gv9FGoofoKFm
         UUOAG9wBginls3m88KZkB+ihk2hxzn6+kgz3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1NxoQXSULZwxl2gxUiZfPfGIr3nuzFPbF8g//zTGa4Q=;
        b=6l6olishBxlwn9Ptu03fyG3XAiKiEAOUcAN5C/aTMii63/Vp5KvDjZZUiHKpJVFFUB
         T5JIy96d6iPpbcDH797YK96L6iArvYTskbVzS/P2/cXMYoX84mFcba2w8Qwp5PcJlBb0
         ZvE/zeGW4aj1WrpkxkAeUtlSsYRBz57IwPcRjzY/feGje/qLEj7PNW1DZKp3WHYKQV65
         mAY8syM8GUfoIpbIXBUmp/+0nGhPBkzdIz63BM+6XSmk3icokxcaJbHYqXUidaTv0D5w
         H4VfgggO1xpqtD2zIkCOyoDBbJlFK/EvgiGwFZ36CV/KCzbd8ZwD5u/zP4tm3hbf8x5E
         sITg==
X-Gm-Message-State: AOAM532VRh+uyAqrYrVFJPPC+aw4aU4p+cHkPDjmsPOCWfykriq7fZYx
        TL+tU0CDXzokI2xi7t0m6bFlIw==
X-Google-Smtp-Source: ABdhPJyMbCJxXcn/mdR8vVdEQTRGW0tiCVyHl/YSaZq1B7I99mjmUjUc+Qcga1ewcVJfjMdvd8JLow==
X-Received: by 2002:a17:90a:eb03:: with SMTP id j3mr11397026pjz.149.1639011490265;
        Wed, 08 Dec 2021 16:58:10 -0800 (PST)
Received: from localhost ([2620:15c:202:201:16e0:43f4:4e33:993b])
        by smtp.gmail.com with UTF8SMTPSA id oj11sm2174697pjb.46.2021.12.08.16.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 16:58:09 -0800 (PST)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     robh+dt@kernel.org, jic23@kernel.org, lars@metafoo.de,
        swboyd@chromium.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v6 0/5] Expand Semtech SAR Sensors support
Date:   Wed,  8 Dec 2021 16:58:01 -0800
Message-Id: <20211209005806.3575399-1-gwendal@chromium.org>
X-Mailer: git-send-email 2.34.1.400.ga245620fadb-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new Semtech SAR sensor SX9324.
Instead of recopying 1/3 of the sx9310 driver, move common code in a new
file. It will be used again for the next sensor, SX9360.

Major changes in v6:
  Fix syntax errors in device tree binding documentation.
  Drop of_match_ptr and ACPI_PTR protections.
  Fix unused variable warning.

Major changes in v5:
  Use iwyu to cleanup include files.
  Use dev_err_probe() in probe routine
  Add attribute to shift irq status register, not common among all
    sensors.
  Fix long line.

Major changes in v4:
  Use chip_info instead of info in common data.
  Returns an error when setting negative sysfs entries
  Fix cut and paste errors, credit.

Major changes in v3:
  Fix some error in binding descriptions and setting
  Fix invalid register constant name.

Major changes in v2:
  Better interface between common code and drivers
  Document SX9324 phase configuration

Gwendal Grignou (5):
  iio: sx9310: Add frequency in read_avail
  iio: sx9310: Extract common Semtech sensor logic
  iio: proximity: Add SX9324 support
  dt-bindings: iio: Add sx9324 binding
  iio: sx9324: Add dt_binding support

 .../ABI/testing/sysfs-bus-iio-sx9324          |   28 +
 .../iio/proximity/semtech,sx9324.yaml         |  161 +++
 drivers/iio/proximity/Kconfig                 |   18 +
 drivers/iio/proximity/Makefile                |    2 +
 drivers/iio/proximity/sx9310.c                |  714 ++---------
 drivers/iio/proximity/sx9324.c                | 1076 +++++++++++++++++
 drivers/iio/proximity/sx_common.c             |  576 +++++++++
 drivers/iio/proximity/sx_common.h             |  163 +++
 8 files changed, 2127 insertions(+), 611 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-sx9324
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
 create mode 100644 drivers/iio/proximity/sx9324.c
 create mode 100644 drivers/iio/proximity/sx_common.c
 create mode 100644 drivers/iio/proximity/sx_common.h

-- 
2.34.1.400.ga245620fadb-goog

