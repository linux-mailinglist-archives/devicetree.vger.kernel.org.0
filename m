Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 544F541853E
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 02:10:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230185AbhIZALv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Sep 2021 20:11:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbhIZALu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Sep 2021 20:11:50 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E166AC061575
        for <devicetree@vger.kernel.org>; Sat, 25 Sep 2021 17:10:14 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id m3so58169457lfu.2
        for <devicetree@vger.kernel.org>; Sat, 25 Sep 2021 17:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wI/B1QbBsMUky/GPfD/gCa3nRV2caTIcqbfrTW2zFx0=;
        b=KNbF4BtGTWMOM57nTC8DlIn+uJz8JcSfIthKwdPWcTb7lZIYi27TfYlm3qdcnz6Mjh
         eUiwv850lQYtX89zXjmAyADNs3OD7BmNG1AwfmsnoqDdZUmHvJoJe3C8zasHzqXB+qK/
         R1hj1lisxAC9QRaclu3ZpEIpPaj1zP63L9oeR7nfH4YJMfYI6HTfHZgPIGnVWsxlal8E
         vRG0b+ls1OKwWqcfnHV9LKuZLUs0IwpForq2fmBXCzDnKSgEmKBgo0AxKpN9gsawSjEQ
         OoXIM/ULT1qmy0Ddtk12rM4AZDZGgqh4Nhwh/2kCtXKIWA/uQZtVvUPkp7S1KQb9lwBk
         JnuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wI/B1QbBsMUky/GPfD/gCa3nRV2caTIcqbfrTW2zFx0=;
        b=Zt5DY6GHLK6bWU6J3jQFs5Qanj4ZTXo5TMIHYpJH5xcHkl4evCP171mAcpdYDwHda1
         l6/so5uJGrfcj0ivfGJhHM9LYiISbKggEC57hAChxwwPBnOA8mizDBXg4BLlEBzWkLfe
         cn0glu5lWAfhJMcQlGfFtO6cNXMUdBX5K0zBD8v1S5skY5EvrHu5c31sXxvjBioWBea/
         O/6Xm/vutErWxH/DntbrXLoxGHT9kcg0tGmIIFabHD7oTIz0pH0wCf5GXgID6fCfP446
         5k+T3HIeDO0fi/RycsG+XN7NKD5NJRc5gHklN8qcGysHgf4DYWvlbZBCcVluLw94Vz9L
         Tw5g==
X-Gm-Message-State: AOAM533P/pHFSqLnFWRjPF5FvWqybdwBVYrSw6hhpNewK+NIO5KdO/kK
        WPxkTr+F0gTrL+KelgxJ+gtKHQ==
X-Google-Smtp-Source: ABdhPJy0tioXXM4zqwYpii94wVmnk4sx5FjGj294JKpZFGTB3MaXXuupdneTxtxUPr14qQKXDrRmIQ==
X-Received: by 2002:a2e:8110:: with SMTP id d16mr17797829ljg.290.1632615013177;
        Sat, 25 Sep 2021 17:10:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s7sm1261878lfi.130.2021.09.25.17.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 17:10:12 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 0/2] Add support for Sharp LS060T1SX01 panel
Date:   Sun, 26 Sep 2021 03:10:03 +0300
Message-Id: <20210926001005.3442668-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver to support Sharp LS06T1SX01 6.0" FullHD panel found e.g. in
the kwaek.ca Dragonboard Display Adapter Bundle.

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
 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c    | 332 +++++++++++++++++++++
 4 files changed, 399 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-ls060t1sx01.c




