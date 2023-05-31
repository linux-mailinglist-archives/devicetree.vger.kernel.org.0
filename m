Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF46371871B
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:12:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbjEaQMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjEaQMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:12:39 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA85E2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:38 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3985f70cf1bso3596374b6e.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/I9p4uFE4LhLrQniPcbipsYybg79wk4q2UammLd6/vI=;
        b=TRPuwPAcDLwuzn+azD92osTTZuJ6mH59z5UG01urBCMvZkk3dfG/xitgNIUWz/OaTc
         42POUp+VJ6c4XdzMgXlpM+xCzIlA1qYpwt5wRRDzqIq0VWvRf7NBRF8HHjBtlcSexgM/
         KVyzyK//jd4p8NcrmAMEoUpPUMro4dVblyi8e61esCqcRDFF5NsqygLEb7PyMOYqQZ0+
         mXX87z90bLyCIVI/eQ+TDu9nDKgkBFdv6ikMwBzSAtZL4SJQHT2SojE2/51RJk3kLyVU
         pIOf4lwqLmTYTlP1Tnp6gcbbHkSpTPghMmQrdr1ZkuJW9+nGMaWrJ0wa/rcMn9ID47ee
         izYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549558; x=1688141558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/I9p4uFE4LhLrQniPcbipsYybg79wk4q2UammLd6/vI=;
        b=VvHe4vGj2D+z5JALd1y8j0/OMbgYZigx7pOLE+QPQf92vZp5C8SM4TmIw5UtCXRswY
         JafiBri4Fvoz8rgDxsGYQtzZrTVHVEnExkV1VfDjSqsPyAwVrTyM51rZeERJrfggXZeM
         IZK8A5yVfx4tX/HNT0H07jHuwE09MKicVKawWqAEyQpCb7iKv795NzsJtWFyB7aYQQzO
         1Jhi+YDmFynSgKyTjv8+tpPTbf1wbwZWiMW1Q2qkZH/bK4jWilXd3qyL1A50bE1cfNub
         zxMZX8lxXH4LYY0+KUhmrwElHR27rTRQ2prjhAgnGp1K9ORsDe4JSNGwwGI9UQPOTpo2
         oQEw==
X-Gm-Message-State: AC+VfDzXckAJUrrliJOHd6FhZrkwTRhTyqA+Wg2Fyu3BAcXagbWwQOuI
        FXVsneuPmiBaXywlD8J1mtM=
X-Google-Smtp-Source: ACHHUZ7n9fOl/FXDCpJMDjt+lJNn7ElHIgFZ4cemt40GeeFs9e3f9NMl3FlZotnTzP/s2kF+4viTcg==
X-Received: by 2002:a05:6808:298a:b0:398:26f0:67b1 with SMTP id ex10-20020a056808298a00b0039826f067b1mr3547101oib.7.1685549557610;
        Wed, 31 May 2023 09:12:37 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:37 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V2 4/5] dt-bindings: arm: rockchip: Add Indiedroid Nova
Date:   Wed, 31 May 2023 11:12:19 -0500
Message-Id: <20230531161220.280744-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add Indiedroid Nova, an rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..3c5a204bcd81 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -542,6 +542,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Indiedroid Nova SBC
+        items:
+          - const: indiedroid,nova
+          - const: rockchip,rk3588s
+
       - description: Khadas Edge2 series boards
         items:
           - const: khadas,edge2
-- 
2.34.1

