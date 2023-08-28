Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32D0278B729
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232950AbjH1SU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232981AbjH1ST4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:56 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C878B18D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bee392fe9dso2754175a34.1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246793; x=1693851593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cgB3IqJrXAj8oKd7QiZ8/Y1UHori5BAQnvTMsmF5s60=;
        b=emlo1oY1fjLKx1nfmRhunHa1ZLMVFG1Kl3mGWb6LOsK0H4MWzrik4RvC1/HjxIYXpV
         rqICPiphmJU7pW5cV1gM27HpAiO8KnH6cr8AWzh8VmJzb7yyHqabCnTSqc5nEz3mTDPP
         6pSrCe7pJgljPx5M4LVzBfq9wF3ztwOHqocpKSSStvYe/vdDPKPmALbfhhrTULtOCHnb
         JFDo3D8z0n/T3XF1dNhLPAKAmNnlcwOd16GXz1kRyRH5fOpIHCA2CsgCwN6bCfDtra28
         yGcvROJJdt9WWswS86ARiQEZJqeClLttWmso7ThB9pzNL6yIHyE2sFMEgyx5rX9RBkHa
         KiMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246793; x=1693851593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cgB3IqJrXAj8oKd7QiZ8/Y1UHori5BAQnvTMsmF5s60=;
        b=dvdB2gOXsT0lnDB/rk+a/GibAwHEY9kuztjbpv740lhK2FKXcL5BOFUMcv9SEIh4r6
         rprqHBEoVaISePjCIUYx01BdNZVM/ohgMxtUPwIaJXrkwcxYJ9Utw1YLtcR3a+RtTKxa
         lxlciBpAmnLZ7Fj4BEYkkjmzt87Dun2b87d8NGQB/gLbJT6nTBawEz1BQN8CU/iYaIwO
         Lc+esONeTZRZvh9Ug7hrE77cPDdRyXnHvjfiMo7wgunm1DUWcia7EwgFk5+fFHzmnJaR
         lCR6uWxxTleBaDQrXND+1CZahmIX00+8ksC68hBZDdQivBdYqKu37+xU9SfxQl+JaeQf
         Mjdg==
X-Gm-Message-State: AOJu0YwORCbQ0AT2PHzBbm/bcRehG6lXUVJVxSVy/wsw5tcoTc7hZABR
        XBVU5CFlikw8PvMGYT0mKME=
X-Google-Smtp-Source: AGHT+IEmKCtb54J+XiDlHGf7KJYkOzJBfYBjK1T3HYeXruK6ZpmURNOhu0q1QRLPJRCeQlH4McXVTw==
X-Received: by 2002:a05:6870:d612:b0:1bf:88c8:7919 with SMTP id a18-20020a056870d61200b001bf88c87919mr13941715oaq.46.1693246793094;
        Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:52 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V4 2/8] dt-bindings: display: panel: mipi-dbi-spi: add Saef  SF-TC154B
Date:   Mon, 28 Aug 2023 13:19:35 -0500
Message-Id: <20230828181941.1609894-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Saef SF-TC154B is a 1.54 inch 240x240 square panel with a MIPI DBI
compatible interface. The panel is used on the Anbernic RG-Nano
handheld gaming device.

The initialization of the panel requires a firmware binary which can
be made with the mipi-dbi-cmd[1] tool. The command sequence needed
can be found in both source[2] and binary form[3].

[1]: https://github.com/notro/panel-mipi-dbi
[2]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.txt
[3]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.bin

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Noralf Trønnes <noralf@tronnes.org>
---
 .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
index 2f0238b770eb..04cc5bfce051 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
@@ -66,6 +66,7 @@ properties:
   compatible:
     items:
       - enum:
+          - saef,sftc154b
           - sainsmart18
           - shineworld,lh133k
       - const: panel-mipi-dbi-spi
-- 
2.34.1

