Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E962857F179
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238678AbiGWUpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238585AbiGWUpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:17 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6373D658A
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:15 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id z3so7252081plb.1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ezgIU92TGTh3k+nvQV1T8rkmKebJlhTSHvtDSPStOw0=;
        b=j0nENz6mw1+vYU4uyoRbbQQFN66er97J7sSik2o+dJa0UDH3Wd5vYdGooDZ/EHNOMn
         +2oQwrYizlF/GPH4zWINTs9bwQrk9/2Pbb4SOxTz2ktcjyckzLHXV56tjvmQQIF867li
         PUcNHjhC+dw8y5qsIPBrTMAGhcb5UGfbjfx0tFTKsHB+kRx51ikj0xWq4uiI8pYn9H6e
         X/voKuZWF3ZgAvt8ZYwAk+NJalXdzkhLTqF/yJgo1z0V6OoutZQBgARJg8LkSpnEjxVz
         005BxGupv6ULOgXEuCQ9h1rIsciYzo2LLeSWIG+X7ee+tYi20yHM/2+F/6+i4kmprefF
         rKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ezgIU92TGTh3k+nvQV1T8rkmKebJlhTSHvtDSPStOw0=;
        b=4QVqyPBzRWyHJEbT9ieOPfQyqmev4A++qIxet+Nbkkyp/DP4sznCdTEO+2IEi5AY1t
         KOWtdmAB72rWNtpMm3y2EsZNUEAJBaO08XgvSXuMMbrM31NEsj0+4wO+bZrsawtIiSwF
         hNJvnRkepvAU3gce8vNGuXaGEG3ZN6Zz2mPd0zrbKnYxr+T03ZGUiKNxmzR4t8juahRb
         V8KV51gU7Rr9Z4/9TkNsLTzR2KYqqscaSfEkOgHDqqB49HXEIduXuBq4Iod1tI6CCgud
         8pKf8cYZ1dD0unK/Ouu7uhqKFl8XDxwB3xPIm6/HZ3dtOsoeLJWRt1p7kI06ZatRfiwZ
         vSCg==
X-Gm-Message-State: AJIora/sawO/Bc/eiI+MDPUMOe0iPXu/2XAJ3xRmW5Cd7AC8al2OEWHO
        KpOkEERALS40Ceyb+voPGRnsPw==
X-Google-Smtp-Source: AGRyM1ujJGBg20yZAb2hOyJvhfvF+qbkcNy5mluhGBezoBEAxHIj9bUKUcByvp9+vXdemwgC/bP9dQ==
X-Received: by 2002:a17:90a:7a8b:b0:1f0:80db:129c with SMTP id q11-20020a17090a7a8b00b001f080db129cmr6537103pjf.209.1658609115137;
        Sat, 23 Jul 2022 13:45:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:14 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
Date:   Sun, 24 Jul 2022 02:13:29 +0530
Message-Id: <20220723204335.750095-17-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
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
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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

