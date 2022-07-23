Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B8A957F15E
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbiGWUn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGWUn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:43:59 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5B31B79C
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:43:58 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id pc13so7083575pjb.4
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KBhOyhDoK3sxhLtcr8Xy+xT2jAn2a/kwO3uxKN05sS0=;
        b=BnpOTLo/dlg3zx1+DhN9Y3ZtHLiYxwWipI2wN9xjVNL9/ywvcab9bdZcIX2hAO44Nl
         PaazD4gPvcPaUI3Lt6/SwqBAblDx9wO/oCbjt0oaf6WaiGPTxYpYGXOHOqX7F+meTk2v
         YpVAnzVXkcW+P/2tMAuCKLFAD5AggBLM9HzEPpbAtpr7Jg2Gd3Zy9i4bWJi8+kuN/rQS
         RHS4pBPav7bY5dyMT6C1tpn9ajf/4urfSQwGf7xLQbIlx4jOLRiMrESDBPxjWECjlAHS
         RhHpWJE2rNJUa9D4X54FjrzZbQwbnkN7XDKFKBsXWfQ8faf7AEz/aYhKWHDXqjhAJEYh
         sVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KBhOyhDoK3sxhLtcr8Xy+xT2jAn2a/kwO3uxKN05sS0=;
        b=gBqDn69RD63CwFaJ0apmN8losOkEXLSgkNdFCL70ZuLxYeqRayffi6pOKX2O9gdc8h
         3vEz3Nrc55i0CWoZX7owpojFwM8gtRL/ddfl1wCp+oHEG8XuR4ZoCbeOtC7M9gJ7fxEr
         o/HtiqyA/4LHadi7qnnrh8FoAMqAKvp22osMQxRmgNvghbGI718gZ1e6pFE5U6osZ1mU
         SL7LnUXspA/1MrAL2rqcpWvcINagY22kRPA/U1Kjz0jcaeLwy8zvj7eDBQ6M1v5NYuQ9
         z6SAMLFJXDfWhuz0BxGhTfi0hyFABkX4lEIfnz/FrpLVrJ/kE6iIyi2EkNJ+oPlC83R7
         f8mg==
X-Gm-Message-State: AJIora85vlww8v8xF/xjuWJiUVIHwsI5V5Tbb1GUwLVfpAOmmIfZRNjp
        TQqgyQ1I0zgl8lo9aUv3QiSW0A==
X-Google-Smtp-Source: AGRyM1scI/hKO4kb2xQTyhDjnZAYLF1xG2SbynAWTlHBX0aR2EbEtob087/GqSugK/X7/PvVWxOa2A==
X-Received: by 2002:a17:902:8494:b0:16b:fdca:1249 with SMTP id c20-20020a170902849400b0016bfdca1249mr5871077plo.97.1658609038244;
        Sat, 23 Jul 2022 13:43:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:43:57 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 01/22] dt-bindings: power: rockchip: Document RV1126 power-controller
Date:   Sun, 24 Jul 2022 02:13:14 +0530
Message-Id: <20220723204335.750095-2-jagan@edgeble.ai>
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

Document dt-bindings for RV1126 power-controller.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..602f08a76f2c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1

