Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4598327E313
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 09:57:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725535AbgI3H5b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 03:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725440AbgI3H5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 03:57:31 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA39DC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 00:57:30 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id jw11so465154pjb.0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 00:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=41fwcJQb0JloACvIEe9HUyDrLHIz7eaahBS/h+lPtsE=;
        b=UoDMGOpNZOcv306Av56L58WpIKkFRRO5LD9wk0oAXCv92QUq9oroHBT9Yo0BZGyhQG
         lyqWpAcFQZF6XcKem9xUqWTb8t7X4I5pV39ylYVhvS19cB4bH21hBL5RdmiZaPCG0zAd
         K/EeZHSivRKdwsR8L7sGRx/qHmCafBxjpC3ro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=41fwcJQb0JloACvIEe9HUyDrLHIz7eaahBS/h+lPtsE=;
        b=Zm6BbBKbQjm7m+Fm8u8akuIhbN/o+4aJYzpn5axHEH/xWxK97MVda9ATVZyzD0qyyK
         O88JPR+qUle/FeQNFeAATlGg+ywu/Ljv7eDIT3frMJeWKcn5yNpicvsr9S7C8cJHCMWf
         +WpwhGOXE0qcRm1H9cPOSkRYwR0EVgZLVIvBstSjSeN5W7Kts4mYBlobtryTqkHUv433
         BwReG//xjSyn4sY5qMvT634KEc1CmFg0UCwR9TiIlhBcEwwCrTKiDCtIQ7z8WRKwgDZU
         ONQ+lVOzHqV5J4yIdKJHZPMcjTMcd1CovTZfiACpoXpfByP8fraSJTpdZSGrzZaV753W
         8ZXw==
X-Gm-Message-State: AOAM533v8daGpqw8g9dyuy9Pb3Gnwc3Z6+Gx0ZOBy/8XG6AxuVAcbHiW
        atv2o/LJp5NZJSUd7c4PPFwmQg==
X-Google-Smtp-Source: ABdhPJyuwN2+tjnzg6O8OhS7ont52/rp9+T5SgNFLtGxgBwbHXWzB/BrruRiih7xrffPfRg19wTMUg==
X-Received: by 2002:a17:90a:d311:: with SMTP id p17mr1457615pju.135.1601452650326;
        Wed, 30 Sep 2020 00:57:30 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id l21sm1272131pjq.54.2020.09.30.00.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 00:57:29 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        Daniel Campello <campello@chromium.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Douglas Anderson <dianders@chromium.org>,
        Gwendal Grignou <gwendal@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 0/6] iio: sx9310: Support setting various settings
Date:   Wed, 30 Sep 2020 00:57:22 -0700
Message-Id: <20200930075728.2410327-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I need to configure various settings such as thresholds, gain factors,
etc. on this device. Some settings matter at boot, while others can wait
for userspace to configure things. This patch series adds support to
set these various bits in the registers of this device.

Changes from v1 (https://lore.kernel.org/r/20200903221828.3657250-1-swboyd@chromium.org)
 - A bunch more patches for userspace settings
 - Removed body thresholds as they're probably not used
 - Removed compensate common as it probably doesn't matter
 - Moved thresholds, gain factor, hysteresis, debounce to userspace

Stephen Boyd (6):
  iio: sx9310: Support hardware gain factor
  iio: sx9310: Support setting proximity thresholds
  iio: sx9310: Support setting hysteresis values
  iio: sx9310: Support setting debounce values
  dt-bindings: iio: sx9310: Add various settings as DT properties
  iio: sx9310: Set various settings from DT

 .../iio/proximity/semtech,sx9310.yaml         |  61 ++
 drivers/iio/proximity/sx9310.c                | 524 +++++++++++++++++-
 2 files changed, 579 insertions(+), 6 deletions(-)

Cc: Daniel Campello <campello@chromium.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>

base-commit: 1bebdcb928eba880f3a119bacb8149216206958a
-- 
Sent by a computer, using git, on the internet

