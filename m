Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF4B85B0996
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbiIGQFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiIGQEc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:32 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B0FBD1D8
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:02:55 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id 9so11823772plj.11
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=DM269c0G1KfiTl5871k3NtiG3KLHFZaYqcPaiH2FJYQ=;
        b=tsCy0bfnsgMGnEYSU0bAxu3s+9UmIvfkWJL6ml9wCL2uMRxLUOOwBKkOLdRzvzhvtG
         Qi0oVXk5eRuhhcG1gSlPBflH6OoxyruvWyng1nMoC1f+cN78JHwqYXU0LwYxr9Zpokap
         4pRTADIK8X49lY2uP2U6Zv0KfygtZhXKzYZgUU2YdNUkIm5n4/VUmxpK1iJeDY1QSTfJ
         kE8reL76A1urMQmShqoy6zghI4QV8nWLZv2qk90LIZxQBH1UWRWM1IZ0Q/JGN5I6AGDY
         tDXZqyBbQ2G1RHZEsTEt1iBWaPT39vOVIj4mBcAkmjFMT0aGqCGHhTYaUdsmSX9oitmW
         EOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=DM269c0G1KfiTl5871k3NtiG3KLHFZaYqcPaiH2FJYQ=;
        b=qykbytyiK2MCXWF6NglT15f6lLKY8ehDo5JPBHLxj1oka3aKG22lzTp9f013N1eNmx
         Kemo2eZ6wLGesz9rJgWqdPGxsqUjiqpc65dar5yeiNWuMTY4RyOdqGAoBHJqdvBTbTaU
         4Dowb+Dd36l6RaQ+GrPfuxXLeCA89RM8F4HOXbuwRIBrKiIUSxU+zCiF5bDkwzJFkAJN
         Yns36idSTaa5cZ0cLUeUf/4uX5iJ8kX32KAxXO4fVFvj1yTbUhh/ii0CUqKEHZDQSh/J
         6XqsGqFpTBx4amEmN0Qhfe1XxRV2TA99t+iGnurvEqrFcbbjJYGvMjNnijwQUKhvcyUF
         j5GQ==
X-Gm-Message-State: ACgBeo0lA+N8wvBwjirBaoHpOZ52RIsp3EbN4HuaUMVqgmkAJdpTT/W/
        NuhTnOQwnN3NgWxxmKi7mnVR9A==
X-Google-Smtp-Source: AA6agR7dj2KWtbEKj+YDviIX1M4kvbtC3UNmkNx7/ZhW16lJu9UqVXnoqROU+O4taP3RZuyNJAt9pA==
X-Received: by 2002:a17:902:a502:b0:172:5f2a:9e35 with SMTP id s2-20020a170902a50200b001725f2a9e35mr4280672plq.79.1662566574247;
        Wed, 07 Sep 2022 09:02:54 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:53 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 06/13] dt-bindings: soc: rockchip: Document RV1126 grf
Date:   Wed,  7 Sep 2022 21:32:00 +0530
Message-Id: <20220907160207.3845791-7-jagan@edgeble.ai>
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

Document compatible string for Rockchip RV1126 grf.

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
index 97301c470173..3e8d609fef09 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -48,6 +48,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

