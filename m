Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 523001F0CFD
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2020 18:30:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726742AbgFGQap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Jun 2020 12:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726646AbgFGQao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Jun 2020 12:30:44 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E45C08C5C5
        for <devicetree@vger.kernel.org>; Sun,  7 Jun 2020 09:30:43 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id w15so8695736lfe.11
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2020 09:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=+y5hJm0D6r8ReWcb1c3URunictQ0fbWgUuVL/Xt4fvQ=;
        b=DQRY7hCHjakFCewaGH80fZ+QQmDyJyYn4eMcCAgSLqRxm3+ekofpzZf9fOYBuVbsC8
         X7nxCtH4pO3eKLKyPNV/yzgVKEvUdso/Bq/f6hfBr/k0jievSlY0rVLLcGzVQEZuKaOW
         +7RWOiANb0czQLTDAOT8TnRIbugJ+QMl2y/R0zt+C3x2jlyyLL351faa42xHGou8oDe3
         MpZZYDlYq1b//R7HuSYGcLkk2IHtM9YQfOK5Ko5CO5Sq/eHsBLw/TSrUjqbfEpenacKG
         OXM6wkuv5r9Bb+KageC5YremHCxEyLvDcLBQYxoGAJdcvE/3JMiqkyfYX4R3zO8L0mN2
         YSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+y5hJm0D6r8ReWcb1c3URunictQ0fbWgUuVL/Xt4fvQ=;
        b=YS4Fx1K44+xF1SIANok1QNWqgK2TsM+HSahqynlcb8NFAQu3RKtvwkXNdxYijAvO7q
         MpMsNU6XJDan2RGsSDI0TJlBaWM/24oT80iZfystSWcBEJIjRcM9yPaIfDQSKEuj4qSp
         uiv1wdGnN8ECqU7Q/pEZE3YglejwZkYzLBiXpN8ixP6xJBXX5Uh2GIRAded+mPTClb0S
         yizPVbIm+Xhou+YD/J3yXUYR3tFO0LecbGgTvTZqDf9VwXqfTBSWZSpvLaFnFVF7aTbN
         gxiWJZrVjTKpQSBumEUoaM3zkhSwwwDehSkWnajuzLtYikr9YYlQJps4vO1Gp4X5evU/
         G8yA==
X-Gm-Message-State: AOAM533dayuLCIuPLW5miy/XTVr4CINdnlPpMSb4Vff0pEL9c6tSV3qm
        3OpF+ue5K9dSspvp0056wkKvHz3G3w/cHg==
X-Google-Smtp-Source: ABdhPJwbd6ocrGy90nxBgIoKoHdiedqsBTsPOS78rRZFoltKfSP8ldDhBfHeukNNqnMIOWNx0q/wTg==
X-Received: by 2002:a19:4854:: with SMTP id v81mr10303758lfa.189.1591547442109;
        Sun, 07 Jun 2020 09:30:42 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru. [37.144.159.139])
        by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2020 09:30:41 -0700 (PDT)
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
To:     mchehab@kernel.org, sakari.ailus@iki.fi,
        manivannan.sadhasivam@linaro.org
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com, peter.griffin@linaro.org,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH v4 00/10] Improvements to IMX290 CMOS driver
Date:   Sun,  7 Jun 2020 19:30:15 +0300
Message-Id: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds improvements to the existing media driver for IMX290
CMOS sensor from Sony. The major changes are adding 2 lane support,
configurable link frequency & pixel rate, test pattern generation, and
RAW12 mode support.

The link frequency & pixel rate combinations depend on various factors like
lane count, resolution and image format as per the datasheet.

Also fixes for the following issues in the existing driver are included:
* the current_format field in the struct imx290 can be used before
  initialization,
* the reset signal to IMX290 isn't handled correctly,
* the bus_type field of v4l2_fwnode_endpoint structure passed as the
  argument to v4l2_fwnode_endpoint_alloc_parse() function is not
  initiaized.

Changes in v4:

* The review comments from Sakari and Dave are addressed
  https://lkml.org/lkml/2020/5/24/294
  In particular,
  . HMAX values are included into struct imx290_mode. As the consequence,
    imx290_modes[] table splitted in two (one for 2-lane configuration,
    and another for the 4-lane one)
  . link frequency indexes are kept in struct imx290_mode to
    avoid using the width field as the key for modes table by
    imx290_get_link_freq_index(). These are still indexes, not the
    frequencies themselves: we need a separate tables of the frequencies
    for the V4L2_CID_LINK_FREQ integer menu control anyway, so the
    link frequency values should be better kept there (in one place)
  . imx290_modes_[ptr,num]() and imx290_link_freqs_[ptr,num]() helpers
    introduced to get rid of repeating lane configuration checks in the code
  . do_div() is used in imx290_calc_pixel_rate() to fix the build error
    on 32-bit systems
  . the check for the link frequencies listed in the device tree is
    reworked to handle multiple frequencies (vs removing the check entirely
    in v3)
  . imx290_enum_frame_size() is not changed since v3: all (of the 2) modes    
    are supported for all the media codes. So the available modes / frame
    sizes have no dependency on the media code. The fse->code check in
    imx290_enum_frame_size() just guards against the codes not supported
    by the driver at all
* removed calling imx290_set_data_lanes() from imx290_probe(): the probe()
  calls imx290_power_on() a bit earlier, and imx290_power_on() sets the
  number of data lanes
* FREQ_INDEX_1080P/FREQ_INDEX_720P #define's introduced to make using
  imx290_link_freq_* tables a bit more error-proof
* the values in the imx290_link_freq_*[] tables are devided by 2: the
  previous ones were equal to the data rates which are twice as the link
  frequency

Changes in v3:

* The review comments from Sakari are addressed
  https://lkml.org/lkml/2019/12/19/705
  As a part of those changes:
  . null ptr checks are added to imx290_set_fmt() so that it can be called
    early in the probe() function to set the default format, and to
    initialize imx290->current_mode and imx290->bpp - these last two must be
    set before imx290_calc_pixel_rate() is called when creating the controls
  . setting imx290->bpp removed from imx290_write_current_format(). Now this
    function only writes to the camera sensor registers. The call to
    imx290_write_current_format() is moved from imx290_set_fmt() back to
    imx290_start_streaming(): imx290_set_fmt() can be called when the sensor
    is powered off, and writes to the sensor registers would fail.
  . in imx290_set_ctrl() in the 12 bpp case the value the BLKLEVEL register
    is restored to when the test pattern is disabled is made consistent with
    imx290_12bit_settings[]
* The "IMX290 sensor driver fixes" patchset included
  https://patchwork.kernel.org/cover/11407347/
* Added a patch to set the bus_type field of v4l2_fwnode_endpoint structure
  before calling v4l2_fwnode_endpoint_alloc_parse()

Andrey Konovalov (4):
  media: i2c: imx290: set the format before VIDIOC_SUBDEV_G_FMT is
    called
  media: i2c: imx290: fix the order of the args in SET_RUNTIME_PM_OPS()
  media: i2c: imx290: fix reset GPIO pin handling
  media: i2c: imx290: set bus_type before calling
    v4l2_fwnode_endpoint_alloc_parse()

Manivannan Sadhasivam (6):
  media: i2c: imx290: Add support for 2 data lanes
  media: i2c: imx290: Add configurable link frequency and pixel rate
  media: i2c: imx290: Add support for test pattern generation
  media: i2c: imx290: Add RAW12 mode support
  media: i2c: imx290: Add support to enumerate all frame sizes
  media: i2c: imx290: Move the settle time delay out of loop

 drivers/media/i2c/imx290.c | 404 +++++++++++++++++++++++++++++++------
 1 file changed, 343 insertions(+), 61 deletions(-)

-- 
2.17.1

