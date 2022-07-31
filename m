Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19D21586038
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236819AbiGaRsZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237355AbiGaRsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:24 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EAF3B4A9
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:24 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id t2-20020a17090a4e4200b001f21572f3a4so9771389pjl.0
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=u0pyjBwuqBS9TDZMHPXHLjHSzS4xEdriE2/o2TnWxus=;
        b=cu6U6P2dmp4z1BneHZIj5EPWAkmPFmAt+6vt3ciYdtxGqQmP+Jxjtjx0WJ2evfe5vi
         hhbXXoMn9iBT4kenf6++MphnMDVm4/9FItLUNpDpn8GF+3VnO9kdpR/GBBD3vwcdonkI
         OoK0hrKG9SWbbYmiURZudoezhIhvRDGE6+dO09jobWBOPURqxcX3JyVsSspkUpiJR/mb
         MZqzBkj39Fq2Gla3WQBDH2q/Bx6YtQfwQ9Z6bpEK5ieolOgvGUs0EUIBSW2UAN1NADYy
         8O7Mdh3PML83MokTnxBbg9+df/4kduYSiLDxPog7e2VjhC51gj8EBGYbI1jwpEetkJLY
         ztxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=u0pyjBwuqBS9TDZMHPXHLjHSzS4xEdriE2/o2TnWxus=;
        b=z9M6G/+v0EU8UV4RScFsav4L359WMRjVqIa1PI2y82KdK7zvhTGyUh1XK6/cfnVwHa
         vQjwQywChgCyIoQ+mkiN3XX1yWa2q+sxaGpZNQp/dFVCkhT+ruThpWEKZz4Sk8dG6Rdp
         B8J5JODoXKIAq5EaKdS3eoaUWPGgvM21kNOfSg+jp9Ncry2SsWXhksusHMnhJchenY00
         kDZnSKxhmPv9Mqrzd1NdGfY5eZnNRakS6mipfbNPnxzV+NXUv/K+q5sxqE8EUVl/MFPE
         4VpDp16Ufq2zMoR4nmynFijLvCU18sNEw/and23EXJ6YJbgawwgr+KiBLyFH0rZROe7H
         TS2g==
X-Gm-Message-State: ACgBeo16OASwTUdL1UuwQhjE7jt1q+uD6LWlFW1wTTxGwXu18Tswx44A
        0vR/REIvtv6eQmETq6G16AQdmw==
X-Google-Smtp-Source: AA6agR4mRQp8QxmNCh/081MmHMm13DvQIyxYRcWAxiYR7FC3nFZBF9WTPWVG5qfNPecK6Kc9NHpOPQ==
X-Received: by 2002:a17:90b:3849:b0:1f4:89bb:14dc with SMTP id nl9-20020a17090b384900b001f489bb14dcmr11140650pjb.144.1659289703961;
        Sun, 31 Jul 2022 10:48:23 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:23 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 12/20] dt-bindings: soc: rockchip: Document RV1126 grf
Date:   Sun, 31 Jul 2022 23:17:18 +0530
Message-Id: <20220731174726.72631-13-jagan@edgeble.ai>
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

Document compatible string for Rockchip RV1126 grf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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

