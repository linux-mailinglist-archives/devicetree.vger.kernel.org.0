Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3466F542FE2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238689AbiFHMHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238683AbiFHMHh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:07:37 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D62E1C925B
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:07:30 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id l18so15171121lje.13
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BtJMYN1NiTYanbaLswa1fSBSsXJlRUYRVZDlZh1k1AA=;
        b=jjo/8XzY6ReZsJMH4cA33Qj8DbMijcu6XUr/ybAIgT+dCaKH700w/+T8rPZb/kW68d
         UdrEhRhskml8Pufl+8l/dxgaL1Iv+8FvozljZ+HLcwIpO44+KbtB4VMHq1pt8Xt1E8xK
         Nl2eVcHacRogoAPWjV61IbxCaWvCERPgX17cN5YXIEZRYg36VIz8/eYSTxQRGKq/CtwJ
         wpVtLZvaPSVSn9uaXtD14A6jeiN5noWbFsFn35pY3TJsbMPFRtv3CdUgWdEsM/VvgYeb
         vzVc4i02tg9mVd7C6Fmsez0WV37T9SqNdRzbmDRfbWY/91JCF34ZIGIjEgtFHbXzfGov
         D/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BtJMYN1NiTYanbaLswa1fSBSsXJlRUYRVZDlZh1k1AA=;
        b=qrURDonAvTSTZDSJrbhpGiiq5uX1TpLX22BsVvsUEvpcmAv0G6uMU/DSKNn7QiDHjB
         BMt33gMxw5c9o/ta65ryuSfTQrRNwVs5uSOtyoHV/aWFMG/ukFk5A7BAPelLN5OYg4mn
         S8PhMvEC355cGrS1aEmb4KqUNOzyEzLV+Fi1ngb36h9tA9jZcEK3kDmWx6RzBW7notiy
         sgkHiSDsTWM7CbDI6WVm5cEcXrPIHFuD9LJApVdOcjFB93TaY021b3mbFVcaWQe82Ylf
         I8X5pf8CB6ShAcKXE2q0HVLGZq6Pf3HLAIG+TRgD7mMcJbOyky8SR8bw972GdM23Pbpw
         gVTg==
X-Gm-Message-State: AOAM530i3S+LVEfWZadd9QyCts9uzr0V2oThya5hoQrfUiJ2kXKwZGPV
        X1uyRY3raMTN+FvPMLCY+tIJpw==
X-Google-Smtp-Source: ABdhPJyg7lK6URUsUevB0Yts6v4fPYfHMP0po3JI9+mAZ/QNxG+qvPypTnCsuXE1QmNg3RhilkQ77w==
X-Received: by 2002:a05:651c:239:b0:255:a237:7ebd with SMTP id z25-20020a05651c023900b00255a2377ebdmr7052905ljn.401.1654690048709;
        Wed, 08 Jun 2022 05:07:28 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 4-20020ac25f04000000b0047b0f2d7650sm52049lfq.271.2022.06.08.05.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 05:07:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 03/12] dt-bindings: display/msm: hdmi: mark hdmi-mux-supply as deprecated
Date:   Wed,  8 Jun 2022 15:07:14 +0300
Message-Id: <20220608120723.2987843-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
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

hdmi-mux-supply is not used by the SoC's HDMI block, it is thought to
power up the external logic. Thus it should not be a part of HDMI
bindings, but it should be declared at some other device in the DT (like
HDMI mux, bridge, etc). Mark it as deprecated.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 81997759584c..3f703d737ca7 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -55,6 +55,7 @@ properties:
 
   hdmi-mux-supply:
     description: phandle to mux regulator
+    deprecated: true
 
   core-vcc-supply:
     description: phandle to VCC supply regulator
-- 
2.35.1

