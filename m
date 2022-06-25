Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F61355AD8B
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:27:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233640AbiFYXZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:25:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233565AbiFYXZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:25:18 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2ECF10FC2
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:17 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id z21so10451382lfb.12
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yOvo4RNfG66mUnio+bJXVvd2B8YlblRPNLNf0WutfWg=;
        b=adC6QuRLg7qvjQ0pLXeIp6a1oOor3MqQ20T0C44jyuDhYN7M2D4Qd7bz/DM77o1DAp
         bdPiyQLO7HwdpZtFmQ+lYY1A5+Xrz4nDujWmeNWQBYfHWYka/hy3gQAXHRCa9MKmRSrQ
         N2fsv/gADjG/MXTRAsmElP5x84kk1jzUW7we9+83WjJcQa8ebztaVfbvd3Gyv2RXWtg/
         bXk5YNAH6PwRPScSSkGG8TcLbYcC5TVFknuTkLFGcfPdFqGYt9Qc9itlFhVsgmQh4SMV
         nxLVWhjlUptUEQg60hM+CUSP+CROsJZ9Rqa1eHmNYicqfc/lt159QXtc2cSRkjmCWQY9
         RVqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yOvo4RNfG66mUnio+bJXVvd2B8YlblRPNLNf0WutfWg=;
        b=QPq4x93WYFUfSavJtN7u45JtoEYbdISMiMx09JOWiiHIpCjSc1hC4H0S0AwVnWTVoO
         ZpZkWNoMPhV++iBAVbo4JsCPBmfod9cm8x4zy0rGEy7cqnLr/ryU9xzTCuio/sOlBF1i
         WTGqtwy/EeTtOviAV5o/7MMWQf25TawRrAL4VxeOvW048FEqpI/xpg2tSscU4X+8TUYb
         OQY4oOTrqoRvwTh0e3M4Sc1eh+tsGyXqaaL5sx+cswse+WnKozsZEpVcA76EGpqn0dSX
         Tu0pp31JTFmD2wiWUi4jsmyeWlV5rYOYW6AtMIZmwdCArsyE7NR7fVoHCMKRSkfRIE7U
         jp6A==
X-Gm-Message-State: AJIora8jZDUjF6KFDNskaVFOnyhL5h59LN9BQClrkK7qgCami+kNZ6Ic
        vVlGF6OLEJwSXcwoa/CidnXsgA==
X-Google-Smtp-Source: AGRyM1vlMkoXqPVzU5INDi4WzJu/ELOIoJnUnSHHoL6UNiMvjI/6tZgOs5T3p5bO610/sgDQdGsMPA==
X-Received: by 2002:a05:6512:39ca:b0:47f:a9e1:e3b8 with SMTP id k10-20020a05651239ca00b0047fa9e1e3b8mr3592575lfu.564.1656199515759;
        Sat, 25 Jun 2022 16:25:15 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b0047f750ecd8csm1093694lfs.67.2022.06.25.16.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 16:25:14 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH 00/11] dt-bindings: display/msm: rework MDSS and DPU bindings
Date:   Sun, 26 Jun 2022 02:25:02 +0300
Message-Id: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
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
afterwards.

Dmitry Baryshkov (11):
  dt-bindings: display/msm: split qcom, mdss bindings
  dt-bindings: display/msm: move qcom,sdm845-mdss schema to mdss.yaml
  dt-bindings: display/msm: move qcom,sc7180-mdss schema to mdss.yaml
  dt-bindings: display/msm: move qcom,sc7280-mdss schema to mdss.yaml
  dt-bindings: display/msm: move qcom,qcm2290-mdss schema to mdss.yaml
  dt-bindings: display/msm: move qcom,msm8998-mdss schema to mdss.yaml
  dt-bindings: display/mdm: add gcc-bus clock to dpu-smd845
  dt-bindings: display/msm: add mdp-opp-table to dpu-sdm845
  dt-bindings: display/msm: add mdp-opp-table to dpu-sc7180
  dt-bindings: display/msm: add opp-table to dpu-sc7280
  dt-bindings: display/msm: move common DPU properties to
    dpu-common.yaml

 .../bindings/display/msm/dpu-common.yaml      |  47 +++
 .../bindings/display/msm/dpu-msm8998.yaml     | 148 ++-----
 .../bindings/display/msm/dpu-qcm2290.yaml     | 149 ++-----
 .../bindings/display/msm/dpu-sc7180.yaml      | 158 ++------
 .../bindings/display/msm/dpu-sc7280.yaml      | 155 ++------
 .../bindings/display/msm/dpu-sdm845.yaml      | 150 ++-----
 .../devicetree/bindings/display/msm/mdp5.txt  |  30 +-
 .../devicetree/bindings/display/msm/mdss.yaml | 375 ++++++++++++++++++
 8 files changed, 580 insertions(+), 632 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-common.yaml
 create mode 100644 Documentation/devicetree/bindings/display/msm/mdss.yaml

-- 
2.35.1

