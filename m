Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12BF156CDD9
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 10:41:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbiGJIlk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 04:41:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiGJIlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 04:41:39 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1408B18E28
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:36 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id w17so1469949ljh.6
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 01:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ng9sE96WrnIx3xQqutYhfh5XLKWJitjlsYB4zzGeV8U=;
        b=Qsn4LaHSwTMU51F04OesvPJNbPxXD4oMQFLWl/7JxiEGaAJEzqpHUT5+EnoOOlvzMf
         HREx4aWfGryUUkow99r0JpcNX68syExzCcnhjj2pjpA6h7O4J0tfGX6+DF0Axs4xaW24
         FxOCj6FxUww5Ya4dk9IyY+qjhItSIoZgeUnCBKFjSu8Qe9PwOFXTjWGbupmsXfXz+MTL
         9J15KATd74EpxXmcmb/iS5ucRzjm7Fta7y9nGJVkKYz19rtzHMP/HkiIABQSS6g+JAGE
         tQmsgqku0gZk4r8lScKAKNv8pClXqNxccvr80e9QE6CEevcKCXIrSCeHHzlzLq1mIBHR
         /BJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ng9sE96WrnIx3xQqutYhfh5XLKWJitjlsYB4zzGeV8U=;
        b=Ulgs5sT68OILkCVp3OHSimS5vSHAG12QJZqSDcmfgehkFkkTSHqqVg301hpeYDqIu4
         SbasPkI+ZE5NdWPRf3YwvpLtIZPNpeWtcv++dfyw86q6WiZuGJaTYUPo8B8rspWSgLkG
         lzBWUElDJzsONOILM1GicATEUfI+yUzbHWbxuKUp2FpoF4upgiXag5iVeufmXIiSVXhZ
         ZDtleoLM3FK5V+WL6iEaDlJTd0I1gnMsjUlKYBiXCurc1JcjbKKZin+kkeA/8tRzgAIG
         UW+TkkSxPc3XawBxLEWiquw58rFVocSp6xH8LTirf77ZwajuzmppY6tBWjT0izSEtkQ2
         ol0g==
X-Gm-Message-State: AJIora948a7dGa15gx8vv49bO6I2mt4sQfO40QbRrAxKRpqexpVSVZGC
        fMAHnM1TCrSsfzkVAXBq3PrpjQ==
X-Google-Smtp-Source: AGRyM1v08aU8P5seYjw/3JLFPxv2a3nAdhwSLebTrqOgrKbenfnMH+mgaHO46Ye5C47bl9zpxFySzQ==
X-Received: by 2002:a2e:b0d3:0:b0:25d:6888:7c70 with SMTP id g19-20020a2eb0d3000000b0025d68887c70mr913658ljl.244.1657442495285;
        Sun, 10 Jul 2022 01:41:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i21-20020a2ea235000000b0025d4addbad4sm912536ljm.91.2022.07.10.01.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 01:41:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Subject: [PATCH v2 0/9] dt-bindings: msm/dp: cleanup Qualcomm DP and eDP bidndings
Date:   Sun, 10 Jul 2022 11:41:24 +0300
Message-Id: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix several issues with the DP and eDP bindings on the Qualcomm
platforms. While we are at it, fix several small issues with platform
files declaring these controllers.

Changes since v1:
 - Reordered patches to cleanup dts first, to remove warnings from DP
   schema
 - Split DP register blocks in sc7180.dtsi and sc7280.dtsi
 - Cleaned up the p1 register block handling: marked it as required for DP
   and absent for eDP controllers
 - Dropped unused xo and ref clocks from sc7280-edp node, they belong to
   eDP PHY.

Dmitry Baryshkov (9):
  arm64: dts: qcom: sc7180: split register block for DP controller
  arm64: dts: qcom: sc7180: drop #clock-cells from
    displayport-controller
  arm64: dts: qcom: sc7280: split register block for DP controller
  arm64: dts: qcom: sc7280: drop #clock-cells from
    displayport-controller
  arm64: dts: qcom: sc7280: drop address/size-cells from eDP node
  arm64: dts: qcom: sc7280: drop unused clocks from eDP node
  dt-bindings: msm/dp: mark vdda supplies as deprecated
  dt-bindings: msm/dp: add missing properties
  dt-bindings: msm/dp: handle DP vs eDP difference

 .../bindings/display/msm/dp-controller.yaml   | 47 ++++++++++++++++---
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  7 ++-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 19 +++-----
 3 files changed, 53 insertions(+), 20 deletions(-)

-- 
2.35.1

