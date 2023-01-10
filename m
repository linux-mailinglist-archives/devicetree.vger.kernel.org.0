Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC877663EE8
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:06:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbjAJLGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:06:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232250AbjAJLF2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:05:28 -0500
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B36F15F2A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:04:34 -0800 (PST)
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69]) by mx-outbound19-51.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 10 Jan 2023 11:04:31 +0000
Received: by mail-pj1-f69.google.com with SMTP id kk14-20020a17090b4a0e00b00226f5087f41so3329198pjb.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pzi/+giNwhMYocHk+FsMxmxfj6asYwPAib37TzNjPAs=;
        b=XSHWXcvKWnqkzCiIuNHGjztJbw7JazHaWnQwKQt20jkRDH4Ud89KWgILhRESUu++Rs
         0OujT6FUtuK6L9GZgDkWiKV1vJWzwUDQB+3VHYzDl8wsDdbHoNUany+pXNbKGY84NQA3
         keCLeh9Rp+0JFGbs0WeLAVV2AOLydK3X+z75U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pzi/+giNwhMYocHk+FsMxmxfj6asYwPAib37TzNjPAs=;
        b=EuGlLfct4DdnVaGT3AbwmMyGwEEi8WfG/P15NFL+2Hc1K4euKipo1SMCGh5pSZYH3p
         OQF7oeb3zu5qeYR1lh8JbPoaRnunBvpN85dSTh/SNmQXKvtAB/qxPYocKHyXvzNpdemd
         DbXmjeVAF13+sXD7tPEHhEeyoCcRY+0K0Mw8STiKrk4sVySayWfBjNXd0HER32clJRTg
         HDBsGz/BZKm24HDVFJ02YkXnhCZFvRuUOiAZDpiOD1L/3SXzooB8fe7BCYsKYDTak/Va
         8Xg2PBOciP4UUbhz4bPjP2YOwI8zl2lSrUg5qXhqjtCRSV4AMitYpjTrNm6O6MYbkfgm
         Gchw==
X-Gm-Message-State: AFqh2kpobSbbpVIvxPIz4W1mLaSe69wdakv1KFuvDyPo++nx0MOJ/ye8
        hMlMvPyaFSQPmKl701tQNDJipNtFyycKGKqEOJpL7mMNgysKtwgi1yJenk38L66xAIJ6mpVkelf
        xQIGY5ERdmkEgcGDd1qohXUhy1cg0Bm/G7XlYPxAnI1RG0YSbO5QmaUpvQQ==
X-Received: by 2002:a17:902:a514:b0:192:f500:e822 with SMTP id s20-20020a170902a51400b00192f500e822mr19668673plq.37.1673348670016;
        Tue, 10 Jan 2023 03:04:30 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtdu4zm9tZT3IwGfW7HXO3vW7JeBQoeaZ9INLMN3Hb8w6Kx/w7M+7Z0elLcUKwf4aktNiA+Gw==
X-Received: by 2002:a17:902:a514:b0:192:f500:e822 with SMTP id s20-20020a170902a51400b00192f500e822mr19668656plq.37.1673348669755;
        Tue, 10 Jan 2023 03:04:29 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id i7-20020a17090332c700b001897a8b537asm7840206plr.221.2023.01.10.03.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 03:04:29 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH V3 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
Date:   Tue, 10 Jan 2023 16:30:50 +0530
Message-Id: <20230110110052.14851-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230110110052.14851-1-sinthu.raja@ti.com>
References: <20230110110052.14851-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1673348670-304915-5398-3479-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.69
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245372 [from 
        cloudscan10-138.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter Kit is a low cost, small form factor board designed for
TI's AM68 SoC which is optimized to provide best in class performance
for industrial applications and add binding for the same.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in V3:
=============
Add Acked-by tag.

Changes in V2:
=============
*Address review comment
 - add entry in alphabetical order.

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-2-sinthu.raja@ti.com/
V2: https://lore.kernel.org/lkml/20221107123852.8063-2-sinthu.raja@ti.com/

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 203faab80142..acbc25108533 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -69,6 +69,7 @@ properties:
       - description: K3 J721s2 SoC
         items:
           - enum:
+              - ti,am68-sk
               - ti,j721s2-evm
           - const: ti,j721s2
 
-- 
2.36.1

