Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 407C874C0D6
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 06:19:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbjGIETe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 00:19:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbjGIETc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 00:19:32 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 595E9E4D
        for <devicetree@vger.kernel.org>; Sat,  8 Jul 2023 21:19:30 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fba8f2197bso5233102e87.3
        for <devicetree@vger.kernel.org>; Sat, 08 Jul 2023 21:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688876368; x=1691468368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oi8Fp0++hwDQI/DAfLZemJ+jf8MYYU/jQRwlmY9haCs=;
        b=VO/bld+0I0HysiI8754r00I3bCdlAyMXGQooiO2hSninRTQldu5dSqO6MtSRNUFREQ
         6JJiGVZEGtu8HWLnkUSqJeGdhwxC9s1Qj5HeC9mVuhIpx+SLcW5atOAU5p7QHxIeWJ/Q
         U1pX/2Y91jJ4lFGhpMcMsdiF4YvTXsxu/7DZszOzY8CLnmh8XMU7vLlFU0MERba4lGeN
         2YBtp1eiPtw8or9SCflcsV8tEO3HQZ8Ks5tsSFlI21pd9dQzTuTurJTMeRenP9zb1emc
         qqS/YJVBV3KzYjmGgwf28A7klzocYItCXnUdWayPEFZT+s9+rWwflEKbEa9C/Y31YSSS
         Urhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688876368; x=1691468368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Oi8Fp0++hwDQI/DAfLZemJ+jf8MYYU/jQRwlmY9haCs=;
        b=CqxaXbJLOdwv/xJsfFHERCMIzTpDsKYQJepyfut/rC9RGWCcPEyGOSsfTx9Ax0jNf6
         mAD/sKwfZ7MMCpJmHxPoLvKgURLixU7N1AzvQLMEQUHiA02/mxcd+Y9JzXBPc4Mgovag
         SK4A1tStGKm5RzzvpMla3WBbJhhOjQBdH2U1wsUNbLNZD9513FWmteKV52Cw0YnI+dOo
         GX12wSsBG+EU034ak4VZ9AzJkIsj2CinLORUjBwhYQM3gyEREjFMM7BVnFd96GqLukEj
         bt0OSCP0XPGKgz6avb7MCjFWirYCtqYEVBk687Y29OXwnMJvG3xVj0n/vXxdYGbvaeY3
         hpDg==
X-Gm-Message-State: ABy/qLZ1i05UShHrbviRxKlNsgkPaVLnCYHv6hdkOAhIMp8QGkEEdK+h
        7mJmEbBDzbVBy/fu0C8EkLH9Ow==
X-Google-Smtp-Source: APBJJlGYMixTS72MV0mt6SRAn5KiXgy0NawZbAhvAYNPp9kX+KvymVPJwyCppGhflQtHkhnxmB3klQ==
X-Received: by 2002:a05:6512:3ba4:b0:4f8:8be4:8a82 with SMTP id g36-20020a0565123ba400b004f88be48a82mr8134660lfv.22.1688876368572;
        Sat, 08 Jul 2023 21:19:28 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id r11-20020a19ac4b000000b004fb8603f6e0sm1205851lfc.12.2023.07.08.21.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jul 2023 21:19:28 -0700 (PDT)
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
Subject: [PATCH 1/5] dt-bindings: display: msm: dp-controller: document SM8250 compatible
Date:   Sun,  9 Jul 2023 07:19:22 +0300
Message-Id: <20230709041926.4052245-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709041926.4052245-1-dmitry.baryshkov@linaro.org>
References: <20230709041926.4052245-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It looks like DP controlled on SM8250 is the same as DP controller on
SM8350. Use the SM8350 compatible as fallback for SM8250.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 7a7cf3fb3e6d..a31ec9a4179f 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -28,6 +28,7 @@ properties:
           - qcom,sm8350-dp
       - items:
           - enum:
+              - qcom,sm8250-dp
               - qcom,sm8450-dp
               - qcom,sm8550-dp
           - const: qcom,sm8350-dp
-- 
2.39.2

