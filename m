Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0179268B34A
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 01:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjBFA1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Feb 2023 19:27:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjBFA1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Feb 2023 19:27:45 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1363518A86
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 16:27:44 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id e22so551510ejb.1
        for <devicetree@vger.kernel.org>; Sun, 05 Feb 2023 16:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sEaaIXvwNj4Y/ABcyEFSpp75hgY1fYms1s4I3xha300=;
        b=VIi2F2pZUyy+B+NkrpVYi2Q6A8T6HtVUjp+xZrhdeLDnUrs9JJt8xQN5RJMOD7e/QZ
         jrv0LLpF+vpQFEHuS6j4Ddg9BuY1RiS4hN+KvZRrDyyXarc2G2qSBdU+jovnjW8nHx8y
         mCyHS1kyjOEINo8dmpU9uJyj3Smmd05pxwdrBogkW2kD4lBHMCezNHO7BruPzUcRAveO
         Q9xLuxocys0S/bJNmt7BCqbJd73YEAtuHMiPdgFxCO790OSC/dzf5jxPAtOmq7b08QVj
         t2UeuopfepJRPuA2WnObK0XAytjULT4h2gvpHWSCvItuqEdHfD34N1+fGthq2RL6SlPl
         ncEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sEaaIXvwNj4Y/ABcyEFSpp75hgY1fYms1s4I3xha300=;
        b=8CdQkzsFKPGGCgoJKRtLkgk5QNHIHAj4kytWPxUc3LF0/Ov3HqB9Ybgv5ribYNUdk5
         nTNUvvES7sXjzbAuUKcVx+DWTkxIpYWXBOpFPEbvmlPx8yr0Dpq6ubFdQHfOhqcd+qEn
         rmfTOkvT3i6gi9LXq97yoGd1U8RkFjpDFlQ0BkH/OK18S+PC8m6g6z74gE9AZ9Dfp6x8
         g8osAIIOxOkmDRarWz8S1mC/5ceJUCqalKGWJcvLOwEd/CWxO5hhhL3uj3r5y8Hb0bcw
         H13M0estDP9Krqy5ir8EO2N4IonwYunVLomBc/5HCqXqJv8XD35uWw015Y4FtpChRjj1
         H5Yw==
X-Gm-Message-State: AO0yUKVmfOVgRxtv8mmowjqgCLL2Gw2lOvrQaFylVSgVep+rH4e/dzu8
        UFHwk25PmhtupJZ58nkuf2kcgg==
X-Google-Smtp-Source: AK7set/4Albb6Tlbe9anok/PLMa3zrG4HRemMWmi/keMOrlZr+NTLlu0MlRZyw7atb7i2HtJ4j8Y5g==
X-Received: by 2002:a17:907:cb20:b0:885:2eb5:68a2 with SMTP id um32-20020a170907cb2000b008852eb568a2mr16411673ejc.16.1675643262670;
        Sun, 05 Feb 2023 16:27:42 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y18-20020a1709063a9200b00878b89075adsm4716085ejd.51.2023.02.05.16.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 16:27:42 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 3/8] dt-bindings: display/msm/gmu: add Adreno 660 support
Date:   Mon,  6 Feb 2023 02:27:30 +0200
Message-Id: <20230206002735.2736935-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230206002735.2736935-1-dmitry.baryshkov@linaro.org>
References: <20230206002735.2736935-1-dmitry.baryshkov@linaro.org>
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

Add Adreno A660 to the A635 clause to define all version-specific
properties. There is no need to add it to the top-level clause, since
top-level compatible uses pattern to define compatible strings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index ab14e81cb050..d5ce0dff4220 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -122,6 +122,7 @@ allOf:
           contains:
             enum:
               - qcom,adreno-gmu-635.0
+              - qcom,adreno-gmu-660.1
     then:
       properties:
         reg:
-- 
2.39.1

