Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C289C2FCC7A
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:16:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729450AbhATILP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:11:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730182AbhATIJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:09:47 -0500
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com [IPv6:2607:f8b0:4864:20::104a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75676C0613D6
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:03 -0800 (PST)
Received: by mail-pj1-x104a.google.com with SMTP id t10so2251639pjw.4
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=2UNkLMKxfUH8wVYMI68h+KNHu9g9Zcj2Vy8Bc2Qv/Hc=;
        b=Ks8OjTqHIjYprKW3LvMP4gjRw0O9BI9/7jpsol3gDMtB/csmL9DD4/q2F7E+LSvWfB
         Y5RDv9OUHYyjjxoGzy2br/wyVU5zUBR8ykqUaJKmywnBdptEIiCX08GBzsoExgK5IZqI
         49+AsQWHu3cduFAVW0NxW+Tv0AFErHPQsmmwGlXKPqPZxRuwEJ9CT5wUYYncFf+3PMdC
         adL9Pt7ZiM177nh2grAl6uQWGCFT8ZlIgzRgfz2MfQfN9eHg2fGLhF4CpgFBqyy/ssge
         Bl15gltcrONhgD4dLe/EwinT0ENCnIYB5R4GVY62OYC7lR0lq7vgk7jc1wF60PH0pZ0L
         Xm4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=2UNkLMKxfUH8wVYMI68h+KNHu9g9Zcj2Vy8Bc2Qv/Hc=;
        b=X2khE5Qwvmtvi+TANMMwkkUgEaTeE0OlkO9EZnSTeQx7/lap+WkigydQ5Nnbnw1Nqx
         xM8czeLrKw9cI2UIR8Zsa9lsi7tOuF4s3f+e9hMjPkNOwgsU+iAoEwNK/C8medTK6M+g
         5QESTXxRwByDWJtwSXWDxzWFlPt6s2Q0f6TYkjEsHTTPPlUmtA6s6Js73GVyxE1f0HKN
         ja9DWcouxtbtc9yFRuimsi26dJJM+1E39QL/4F4StNB4Oj9fpk9LY+G84z2qUF+Zrn5f
         YAR3oeY2KSjRN2vXjXi2tzt08Gxb+/+41AHtlShumTw0eobAzDzraFbZg+iaYPdUl5af
         BF7w==
X-Gm-Message-State: AOAM530KgyAqk2g6AAb3ubSrf7eM1F6PyXlJHvkG43D0xhJtKb16cla6
        c1ONZeoxoV+7BV1Wpo8uFU+g/NX0hLi5
X-Google-Smtp-Source: ABdhPJySxvBQGrSjMO641lZBxijWdD5f6vHmOkMVTyalC71ml4qudFLKXinOfQj3ivSslIEKR+YVzrFP1jo3
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a17:902:8687:b029:dc:2a2c:e99b with SMTP
 id g7-20020a1709028687b02900dc2a2ce99bmr8854136plo.37.1611130142800; Wed, 20
 Jan 2021 00:09:02 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:45 +0800
Message-Id: <20210120080850.699354-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 0/5] ASoC: mediatek: mt8192-mt6359: support DP audio
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 1st and 2nd patches refactor the machine driver.

The 3rd patch changes the platform driver to support TDM 8 channel output.

The 4th patch adds an optional DT property.

The 5th patch makes the machine driver support DP audio if the optional DT
property is specified.

Tzung-Bi Shih (5):
  ASoC: mediatek: mt8192-mt6359: move headset_jack to card specific data
  ASoC: mediatek: mt8192-mt6359: simplify mt8192_rt5682_init
  ASoC: mediatek: mt8192: change mclk_multiple of TDM from 128 to 512
  ASoC: dt-bindings: mt8192-mt6359: add hdmi-codec property
  ASoC: mediatek: mt8192-mt6359: support audio over DP

 .../sound/mt8192-mt6359-rt1015-rt5682.yaml    |  5 ++
 sound/soc/mediatek/mt8192/mt8192-dai-tdm.c    |  2 +-
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 54 ++++++++++++++++---
 3 files changed, 52 insertions(+), 9 deletions(-)

-- 
2.30.0.284.gd98b1dd5eaa7-goog

