Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38C971871A
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjEaQMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjEaQMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:12:38 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E298C0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:37 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-39a3f2668bdso1702868b6e.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGplE1nV9lc+LSJw4EDPm/qvRoPFDbe8Tvoz+cEIQPg=;
        b=VZqUdn9Srnc6U2nOhDJ6NyWAWi5f9BiUn77wrKIEVaQMG6SAD+tS53SZutWByGWUtK
         whPvUKzLSzq7dWZIJgNgLt45pV7MC1/g13yAGNb+wnktI69sq7rtzjelG08bmepfnOXv
         V5oF+8Kc7Kpq1vAVkmWDT7ppcHzU+sF5fXFw08599N+WpTuh6XQ90Bx3hkc+EdSWIkol
         dPn/2nz4OUXObKHkSEbvd3zoMeyZ9PnPBRuozEWp64RkvpPJ1yEtx6frVgrXzAAe6TzW
         TgY/g8gceVHzXD1CnuBA+rCc+a6iGihROdheDgZDJ2Og1QKoQV02REErSWY1QiIjstAB
         RyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGplE1nV9lc+LSJw4EDPm/qvRoPFDbe8Tvoz+cEIQPg=;
        b=XeLN9qGvfUEypsF53Muf9iWGBwHxpkz1aQg/LhuXqKIjU1yJ5cwtnia6VQTrS1ERbc
         2cY+zKNumSzMUHnv7C/NlYflxihVooT1cQdzHuG6NCp+Dbcqaal5clRrOMA2AHd3TFSa
         6olvskiHgN6CJVHmTt0jOex18CS6ilx0Ae1AsMnrhl6VHAlUxn8hh5qLMX/lPIzB/ATG
         CPTcghZ3Agjog0gAtTi2LgmL5tinVWM1mgPg0tcU34J+4RjLIlJig7g7RkNTsWzvo10+
         l74r2Y8ZC08TPY1vjx0KgZIIQy/c0ykjbpqYWCsFmp6VWn1RWv90weW5LiC9dXLWAuoi
         HSxg==
X-Gm-Message-State: AC+VfDzJ3me+/5myGFdNVpuue+OWy8/VKk8HRdj4ggUz3IdeYaEdy9Kl
        /MXHs+v5FjkVQuCHLethxY8=
X-Google-Smtp-Source: ACHHUZ5aL5Vg8BBmveNsZWoFtuXkpFvEdUxfX0YWODm6jMdRDvWSoF7WuMjxbIqd27YXY/MxrowyBQ==
X-Received: by 2002:a05:6808:1792:b0:38d:ed6f:536 with SMTP id bg18-20020a056808179200b0038ded6f0536mr5465620oib.42.1685549556782;
        Wed, 31 May 2023 09:12:36 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:36 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/5] dt-bindings: vendor-prefixes: add Indiedroid
Date:   Wed, 31 May 2023 11:12:18 -0500
Message-Id: <20230531161220.280744-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Indiedroid is a sub-brand of Ameridroid for their line of single board
computers.
https://indiedroid.us/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 82d39ab0231b..580f32086d55 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Integrated Micro-Electronics Inc.
   "^incircuit,.*":
     description: In-Circuit GmbH
+  "^indiedroid,.*":
+    description: Indiedroid
   "^inet-tek,.*":
     description: Shenzhen iNet Mobile Internet Technology Co., Ltd
   "^infineon,.*":
-- 
2.34.1

