Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F9174ADF28
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 18:19:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240731AbiBHRTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 12:19:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233943AbiBHRTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 12:19:13 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B04C061576
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 09:19:12 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C5D0E3F1E7
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644340750;
        bh=FcBirewgG5GspHM+XiPFPnNhDyGu6MCNBPG4nrU1bUg=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=rHRdVmBuuDPhdMCso9V+kHmn0sYQevnw+ashxPm8IC+ZlHoPdqFI3rvmDRM/IbteY
         0cUY78ogPL0sV/q754XUhR8f66h2MU/0fSyt+HJTLoZQJK/tODnEyIPQVJ4R7IX2dK
         mAg376V+mPv7FGDcNuhj2Fh+Fk/mBolRbL7kPXZcQ8c2Glv6FFQvy2Y8dSXwu9CGOg
         ceejJfxB3fWi8w0QzcrX0Jgs2RUwYBjOTtguDNgnRZz/L0YZKfal5lnYde1tSdURle
         I6Lf84F0g9KHyImO7anDv0IOqTonXgol+lRDEendM/zM7SMMq+6/GIiMpkyBh4ztFk
         QbGBfrS16jrLQ==
Received: by mail-ed1-f70.google.com with SMTP id w15-20020a056402268f00b00408234dc1dfso10047582edd.16
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 09:19:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FcBirewgG5GspHM+XiPFPnNhDyGu6MCNBPG4nrU1bUg=;
        b=P10L+Nc7deCmqpaXwh3iYVPcgVXLoofBl+YjIDPfgF+pIwZFE7w70APOv88wOiHscG
         Jvvc44Uusbmc4CK3HlTTSA803Lqc9Gafu2ykqsODq2pMLj6cyjRyaBdLdbnAksE7HsfE
         mCkh0B+TOSdibygBTuVwwGtEN0YMGyUTA8uzKJpwRaOEIkWvAkBY/MNlkxP0qzluUlhf
         +CoX8CX8PSuEUSM8TXHl9LGzOX7UEOvWYdItSSHjifHcCq93BsWn2GBhwpuxNHB8adiq
         YlRmnIEN0EtYEJp8rfbr3v3Z2gcljlEy9U744PnLM4r3wz3sd63tncfnCOgo1SIDJ20K
         8+Vw==
X-Gm-Message-State: AOAM533NG5xa/B98HRghBFEH5/S4y+Gw0pLbU9XGUsq4o5ujDBntJFqc
        aiXhNQgfMPv54e1zm17xgcx2hNdDnXztTP9vyvonPZ1UOsREVhCTnnAhdYbNK3K73AHkT1+GbB6
        FrYeVJlXH+pysKnDfPVtjDCMfE6R7Pu+uWWCNHQA=
X-Received: by 2002:a17:907:2d94:: with SMTP id gt20mr4673989ejc.501.1644340750440;
        Tue, 08 Feb 2022 09:19:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxr5UsCRspXa4NCGOuZM5Ba8debNWt45uxZ8oMQLV+xoDrSe58nTit31OQ9lQldNaQthBGDVw==
X-Received: by 2002:a17:907:2d94:: with SMTP id gt20mr4673973ejc.501.1644340750270;
        Tue, 08 Feb 2022 09:19:10 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 09:19:09 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 00/10] drm: dt-bindings: exynos: convert to dtschema
Date:   Tue,  8 Feb 2022 18:18:13 +0100
Message-Id: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Convert most of the Exynos DRM/Display bindings to DT schema and put
them under "samsung" directory instead of "exynos". The FIMD is used also
on S3C and S5P, so exynos is too specific.  Also most of other Samsung
SoC bindings and drivers are organized in directories by company name,
not by SoC name.

I used Exynos DRM maintainers and myself as bindings maintainers, but
feel free to propose different approach.

Dependencies
============
None. I will take the DTS patches via Samsung SoC tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (10):
  ARM: dts: exynos: add missing HDMI supplies on SMDK5250
  ARM: dts: exynos: add missing HDMI supplies on SMDK5420
  dt-bindings: phy: samsung,exynos-hdmi-phy: convert to dtschema
  dt-bindings: display: samsung,exynos5433-decon: convert to dtschema
  dt-bindings: display: samsung,exynos7-decon: convert to dtschema
  dt-bindings: display: samsung,exynos-hdmi-ddc: convert to dtschema
  dt-bindings: display: samsung,exynos-mixer: convert to dtschema
  dt-bindings: display: samsung,exynos-hdmi: convert to dtschema
  dt-bindings: display: samsung,exynos5433-mic: convert to dtschema
  dt-bindings: display: samsung,exynos-fimd: convert to dtschema

 .../bindings/display/exynos/exynos-mic.txt    |  51 ----
 .../display/exynos/exynos5433-decon.txt       |  60 -----
 .../bindings/display/exynos/exynos7-decon.txt |  65 -----
 .../bindings/display/exynos/exynos_hdmi.txt   |  64 -----
 .../display/exynos/exynos_hdmiddc.txt         |  15 --
 .../display/exynos/exynos_hdmiphy.txt         |  15 --
 .../bindings/display/exynos/exynos_mixer.txt  |  26 --
 .../bindings/display/exynos/samsung-fimd.txt  | 107 ---------
 .../samsung/samsung,exynos-hdmi-ddc.yaml      |  42 ++++
 .../display/samsung/samsung,exynos-hdmi.yaml  | 227 ++++++++++++++++++
 .../display/samsung/samsung,exynos-mixer.yaml | 143 +++++++++++
 .../samsung/samsung,exynos5433-decon.yaml     | 148 ++++++++++++
 .../samsung/samsung,exynos5433-mic.yaml       |  95 ++++++++
 .../samsung/samsung,exynos7-decon.yaml        | 120 +++++++++
 .../display/samsung/samsung,fimd.yaml         | 198 +++++++++++++++
 .../bindings/phy/samsung,exynos-hdmi-phy.yaml |  44 ++++
 MAINTAINERS                                   |   1 +
 arch/arm/boot/dts/exynos5250-smdk5250.dts     |   3 +
 arch/arm/boot/dts/exynos5420-smdk5420.dts     |   3 +
 19 files changed, 1024 insertions(+), 403 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos5433-decon.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos7-decon.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-decon.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos7-decon.yaml
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml

-- 
2.32.0

