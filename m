Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA69466911C
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 09:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjAMIh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 03:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231416AbjAMIhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 03:37:25 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38504DF06
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:37:24 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bf43so32115860lfb.6
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=89Zd6mgRw6i6pS7UmAmLfKTihhoi7hZ3v4ZY4evNfNU=;
        b=Md/c6o4xFP/rPyTe1JxNVDFfvvxKjrHwRmQThWtvoxAemn7Qw8PDih/X4Ij3SBmKTQ
         oOorr2DP3DubEBXYQL/WtT7gBPCMt27Ux5W7KJ7ebUV+ZjMJjrPxLqsvRexkwvYM5qHR
         Qjk+RbtTNyBgHucoN3BkReQ3KFIV7dbIgSJq+bn68jku+e5rcHuFPCkbPkNSou5OEMBT
         NnlUBaudHvINOiesk1gOQmJrNcarT8ZYvUxASFNNrW7SQU/4PaJYx4uh0fkrMk1I+5Zo
         ToBm8065LUIaLfVossiVto5Ljal1qU9nYZb0LhK0pqAgV+FYb5PT6uRRZnQ8/dGNZnke
         qFZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89Zd6mgRw6i6pS7UmAmLfKTihhoi7hZ3v4ZY4evNfNU=;
        b=0Lcopk6hFhwE6m0iXJ1s8p+qbA3ABlBlynFtWJu/wMQ58Omfi+NEf4qcUT4ZGLbkFW
         6SoSTKNqmzFaZW64pbNPchZFtaDTOtxzmC10mQnBqUeaSkvV24MoRGVN8U1J7YFOJTs1
         Q+nuS8J0wFEEKu5Ysj9tlPZyYaG2rI6J9GkymenAX+LSLmpj/ngojgLn+RZc8cvcehvY
         MB6+BVgIx6d4GbyECjedJoVF8rzQipW8saX3hLmO7Kkj7IwxNGR1zIrczucf8/+NmzFc
         U1wQi06VIK3UHKd1VkgzLkzhAJtYjNg/Ll81XgOu8Hr/eS20anWStJ5C6oaPmGZbOrlA
         bawQ==
X-Gm-Message-State: AFqh2koi60qHpDukODxo/GtBAso6xRiITBTWjXU4ED+HE8MJdTi5vEXR
        n3wU+/SDIUNMVGNzeLXM4+IyOQ==
X-Google-Smtp-Source: AMrXdXsKRL8Wgn2I3YnZYNfAI4H1YVtupP4j3ohwao7d05G23ww7r7+efpyZW+XbzlG5m+TiV3Av2A==
X-Received: by 2002:a05:6512:40f:b0:4ce:e95c:f2ff with SMTP id u15-20020a056512040f00b004cee95cf2ffmr790411lfk.18.1673599042611;
        Fri, 13 Jan 2023 00:37:22 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b004994117b0fdsm3748038lfo.281.2023.01.13.00.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 00:37:22 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v6 00/11] dt-bindings: display/msm: rework MDP5 and MDSS schema
Date:   Fri, 13 Jan 2023 10:37:09 +0200
Message-Id: <20230113083720.39224-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

Krzysztof asked me to merge all pending MDSS/MDP5/DPU patches to a
single series to ease review and to let one to see the whole picture.

This combines three series: MDP5 schema conversion, mdss/mdp renaming
and addition of the "core" clock to the MDSS device node.

Changes since v5:
- Merged in the mdss/mdp node renaming and core clock series
- Fixed the formatting of descriptions in qcom,mdp5 schema.

Changes since v4:
- Adjust qcom,mdss.yaml to follow the addition of per-SoC compatibles

Changes since v3:
- Drop MSM8998 completely, it conflicts with qcom,msm8998-dpu.yaml

Changes since v2:
- Fix MSM8998 compatible list: "qcom,msm8998-dpu", "msm,mdp5" to allow
  handling this device by either of the drivers.

Changes since v1:
- Renamed mdp@ to display-controller@ in the example (Krzysztof)
- Extended ports description to mention possible ports (Krzysztof)
- Fixed ports@ regexp to limit to just four ports (Krzysztof)
- Included patches adding per-SoC compat strings to the schema and to
  dtsi files.


Dmitry Baryshkov (11):
  dt-bindings: display/msm: convert MDP5 schema to YAML format
  dt-bindings: display/msm: add SoC-specific compats to qcom,mdp5.yaml
  dt-bindings: display/msm: add core clock to the mdss bindings
  dt-bindings: display/msm: rename mdss nodes to display-subsystem
  dt-bindings: display/msm: rename mdp nodes to display-controller
  ARM: dts: qcom-msm8974: add SoC specific compat string to mdp5 node
  arm64: dts: qcom: add SoC specific compat strings to mdp5 nodes
  arm64: dts: qcom: rename mdss nodes to display-subsystem
  ARM: dts: qcom-msm8974: rename mdss node to display-subsystem
  arm64: dts: qcom: rename mdp nodes to display-controller
  ARM: dts: qcom: rename mdp nodes to display-controller

 .../bindings/display/msm/dpu-common.yaml      |   8 +
 .../devicetree/bindings/display/msm/mdp5.txt  | 132 ---------------
 .../bindings/display/msm/mdss-common.yaml     |   8 +
 .../bindings/display/msm/qcom,mdp5.yaml       | 156 ++++++++++++++++++
 .../bindings/display/msm/qcom,mdss.yaml       |  51 ++++--
 arch/arm/boot/dts/qcom-apq8064.dtsi           |   2 +-
 arch/arm/boot/dts/qcom-msm8974.dtsi           |   6 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |   6 +-
 arch/arm64/boot/dts/qcom/msm8953.dtsi         |   4 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |   6 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |   2 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi          |   6 +-
 arch/arm64/boot/dts/qcom/sdm660.dtsi          |   2 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |   2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |   2 +-
 15 files changed, 230 insertions(+), 163 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/msm/mdp5.txt
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml

-- 
2.39.0

