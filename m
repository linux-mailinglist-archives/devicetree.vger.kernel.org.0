Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 140C1741670
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 18:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbjF1QaM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 12:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232263AbjF1Q3z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 12:29:55 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95C132694
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 09:29:54 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b69ed7d050so62995301fa.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 09:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687969793; x=1690561793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9eMvEkJ/XegETFODHiz62mk7KCxYtx3hl5+l1ieaHBA=;
        b=M2eG9b/rwLJbJ+ZYensGn99Z3sahqkhwgsICE+uWcaeCOhsMZixj0R91WrZhWHqvcT
         n077rgit6FDUr5nM+sZR6cA1yP9+24oT3o4DzuvO5+NGFm2ZSHsfTWKQSmmq2ClZweEH
         KU0lHXDJObPPbiBqKhxzrEB2ZPPFI8it67dn8IqsxVpiJmTQKFanRhkpwsx3UmQuQV6P
         FN0/+23yrw/BmMu+s+bAodxLNjgUYIK6dwYMMOG3TsEfZ5zhdfnvcisUm26xEq+oBd6v
         SElLQ5rIRNneoicmeE1ikfUOSowdZa11gUYoCWgqZo6j/h6BHzPhG0Fh1tzyJAUjIspc
         lUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687969793; x=1690561793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9eMvEkJ/XegETFODHiz62mk7KCxYtx3hl5+l1ieaHBA=;
        b=K2hSErHJIOaPET+y2DsAuRSndvfqB6LTiCILr4bq4KfpL0h6ntkvRLGGcgxolWmKHB
         QbdpqvbE4U64rwY1zKNuUbnctfdAcIlQCnvC4cRai0DvgidbkPqLP6BKcOirbki3jEOc
         40imtPD1k3l6pzPdKol6JTfDM4ZO1QtnkxOBTO7LkMTTu4epW1ca2yvH2ImuwXXBTFJZ
         eWX/rxKPLT03tCSANe8xuwV5WeOzOibL+pfUUCbcD87WZuggUrNfgui6yXbWzUZppb26
         /FG3V/+kXf/mLnax/E1+rIleWYVlunwmSQlvXSPUzsUneML4qzqA9udU5WNKfA8xnqVe
         MMBw==
X-Gm-Message-State: AC+VfDxpJV9IjmhOAT3ur50SF7NfgRXcV64PpHzQI6vyKVj5IJmUnGG9
        6RxyVTyobL+/aWm8OMJCCKLc6w==
X-Google-Smtp-Source: ACHHUZ51B3mrrRAOt7s7WF2oHJ0SQg/cpfsp3d3HETCr5iBgITcho1tWvUElbupu3H1F3zZdBZLC2g==
X-Received: by 2002:a05:6512:2024:b0:4f9:dac6:2f41 with SMTP id s4-20020a056512202400b004f9dac62f41mr6940702lfs.2.1687969792904;
        Wed, 28 Jun 2023 09:29:52 -0700 (PDT)
Received: from [192.168.1.101] (abyk82.neoplus.adsl.tpnet.pl. [83.9.30.82])
        by smtp.gmail.com with ESMTPSA id v28-20020a056512049c00b004faeedbb29dsm1678783lfq.64.2023.06.28.09.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 09:29:52 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 28 Jun 2023 18:29:47 +0200
Subject: [PATCH 3/4] dt-bindings: display/msm: dsi-controller-main: Allow
 refgen-supply
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-refgen-v1-3-126e59573eeb@linaro.org>
References: <20230628-topic-refgen-v1-0-126e59573eeb@linaro.org>
In-Reply-To: <20230628-topic-refgen-v1-0-126e59573eeb@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687969785; l=919;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=PSg1b4zAMPXvW/Hco4OyLK9NQz9E7zBcyA/3he+DDzs=;
 b=+OPEQNKdq4VxxdpETYujbLytJ4CfZJo5uT5nocAXxJ+Eyh9ZqgvBwYThV/7U27B/FHOT38/Me
 IiuUpQ7aMsjCNHKV40ETBzW3EwM7J1JB/Vf8qqxL5H0O4LwU2c1qKah
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DSI host needs REFGEN to be enabled (if it's present on a given platform).
Allow consuming it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 01848bdd5873..76270992305a 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -166,6 +166,10 @@ properties:
     description:
       Phandle to vdd regulator device node
 
+  refgen-supply:
+    description:
+      Phandle to REFGEN regulator device node
+
   vcca-supply:
     description:
       Phandle to vdd regulator device node

-- 
2.41.0

