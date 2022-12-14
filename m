Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FAB164D14B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 21:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230258AbiLNUgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 15:36:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiLNUfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 15:35:41 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CD5631DC0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:31:45 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id l10so4589773plb.8
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ct/3m2PY/FS9T1URKRfeRUFxhLFHkaGZAzLhD0lvuyA=;
        b=pWGr4QtMpreRigeqMX+I/wFjpKYI1x288BNobSD1qxsLyPMo2G12MMXhZfOuR/MWLy
         j2xET9aSD2dm6YCoUvGF8wk1sZXavwSK/RnpUyGZKgmG87bHZgsLKZznB4PNYiXZqSyM
         tH+wBVaquRCvPVyq9Sj1DDEuIQNH/YXvGl+tk/inOwm8ZQLW2DY0shs8kPp5wcnEY9rs
         S5zyTf+hoA9SE5F2xT6/KbQeo33WKZOg7x0yiREtJNLEF443zk6lI0glBDJR1SVp7Kop
         K9MIjnCs4Ig1HeoLy9WqRP7kagYyIt4flG9tmWceeG0iIOrp5BN0DGWnoOONfV8ZK6Z6
         dhpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ct/3m2PY/FS9T1URKRfeRUFxhLFHkaGZAzLhD0lvuyA=;
        b=Iq6z7bPb/h3bAfbj7/MN03LCkL7Fe5Ig4/i589SuQ3dNwIsZlNiYcOw3n3DxFIrATA
         r6o6V3GiwkPnIgv6afZyelLPonj8dYSNISugxsY0H2R76jnVWxB9qfIcRigvq7qXbgZf
         dvYX4GKgIPMgFQIggq2hGNMubt9dZxjf7lZ6EcbuSt9Iac1FEBhUJzfwodsgHbsWjypE
         4mNnq3GHbyrOKxeZMsSa9DY+u/TTEEBCPYM8MM/cfQo/4OqNA1SgxAUMrpN1XRN71o70
         O6xAZXkwrbBhMT6Khs9ttGl231ohPsxsdNAhyLnn4rkmltKevzMDSSXAUn2tCG7dRfIO
         JxDQ==
X-Gm-Message-State: ANoB5plBzreBxZCRso/0sHxtsbVVnVQn4xoMCwJ6i7Y9otVo5cwvVR+H
        uWK50y44q7uhF5LOtI+TTNpSHg==
X-Google-Smtp-Source: AA0mqf6oaWXA/LJq+F1qibT4R0ukuqqLdc/rX/PcMp201wLwAxIrgIrZtihIZNQ9UxXpzsjy21PmIQ==
X-Received: by 2002:a17:90a:7e93:b0:219:6626:3b63 with SMTP id j19-20020a17090a7e9300b0021966263b63mr27127615pjl.25.1671049904799;
        Wed, 14 Dec 2022 12:31:44 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id gx13-20020a17090b124d00b00219e38b42f5sm1812238pjb.26.2022.12.14.12.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 12:31:44 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        konrad.dybcio@linaro.org, andersson@kernel.org
Subject: [PATCH v2 0/3] arm64: dts: sm6115: Add USB SS qmp phy node and perform some cleanups  
Date:   Thu, 15 Dec 2022 02:01:21 +0530
Message-Id: <20221214203124.564537-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
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

Changes since v1:
-----------------
- v1 can be seen here: https://lore.kernel.org/linux-arm-msm/20221213123823.455731-1-bhupesh.sharma@linaro.org/
- Addressed the review comments from Konrad and Krzysztof regarding the
  USB HS and SS Phy usage in sm4250 oneplus board dts ([PATCH 3/3]).
- Collected R-B received from Konrad on v1 patches [1/3] and [2/3].

This series adds USB SS qmp phy node for Qualcomm SM6115 / SM4250 SoC
dtsi and also performs some related cleanups for USB nodes.

Note that this series is rebased on linux-next/master and is also
dependent on the corresponding dt-bindings and driver series sent via [1].

[1]. https://lore.kernel.org/linux-arm-msm/20221213122843.454845-1-bhupesh.sharma@linaro.org/

Bhupesh Sharma (3):
  arm64: dts: qcom: sm6115: Cleanup USB node's label
  arm64: dts: qcom: sm6115: Move USB node's 'maximum-speed' and
    'dr_mode' properties to dts
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  | 12 ++++-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 46 ++++++++++++++++---
 2 files changed, 49 insertions(+), 9 deletions(-)

-- 
2.38.1

