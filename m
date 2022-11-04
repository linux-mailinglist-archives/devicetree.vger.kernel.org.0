Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11846619736
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:14:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbiKDNOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:14:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbiKDNOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:14:03 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 240F62AE36
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:14:02 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id z24so6305805ljn.4
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vkNU3+fp0nhaCwixTYlRHoDEFAnLM2EV/3w7IT8vNw4=;
        b=HLaOKFbepOY9VJ3gr1x5NgM/GwvMIHKqUMbknWaeU3h2qGxlJLt4QUvVBnFlRUmY6F
         eNBmATDZ/hDVpS6avJnga+LSbezCUtgOCqQbnBNs2KAMYEiZZB8wm70NXehTJCJWxZzD
         asBbK5cWoixW9xnsJFj3bPbkMUMy3wxxwX4RuQEQ8hgBxit15xHe4O6SRu+xGsse1JhK
         ClJDNO/g2eK3pW3m0WQUYvzdvA1voKqcKCmniH99HmIGzanotBREFZ0HZ9usdyzDKRbX
         pBI/EepxckCd1p3TjMICEAiQtmiaRAN7Q9wrUXvVPwUPaBJOO8tMgosrkPsh1OMYFNbz
         PZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vkNU3+fp0nhaCwixTYlRHoDEFAnLM2EV/3w7IT8vNw4=;
        b=cxErC3Vd/O6hn8+SCCxV+bGSoULu5gpNY6oTaWTrL0FS/9vmdHeJeWHyIc8+HAo/mm
         i0PHEQEqnoazLIUDUWgeVXTMbmDPQjBTZOcrrSMwXxuswIJ/nY8y5ORFMTuwqHD1/oC2
         pUgaNfDq9TB2XFMtzsBewHqKED/n6u5HBMuvsuJbjyys8Zw6hlFqFYD3BNte0bfhssHo
         x5fMZqXkWWnuODuC/mOyNz1TsEvjJXmHhhWbFuI+fgmY1UV754dCy/B+7aVhFB0C5Bij
         wJBRmrrnU/owKX68UY/SUB1kfrfQZzyVUpbg8zZPMYtiC81ri74nOEbkw6mEKT95iYxd
         +Duw==
X-Gm-Message-State: ACrzQf3AUct/EGLq4YjHFGbyjFH7lpse6lFE/jizCH6UZqfocUmLdh1L
        mWmNnYpCILLolu81o5bzNdaScA==
X-Google-Smtp-Source: AMsMyM6L5kv9idmr6tL6VMZge4A6ccABD2Rf6Tdjxzvbt7trM4M0KMRdHYubn2IjK29mSFCyyDuuHw==
X-Received: by 2002:a05:651c:14f:b0:277:3f46:a034 with SMTP id c15-20020a05651c014f00b002773f46a034mr12664086ljd.529.1667567640496;
        Fri, 04 Nov 2022 06:14:00 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id t27-20020a19911b000000b004a95d5098f2sm457050lfd.226.2022.11.04.06.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:14:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v1 0/5] arm64: dts: qcom: sm8450-hdk: enable HDMI output
Date:   Fri,  4 Nov 2022 16:13:53 +0300
Message-Id: <20221104131358.1025987-1-dmitry.baryshkov@linaro.org>
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

Add device tree nodes for MDSS, DPU and DSI devices on Qualcomm SM8450
platform. Enable these devices and add the HDMI bridge configuration on
SM8450 HDK.

Dmitry Baryshkov (3):
  arm64: dts: qcom: sm8450: add RPMH_REGULATOR_LEVEL_LOW_SVS_D1
  arm64: dts: qcom: sm8450: add display hardware devices
  arm64: dts: qcom: sm8450-hdk: enable display hardware

Vinod Koul (2):
  arm64: dts: qcom: sm8450-hdk: Add LT9611uxc HDMI bridge
  arm64: dts: qcom: sm8450-hdk: Enable HDMI Display

 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 124 ++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi    | 304 +++++++++++++++++++++++-
 include/dt-bindings/power/qcom-rpmpd.h  |   1 +
 3 files changed, 417 insertions(+), 12 deletions(-)

-- 
2.35.1

