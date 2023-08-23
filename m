Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A78A1786248
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237568AbjHWV0G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238157AbjHWV0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:04 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B94910DA
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:03 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3a85cc7304fso2408258b6e.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825962; x=1693430762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4T+nedyKV39uMXbBu+mfzPEhqpgVEZ6od6RS1A1F/g=;
        b=l37Mr0YCIkO+taC5fzntK1Wc2g5XkZDPIyDxCk3AGz7vUYtAsgvsIO+UCnKr20nJuT
         Pb4ZSk19Rs5vIPktjHBECn2uyLdppL5tp7gGJjTkhV7G9CtsYXIrqo8Ot96Vwx7WK9v5
         okfYUbO5ZBsSD91WCFlNPxU+relyvaM768C/eDSlHiGj5OTasot6g8Nm5uPfKBasNpms
         wwTEE/eR3lBTUZoBbj89Vm6oeehK9VqLLY3+fkVT6IDTFt+x+v3Obtixj7EaixMA62Uv
         Y5iSkXPuIe+wVEoPnLBHe3NmMa7y8kIXexBErUl7SXd7NXHEx4DB5Vc3c/SWzU9sfcXe
         HlfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825962; x=1693430762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k4T+nedyKV39uMXbBu+mfzPEhqpgVEZ6od6RS1A1F/g=;
        b=P5DgRdciNX/Ox1tZX0sTyl6Ytd5MtLWbKUsCk1ksB2tC4mDdHRzQNIQvD27k4wm9PH
         /KVZiWaVAGbRL30Qb5NQCv7+WU2t/ozV/X8xFm5nVd5kZXSeR/DBBMud/4BMdtbL7T7N
         jXMeyZ1QiZO/DrNy7wb7Fx2Tq5LUmyvn8B9fPBmrEphbnsJjhfrQkBik3r48i1WbYb0F
         wbtvJgjAYud5z+AXF7v5p9QxkWht8nFJ2HOhu2q0sDsjv7gxz9TL3/wBE9SUBns+9I9r
         E33GR42Ahv1gZulB9i+kjRVk3W+8oI8CX/+ZFdUuQr2ztIPvZwJi/vArvNA+BwidWvnm
         CH7A==
X-Gm-Message-State: AOJu0YxDJd3VJ3vgEBFQiqdrY2434e7PjzK5OSP+Z9rrbKld3+5XJMm3
        UdqN2M1Qt1Q4fZ3B0qh7q4k=
X-Google-Smtp-Source: AGHT+IGZVd1pnjk28+Kjchg1BoTxizV6CJnH3+9xSigjOHPE8gFkfFvb0aiotjWzodLt4nP+ktkqZQ==
X-Received: by 2002:a05:6808:138b:b0:3a8:5133:483b with SMTP id c11-20020a056808138b00b003a85133483bmr15513983oiw.31.1692825962541;
        Wed, 23 Aug 2023 14:26:02 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.01
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
Subject: [PATCH V3 1/8] dt-bindings: vendor-prefixes: document Saef Technology
Date:   Wed, 23 Aug 2023 16:25:47 -0500
Message-Id: <20230823212554.378403-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823212554.378403-1-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Document Saef Technology (https://www.saefdisplay.com/).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index af60bf1a6664..dda90f9d264b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1151,6 +1151,8 @@ patternProperties:
     description: Shenzhen Roofull Technology Co, Ltd
   "^roseapplepi,.*":
     description: RoseapplePi.org
+  "^saef,.*":
+    description: Saef Technology Limited
   "^samsung,.*":
     description: Samsung Semiconductor
   "^samtec,.*":
-- 
2.34.1

