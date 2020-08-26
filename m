Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C39925344B
	for <lists+devicetree@lfdr.de>; Wed, 26 Aug 2020 18:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726862AbgHZQDl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Aug 2020 12:03:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbgHZQDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Aug 2020 12:03:21 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27505C061574
        for <devicetree@vger.kernel.org>; Wed, 26 Aug 2020 09:03:21 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id k15so1199055pfc.12
        for <devicetree@vger.kernel.org>; Wed, 26 Aug 2020 09:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MaekrRirwKyLzs9+Fv4keJH6CPIXWhtw9U0PCRkCag=;
        b=je8FKIC9TGkUAFpMpoOz6n/MZ2qY+MYbDAsxEvFByHYwAys46YPtfyvinT5Tc5VoLm
         VfkjkpM0XzmxkSRNqoO9LHL6c+xnl99zoU8PzEayCX+rnKFVJjS1sNMeZlXdPasbmsSk
         asoFQHgi0de+x4c1buK756hG3y3ggRi50Iq0QQmTizbxaLpb7POgmp/WdQK7HHERY5Ha
         AqW78nNYRwAMtRXUrGe4zBbA4Tjaj8x8EO2FtzIq0gcqZLkTIM1SFym6ke4Aly7Pmat/
         SNHnLNOMjlNdyBA0LsE0m3nB0cl/BiNF09/fY31IomJ77dFQVxqN60hnWdxEHdp5KUXZ
         WyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1MaekrRirwKyLzs9+Fv4keJH6CPIXWhtw9U0PCRkCag=;
        b=VtETEzFaHoeLWdH8DybZCbFcIAwqojnsYVLgCwJ06BmO6m4XS3zJDzYDIDqtcCI7TF
         xlAQaAoMOg+r7bByTiR0hQhxHY1XIaG7R5Vans4OoNBbmBdksmT+DLTNN1ljOzyjwCxK
         Npn31m0Hd40Z++ONKDV7iu1Mg+1Qwz+rs3u58xDQNLBqa4APA8mgTnT9AAKMJH9TT6cr
         EiMqCL7B/JyUkxx9J7WSNDTAGqbc06pMOJpiw4v5AFfoLd36pjdn91w4cdnqMmP9equW
         5G9qoF1i9VRtHcxd5CpFHNgNSZ5lMd3KpdoCiz1ZKNcw4JcDGcpH3iJHTl+w7Nu6ONo+
         g8pw==
X-Gm-Message-State: AOAM530FuUhPuBA3V+HkRiH5yRCNGVoZBFd/bqjQoFKK+z8snT/7ZJ7E
        CJML1sJlMeVwk9dlNkyJBBfhOw==
X-Google-Smtp-Source: ABdhPJwUwvdLJh8d8dcPiKqwY4ilUtCue79cXTiTu10Mk7sjBJ9ZeCIllA/nQ9aqa41q8vlo1XzY9w==
X-Received: by 2002:a63:471b:: with SMTP id u27mr11023159pga.139.1598457800565;
        Wed, 26 Aug 2020 09:03:20 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
        by smtp.gmail.com with ESMTPSA id u3sm2487555pjn.29.2020.08.26.09.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 09:03:19 -0700 (PDT)
From:   Sumit Semwal <sumit.semwal@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH v5 0/2] Add support for Tianma nt36672a video mode panel
Date:   Wed, 26 Aug 2020 21:33:06 +0530
Message-Id: <20200826160308.18911-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Poco F1 phones from Xiaomi have a FHD+ video mode panel based on the
Novatek NT36672A display controller; Add support for the same.

Most of the panel data is taken from downstream panel dts, and is converted to
drm-panel based driver by me.

It has been validated with v5.9-rc1 based drm-misc-next on Poco F1 phone; my tree with other
dependent patches is here [1]

[1]: https://git.linaro.org/people/sumit.semwal/linux-dev.git/log/?h=dev/poco-panel-upstreaming

---
v2: In dt-binding, removed ports node, making port@0 directly under panel@0 node.
     Also updated the panel_on delay to a safer 200ms as needed for latest Android.
v3: Replaced port@0 with just port in panel@0 node.
v4: Since "0425662fdf05: drm: Nuke mode->vrefresh", we have to calculate
     vrefresh on demand. Update for it.
v5: Fixed review comments from Sam:
      - rebased on top of drm-misc-next
           remove return of drm_panel_add()
           remove drm_panel_detach()
      - renamed the panel driver file to reflect that this is a novatek
           nt36672a display driver and not only for tianma panels.
           Adjusted some internal names also to reflect the same.
      - corrected changelog to add info about the generic Novatek DSI IC
      - corrected compatible string accordingly
      - removed pinctrl
      - used drm_panel* API for prepare/unprepare/disable/remove

Sumit Semwal (2):
  dt-bindings: display: panel: Add bindings for Novatek nt36672a
  drm: panel: Add novatek nt36672a panel driver

 .../display/panel/novatek,nt36672a.yaml       |  81 ++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-novatek-nt36672a.c    | 767 ++++++++++++++++++
 5 files changed, 866 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36672a.c

-- 
2.28.0

