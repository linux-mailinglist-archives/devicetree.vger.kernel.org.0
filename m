Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9195E8A46
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 10:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233403AbiIXIve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 04:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233507AbiIXIvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 04:51:33 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D52C5F1D7E
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:51:31 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id l12so2361157ljg.9
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 01:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=iDwEuv4T7rJzq7WHYdQWqX7LJJaB6y35xV9LrRnMHBQ=;
        b=P0ZcwQPNEHGCa/kFG1k7Rtk8ll1dAN19sfN9ZHbSTKBeer3HKfXILiiPZKzRGtVmwv
         ghqtRljRETPEN+SO/3csMofmRmNB9FjIRDJH5rXnFcrDm8rkWnK8V20fCbr6rcLhhrFI
         hYRW/US4zZ/uWujGsi+lK8wQYkcqr5Xt22GBXWJhNUH9h/86r2fhuq/pE/g2n0j7o6U6
         tWMSceDiyT2Dk/0or8JZZrCTVitEcxYQhKqLKmC1NipXIBZmDOYhuIHoarqCKiaaqF+j
         H8Xc2HdkwIB1BXCadmv8xMcj3FNFBfsF+EZdWln+1Uvls63+4we6qo9thUDHE0YcILKO
         haOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=iDwEuv4T7rJzq7WHYdQWqX7LJJaB6y35xV9LrRnMHBQ=;
        b=aVryb0hemyRyJm2xw5J2DMu/U9mFlQR7auqZnxtJNw0ogbiWVM9xpwBwpBtus69YNM
         kDHT5zqX8oIUAhv+MFAGgwvgpWHLiPs8h9whXYQHYj8mlfDvONyn3RzGqcPl7GaemC7t
         //m05YTW+G+6f4X2zNLIt9LAenlwjVtToNfz8tb2RxszKWtmmgj5pmOIBVpDo61rFv/R
         f+7KxEnK4lMDqQyK/ZeCocOQ0XDwN6oXm+1uNH9mPpx74zKOS3icJhyjrOsqIFT7h2m4
         JUF7GDLoIbQIUerlYMi1giemMzKRti41g5785SYxcAqz/LliFLdZhrlGksFv8B9vA5B9
         vyfQ==
X-Gm-Message-State: ACrzQf3h0QtfpNd2gtgrEUDnWpf69cr8ILHYVnpkrWvTQoBAbrXM9ju8
        fm5FVj6zeA+6oRNbHWEyOqvPDw==
X-Google-Smtp-Source: AMsMyM63Ts07oQdImLmzAELIpuUd98DDUPvv+GpcuZkiZ0YCMuydQmUx2b0h1SC//8tmWgokHgrcTA==
X-Received: by 2002:a2e:a795:0:b0:26c:51d9:e491 with SMTP id c21-20020a2ea795000000b0026c51d9e491mr4325044ljf.327.1664009490210;
        Sat, 24 Sep 2022 01:51:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 129-20020a2e0987000000b0026acfbbcb7esm1717607ljj.12.2022.09.24.01.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 01:51:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v2 0/2] drm/msm/dsi: Add support for DSI PHY on QCM2290
Date:   Sat, 24 Sep 2022 11:51:27 +0300
Message-Id: <20220924085129.161086-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QCM2290 platform uses 14nm DSI PHY. As the configuration is not
fully compatible with the main qcom,dsi-phy-14nm, a separate compatible
is added.

V1 was not sent to freedreno@, so it nearly got missed by me.

Changes since v1:
 - Rebased on top of msm-next, fixed DSI PHY config to follow upstream
   changes.
 - Changed compatible to follow agreed scheme
   ('qcom,qcm2290-dsi-phy-14nm').
 - Updated commit messages.

Loic Poulain (2):
  dt-bindings: display/msm: Add QCM2290 DSI phy
  drm/msm/dsi: Add phy configuration for QCM2290

 .../bindings/display/msm/dsi-phy-14nm.yaml      |  1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c           |  2 ++
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h           |  1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c      | 17 +++++++++++++++++
 4 files changed, 21 insertions(+)

-- 
2.35.1

