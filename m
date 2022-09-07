Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E3DB5B099A
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbiIGQFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbiIGQEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:41 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 502A4BCCF4
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:02:59 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id s14so5451295plr.4
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nZEInlFqw0bnOa6KKOyfF1WpTEi9Ajya48Xykuyb48Y=;
        b=tY+kAuk43w5iAY1SM8lPQWXow2Jv43+OLjMXSNvrFaCSrw6D6S9seYnbNmUXR5iIf3
         SVNPl3C+bZ4G3t0uN63fXNV9DBCsxPz7qMgY3yCWXkG24/saEFBa31CUsfWqmbDfy/ep
         VrAgpjAPAkDMzmffKOeUjD+7sBzy+1EasVAa8en0LMLbb0Cq0QrlYfut415tgmH59+sr
         v/ORDAdquGOZt4rYWIwlRxAk7/68RpF34lJNRcjoY4q+4ou6fg3Q9ouZmq9iJY4LTqEU
         vbDblZyeSyUwemkdlZPzMS16eNdtysm7/oaNDyDPEYycr+VUIIDwfOX599tL/zZhPTCH
         NExg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nZEInlFqw0bnOa6KKOyfF1WpTEi9Ajya48Xykuyb48Y=;
        b=ek4iO5XMBoI0wETZXj8XNYkEZIpX4q/yOFwXvqh2dNhFgfHHTVEg6d/pB17my9vgPv
         Fxil6DvC6z5hdKkg8KvInd87P1irhiNOSqhNGRjAJmQG3wlVwFz3LLZJARnGWRinKNgB
         mEfjtKfb6dpQvYVsktjAe4rZioSYElm8su16/Jg0pCEqhEnHzIalF4HQJxPJsQX0+qb8
         gWIp41HquPh09hvWFjrm1RwhyRJHEDz5O3Tq71a5gq+Ft9YOCceCW2C+6YqOfVQ6V7Zk
         bO3TcT/DCx4By07jSXM7EjLxE6nCrseC1qQpqgRx6gSg5ldecRpsFhS7zG84LVfuYbAp
         5Z2A==
X-Gm-Message-State: ACgBeo2Pl94+4pyba1G09jxyicb5uiobZLoyraocjcAb2qsM1jPr+GU2
        CH3e6moRfkAL6d9kf4gf790XMQ==
X-Google-Smtp-Source: AA6agR5rCEzI/3ZE90WpqQdK5pUpfoELinVP9lKodHwDheMqkAWSfUcywA4FJVQa5m7Q2xy14S1aCg==
X-Received: by 2002:a17:902:ec8f:b0:176:ae70:dc98 with SMTP id x15-20020a170902ec8f00b00176ae70dc98mr4133471plg.139.1662566578459;
        Wed, 07 Sep 2022 09:02:58 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:58 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 07/13] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date:   Wed,  7 Sep 2022 21:32:01 +0530
Message-Id: <20220907160207.3845791-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
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

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 3e8d609fef09..c53f0f5a0b31 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -49,6 +49,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

