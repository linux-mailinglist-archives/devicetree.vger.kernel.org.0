Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01C082F88B3
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:47:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbhAOWp2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:45:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726367AbhAOWp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:45:27 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58D89C0613D3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:44:47 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id md11so5893464pjb.0
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mTA49NGZFHIajQ9unaV1ybBctL6ERy3zYWaKCRHno4w=;
        b=ESFR8XE28uKU8I9Yi8nLrOKz7DRInG2Yb87P5sczoq2dC2AFbH0WFnaqVQfnKRPjeJ
         5LGPRmxjq24G5gw2ablyQXl1Bd9mZvyI2OpKe8SHBjqNYA8Lw6JOesczgCrQFuXm9jMD
         /HCfMbBCxNcBEqwpxPl7IwGTRN+K2TCuZHNfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mTA49NGZFHIajQ9unaV1ybBctL6ERy3zYWaKCRHno4w=;
        b=H3i9s3JV9hRwfuK1FaBgWrLLBVWyBMR3gRJytfIbJS3x3k85dXrVfW7/svtFeYHkUd
         Jwbi8RJscY6P6sgjfOMjram7zWJ7cdB1ZHCbsDs8HhFmcnV2zyDmt9PnJhei7HbNlvlW
         fegM3ExluP3ml9JYDYpgfqAAioS+i03/SP+UYnh9s4nBMYZ+6xeHyaH1ODEhJCVHjQTT
         gypkS9d/atQBKm7FOTWEP7WHXn/+11KNMdKBvlP+QsRbxa+Kdvwk2UwW+qKyUxOrSln0
         Mp7l52lXxn1dNHcyhdoMigQKvi2wUM3UPdpZEivqj4oEOaeE8RlEHCjpTesznJfvpAtP
         NQkQ==
X-Gm-Message-State: AOAM532h6Vu3yH6qeKZg3io1g/yJ/EKgcBhG3hTHrLpb9LvmSsI1z8dp
        hxfP+f5IKgzzBIzMpJjdyN1sXg==
X-Google-Smtp-Source: ABdhPJyoaYtRn2BrXjvFuddlTtkAwmEk+srgLAChXqS259ceINg3HgxgyQaHayHSXGJyGut0yKSKUQ==
X-Received: by 2002:a17:90b:490c:: with SMTP id kr12mr13051567pjb.227.1610750686904;
        Fri, 15 Jan 2021 14:44:46 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id q16sm9131100pfg.139.2021.01.15.14.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:44:46 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] drm/panel-simple: Patches for N116BCA-EA1
Date:   Fri, 15 Jan 2021 14:44:15 -0800
Message-Id: <20210115224420.1635017-1-dianders@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series is to get the N116BCA-EA1 panel working. Most of the
patches are simple, but on hardware I have in front of me the panel
sometimes doesn't come up. I'm still working with the hardware
manufacturer to get to the bottom of it, but I've got it working with
retries. Adding the retries doesn't seem like an insane thing to do
and makes some of the error handling more robust, so I've gone ahead
and included those patches here. Hopefully they look OK.

Changes in v2:
- Set the "unprepared_time" so if we retry we give the proper delay.
- ("drm/panel-simple: Don't wait longer for HPD...") new for v2.
- ("drm/panel-simple: Retry if we timeout waiting for HPD") new for v2.
- ("dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1") new for v2.
- ("drm/panel-simple: Add N116BCA-EA1") new for v2.

Douglas Anderson (5):
  drm/panel-simple: Undo enable if HPD never asserts
  drm/panel-simple: Don't wait longer for HPD than hpd_absent_delay
  drm/panel-simple: Retry if we timeout waiting for HPD
  dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1
  drm/panel-simple: Add N116BCA-EA1

 .../bindings/display/panel/panel-simple.yaml  |  2 +
 drivers/gpu/drm/panel/panel-simple.c          | 84 +++++++++++++++++--
 2 files changed, 80 insertions(+), 6 deletions(-)

-- 
2.30.0.284.gd98b1dd5eaa7-goog

