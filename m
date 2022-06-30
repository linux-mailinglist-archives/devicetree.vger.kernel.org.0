Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14E95619DE
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 14:08:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233466AbiF3MIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 08:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233087AbiF3MIx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 08:08:53 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F24428727
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:08:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k22so26976888wrd.6
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ep1P6XTEaNexZkYvrMILNzV0+nB7s8j8xxQKFiKCkDY=;
        b=S4AfW7peDmO0EaxFy5FO+eirXPDcekVZNcBYSKJovu4k6tn8S5q5i6LIEJCm1MqJTi
         kAPHski5fwgglMwM15fGoISZgEhnpQv2KWG+MUWwYq+6Y4wxnOaGlEZzsihmznkRofnY
         H2hv/iuskUHAdzB0vpWeCVL7SPPS/1XFA1A2DJQ2ozAyt7ZwbDwkWmPwTAEaD9H8Uyvw
         baf1CZBzY16C2nLwo/kuHVJvSuS+43jHLtsl6QCv8wATbaaFLuTprc2GwMiwuJVhT4Qh
         ialNz9wDnepcTnPQUugR4wtbw1Y56m3+d9VX+XmcNeSXkXSuOLobf1etTS579hldonbt
         P/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ep1P6XTEaNexZkYvrMILNzV0+nB7s8j8xxQKFiKCkDY=;
        b=EyvGIAD7I1wqSVmaee0+JFm8bnx9mM8Yz/9wzXmxETdKruv345D669MBfMUbfXOCPz
         oQ65lBQgJD/FmQCuQKZUuVwRVY+yVXMM6iVKpjM/mSJBwMHc44uckrO1i5PjAt1gJtdK
         BDKVbq5wcD3IFz2dO47QPmmwO4vxXEwEmIV+wzaEk6MUtNjA9VDuNlUQdrTGIpU36TwY
         UKk/W2NukeRBkW01cenyKyKPv7ivvrly82a8N3j6biZJGStd5inEdl7UywzfYeWtExTB
         nwSedcWC0ve9t/bEjogKYXNT6r3Xr4bGgYS31XYKxcmvmnGhuBnvKsKJuYdGhKGwkXYk
         rVRQ==
X-Gm-Message-State: AJIora/FuzjukGqNwk786xfg9ALHdr9W5SYVVVkXMgTL0LMNFLEbkrqt
        vucGJJsqVzS298s1RUNKXWNqaQ==
X-Google-Smtp-Source: AGRyM1vDMAgZbp7JXmzOGvCCpcaX+CS9YGuecoWNWTHwFWjrmB4Ec+v67bqswhRJqQqPUfhb0pkp8Q==
X-Received: by 2002:a05:6000:1147:b0:21b:93db:701a with SMTP id d7-20020a056000114700b0021b93db701amr7868034wrx.447.1656590930621;
        Thu, 30 Jun 2022 05:08:50 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m1-20020a7bcb81000000b003a05621dc53sm6286532wmi.29.2022.06.30.05.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 05:08:50 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 2/7] dt-bindings: msm: dsi: Fix operating-points-v2 constraint
Date:   Thu, 30 Jun 2022 13:08:40 +0100
Message-Id: <20220630120845.3356144-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The existing msm8916.dtsi does not depend on nor require operating points.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 717a5d255ffe4..101adec8d9152 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -137,7 +137,6 @@ required:
   - assigned-clocks
   - assigned-clock-parents
   - power-domains
-  - operating-points-v2
   - ports
 
 additionalProperties: false
-- 
2.36.1

