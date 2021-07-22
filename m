Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C4D33D1BEC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:46:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230424AbhGVCDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 22:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbhGVCDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 22:03:36 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C01C061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:44:11 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id z6-20020a4ac2060000b029026ada3b6b90so19381oop.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XOa5JGP/QaB36txylGv/8WA29Kpuziv0aJWiro9yf5M=;
        b=MdLMOtJG6blCFS9ZTH8S0B80YLCo+rjEFclH0ZS6wgaH36oW9KyEsV2io3pQh229QB
         Hg4275E0wMP8ec8vDpevFb0ibQgPKNiuYJYuf6cyZmpPJbOi8xP8QKcN2Xhg7fucV2u1
         XqA3sdsMV8N90YS2v+ZffQzjj59QXMtLT7OxtZ7UoEa0eHYL9UnqsJ4zXdXDfBx2vu4e
         6EGKV54M1Lpk7UOuR11x51iQ+n4sBYVX8a2nhsXB8ta3/QLWrwDStzmU7IJiHw599gb0
         KC+gTtmlYTYTvdcjp4jFox22COV4JYsQm9JD+zie7nTBbi3S4BDxbBQjJuyM44GF/hZ1
         ljzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XOa5JGP/QaB36txylGv/8WA29Kpuziv0aJWiro9yf5M=;
        b=kkVn6wnVYqCPTW9IDo5+MPpX2eIpPjQhMEOI1GQDpavgPZ7XkQtP86KnKzxepy3i9H
         Oq7O4lXndf+o/sKVIoKOpq+GCp3Nlt2XIK+OE9zuR16f+leb6Hl921007EH5x31OO8vv
         XCxyJ9jbd6+GYnCkSsA7+0PIV5wqLHZjvdecOhdoOxRhvhTVepAFyTPxOgVe4XI1pywC
         3zwYh8CgNpxtmTDSxvoNe0nP5iuSkXHkEy86gyfDA53N4iPa6VkB9d2kKguuVNmW9XWJ
         tfM8ZDa5T/+kaUXTWCK2ltUOffD+P82POQ5d4n1HH6GTRefgo/Jjp8A+2IjXzNbaullc
         5cfw==
X-Gm-Message-State: AOAM531xPQGOszvcs1xrbj5d549wa/JgCqMZ+pnKzIMKuv+FKbrXIMH/
        aMvDMCz06JR5SO0E7j88XY8KOw==
X-Google-Smtp-Source: ABdhPJz2HYRl1Cim/GV648ggH+HYACL81Wpb3DNsLrReG79jvZfQmMU9JrGlmcKDwyeOs4OG9u2MIg==
X-Received: by 2002:a4a:4fca:: with SMTP id c193mr25835012oob.33.1626921850910;
        Wed, 21 Jul 2021 19:44:10 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u18sm5346519oif.9.2021.07.21.19.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:44:10 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>
Cc:     Kuogee Hsieh <khsieh@codeaurora.org>,
        Tanmay Shah <tanmay@codeaurora.org>,
        Chandan Uddaraju <chandanu@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] drm/msm/dp: Allow variation in register regions
Date:   Wed, 21 Jul 2021 19:42:22 -0700
Message-Id: <20210722024227.3313096-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It turns out that sc8180x (among others) doesn't have the same internal layout
of the 4 subblocks. This series therefor modifies the binding to require all
four regions to be described individually and then extends the driver to read
these four regions. The driver will fall back to read the old single-reg format
and apply the original offsets and sizes.

Bjorn Andersson (5):
  dt-bindings: msm/dp: Change reg definition
  drm/msm/dp: Use devres for ioremap()
  drm/msm/dp: Refactor ioremap wrapper
  drm/msm/dp: Store each subblock in the io region
  drm/msm/dp: Allow sub-regions to be specified in DT

 .../bindings/display/msm/dp-controller.yaml   |  11 +-
 drivers/gpu/drm/msm/dp/dp_catalog.c           |  64 ++++-------
 drivers/gpu/drm/msm/dp/dp_parser.c            | 102 +++++++++++-------
 drivers/gpu/drm/msm/dp/dp_parser.h            |  10 +-
 4 files changed, 102 insertions(+), 85 deletions(-)

-- 
2.29.2

