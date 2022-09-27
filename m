Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B777B5EC136
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 13:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231974AbiI0L0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 07:26:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231981AbiI0LZw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 07:25:52 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3BC214DAD2
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:23:52 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id fs14so8957071pjb.5
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=m0YdEbVv1LeI3PwmPIoOCKMhVlMhsOgBjQ8fI7mPhV4=;
        b=TTREBqVMlkYiD32nn8S2Eb1c1C1OMrq1scPqsfF+K7fzsKt0BJv68m4oMx/ywmkHIg
         QLaEvLkCeKIo5g5m+6KHNJks42VuRfCnTiFj9Q0J3CrvEEXozHNUlXpJE3KAo5H83Spm
         cVw2t2Rm/8HHY+fxA3duEjHFOR2SKai+qknfuiE5aBeEcs6/RlnTap5bzkrFdlqhj65p
         lgPpyvY9QJMLsWJizMNIM5yMWUNy3eUppfiH0PflfqBpm3JXbcaNjZqLVOnTBx7IogLd
         E0Zp6Crv9XH8z0yOlE59tcB4c/+xm4kJAnRzfpE25xvDvqe387Vrjyw8p7I5LhNBVBqv
         tU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=m0YdEbVv1LeI3PwmPIoOCKMhVlMhsOgBjQ8fI7mPhV4=;
        b=VCpFSllAtxZYff5c1YEY8vj5CovSOsB1i+YKhgOwXvvtDnhJLbUygct5XIcsTYjAqW
         Ds0siM6seIKU9ytUDqXM657mRtImXzjFiw8+3R9ZyWQqxaQFKeRePfnprk2wMjjWdmIf
         NRFi4OpUakPJqHwrIJdyHwdosNt8wJzUDA5CsVvpBhWkPF/BHpe9r6o8OB9OWmL1uyvF
         x8GLCwWGn4LXBrD4WU5RTE8eeSqnvBBlrb7p0HskvO7bGMjHip+HC7Nsi4vz+RtiZfKR
         kxOtzY2nO+Hcr8j1bjbGcjoVe0etZPZo1NVc2ybicSq+s3giD2Ge40vDkn4i7f6CQLQY
         TG+w==
X-Gm-Message-State: ACrzQf0zsDobSvc9M4SCKJ4dmCRsL5gxVoVgeBwGuh4Q3gh3J/lkModh
        HnP4glpOCvedQoVkYDx77bnTjg==
X-Google-Smtp-Source: AMsMyM7PJEtPfemVWzNWUKid1/9dx5IjRQ4Ukjc+gNRLcBATyf28kgSie42dTcoKRzjvjpKfal14cA==
X-Received: by 2002:a17:90b:3b8e:b0:202:6f3d:539e with SMTP id pc14-20020a17090b3b8e00b002026f3d539emr3914115pjb.205.1664277831234;
        Tue, 27 Sep 2022 04:23:51 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001782751833bsm1275931plg.223.2022.09.27.04.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 04:23:50 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v4 0/2] Add LTE SKU for sc7280-evoker family
Date:   Tue, 27 Sep 2022 19:23:41 +0800
Message-Id: <20220927112343.2700216-1-sheng-liang.pan@quanta.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add common dtsi and WIFI/LTE dts for evoker.

Changes in v4:
- fix typo in tittle and commit
- remove change for trackpad and touchscreen
- remove change for trackpad and touchscreen

Changes in v3:
- none

Changes in v2:
- none

Sheng-Liang Pan (2):
  dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
  arm64: dts: qcom: Add LTE SKU for sc7280-evoker family

 Documentation/devicetree/bindings/arm/qcom.yaml   |  5 +++++
 arch/arm64/boot/dts/qcom/Makefile                 |  3 ++-
 .../boot/dts/qcom/sc7280-herobrine-evoker-lte.dts | 14 ++++++++++++++
 .../boot/dts/qcom/sc7280-herobrine-evoker.dts     | 15 +++++++++++++++
 ...evoker-r0.dts => sc7280-herobrine-evoker.dtsi} |  8 --------
 5 files changed, 36 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
 rename arch/arm64/boot/dts/qcom/{sc7280-herobrine-evoker-r0.dts => sc7280-herobrine-evoker.dtsi} (98%)

-- 
2.34.1

