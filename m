Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8155A23B180
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 01:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729057AbgHCX6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 19:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729021AbgHCX6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 19:58:19 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D6DC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 16:58:19 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id z3so22456572ilh.3
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 16:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fv9PibqwgV1MjdyCrH+1lNbL+7w+KLmAdvqrt5iuuUg=;
        b=B2IkoKAw3rHxQpDM1yTGP4MlW3lpnAq6GJVq/kz2BN1ZjLfVf64Tf9CRO89X/taM9E
         wcMafJb09Ag4+xK4wztasHaUJY3d6bLgUng05df9X+sxXSji80gXcRBUXGwBsE7V5IHF
         f/kyr9JFcfZjZ6cGT8lOJJTR1tLzon0Bwh5/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fv9PibqwgV1MjdyCrH+1lNbL+7w+KLmAdvqrt5iuuUg=;
        b=SsWLCV5lYTU4CE6a/d06uFTAA5nCcWwKDWEoJ4tD0Ym0nFDWPsYfNxRgBabt9Q+3w/
         FVMfTn38HN4josksY7Kv4Gb10U03r2TAKmveYo1Sc79SPZ5cHVIe53uHbbglkSrpcSHw
         FDjrIKaKdfWbK2v6zUlzdNT6ajAaO97Am5jrTAcqO0BALLo8XA/sf8oNEBbNK/kx4x0x
         g1cwBR4UxigkGkHk9Esy8mZB1pWfAVr0lc51E8oiacXB+WbWSVCwNPdEsc8FoMwKkgd2
         Bsjp50GzADQdIBMMhs3TxqXU8y2IbvImRySpk6u8t8QJrkgDDSrRLS8LlfPyVvCoZCYt
         ux2g==
X-Gm-Message-State: AOAM532hj0P7ZOGqUm7XRe7tMuYghU37kzCyxyAjPug3KutTZXtAME0Z
        VdPDJvCWCEPnwhPgZI1UU4Vse6BwgkS6Lg==
X-Google-Smtp-Source: ABdhPJwuZOrcjsZum5hriyqB/88t3oNzQpXfJTtMVwl9L2gy5MrOdYRuXLO3KbMn6b8iH+FgrOHkTA==
X-Received: by 2002:a92:84d2:: with SMTP id y79mr2096912ilk.50.1596499098453;
        Mon, 03 Aug 2020 16:58:18 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id x185sm11075992iof.41.2020.08.03.16.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 16:58:17 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Enrico Granata <egranata@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org
Subject: [PATCH v5 00/15] sx9310 iio driver updates
Date:   Mon,  3 Aug 2020 17:58:00 -0600
Message-Id: <20200803235815.778997-1-campello@chromium.org>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first patch resends the DT binding for the driver that was merged in
v5.8-rc1 with a small change to update for proper regulators. The second
through the eleventh patch fixes several issues dropped from v8 to v9
when the initial patch was merged.  The twelveth patch drops
channel_users because it's unused. The thirteenth patch adds support to
enable the svdd and vdd supplies so that this driver can work on a board
where the svdd supply isn't enabled at boot and needs to be turned on
before this driver starts to communicate with the chip. The final patch
updates irq trigger flags.

Changes in v5:
 - Added #include <linux/bitfield.h>
 - Really use a pointer to buffer struct on
iio_push_to_buffers_with_timestamp().

Changes in v4:
 - Updated macro SX9310_REG_STAT1_COMPSTAT_MASK at call site.
 - Use FIELD_GET/FIELD_PREP instead of manual shift.
 - Reverted condition check logic on enable/disable_irq methods.
 - Use pointer to buffer struct on iio_push_to_buffers_with_timestamp().

Changes in v3:
 - Moved irq presence check down to lower methods
 - Changed buffer to struct type to align timestamp memory properly.
 - Added static assert for number of channels.
 - Added irq trigger flags commit to the series.

Changes in v2:
 - Added #io-channel-cells as a required property
 - Reordered error handling on sx9310_resume()
 - Added #include <linux/mod_devicetable.h>
 - Added '\n' to dev_err()
 - Fixed commit message from "iio: sx9310: Align memory"
 - Changed prox_stat to chan_prox_stat bitmap.
 - Fixed dev_err() message
 - Added '\n' to dev_err()

Daniel Campello (12):
  dt-bindings: iio: Add bindings for sx9310 sensor
  iio: sx9310: Update macros declarations
  iio: sx9310: Fix irq handling
  iio: sx9310: Remove acpi and of table macros
  iio: sx9310: Change from .probe to .probe_new
  iio: sx9310: Fixes various memory handling
  iio: sx9310: Use long instead of int for channel bitmaps
  iio: sx9310: Use regmap_read_poll_timeout() for compensation
  iio: sx9310: Update copyright
  iio: sx9310: Simplify error return handling
  iio: sx9310: Use variable to hold &client->dev
  iio: sx9310: Miscellaneous format fixes

Stephen Boyd (3):
  iio: sx9310: Drop channel_users[]
  iio: sx9310: Enable vdd and svdd regulators at probe
  iio: sx9310: Use irq trigger flags from firmware

 .../iio/proximity/semtech,sx9310.yaml         |  65 +++
 drivers/iio/proximity/sx9310.c                | 424 +++++++++---------
 2 files changed, 278 insertions(+), 211 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml

--
2.28.0.163.g6104cc2f0b6-goog

