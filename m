Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F278E544BB2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245372AbiFIMYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237523AbiFIMX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:23:57 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46E592EA33
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:23:55 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a2so31594587lfg.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dKhPg/cmcxmOfyln8LHNh+0LZCcWe3u5I/ocqfZ0+pI=;
        b=lI3jQFgc0+LXTMushC5OLGDeMWomfNObhV/nHldYgNqyiCEbc+LzVtRtngp0TpUmJ3
         5s3cCPUStcNQmnUVxDTpSLH0V77bLR9Ov3SQMS6hv/pZj+E/PPqn2HLcq8ruAwAxyp0b
         CsAPFwyFO7D4M8HDoOcg7p/jxrGDhhePTuLyeVWDmXsM4RNHPVqI2hyjapqLNhZLaBwQ
         9X5tEFTGiCYxuxifIO9UnpWX0LY4J7Hykix2MI38I6xRGI2t7J160PWwALBeqTFujh80
         wa0gEsblY96daHAxDEslxTqbYwc1mlBoNGIXo+n2JKweCmjnSYl6r6NnQyotLK1lAjSZ
         2K1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dKhPg/cmcxmOfyln8LHNh+0LZCcWe3u5I/ocqfZ0+pI=;
        b=Ltl/7jUAS0Y1o4QUALjo80VtBdU43FJCRc8puar1yU6ykmBDSyBt6WS95zibzpuUfB
         w/dq/+HJYyWzR7ceBqjOv6QeMGvZrsPglQiaewf7fR78lxCWPWUU+cCcD8SznhqnX+5O
         GEWMcup9Xr3S2HA4aXcG6zWuPLkBsm5qo0HhhS/lgxHbOpC2qLE9sQ4pLK2vmC5QRvAv
         Id9hMH+XmclMChZzsRKgSOZFkKGFG8iiOngGtio1J6rMAtnSVp6K7Mut03WtEAl3cO7k
         Ji8LJz32us/QIX7qYqK5Uj5UXAPaZc5s/M/6wyB98BTtN8L2BTGE4IteSlH1C0XrcCY/
         ueBA==
X-Gm-Message-State: AOAM531cuXq08ssrZ8fAK4Kdg6pzanHdw0Ah66xIO4Ui9b6ajo/xQlo1
        GiDQ1qSV13rGBGR5MaoEZ6aKcg==
X-Google-Smtp-Source: ABdhPJw3aoUmQUcvwbwWhKIumYnCx/E7+cjUB82s+Zz4Vy/vCI85MMS9FqQTOhQanhAqebfhanQMSQ==
X-Received: by 2002:a05:6512:1115:b0:479:36b5:b8e2 with SMTP id l21-20020a056512111500b0047936b5b8e2mr14394247lfg.522.1654777433621;
        Thu, 09 Jun 2022 05:23:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:23:53 -0700 (PDT)
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
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/14] dt-bindings: display/msm: hdmi: mark old GPIO properties as deprecated
Date:   Thu,  9 Jun 2022 15:23:38 +0300
Message-Id: <20220609122350.3157529-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
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

Mark obsolete GPIO properties as deprecated. They are not used by
existing device trees. While we are at it, also drop them from the
schema example.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 861678b2bf94..99b07abcd960 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -66,14 +66,17 @@ properties:
 
   qcom,hdmi-tx-mux-en-gpios:
     maxItems: 1
+    deprecated: true
     description: HDMI mux enable pin
 
   qcom,hdmi-tx-mux-sel-gpios:
     maxItems: 1
+    deprecated: true
     description: HDMI mux select pin
 
   qcom,hdmi-tx-mux-lpm-gpios:
     maxItems: 1
+    deprecated: true
     description: HDMI mux lpm pin
 
   '#sound-dai-cells':
-- 
2.35.1

