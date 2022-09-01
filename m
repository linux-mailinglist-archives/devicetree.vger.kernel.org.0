Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 238655A9440
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:23:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233879AbiIAKXS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:23:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233483AbiIAKXQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:23:16 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0CE213609A
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:23:15 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id p16so5708790lfd.6
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 03:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=dLbCWfK4QmdJs7B89yEoeU6QwY4dXcohZFWGLKtUTsc=;
        b=h2+A2BMyZiBwssZxYJxKnySz3kv+mE7nXsD5i057SMt2SxV6I74dE2F9nLNz+j6GE8
         PqKxIGBxKmXn9RAb5DQp/mqbpeiI9i2Dy7vGrejO4o3MGkqCqAusjZtMLMCrMmwnHXho
         mepPIt+LXe+c0luRlHDpP1lIUAygSdTPo2rcrWX0ctoTVzrRNAs/oBbr9VweUwSATpuK
         9cGrqQthgv1BdKoKiN7QM4SprjzHM7Ho1ZsKtoFEgJklk7F1T2zfzy2p5R12tYFlZYUA
         p+X/GgFNzSYqD6/QWr2tM0xezIZ82SQJ9n174uNkskO3uOJkb8fQGprUP4vCc8SJsLXn
         FcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=dLbCWfK4QmdJs7B89yEoeU6QwY4dXcohZFWGLKtUTsc=;
        b=C6DahsBE0Z11pGOX22PDnHd/T8PrxnliFjTRvo0I9zlLEExJP4gfNG0/4Rxr49jCJJ
         IjAxqRcd2Sz4ZXnA/HeLujYWk+ef1KCQu+p8lIRV5h5jNO2z5amCbz4CPQKcF3GAv36J
         2YowB6okcs01GZa3Vk/DtTVNUCnKWrL99HeowFaV0B4T2Zc+EcxCaLYPz1cPS0X3sK3B
         WPsxEl4m8xIy1l3Ya4QFfoo/6UaVGTs+kS6gL4qd0GaMz4YsFU3p4O+hf2OGooTv97cq
         ehtaYyfxqfx9oKp9D6pi+6ZuE0dKexHd2+t4xmKBszD6FVXCZOA3WEYRmEIqE/lBD/dZ
         Ih4Q==
X-Gm-Message-State: ACgBeo0NLPzWdnO34cpAA6HcO70nEcspD5GeBOwEfV5MsGSuTUELq5pq
        SZ8bC+GFbp1HzZ4QAT69VSBxTg==
X-Google-Smtp-Source: AA6agR4Zy/Gm2ggKt/jupHdrH7Zi/UaPrufCcJTzhkcDEqnHk73w+lcALlQz6BTv9U9M3fdlOzbIGw==
X-Received: by 2002:a05:6512:1195:b0:491:a3b7:b56 with SMTP id g21-20020a056512119500b00491a3b70b56mr9725811lfr.686.1662027793942;
        Thu, 01 Sep 2022 03:23:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z19-20020a056512371300b004949ea5480fsm123453lfr.97.2022.09.01.03.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 03:23:13 -0700 (PDT)
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
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v6 00/12] dt-bindings: display/msm: rework MDSS and DPU bindings
Date:   Thu,  1 Sep 2022 13:23:00 +0300
Message-Id: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Create separate YAML schema for MDSS devicesd$ (both for MDP5 and DPU
devices). Cleanup DPU schema files, so that they do not contain schema
for both MDSS and DPU nodes. Apply misc small fixes to the DPU schema
afterwards. Add schema for the MDSS and DPU on sm8250 platform.

Changes since v5:
 - Dropped the core clock from mdss.yaml. It will be handled in a
   separate patchset together with adding the clock itself.
 - Fixed a typo in two commit subjects (mdm -> msm).

Changes since v4:
 - Created separate mdss-common.yaml
 - Rather than squashing everything into mdss.yaml, create individual
   schema files for MDSS devices.

Changes since v3:
 - Changed mdss->(dpu, dsi, etc.) relationship into the tight binding
   depending on the mdss compatible string.
 - Added sm8250 dpu schema and added qcom,sm8250-mdss to mdss.yaml

Changes since v2:
 - Added a patch to allow opp-table under the dpu* nodes.
 - Removed the c&p issue which allowed the @0 nodes under the MDSS
   device node.

Changes since v1:
 - Renamed DPU device nodes from mdp@ to display-controller@
 - Described removal of mistakenly mentioned "lut" clock
 - Switched mdss.yaml to use $ref instead of fixing compatible strings
 - Dropped mdp-opp-table description (renamed by Krzysztof in his
   patchset)
 - Reworked DPU's ports definitions. Dropped description of individual
   ports, left only /ports $ref and description in dpu-common.yaml.


Dmitry Baryshkov (12):
  dt-bindings: display/msm: split qcom,mdss bindings
  dt-bindings: display/msm: add gcc-bus clock to dpu-smd845
  dt-bindings: display/msm: add interconnects property to
    qcom,mdss-smd845
  dt-bindings: display/msm: move common DPU properties to
    dpu-common.yaml
  dt-bindings: display/msm: move common MDSS properties to
    mdss-common.yaml
  dt-bindings: display/msm: split dpu-sc7180 into DPU and MDSS parts
  dt-bindings: display/msm: split dpu-sc7280 into DPU and MDSS parts
  dt-bindings: display/msm: split dpu-sdm845 into DPU and MDSS parts
  dt-bindings: display/msm: split dpu-msm8998 into DPU and MDSS parts
  dt-bindings: display/msm: split dpu-qcm2290 into DPU and MDSS parts
  dt-bindings: display/msm: add missing device nodes to mdss-* schemas
  dt-bindings: display/msm: add support for the display on SM8250

 .../bindings/display/msm/dpu-common.yaml      |  44 +++
 .../bindings/display/msm/dpu-msm8998.yaml     | 229 ++++-----------
 .../bindings/display/msm/dpu-qcm2290.yaml     | 235 ++++------------
 .../bindings/display/msm/dpu-sc7180.yaml      | 257 ++++-------------
 .../bindings/display/msm/dpu-sc7280.yaml      | 266 +++++-------------
 .../bindings/display/msm/dpu-sdm845.yaml      | 234 ++++-----------
 .../bindings/display/msm/dpu-sm8250.yaml      |  96 +++++++
 .../devicetree/bindings/display/msm/mdp5.txt  |  30 +-
 .../bindings/display/msm/mdss-common.yaml     |  83 ++++++
 .../bindings/display/msm/mdss-msm8998.yaml    |  88 ++++++
 .../bindings/display/msm/mdss-qcm2290.yaml    |  92 ++++++
 .../bindings/display/msm/mdss-sc7180.yaml     | 103 +++++++
 .../bindings/display/msm/mdss-sc7280.yaml     | 112 ++++++++
 .../bindings/display/msm/mdss-sdm845.yaml     |  92 ++++++
 .../bindings/display/msm/mdss-sm8250.yaml     | 106 +++++++
 .../devicetree/bindings/display/msm/mdss.yaml | 166 +++++++++++
 16 files changed, 1264 insertions(+), 969 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-common.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-sm8250.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-common.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-msm8998.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-qcm2290.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sc7280.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sdm845.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss-sm8250.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss.yaml

-- 
2.35.1

