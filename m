Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0B5946C97A
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 01:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234560AbhLHAqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 19:46:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234291AbhLHAqq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 19:46:46 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF35C061746
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 16:43:15 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id o14so424345plg.5
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 16:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HpQ+FZHT+FJ4kjpOy7vmGr31PdW6YC+aT42hA68N5VE=;
        b=Vz1EOk4aBEDABjXuD7NDtWBQ4FS/qf/sKqf3GHWn0hJOAJElrfAMYwG7BWS+i3jX5p
         zTdeLG9TNcdGW4Jz/uHZ9vDJLGwUjulFJ9uwodkE4S35biDBbyWwYom0/wXazEWRyjLn
         4HWa0iHx7eD4yZOIw5WEcGqmxHffr91ayHhe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HpQ+FZHT+FJ4kjpOy7vmGr31PdW6YC+aT42hA68N5VE=;
        b=zg3Yqen54BeW4CZyb09ezxya6fyUWCZbPCCf//1K/up5Svj7PpLTCFItDYw1mn5UYZ
         eHa3WlzD/ILvA/8Z/d8QWgLP6cyaoEXI1mL34P1/eyYUTk/11HMbUx02dAKs4JVdyQsb
         KIYl5meX+MgwpK24Bk4yvnCQFqNp2U7IDG1z2Xjl5KPSV9/FpyxajiHcXFiEZC0UUw2F
         RlXbIhpCl1l6BZRpoZf8CVge2+gAjNR3+8JQtcCBU9HGmuBGvhPiFevgO14c4N0QFZ5d
         2E1DBH7Nasz7cnsdaKb/Q2/18t2m6r5GDLXfB2uN0LM+Q66XceKcuSrVL50a1BfKCsGJ
         5lng==
X-Gm-Message-State: AOAM531zV8f9F1TPj3haxyzs3tfZ6AVz/xr74QZ26yXbtk0Sk3HugRVX
        fGWTHi1H+k1+x8FVPbCwUG3OOg==
X-Google-Smtp-Source: ABdhPJzFdRuIyygVdyaO3XZjn0WaCzr5y+tmS/U1EETez9hJBrqmwTfsVgIQQptBkzTBPZ3tTgn9gg==
X-Received: by 2002:a17:90b:17cd:: with SMTP id me13mr3200079pjb.79.1638924194983;
        Tue, 07 Dec 2021 16:43:14 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e4:362a:40f4:7f9f])
        by smtp.gmail.com with UTF8SMTPSA id z14sm984271pfh.60.2021.12.07.16.43.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 16:43:14 -0800 (PST)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, lars@metafoo.de, swboyd@chromium.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v5 0/5] Expand Semtech SAR Sensors support
Date:   Tue,  7 Dec 2021 16:43:06 -0800
Message-Id: <20211208004311.3098571-1-gwendal@chromium.org>
X-Mailer: git-send-email 2.34.1.400.ga245620fadb-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new Semtech SAR sensor SX9324.
Instead of recopying 1/3 of the sx9310 driver, move common code in a new
file. It will be used again for the next sensor, SX9360.

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
 drivers/iio/proximity/sx9324.c                | 1074 +++++++++++++++++
 drivers/iio/proximity/sx_common.c             |  576 +++++++++
 drivers/iio/proximity/sx_common.h             |  163 +++
 8 files changed, 2125 insertions(+), 611 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-sx9324
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
 create mode 100644 drivers/iio/proximity/sx9324.c
 create mode 100644 drivers/iio/proximity/sx_common.c
 create mode 100644 drivers/iio/proximity/sx_common.h

-- 
2.34.1.400.ga245620fadb-goog

