Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1951427D5A
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 22:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230003AbhJIUkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 16:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbhJIUkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 16:40:07 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A17DC061762
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 13:38:10 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id r19so52375433lfe.10
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 13:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=99pKd25SlfyNwZ2UvwoyajO81GWR+hZ2KGuOR2xE0FM=;
        b=EIBIWYWFul8IPgIji+n3BzdBAhv0Xpv6Xn1l8hoSkAsP70pW8DbIlTL13nbigbiFNx
         DUS7tOKZP78iQEl54HYzocsibZSwFy7EZaJRvk2MR2y/BVVVIQMz1MRo/fYi7YfjWwXh
         yM0pK297AfiMZj3psrvJuk4/p4p+WyZw19I6/LC1hWjHetMNAFoiyl1JF9zAf3AtMPTw
         dh6/ANd5hGjuBkR1IZ3X9NEEdiie80SIrQUZXTfRZ/d4+zFK3uvwlNOHLtfy6glPQ896
         JQ+uExeHVLBGacViv/myj55tEI7b1fS9camfT2HUMOqc4966KOZ3ADABOJuiD3nR4eOY
         PEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=99pKd25SlfyNwZ2UvwoyajO81GWR+hZ2KGuOR2xE0FM=;
        b=MCOcfcvNioJAkbEwxU/w3Vg7+YFBrdc2jSeoKUpEfT2Jdmi9s70vltmUTqXBapoFdz
         JLm1SnKPE4PCDqXPEGkogv6jQk8N+QeRKFSZSW/swfaQZ8i5MpMMo2tcmYQSOu4Sluza
         8qHMMzqlTrCmbbKF6UZeWdgjJ+BGOM8YcggtcYK3jTlzG8ow7qfXkEs4n01WpyEpMO5o
         7WWHy1HCXvdpn22f5bA4CcJrBS8B48g5+E4oagYdERqX04pIS8byhSLRP/udf76sDQQd
         UTEGWBCTERhR2LWZvPwPE8RAExij+s6wnRTi/Naf8aC/PfTFXIOpjWg2Aj9yjJYGuU1I
         qo6w==
X-Gm-Message-State: AOAM530UEJYPs0yj97yTf9Z04xtLYU4OcnFwg+752EyVPBTNvwN3zRNC
        sHuZdZVInrE01HtJbq93LSscHw==
X-Google-Smtp-Source: ABdhPJycmqupkmyS1Zhq+1iJIoVBvzOOt90oNU+a/t5Be9s5S6+JdTpEMrkNK8bZ6yYMfE2D8Pgj2g==
X-Received: by 2002:a05:651c:2115:: with SMTP id a21mr12779368ljq.34.1633811888549;
        Sat, 09 Oct 2021 13:38:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q187sm303794ljb.6.2021.10.09.13.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Oct 2021 13:38:08 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v5 0/2] Add support for Sharp LS060T1SX01 panel
Date:   Sat,  9 Oct 2021 23:38:04 +0300
Message-Id: <20211009203806.56821-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver to support Sharp LS06T1SX01 6.0" FullHD panel found e.g. in
the kwaek.ca Dragonboard Display Adapter Bundle.

Changes since v4:
 - Use MIPI_DSI_MODE_NO_EOT_PACKET instead of the old name

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

