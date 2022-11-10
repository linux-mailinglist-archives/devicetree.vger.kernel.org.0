Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F283624561
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 16:18:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231359AbiKJPSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 10:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbiKJPRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 10:17:52 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D08FA31DCE
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:17:50 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id d6so3828829lfs.10
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vMaa02LcomJJCP/AnSBxoi34zHEtqX/cqZcpKw4yuGc=;
        b=JVW2yN9pZsnAYSuuN7A7Q8KX+tgWFwV4AwwNLYYGbr4BA6E6uOlrLhpPFop/AaMY0D
         V8fvJ4fz37ZO3W0u6UFsGLtSRdPDThdiSNl7gKqMMp7b/Twdc7V8Yca1ykI8/f1CIQFG
         Aq0v2Yg8cZQRDZF+x2o51bWaoKdFUhQl+QTouw+J8g/sQA2UUmkneVnn3XFI6/W9AHS4
         soFWF8q0QN6oL6Xz/E5Fd/kZm6WbkBUp/gAYiAEyKFVpMQsJsD7NVaJWTH+544GTqxAO
         wbZ7lWduSbBz+Vb9FlrzLgeRDGKKGCBds6kqwyRMwa5cnmUZiIzZM+Urxmu9zT+h9rDT
         Do8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMaa02LcomJJCP/AnSBxoi34zHEtqX/cqZcpKw4yuGc=;
        b=JBwrmWEvtyWLOnEqjPUtuTW0LYpYhIBJ5FnN6ygGIsVsSxPUSwwXDuG6zTtA0Ag6xC
         WWJDRslttURl/zPBefcW1in7FMVQHSGyzwnX7fFc3T0s3MqyXP7T34TiF41zBQWJuU6Y
         DLRc8IgWqaVZhPjFBKTy33SnD9r5YLWh1jX8jWCRPAd3yQXqJN2Cqf48/O1uJABQYROS
         ix5m/u+iZ0CvcLgU/u7FZymk+jHkxP/4EtjvlAnZUrEH9yvwBDRBJgAneHyxq2l79Oxi
         UsFbUhqexGA9YMOVUdH/n1FtLDPXGZ9HFV5Qb38P1jxmE5i4tUSSDEWvs9jctCeUNsg4
         Es0Q==
X-Gm-Message-State: ACrzQf12ZbcpG6vGCfhjVxDb+ho2k5YewTarjjeavyB3obVqI4Y2Ow8s
        0AyDYvOC3VL7KRdmLx47p7GukQ==
X-Google-Smtp-Source: AMsMyM4XJfbZO2Il2qSGSz2yXZbbN6t9/3LsF0gv3A+arSVTpUKKQg5l3481EUkvHiJGsHImbZrVow==
X-Received: by 2002:a05:6512:1529:b0:4ae:cc0f:4d73 with SMTP id bq41-20020a056512152900b004aecc0f4d73mr1675420lfb.436.1668093469114;
        Thu, 10 Nov 2022 07:17:49 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:48 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v7 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Date:   Thu, 10 Nov 2022 18:17:44 +0300
Message-Id: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
be used as GCC clock parents).

Changes since v6:
- Added bindings change (Johan, thanks for the reminder)
- Added corresponding dts changes for msm8996 and sm8350/sm8450.

Changes since v5:
- Rebased on top of phy/next

Changes since v4:
- Rebased, dropping merged clk patches
- Fixed whitespace errors
- Added linebreaks to fit into 100 chars limit

Changes since v3:
- Rewrote asm9260 clk driver to fix the TODO item by using parent index
  rather than calling of_clk_get_parent_name().

Changes since v2:
- Added error handling to phy_symbols_clk_register() (requested by
  Johan).

Changes since v1:
- Added a macro used by clk-asm9260, so that the clk-fixed-rate changes
  do not affect the driver
- Changed registered clock names to be unique (as e.g. SC8280XP will
  have two UFS PHYs).

Dmitry Baryshkov (4):
  dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
  phy: qcom-qmp-ufs: provide symbol clocks
  arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
  arm64: dts: qcom: use UFS symbol clocks provided by PHY

Dmitry Baryshkov (4):
  dt-bindings: phy: qcom,*-qmp-ufs-phy: add clock-cells property
  phy: qcom-qmp-ufs: provide symbol clocks
  arm64: dts: qcom: sm8450: fix gcc clocks order to follow the schema
  arm64: dts: qcom: use UFS symbol clocks provided by PHY

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |  3 +
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  3 +
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  5 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 25 ++------
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 15 ++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 64 +++++++++++++++++++
 6 files changed, 91 insertions(+), 24 deletions(-)

-- 
2.35.1

