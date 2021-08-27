Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39CF23F95FE
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 10:24:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233046AbhH0IZD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 04:25:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232688AbhH0IZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 04:25:02 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4E87C061757
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 01:24:13 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id e15so3466380plh.8
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 01:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CnQHZ7OHj8PYIqCneFXHqZGg6bFZw4p6vs1f3Gs6uwM=;
        b=dxJqFOoPY8wPi8gLe0f2xlGZmgweXxliaEtfzrMiuc21g4Bj750eiDF/bS7XKfr9H0
         mcKcZvq2EATPKfJwP9Oe/vr51jxfb7Qf0uhwnViklEkeoPuX9ZtkacK55ZRj0uTOwbqk
         2wgWucaMvLs8/csJtOYxvXEj+ZhDlS/vePLO5H23dPOYqL92EE3ywjragTUNYUojPnvT
         M7qhIGHIsUbXc7Rr2Ehd4KwOXR+POqnpt1S4GPzMqyBodG8XixXQFFdRxn7Cc0BUGlWf
         C2pecOJdTKIKunoLFYymLhyv/fvue9FH+LVAz14KWlA1hcZSdIMQRtvq80yvLgXIZsoO
         S4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CnQHZ7OHj8PYIqCneFXHqZGg6bFZw4p6vs1f3Gs6uwM=;
        b=AsunXWgA3cSAt6boKjbfnWGGIDKfEOr2l5c9zm/zVAfN4VGXqRcpURC10pHAEq4aMB
         DJXZ1eX31tmEzRQq/2JWqeySEYF93sXB5I57kA9zujV97pYiZnp7B0/R8HKKK1gmFFQk
         l6coyETrB1X9xt8QAihUAuqa8dT3cH88ovxYmUko5gyNNxIQpzQBoGiIVeMUOWAJbiXx
         gM+aYigd2LJkUoW+FcrYbbP6rFgYqi5Yl0LQWC4qoNdyUsR2Ml+1uCv4GErsaZUiE2nX
         NORfR6GupNjadUpZ3Vvscd7dzvl8qb/VS89CHRyRmbP0a0EAcBHWZZxp+iT4oNuc1Jhz
         kVOA==
X-Gm-Message-State: AOAM532OmezXQGxSrzbFcXcHumHwfrTWh1hZFtcnyDwq3aFSA8QEBerK
        Dj5RN9sMxaXg4YhPA+mzjhZN/Q==
X-Google-Smtp-Source: ABdhPJzw4pDHx0EMRNGp+WS529vxWxckErf3pl+6/0Z0VJdHVur0BVdRZEVSEldDiI+i+NCCTDWBlw==
X-Received: by 2002:a17:902:7882:b0:131:2e12:c928 with SMTP id q2-20020a170902788200b001312e12c928mr7555092pll.74.1630052653443;
        Fri, 27 Aug 2021 01:24:13 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id m18sm5391371pjq.32.2021.08.27.01.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 01:24:13 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v3 0/4] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 27 Aug 2021 16:24:03 +0800
Message-Id: <20210827082407.101053-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compared to v2, support for BOE tv1110c9m-ll3 and Inx hj110iz-01a 
video mode panel.

yangcong (4):
  drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  drm/panel: support for BOE and INX video mode panel
  dt-bindngs: display: panel: Add BOE and INX panel bindings

 .../display/panel/boe,tv101wum-nl6.yaml       |   7 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 926 +++++++++++++++++-
 2 files changed, 930 insertions(+), 3 deletions(-)

-- 
2.25.1

