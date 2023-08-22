Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2023E783D80
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 12:04:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234565AbjHVKEI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 06:04:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234560AbjHVKEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 06:04:07 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18F2CCD1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 03:04:05 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1b89b0c73d7so7563105ad.1
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 03:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1692698644; x=1693303444;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d8aM5A6J9iIABpet/NQkGiO48FX3TU0o7hDIvzUCxHM=;
        b=qBEnikYyYx2cKYzMXddBEU4ic2Hvd0f45vMC3aqEqt6VZjwgryGnP/Yhw7tKXShXbg
         SHggtepaJ7dWOJOZ4T5abUzm0D4T1o7L82GCBlxcfgMghlONwhyRVcZQCiB++bAPWHNa
         dnuwAUp93YN/Jg7x4DdQw7t3bTUsGK/UPHOSdALs+7wipN3XRKW1LAC34ZK2Gd7sfMqV
         f12EgEgsIDe+sGvj03SRom0GOtLcSSJ9E0e5UkT7ilmYg5FWGOh77C0S7zOHMi6wdYga
         iC/xo2i6CRYvMjnVJ3OsXmOZRE9dd6udQMS+VZvhnzR71XRrIy+wPoexgFxXVODnQC6w
         RHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692698644; x=1693303444;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d8aM5A6J9iIABpet/NQkGiO48FX3TU0o7hDIvzUCxHM=;
        b=dQOR4s/fffAkljzmB3vY4/Pt9pQBBlO2TDvHMuY3r8M6xytJHl/DM8xOl4wcUDDPIa
         HzKkpdTcrOwNAOhY2IE+VCXdW8nnF2CsD/hf7ZkI/t5T9arJ/yt3yK9CA97lKEHcAZBB
         pMeRAtBK9PJ6iP6JwpMn+iH+1cq9hF7I7fU5hDSL9YR1rLyUZBi3qwWKHM+IgNXOj78X
         vx2diHTS/gqOwknIwc6JmpESKqGz/4jLHsvGu1z0ADhhsx95nVJT2mDclbiliZ9jLOnd
         Wth7CZ45t2xMDJWhrp0GANAW1ZaeIB+u9j1P/WXbrum/YfgT1oNl3HAuv4WuFsRDdyzp
         m/Kw==
X-Gm-Message-State: AOJu0Yx5qjPcfRXh+EORfU593aEEJklFD6/A215vjlSEEtee2cvoc7Iq
        KpWnYI4Y2HJxY5U1RAvGHtOOUg==
X-Google-Smtp-Source: AGHT+IG2ynUgXyls1iIikCiLP6gPvLXvgSDUcLPzsBzSEP2iliNKXXdCxupEFBDbohYtdiuiofzgvw==
X-Received: by 2002:a17:902:cec2:b0:1bb:9e6e:a9f3 with SMTP id d2-20020a170902cec200b001bb9e6ea9f3mr10688100plg.4.1692698644544;
        Tue, 22 Aug 2023 03:04:04 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id jc9-20020a17090325c900b001bbb22652a4sm8663176plb.226.2023.08.22.03.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 03:04:04 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v5 0/2] Add no-esim sku for sc7180-lazor family and new board version for audio codec ALC5682i-VS
Date:   Tue, 22 Aug 2023 18:03:56 +0800
Message-Id: <20230822100359.124282-1-sheng-liang.pan@quanta.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Changes in v5:
- include rt5682s node for new board version 10

Changes in v4:
- combine pathc2 and patch3

Changes in v3:
- correct corresponding of new board and new sku
- sort out the node order alphabetically

Changes in v2:
- add new entry rev9 with Parade bridge chip
- correct newly create dts files

Sheng-Liang Pan (2):
  dt-bindings: arm: qcom: add sc7180-lazor board bindings
  arm64: dts: qcom: sc7180: Add sku_id and board id for lazor/limozeen

 .../devicetree/bindings/arm/qcom.yaml         | 31 +++++++++++++
 arch/arm64/boot/dts/qcom/Makefile             |  5 +++
 ...sc7180-trogdor-lazor-limozeen-nots-r10.dts | 29 ++++++++++++
 .../sc7180-trogdor-lazor-limozeen-nots-r9.dts |  4 +-
 .../sc7180-trogdor-lazor-limozeen-r10.dts     | 45 +++++++++++++++++++
 .../qcom/sc7180-trogdor-lazor-limozeen-r9.dts |  4 +-
 .../dts/qcom/sc7180-trogdor-lazor-r10-kb.dts  | 23 ++++++++++
 .../dts/qcom/sc7180-trogdor-lazor-r10-lte.dts | 27 +++++++++++
 .../dts/qcom/sc7180-trogdor-lazor-r10.dts     | 19 ++++++++
 .../dts/qcom/sc7180-trogdor-lazor-r9-kb.dts   |  4 +-
 .../dts/qcom/sc7180-trogdor-lazor-r9-lte.dts  |  4 +-
 .../boot/dts/qcom/sc7180-trogdor-lazor-r9.dts |  4 +-
 12 files changed, 189 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-nots-r10.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-limozeen-r10.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-kb.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10-lte.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r10.dts

-- 
2.34.1

