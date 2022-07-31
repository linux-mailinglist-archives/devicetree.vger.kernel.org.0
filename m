Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F222D58603B
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237052AbiGaRsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237125AbiGaRsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:32 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF9EB4A9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id f11-20020a17090a4a8b00b001f2f7e32d03so10449637pjh.0
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=SIiloTz/G0Na67mRN9ue2I+l1atGJUqobZ9P3OaTVRA=;
        b=kPqF0C4Y+/hf4qnCIgEGvBMYaNS5jf6R7a1C6csTxbFYyUeuXEYCjcCInyhPMAYke1
         +GsMjm0f2DmoFg5mOw2AKvnWBvXnCdIWqs/0aZxMYydynL5fROBwiXQ0BWOU1Rogbg63
         Q3KWBOZRYH2HAK5ZGOAkNy0PJZgj5xJbInjnjiGl6U9vBf4tEyvqGwDZ/A6RkbmOMnmp
         cRjVZoLLs/pBd9Fl0VZX6YzjhfC/F6YEz23C4kBfmbxPXu7mPjfKhovRqWgmAdKo2A2V
         UTcYrSy6tw3Uwf4biRN65xzzd6aLcTZHLUwvQR3reUr+G2PJw0sYNLSUw6+E+w2Lle8M
         wCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=SIiloTz/G0Na67mRN9ue2I+l1atGJUqobZ9P3OaTVRA=;
        b=1uxYAvgczuiWWux8ISN0p1OJu29AA9aRYZhhvLr+BUC00eFUNLIqfrE04YtGIqH11R
         2NgiBHB5u9fgCyDFhz+GLPX4PU9IMWxJW/ERkFGFXUmkhrsXzr+DFz8jM+vnOLRVeg6D
         Kd6LjzOWA7E+e0hMopEkUtDGc0CDVBxu4yC4oHcF4OI88ad2ROdpJZDi95AmCFU0WqhX
         JP6ROuSxNe/MOgfQIFPSHu2AvMA1olm2KH0CjGi6oLiekjXajQyXSMUk1Hug02Ojkta2
         pWIB75hJ6f59JOWMeC+pMEF1IlvlhtC9wEG/S7CbfqgixYzpB7M4kE8MrasPyxnS0DAa
         RZ+Q==
X-Gm-Message-State: ACgBeo1zQT7K08KAlAcp3uFiNh2Ni3nfTT+rDYiEhs5AWTlda+4e17SI
        es607AV5dOyTSTA/d11Mo4Cs0A==
X-Google-Smtp-Source: AA6agR72yDI+dAZtETaByrYY69Jt1PW0BwapJ13DcveuwyNpG+pWvYogRud4N2OqyRJfYFa8Fck88Q==
X-Received: by 2002:a17:903:2041:b0:16d:a78a:efd9 with SMTP id q1-20020a170903204100b0016da78aefd9mr13184434pla.71.1659289711299;
        Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Lee Jones <lee.jones@linaro.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 14/20] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
Date:   Sun, 31 Jul 2022 23:17:20 +0530
Message-Id: <20220731174726.72631-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for Rockchip RV1126 QoS registers.

Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fb784045013f..32cd2ebccaf2 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rv1126-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.25.1

