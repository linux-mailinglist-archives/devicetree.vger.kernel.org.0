Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8724B7507A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231693AbjGLMLu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:11:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbjGLMLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:11:49 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DE68E65
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:48 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b6a6f224a1so113249391fa.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163906; x=1691755906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3K3L1z6H/Jl14Mmz6QekO68wz73mQz13XTIjAHvmQqA=;
        b=VfOcQGXFNbLoNG983UM9HHP01DkcBXp/hPNXk78DCABNBrDBeu1ydogeBsb4rh3ZLV
         EMQtfpm83rlOYCWbb79fxeT7QwLQmPMUHmTCCv8M4ungyXPAi3kTun03fG2gtB2C6Zhr
         G8ADegoFsiRmOyAlfsndo9P6JGSjBJ8eDkbulDLi6stmR2Ta+LhMj+dEADhUkAwoNSNW
         9MbnZCwsfX0UpaQ2y/7p9jYLbFhF6LC0b/IJFJqMPm9Y2VwOBM5c3HC9Gcp1qsDw3xhZ
         GG4RAs2ZikHkCOfpVb6TTDl3tRcwEcIVbcIPr/zXxyhPL/HokQWKqjJilMZPALcOru0u
         Orsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163906; x=1691755906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3K3L1z6H/Jl14Mmz6QekO68wz73mQz13XTIjAHvmQqA=;
        b=DNlbDCV7WjpDnmVxRucyPnlF1k77sh7ypdqiKzVjUnaHCIDTk9u0bVolLdtEIXs+ET
         4nQ42wGiO8nv7h8A9NyjVlIMjo4NKJPFXHg+bwzI4YUu/0VbzjpQdZzecSEXTNOjhzw5
         RQUWco2+HMR7TIW3AinPWWi5F6o13XpOoB4rG1KgKNBhfwpWL/OAHYmfUMn+ygct8PMb
         UABOiKvoumGWcicjMV4WsZ5ohwGsGV7icJtLJ2ly6hXB2dWKAyEdOCzQKf3OSxrg0f2V
         J1Q1S09GgrQ2v7H969lu84e3Wmttf0jpFURYti8496myD1AeFN9XnA1a6KT+ZgxjTdJ/
         d2hg==
X-Gm-Message-State: ABy/qLbPHnBGhQxoImg7KsDtxc4z5BhwidFnEzTDT0cJorNSmSblMGmF
        66/p5JoMSm1/5Sx5cMeDSN0KUA==
X-Google-Smtp-Source: APBJJlFIvTTTpjP6vYotlLnUf/OtRjwWQVGnYkZgtEomA+mnUxdLIwbX/0a5xcbGFJmaK44tw6980A==
X-Received: by 2002:a2e:980b:0:b0:2b6:dc55:c3c7 with SMTP id a11-20020a2e980b000000b002b6dc55c3c7mr17011894ljj.20.1689163906493;
        Wed, 12 Jul 2023 05:11:46 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id p14-20020a2ea40e000000b002b6c8cf48bfsm913135ljn.104.2023.07.12.05.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 05:11:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 0/8] MDSS reg bus interconnect
Date:   Wed, 12 Jul 2023 15:11:37 +0300
Message-Id: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Per agreement with Konrad, picked up this patch series.

Apart from the already handled data bus (MAS_MDP_Pn<->DDR), there's
another path that needs to be handled to ensure MDSS functions properly,
namely the "reg bus", a.k.a the CPU-MDSS interconnect.

Gating that path may have a variety of effects. from none to otherwise
inexplicable DSI timeouts.

This series tries to address the lack of that.

Changes since v1:
- Dropped the DPU part, the MDSS vote seems to be enough
- Reworked MDSS voting patch. Replaced static bw value with the
  per-platform confgurable values.
- Added sm8450 DT patch.

Dmitry Baryshkov (6):
  drm/msm/mdss: correct UBWC programming for SM8550
  drm/msm/mdss: switch mdss to use devm_of_icc_get()
  drm/msm/mdss: inline msm_mdss_icc_request_bw()
  drm/msm/mdss: populate missing data
  drm/msm/mdss: Handle the reg bus ICC path
  arm64: dts: qcom: sm8450: provide MDSS cfg interconnect

Konrad Dybcio (2):
  dt-bindings: display/msm: Add reg bus and rotator interconnects
  drm/msm/mdss: Rename path references to mdp_path

 .../bindings/display/msm/mdss-common.yaml     |   2 +
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |   9 +-
 drivers/gpu/drm/msm/msm_mdss.c                | 138 +++++++++++++-----
 3 files changed, 108 insertions(+), 41 deletions(-)

-- 
2.40.1

