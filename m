Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19010427D0E
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 21:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbhJITNQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 15:13:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbhJITNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 15:13:15 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56DDCC061762
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 12:11:18 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id x27so53748604lfa.9
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 12:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YHzV+YpP+BYjr0TZ1VjoF5fEGQZXlwNqfD/o1zzTFIE=;
        b=E+m4bBy6bZpj9fmAwtCryXLrW01nTSb/mEIuv+KVdwV+5nKJekxgEvPo9begWp16Qu
         cgLY2qg7Rad9OQ2tL78AEMxm04X85A4CuHDcBavK7ZDk84flxLal2xyHzuauvmpWw9aD
         YCI96g5C8+lsPQtFSc3HnxW14rVNUTsZNvZ6G1nWK7YFIFWXXpy4SBKJO9Ua5dt78npG
         88YTmaUcvwFgYsstbKiAAb0ztcWg7SKT06u6VFGjanEm5lrNUYgzNumPjByqTaioxTDh
         nRQkMP010Q32kKGMILupHVEOyK5Nxh3j8c+xOyNSmOcKsPsW7DAoaViUl9OoFyJ20D39
         01VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YHzV+YpP+BYjr0TZ1VjoF5fEGQZXlwNqfD/o1zzTFIE=;
        b=bzxtJlmpIVGet+IRJz6BnX1f04kbbWOY2jO4npMHdklfieZ1ppLDSkPUcyLbp+CyIX
         r8hgdM3BJKRK5TNhb3zyESLWekfElBA1ujUN3icT2nt0GDbbZVgCgSg/EQDlpTUd691T
         nWhG+VsFqyYFai20bZb3kspklvaFD3TQrvJCEzcEQ+u+o6o9vJcMQy1qJN4LfaMXz1t8
         E64tVRuNYbs+VnN4cE9rd275CZqKLi5CKr4AKmjO3idC25ma1DKMfdZ6JWYhoDA5Qonj
         4zEM+moTKPsFPhn0bgh/JI8qQ79ucPEEw0vU8GLxbhKqYYndME/iiScRCsMv0NyIZYRp
         QjZA==
X-Gm-Message-State: AOAM53121dHJjUrvm5SKNojC2bUWMIbvA3U2TG1z33KbfZXZjSi0xVJ2
        XRimeAJYB1YbzKrGuT8ScWp5dg==
X-Google-Smtp-Source: ABdhPJzrt6nic+Xq3OUoi8vcr5PyPvYs27zUrEVJnKzAO7UGjhd9XtlyB2G3GmYJ6sEG0c5+Py6jBA==
X-Received: by 2002:a05:6512:5c2:: with SMTP id o2mr16727718lfo.207.1633806676559;
        Sat, 09 Oct 2021 12:11:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r3sm272311lfc.114.2021.10.09.12.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Oct 2021 12:11:16 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 0/2] Add support for Sharp LS060T1SX01 panel
Date:   Sat,  9 Oct 2021 22:11:12 +0300
Message-Id: <20211009191114.45900-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver to support Sharp LS06T1SX01 6.0" FullHD panel found e.g. in
the kwaek.ca Dragonboard Display Adapter Bundle.

Changes since v3:
 - Replaced small msleeps with usleep_range

Changes since v2:
 - Add missing power supplies used by the panel according to the
   datasheet

Changes since v1:
 - Fix the id in the schema file

----------------------------------------------------------------
Dmitry Baryshkov (2):
      dt-bindings: add bindings for the Sharp LS060T1SX01 panel
      drm/panel: Add support for Sharp LS060T1SX01 panel

 .../bindings/display/panel/sharp,ls060t1sx01.yaml  |  56 ++++
 drivers/gpu/drm/panel/Kconfig                      |  10 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c    | 333 +++++++++++++++++++++
 4 files changed, 400 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c


