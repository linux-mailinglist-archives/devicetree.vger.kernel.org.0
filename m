Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB1036599C9
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 16:36:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235186AbiL3PgL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 10:36:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235159AbiL3PgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 10:36:10 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62790DEDC
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 07:36:03 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bs20so18062775wrb.3
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 07:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=c9FYypUZxhVnipSoAtLo7GGj9WnmgyVtuwl9yefi90s=;
        b=J5msw1dZTdnUCMgZxUFQAt34cNNcRzEAfRyGMXeLNyoXYLmGDuMPW6gmrzHRReNXMQ
         EfLg7XionD7Lsf3mca9wLAPUtZxh3PMn5lygfzvmFzusYZvgVIdQ7HMJZ744GFFGpqlr
         Nfj/IFeetd13nZlYEh/aj0WCHYvq87uAJGLE0IHk1y60lHt7CCdXTAAWIOjTsNOFR1AR
         TsVgG+2w4ju/ZRaP1ATLzw8W9q7FlAXhQwFyxD7+JX31BxXA89sIwCsGhXcyhC6sjmQ5
         vW+WjR1T22nu7hyRMVmiChyY29C0vNgMUrLf3biak5vufgcfydFHlyjZ9ICDS5tl1g+G
         Isig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c9FYypUZxhVnipSoAtLo7GGj9WnmgyVtuwl9yefi90s=;
        b=QuOMfZqTzjtlmRP5ybM3li3g0Ah/7sZmLQ0GWoaFmZZYCvuarqAT4aEXvJ0/BX/3nK
         u2xM8cPNxchfgpSTvbwZ/EvUb/klwKm0h90UWFO5txzPFYBDJG7l3nDnx2RLMP5f8+Qy
         t4dmZ2y6dTKx6oZHFNMGp6r53k88BW0JpNVZGYenYqn9OFiCFFZrb9zYD8rsiLUuua5U
         JU491yfftfQt+01nE4gUHRdTDCxaGoumyd0zo5P6x0kM4rXZkvC0U+XU01mEb/9/OtaF
         zD1m2n7ML/98AKceaWkGs5LoI96XIfR4ADsjGcUgcFSLX98wVh9dYfod8ZYl/VSAwMau
         PfOQ==
X-Gm-Message-State: AFqh2kqVS4m4jjP4fhVfogh7TmXy/7mceHnN6yxjhIPFOMc+zYR1/2B+
        gqvQOqDQxvTUXXWWy/V/u5Nb6Q==
X-Google-Smtp-Source: AMrXdXv7NkkzLCn2dX8D1EQI3XuO6+dd5wfHyEZf5EVn5PrA4DPy/SvDGi+zAQdDINfRD5/Ox40xUg==
X-Received: by 2002:adf:f590:0:b0:242:5cf0:2039 with SMTP id f16-20020adff590000000b002425cf02039mr19609196wro.65.1672414561886;
        Fri, 30 Dec 2022 07:36:01 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id l42-20020a05600c1d2a00b003cfbbd54178sm49857993wms.2.2022.12.30.07.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 07:36:01 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        quic_jesszhan@quicinc.com, robert.foss@linaro.org,
        angelogioacchino.delregno@somainline.org, loic.poulain@linaro.org,
        vkoul@kernel.org, a39.skl@gmail.com, quic_khsieh@quicinc.com,
        quic_vpolimer@quicinc.com, swboyd@chromium.org,
        dianders@chromium.org, liushixin2@huawei.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
        vinod.koul@linaro.org
Subject: [PATCH v4 00/11] Enable Display for SM8350
Date:   Fri, 30 Dec 2022 16:35:43 +0100
Message-Id: <20221230153554.105856-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dependencies:
https://lore.kernel.org/all/20221102231309.583587-1-dmitry.baryshkov@linaro.org/
https://lore.kernel.org/all/20221024164225.3236654-1-dmitry.baryshkov@linaro.org/
https://lore.kernel.org/all/20221104130324.1024242-5-dmitry.baryshkov@linaro.org/

Branch:
https://git.linaro.org/people/robert.foss/linux.git/log/?h=sm8350_dsi_v4


This series implements display support for SM8350 and
enables HDMI output for the SM8350-HDK platform.


Changes from v1:
 - Added R-b tags from v1
 - Added qcom,sm8350-dpu binding patch
 - Added qcom,sm8350-mdss binding patch
 - Corrected sm8350.dtsi according to new dpu/mdss bindings
 - Bjorn: Removed regulator-always-on property from lt9611_1v2 regulator
 - Bjorn: Moved lt9611 pinctl pins into a common node
 - Bjorn/Krzysztof: Moved status property to last in node
 - Krzysztof: Changed hdmi-out to hdmi-connector
 - Krzysztof: Fixed regulator node name
 - Krzysztof: Changed &mdss to status=disabled as default
 - Krzysztof: Changed &mdss_mdp node name to display-controller
 - Krzysztof: Fixed opp-table node name
 - Krzysztof: Fixed phy node name
 - Dmitry: Split commit containing dpu & mdss compatibles string
 - Dmitry: Added msm_mdss_enable case
 - Dmitry: Fixed dpu ctl features
 
Changes from v2:
 - Rob: Added r-b
 - Rob: Improved mdss binding description
 - Rob: Added interconnect names for mdss-binding
 - Rob: Removed phy from example
 - Konrad: Remove sc7280_pp refactor patch
 - Konrad: Fixed upper case hex in dpu_hw_catalog
 - Konrad: Fixed various downstream dts based values for dpu_hw_catalog
 - Konrad: Removed status=disabled from mdss_mdp
 - Konrad: Removed phy-names from dsi nodes
 - Konrad/Dmitry: Change mdp_opp_table opp-200000000 to use &rpmhpd_opp_svs, add comment
 - Dmitry: Move mdp_opp_table to dsi0 node

Changes from v3:
 - Rebased on drm-msm-display-for-6.2
 - Abhinav: Remove dsc_2 block
 - Bjorn/Dmitry: Add "mdss_" prefix for dsi & dsi_phy nodes
 - Dmitry: Add r-b
 - Dmitry: Fixed msm_mdss_setup_ubwc_dec_40 arguments
 - Dmitry: Changed &mdss to use display-subsystem@
 - Dmitry: Moved &mdp_opp_table to &display-subsystem node
 - Dmitry: Chancged &mdp_opp_table to &dpu_upp_table
 - Dmitry: Correct opp-table disclaimer & fix opp
 - Dmitry: Move dsi_opp_table from &mdss_dsi0_phy to &mdss_dsi0
 - Dmitry: Add dsi1
 - Dmitry: Remove dispcc required opp
 - Georgi: Add missing interconnect cell
 - Krzysztof: Fix underscores in sm8350-hdk.dts node names
 - Krzysztof: Change dsi-opp-table to opp-table
 - Rob: Add r-b tags





Robert Foss (11):
  dt-bindings: display: msm: Add qcom,sm8350-dpu binding
  dt-bindings: display: msm: Add qcom,sm8350-mdss binding
  drm/msm/dpu: Add SM8350 to hw catalog
  drm/msm/dpu: Add support for SM8350
  drm/msm: Add support for SM8350
  arm64: dts: qcom: sm8350: Add &tlmm gpio-line-names
  arm64: dts: qcom: sm8350: Remove mmxc power-domain-name
  arm64: dts: qcom: sm8350: Use 2 interconnect cells
  arm64: dts: qcom: sm8350: Add display system nodes
  arm64: dts: qcom: sm8350-hdk: Enable display & dsi nodes
  arm64: dts: qcom: sm8350-hdk: Enable lt9611uxc dsi-hdmi bridge

 .../bindings/display/msm/qcom,sm8350-dpu.yaml | 120 +++++++
 .../display/msm/qcom,sm8350-mdss.yaml         | 221 ++++++++++++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       | 332 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 326 ++++++++++++++++-
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    | 195 ++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                |   5 +
 8 files changed, 1182 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8350-dpu.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8350-mdss.yaml

-- 
2.34.1

