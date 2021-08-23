Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA01D3F47D2
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 11:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232779AbhHWJmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 05:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235951AbhHWJl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 05:41:58 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5914DC061796
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 02:41:09 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id n12so9823396plf.4
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 02:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t8fVVskRMUhZBLLXNsTNJMFPY/9N8+jsrpYM+Bj152I=;
        b=Yamp3JjiDMsrBiCcbd5uH78fnp6QJHpzL5r1YvzpVkp1U5+z9MY//NjvwcuZzosktT
         JzcqYmKkkdDqDkZCrRnL3/UenDW/QBpo1m4Pm0DC5NLfbTv43DZbWmTKJA9wKixqCaH4
         mnLu5lynTXlkIz0eIBy5p6o8movMll4F7havg028GKA5Kx9v3XKTvofidV3TG/+0WVu6
         +FzwYTWaFgOhdMGajwdCqHRy9YM6H76AW8DY9JaNBUzVF3Gsy7z2Caz5lY1gUbqe4UfX
         NQB/IdktE+BCVoZsFsmSmbdcC3RKD3TR4iTLfhuPL0TTVIjAY/76vM7243mcXtJjMnwQ
         4fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t8fVVskRMUhZBLLXNsTNJMFPY/9N8+jsrpYM+Bj152I=;
        b=n0Bv9EmEGPnV0UpYpRddL42KGN6toQYGVXUd/mtK2e965g/3QLDfHrJdNUk0Zq4PjI
         Y93Hvk3QRnr9+bc7f5QWAlWZa/z1FvFtlBNiOrAmi6owQtuc9Tq0/kzCIUBAd3TQMD0K
         PUx22880flhWR5iSN25XYihJRXPOKJJy43phg94lp2QgWggm4oCltoDcNER7Nnl+3XwQ
         tQy6FiXsmTj98OJkOr76Qtbe5jX/0DC9ipqxFNJKjFdLAeOYInR8PKXxy9TFpHjAdSnG
         MWo+Z3mwHTVEwN4Hd4zq0JrX+MHKlxtfh00N163t1L1fA9MwCCUhkQxUS1ADAysIZ38z
         piPQ==
X-Gm-Message-State: AOAM531ZvMqhvvskaM9L54FteV/4fTVetL2hFKizUM/HLaY2EJahpNlj
        esdedKLmFOsiQLF4XuqBubAd9qtE1eBf7bAg
X-Google-Smtp-Source: ABdhPJz5BeZvHsIft7mQyjRWW23AxE9aMSf7VF/1zB/zBjm6pSu1V6ki6w1l3SueCXj/dXyZbG/BaQ==
X-Received: by 2002:a17:903:41c3:b0:132:2a3f:5897 with SMTP id u3-20020a17090341c300b001322a3f5897mr10180186ple.19.1629711668847;
        Mon, 23 Aug 2021 02:41:08 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id p10sm14453192pjv.39.2021.08.23.02.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 02:41:08 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 0/2] Add driver for BOE tv110c9m-ll3 panel
Date:   Mon, 23 Aug 2021 17:41:00 +0800
Message-Id: <20210823094102.1064716-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver for BOE tv110c9m-ll3 panel is a 10.95" 1200x2000 panel.

yangcong (2):
  drm/panel: support for BOE tv1110c9m-ll3 wuxga dsi video mode panel
  dt-bindngs: display: panel: Add BOE tv110c9m-ll3 panel bindings

 .../display/panel/boe,tv110c9m-ll3.yaml       |   83 ++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-boe-tv110c9m.c    | 1303 +++++++++++++++++
 4 files changed, 1397 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv110c9m-ll3.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-boe-tv110c9m.c

-- 
2.25.1

