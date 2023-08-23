Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62602786251
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237586AbjHWV0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237556AbjHWV0F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:05 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EDD010C8
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3a7781225b4so4007296b6e.3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825963; x=1693430763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ezW7pQUr4Uiv6KQK4SvVMlAXtgqHJoKutj6sBeDTJY=;
        b=jroPstqhY1FkAery+D4mAdGymhaVSAfUQUTqXyNfVeyohr+95rjStSPHWoqIU1bPd9
         B/6QJAFRJomVTn9mAM3VV9FfQZay0+bqXR3jf3VZVCbafSwuekcwaoifPyo1UKLg+406
         FJH6/jRlL4LHXi4H2nkP70tE6vFgFnGD/Kb5g8unYFWN/yoH9SXX3BIkf0OGrk/4n8q4
         c6JQv2C2OyKIo8rzmy5yeUpgKo4if2QJ/Bv3kRL3VtXTv0MYIN171UYqMLwfGSEuRO31
         g4kZrrjiUJPryngOoJG5aRiwrU3meFF+jhexgN6jOirT+huZrTR/MjvJpPcCZXXvjDIm
         RzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825963; x=1693430763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ezW7pQUr4Uiv6KQK4SvVMlAXtgqHJoKutj6sBeDTJY=;
        b=CJcU/DS7BuyUN8UW4jMGSmVcGQAvjmeGSIrXyYCmsZb2FvitFcY9okZYLEgWv/A49a
         0IeHvYuscLB+LB/t1+/04zbulrcj5YS/uR6SPQYUFzrZWk64Bay5PeIOmId25veWmn1a
         Qa+2FImL44DXSU7e840r1daJFNMIdXjrQPm2qKgzj13REZcOUzgkm0OnqSDHwAKA3QBM
         q0lJFWntrUgGz5Tvg69ZE9H2WJCdC5aRfhJzNL2hHNqZwQbqXbynDPRDO9lb2hd+uXls
         t1Gx4hn23GdW6kaR/GY3YJ42l1owl9eapjhat6JZ00BURyzBStDslXDClz974xU57afP
         0g8w==
X-Gm-Message-State: AOJu0YyCWUMyJ+JkCx24hQAsiW/Lyjea47Y4zVxcuVazA6eunCF98BNn
        6UVRifiHpF9nNIcHV/1spxY=
X-Google-Smtp-Source: AGHT+IGcozbrx2EX1k9iSgPczInukFMXvcIaT6ZxtUZVedRrdqSvuw3I9QTxXsiPO7Bq/ll1+5Nxlg==
X-Received: by 2002:a05:6808:8c8:b0:3a8:84a9:2440 with SMTP id k8-20020a05680808c800b003a884a92440mr1931954oij.25.1692825963253;
        Wed, 23 Aug 2023 14:26:03 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:02 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/8] dt-bindings: display: panel: mipi-dbi-spi: add Saef SF-TC154B
Date:   Wed, 23 Aug 2023 16:25:48 -0500
Message-Id: <20230823212554.378403-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823212554.378403-1-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
MIME-Version: 1.0
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

