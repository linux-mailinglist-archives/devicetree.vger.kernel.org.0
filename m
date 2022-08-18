Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250ED598357
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234222AbiHRMmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244713AbiHRMma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:30 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF2AB285F
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:28 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id m2so1408094pls.4
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=4s0QS1YI0paySYsrNb2nScBUXsP2sNl5MUjElvRFqho=;
        b=XAD0qX9CZDcoAwKOoHt4O2qLebesJ8pIPf4PK7e0q6QLPA+C9Z9uQ+qhtRU39t5k3p
         7TUYo5LaXpEeN83eUUZAz2TP+4JGSrY78VWZea83C1zC/FeL91fE3jvrVVUA0Cid1ze5
         MA31HEw6HGCR0VuEQS50cei5p0lYf6kuBs/rS0rk0NNP/o421lyj8n0vAfNUhNBQFouG
         Sx/IHtzcRaZfV1EhgyedSPieLZ8HyZ/5hDoPq/wSdR7Z0Xs/kDaLMXhmkLpPlG2ad9Dn
         wr4nozBvTIGIYfhILZnnCJWKBeH30Fl+IPfACWarQfB7rG0esj7AuNkRlK/FluZ9BkHQ
         6OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=4s0QS1YI0paySYsrNb2nScBUXsP2sNl5MUjElvRFqho=;
        b=10pSam8wy2rhNy1twDbycF3+vnFhu9fXu/juKspwMYo0TZ3MNB5fEIaqleTL5htosW
         s1Dtk9WGvZgWQ0ucFlSBh1eG2D//UxF0VpV07GjMDMxOPeRtRjOO+IsXu8IpxPmlZKLY
         ezrXtivfu1WcO/JXCbYZ/1m/zMA4zR8dEFM91dN0Qyy6fsOlVIHn7EDYn3vTkMlBh9Y9
         hEZleSZB37ezKlTJWBfQAr21BdtZbbW6+SkJQI6eRwj8aWhwnWj7EE6/AXE11B4yDunz
         WPctS481h6oW7WdG7I19Rh2jATQGzjjCIN8V0Lo6EKh/Y5fyc624jd8g6Z8kcV5pTw7O
         kgJQ==
X-Gm-Message-State: ACgBeo1H6JQ5BvvFQA/U77sn+Gaxx+ecoeHNJZJy67QmjPrHLNjAVBnL
        buJvzEYU4UPQnyglWalXas89gA==
X-Google-Smtp-Source: AA6agR6SU9vsvktMtY8/dhE38ozK75m/CFOIHLtERKeF96QosbQG74dWJWMYkTWZgzm6YNLdAbd5mw==
X-Received: by 2002:a17:90b:1c82:b0:1ee:eb41:b141 with SMTP id oo2-20020a17090b1c8200b001eeeb41b141mr2989422pjb.143.1660826547926;
        Thu, 18 Aug 2022 05:42:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:27 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 12/19] dt-bindings: soc: rockchip: Document RV1126 grf
Date:   Thu, 18 Aug 2022 18:11:25 +0530
Message-Id: <20220818124132.125304-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Rockchip RV1126 grf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..dd7090d668f5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -45,6 +45,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

