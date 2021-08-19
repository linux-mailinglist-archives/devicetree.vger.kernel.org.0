Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8923F19AE
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 14:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239347AbhHSMt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 08:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239248AbhHSMt0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 08:49:26 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FD61C061756
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:48:50 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id oa17so4887683pjb.1
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=C/c9qtXCbDh8ba0bEl5eqr8WQGeufHKR1Un4IT4bUXM4xXrkTxBFtgnckgQ50er66b
         zxfX7mk5ZydlgtFQBh38HgP8oX/3dCPjFGRZSCFW+dGtz2RwMSmV37BKshYrgoSN+exl
         3pwOIvrMoV4Sj+Zf5YoWB0mdSW+cYwMlMV0OlC5J8pMAOpT/xeGU3twXGkfj2y4CurHI
         t64yylZZpzsR55ysItGwCinJuxjqC4rCcqgN9uSnT6a/E/ptDRLFW0/IBxsr1i5MS+hz
         elGCD7jckU2m2z5L9n69lW2Rnhsfintij5PlkqN9+gweIhTkulOXORjEOJqUsqvW75BB
         t+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=JNrb1RCablmTRRgCPIR8kVShpakGk4tsYSUjQzpF8Ci1+1uDz8B9Jx/tHRb+O/beNK
         JQASERC4gNNxWQCwi72fEg2N1DmDCkZ5TOUzvbuboMj070OIVkJy50r99r8Z705XkCg3
         jey018vcqFDl5cxzuYYVVcSTlOOb8jaSbhWMNM/8ex6yeVKwlaBDmalONQNnJ58zaG8E
         d2cKSYCfndTNlkuDGNf44+eQYBECfsJFZol50M+KjpfQT93ttSGr/oFVnC/gSn4JpUyY
         3bmc5CkHgB7qwmVPf/fHdyiI3PzJir5ZwmdqD7jC96GFDgAzOWrYUMmRxF0jkvvBQOjo
         shhA==
X-Gm-Message-State: AOAM533kLV4KuDd2Zg+ECgyYgwSYTohKiNOL/T4z1RR2xAKQAZoi6eqF
        PhHq/It5mfl6NdmFwC+ls8SnBg==
X-Google-Smtp-Source: ABdhPJw7+fjyC0SC3MOzj/6NzYAJjwgk/Nve1tUgxX32A0IY6i5qv5858pWqGdvPzn4v0Wu1pYc+cw==
X-Received: by 2002:a17:90a:d595:: with SMTP id v21mr15360955pju.50.1629377329891;
        Thu, 19 Aug 2021 05:48:49 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id c11sm3137210pji.24.2021.08.19.05.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 05:48:49 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 0/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 20:48:42 +0800
Message-Id: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The auo,b101uan08.3 panel (already supported by this driver) has
a 3.3V rail that needs to be turned on. For previous users of
this panel this voltage was directly output by pmic. On a new 
user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
to turn the 3.3V rail on. Add support in the driver for this.

yangcong (2):
  drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail

 .../bindings/display/panel/boe,tv101wum-nl6.yaml      |  4 ++++
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c        | 11 +++++++++++
 2 files changed, 15 insertions(+)

-- 
2.25.1

