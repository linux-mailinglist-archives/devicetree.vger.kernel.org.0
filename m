Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8527691CCE
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 11:35:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232090AbjBJKe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 05:34:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232084AbjBJKe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 05:34:57 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D9F06D622
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:34:55 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so5936142wmb.4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 02:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8XZSQeymgbSKF089aMqGe9wzwMVmhXvBiXAbN2uEqt8=;
        b=lzHJBaJl8AJTpnefmvl94FhPLlq5ip7BTHqmKgHyD1SWYoYi7hUbDVVFdYcIfo7zu5
         hCFEn2aLgEx4wJBDAj6ZxoPX6fmiaCxqsFCU2KzGX4ehNSGESszrSq1Sd9MxOlEVb9RM
         L84COcM9LjwmBe/RAeina+Ux+fbWBOXRwlVx49HFay0j5x5lNHDVEoX8L0cQnphTT5I9
         UYoXQN9atsK9aIvcK9fWsk9FhNO49ZnW1wm24VwGEJwJSgs1bkCnZcybWGZ3WXZsKFIv
         cymIySIBkkZgxKYurb8wZqoQSkeBMQkmYKeuHI8R71dk2idM1DqXmkBdzZl05JTf9RA2
         Z6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8XZSQeymgbSKF089aMqGe9wzwMVmhXvBiXAbN2uEqt8=;
        b=4smvcU5UoCwyXwT1UM4X9pahWP9ep383QoqxG7d6GcXvuamNTsLYXA+xJl4xRpfjx7
         say3Euxmkh0r2MSPSv1FP1nXQ6JlA+hYyfnIEBD5ZtWd2puWh0olG6q9TqHh8T+VvDZ8
         hYqvsrY+X8IdzpQRqluX5D97bb2Jf5SiCUI+K4KaTbZyCK9CXyNa0bby91FQEIZm+hpk
         xeDaF74mY1B/ARML/6BYwauAMHI3Xlo1TAJfk+YoXmA+B4Ts/e18Fmsy7hzYUu7CiHMc
         X3ZFA6Xpt3CbavzPDIZFQwguchK+md/efQX2Y6c80p/MQ70lVs9XkoK90vMkV/KU+ioG
         jK7w==
X-Gm-Message-State: AO0yUKWep9Ie4PWl2gv9x8NcliQDjKa7G/xTy4+58oRtiRiorfafF2/d
        g15OkxBif/7p+bhFw3uqFE3O78cgvKxX3jwNfls=
X-Google-Smtp-Source: AK7set9T2/fE1SAQdTpAMcLuRXTrYLj5mQyAfoiq6FSHMrseUqen3bW1riS3g/jAfnvbHBDI5yAzug==
X-Received: by 2002:a05:600c:993:b0:3e1:577:80f5 with SMTP id w19-20020a05600c099300b003e1057780f5mr10366027wmp.31.1676025294226;
        Fri, 10 Feb 2023 02:34:54 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id b18-20020a05600c4e1200b003e00c453447sm7937958wmq.48.2023.02.10.02.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 02:34:53 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/5] arm64: dts: qcom: add DP Controller to SM8350 &
 SM8450 DTS
Date:   Fri, 10 Feb 2023 11:34:49 +0100
Message-Id: <20230206-topic-sm8450-upstream-dp-controller-v2-0-529da2203659@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMkd5mMC/5WOQQ6DIBBFr9Kw7jSA2tqueo/GBcKoJAhkQNPGe
 PdSb9Dle4v//sYSksXEHqeNEa422eALyPOJ6Un5EcGawkxyWXHJr5BDtBrS3NYNhyWmTKhmMBF
 08JmCc0ggOW9q1cuWG2RlqVcJoSfl9VS2/OJckZFwsO8j/eoKTzblQJ/jySp+9r/oKoDDIKq6a
 W8Sjbg/nfWKwiXQyLp937+lTmzz7AAAAA==
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch the QMP PHY to the newly documented USB3/DP Combo PHY
bindings at [1] and add the DP controller nodes.

The DP output is shared with the USB3 SuperSpeed lanes and is
usually connected to an USB-C port which Altmode is controlled
by the PMIC Glink infrastructure in discution at [2] & [3].

DT changes tying the DP controller to the USB-C port on the HDK
boards will be sent later.

Bindings dependencies at [1]

[1] https://lore.kernel.org/all/20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-1-ed849ae6b849@linaro.org/
[2] https://lore.kernel.org/all/20230201041853.1934355-1-quic_bjorande@quicinc.com/
[3] https://lore.kernel.org/all/20230130-topic-sm8450-upstream-pmic-glink-v1-0-0b0acfad301e@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- fixed the bindings
- cleaned up the usb_1_qmpphy &  displayport-controller nodes as requested by dmitry
- removed invalid mdss_dp0 change in sm8450-hdk.dts
- Link to v1: https://lore.kernel.org/r/20230206-topic-sm8450-upstream-dp-controller-v1-0-f1345872ed19@linaro.org

---
Neil Armstrong (5):
      dt-bindings: display: msm: dp-controller: document SM8450 compatible
      arm64: dts: qcom: sm8350: switch to combo usb3/dp phy
      arm64: dts: qcom: sm8350: add dp controller
      arm64: dst: qcom: sm8450: switch to usb3/dp combo phy
      arm64: dts: qcom: sm8450: add dp controller

 .../bindings/display/msm/dp-controller.yaml        |  25 +++--
 arch/arm64/boot/dts/qcom/sm8350.dtsi               | 122 +++++++++++++++-----
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 123 ++++++++++++++++-----
 3 files changed, 202 insertions(+), 68 deletions(-)
---
base-commit: 20f513df926fac0594a3b65f79d856bd64251861
change-id: 20230206-topic-sm8450-upstream-dp-controller-20054ab280de

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

