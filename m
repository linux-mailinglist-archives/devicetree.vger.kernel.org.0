Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AE6C455DAB
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 15:12:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232806AbhKROPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 09:15:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232771AbhKROPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 09:15:54 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 713F3C061570
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 06:12:54 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id bi37so26694656lfb.5
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 06:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Or4AgXyW4tgl2yKbvbtrdnKt4RJ7VfsqFDnQl/vuTc0=;
        b=7D2x6Zw+zQCe/b4dFMjkLMGeg/ONrzRoCRRyI4h5ma2+YlV7tsKBCBXfdu9/h+qudn
         CA20OmsXGnLzEE6YvRwLEf3bjOqtMKU+PTQZYoUkfhF1lsOjDNPq8oVedIZwyz4xRx0t
         /k+uYxAW7Q2Bi8noo4cJPzB5XfpPqJL3pr/AYW+t47Pt/VhcT+TNtxq7TvDyH+x8rVAE
         l4wbFEP2yt/6AWekU5uml5vvNw0E2xu08mz12SzqB7PnNNtEoRUvbzodoFHHI8q5wl6j
         Gn/LSbKaPx0hyA85wZXz2JpeJLD8xR8anrxpRwMcP2HGWUav2z6MIUhIVfcUS29m+xFh
         TQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Or4AgXyW4tgl2yKbvbtrdnKt4RJ7VfsqFDnQl/vuTc0=;
        b=sgwtK6wpIYyPE9VOY50AGR4Bp5HO2/mRPbybd0O7dO9tzeaDunJfi2VFad9PBw38u7
         H3VxrBHpVzEiSvIGxoXvn9WuDQsKSenx9DkpscVyTd3dn5jqEVMhkN1YJxIc90jQ66Sz
         shiq3CkpCJRvNkce/8hMrrmhHebDGp72LpkCp5PQTKrU+SrBQc5mpxra77vSejU4GGSw
         lvMMj016NWvyUu2tNycqFgZLMORVs3qQ4c/wO6V2+xasHMNQmVuHZtQmCnhKcKOesE4H
         TqTRIDb9k46lhxnVLv+JpHRrsw3C7k7atcFH8wfWHoFGMPWXjqkEG6SIhIvVhvnuKTlt
         iTeg==
X-Gm-Message-State: AOAM533lqIBFHRayn75puh6CkbOtimDA9BdWO3lPpY+bNvvO3ykd0wjP
        7aKIvcf0YGDBstcYgHTEa905XQ==
X-Google-Smtp-Source: ABdhPJyghWKlwD40NYXvO7Wpmo/rE7eEgxm6PEby+PI/2Q5Arc3dROddVEFwY23331mAF7yf5pEk0g==
X-Received: by 2002:a05:6512:22cd:: with SMTP id g13mr23684891lfu.417.1637244772797;
        Thu, 18 Nov 2021 06:12:52 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id s15sm193634lfp.252.2021.11.18.06.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 06:12:52 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     linux-iio@vger.kernel.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Quentin Schulz <foss@0leil.net>, linux-sunxi@lists.linux.dev
Subject: [PATCH 0/2] iio: adc: axp20x: add support for NTC thermistor
Date:   Thu, 18 Nov 2021 17:12:31 +0300
Message-Id: <20211118141233.247907-1-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most AXPxxx-based reference designs place a 10k NTC thermistor on a
TS pin. When appropriately configured, AXP PMICs will inject fixed
current (80uA by default) into TS pin and measure the voltage across a
thermistor. The PMIC itself will by default compare this voltage with
predefined thresholds  and disable battery charging whenever
the battery is too hot or too cold.

Alternatively, the TS pin can be configured as general-purpose
ADC input. This mode is not supported by the driver.
    
This patch series allows reading the voltage on the TS pin. The voltage
can be then either processed by userspace or used by kernel consumer like
hwmon ntc thermistor driver.


Evgeny Boger (2):
  iio:adc:axp20x: add support for NTC thermistor
  dt-bindings: iio: adc: document TS voltage in AXP PMICs

 .../bindings/iio/adc/x-powers,axp209-adc.yaml |  3 ++
 drivers/iio/adc/axp20x_adc.c                  | 45 ++++++++++++++++---
 2 files changed, 42 insertions(+), 6 deletions(-)

-- 
2.25.1

