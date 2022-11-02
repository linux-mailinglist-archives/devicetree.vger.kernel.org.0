Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68644617180
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 00:13:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbiKBXNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 19:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbiKBXNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 19:13:15 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91FBABC0C
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 16:13:13 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id c25so206082ljr.8
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 16:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V99md7rLtpNqzsDzhmBdbw6JcMGG4OCEBg8fYBcn1Kk=;
        b=ozkbiwshk7uZ/S7wP5Qerle/gYtFRrnLifxjIaxVrsh2YJ9z6yTy9NJGjk+bYXP9MC
         8M64a4PMRYiDUbW3f7pp+7SMLJeWzaiRTlZ6Kk3112UxNV/UAEelGeBe20P/hLBwhb2N
         64qTz9cR+QT2qt9ixGayXWLdZAmFesApco9GsoMQG3ymd5SHqF2EM061HrsrzTOXRLP0
         x1AeP6LaMdzoI11g4stgG6B+5qX2jmHnfI2xNMvKfLAGpCdzhGSblu5/vjhAJrvO/NpQ
         2s0P3TjA1N6zzwxgFU36LLOR3J1HXDDT4zzrKbN1a6cPJPPpf9GiITKqlW0MN71My+JW
         ycFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V99md7rLtpNqzsDzhmBdbw6JcMGG4OCEBg8fYBcn1Kk=;
        b=X9tzjTnMvy/fzC1PwlR38kBDxm8Zu2rZ7GFfQN5zs7ZxuHwRjAfbA4Ou6Im72A9NBG
         IaST8LX/hDuCHWcUYghFwkisb5rcFC9xNP4fv1aqgqEq3ha/KA8qIyVoheYq23hqA1UT
         W2nR++a2JUa21jG3tR5Xq2LezZnICSFBeinFlGs4NuKez9UYGtD1vLQGjeOlvXsfRk+4
         qRr7A3ff44wKuCE4jeImgtAIJy7VXov7GnRTNI86xKHnbx3gcCh5luzR001fasn+JxHN
         KVqTET8EDzpEf8m99LFVJK8IJND7HFkTtfiNhAaFuKcZ1Ty4lEvEyh1rUp8zsHBAeXQ4
         NPBw==
X-Gm-Message-State: ACrzQf3WyDQdZVjlQoBrURyiorvJOTLTXifkfcdIojpxvkSsGKXPmdiY
        NtW7dC5rH3G5Spi1L5eZokIlgQ==
X-Google-Smtp-Source: AMsMyM79ZwE9Kn2WHfgZ0XRTpIxaxrCh50+4YuBR56AUy//VpPQBI/VtDpNMjGhcJSYwUpZ69RQgyQ==
X-Received: by 2002:a05:651c:22d:b0:277:22ec:8dd8 with SMTP id z13-20020a05651c022d00b0027722ec8dd8mr9744878ljn.101.1667430791974;
        Wed, 02 Nov 2022 16:13:11 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id m6-20020a056512114600b004b0a1e77cb6sm1636134lfg.139.2022.11.02.16.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 16:13:11 -0700 (PDT)
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
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 1/8] dt-bindings: display/msm/dsi-controller-main: allow defining opp-table
Date:   Thu,  3 Nov 2022 02:13:02 +0300
Message-Id: <20221102231309.583587-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221102231309.583587-1-dmitry.baryshkov@linaro.org>
References: <20221102231309.583587-1-dmitry.baryshkov@linaro.org>
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

Allow defining DSI OPP table inside the DSI controller node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 3b609c19e0bc..c37dd9503da0 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -80,6 +80,9 @@ properties:
 
   operating-points-v2: true
 
+  opp-table:
+    type: object
+
   ports:
     $ref: "/schemas/graph.yaml#/properties/ports"
     description: |
-- 
2.35.1

