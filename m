Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C11F6596951
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 08:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238899AbiHQGVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 02:21:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232992AbiHQGVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 02:21:06 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC4716DF8D
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:03 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id c28so13738204lfh.3
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 23:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=F1CoLNi7AKqMTtEG1BCU/Ns1KxSKYwE8yDEdxSlCoH8=;
        b=jr/5t/QN7wSQM3bJVAQZrkWuZIYE82wSjMtHi975dWHxRiYmKswsbMGWFk+n1VJpHL
         NHb6Qtmu3MVAwIvBgqZBxLX/Lh1qt7DC5q3lZ9T2DI0E/8DEEYu1qJhI2RJS0Meq9Q80
         MRFJkgzF6jTlYLwMbTkOz6S1Wbkb+KDjwBTM7k7zp4JBAsssaV8Vj3s7MIc3Tl/kQY2n
         QwOxowtUzJEucRT+gAZxOULafrADgBRnM0YOZc0XhFwILge3duxjQYyrNxxQUgBc+IVT
         1nxTGalFV8QtXSCI/rWueAL7AVzurWYac2kIa5h6wcuZp4vvqnJQKz8YNo5TeMBTATZi
         AWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=F1CoLNi7AKqMTtEG1BCU/Ns1KxSKYwE8yDEdxSlCoH8=;
        b=vmDHt6qNNN4pmLmz/X+B3orc6n8sT7H6Xu0AVR8T3vcsSkkSEgsbcxnLZsfBQti1RO
         /+Hdnnd0vVgA0kv2czL8kInAAOWptG/O3eVBdcqdStTNH02ZMlplLsMDus+NkgLLHsAk
         cdQuoBU/xX0vSX/e66oKj4xx0/c9UmZK5JL7Gm9WYmIvOPQOQZxRO6bI82zL4VCtgsoQ
         1ivY01xNb/zm1F24y5KcodzAh2Xo5dXrfQfsRIhI2LjWBXwXO6POcR7/uDAZn5lVhhLW
         IEPrcew3O9o/ZFcI0RmiJlI417fivF+j8ToKbw5s34S41cgdxHZjQp/xCHyx980DvUGJ
         kF8g==
X-Gm-Message-State: ACgBeo2HLQw++XzKhq9vgM01i/YAb3aUTf5Lnyr7sGkNedCGeW+jcubD
        bD1gSPCje19WxRBDNTA9+eG+oQ==
X-Google-Smtp-Source: AA6agR4q9Tm93umc2dmOf06x5Qwp61RdkCW0A/RNbxL/dQdwoKjhPA27IRJt8+n+Ad3tQnDUqqeRbw==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4134 with SMTP id h3-20020a056512350300b0048144704134mr8079473lfs.42.1660717262326;
        Tue, 16 Aug 2022 23:21:02 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u27-20020ac258db000000b0048b0062a14fsm1581002lfo.144.2022.08.16.23.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 23:21:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/5] dt-bindings: display/msm: dpu: opp-table fixes
Date:   Wed, 17 Aug 2022 09:20:54 +0300
Message-Id: <20220817062059.18640-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1
================
1. Use opp-table:object (Rob)

Merging/other work
==================
There is a conflicting series of
https://lore.kernel.org/all/20220710090040.35193-1-dmitry.baryshkov@linaro.org/
but I think this one here should go before to fix the issue before the
refactoring.

Best regards,
Krzysztof

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>

Krzysztof Kozlowski (5):
  dt-bindings: display/msm: dpu-msm8998: add missing DPU opp-table
  dt-bindings: display/msm: dpu-qcm2290: add missing DPU opp-table
  dt-bindings: display/msm: dpu-sc7180: add missing DPU opp-table
  dt-bindings: display/msm: dpu-sc7280: add missing DPU opp-table
  dt-bindings: display/msm: dpu-sdm845: add missing DPU opp-table

 .../devicetree/bindings/display/msm/dpu-msm8998.yaml          | 4 ++++
 .../devicetree/bindings/display/msm/dpu-qcm2290.yaml          | 3 +++
 Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml | 3 +++
 Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml | 3 +++
 Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml | 4 ++++
 5 files changed, 17 insertions(+)

-- 
2.34.1

