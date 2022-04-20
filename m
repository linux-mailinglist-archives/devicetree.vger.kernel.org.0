Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43F6A508907
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 15:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378846AbiDTNSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 09:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243708AbiDTNSG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 09:18:06 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E6E15FCD
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:18 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id z8so1992891oix.3
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f8uzj0lQoYO27w9xr/Wf1ZnfpRy78E0dm6v0EIooIf8=;
        b=nzqJXf34O/6OASKEQeW5ACF20Q2GRL7awntPmIwDIagxiIyYCBnkAyuH3qVP9APbNH
         C6RmWWKZoBL5yryXikiHqhWVliw6JaBBWOjSEAPynDMugJUAHqYwq3ikA/W6IWdeKHst
         Jv9PYV9cmuNcAfd2SCysP+lMh7TAGhDnSZ2XFOSmkfbvG3nw4/BhHykasAxOCIdiBx/x
         WTjcOffIsR86gk4BB5jaKBsXJzcRCgSLO3Q9AQhnRIsJjtjEZgzFcVchpQPBe44Gm/dL
         pOgxE9TItlqn38awIWfP+9quAnn1QBrIcFcV7J9R9bNqljvZGgQgP0VGGfi1TmrABDQL
         4rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f8uzj0lQoYO27w9xr/Wf1ZnfpRy78E0dm6v0EIooIf8=;
        b=LQ5pyKBDdZsHzYO44wYcfIIGg96i0zvgd+QmurEyx15lsxKBzn5ZUBadxo53Ej02J0
         AGte9R6mbbTvzs56iaWBTGaL/iDxCEww5+qKSUfjnVCuQSDWXpOMWNWpIbjFpp91dB8J
         h/4WI5Z970yIpaFUMumIh0q4or6BKIwJWUZxpAqUidJg/lBj8UxXQmIdvtR33IqHP2pg
         cf8H+7LMW4Md83LmB0WtnUOyJ4iHWBUbzqeQ7VsecODROYaShSs5EdppUc+YfwX1g1PE
         BIv4b/nAykhRcw2BJBvvOzzv09/j+WExQoW3TPrx2gM527M5XbtIOy06od7j+hg/u40B
         qlDQ==
X-Gm-Message-State: AOAM530jRsR/DCgNMtiiD1daiXsD5jWfyx4NVLm/0v51Joj9ioLzZzyr
        b3eoAWwJfED70aoDYD/FntM=
X-Google-Smtp-Source: ABdhPJxiADZ3VZdfKaYQYD78K2UhVRlreFPYC9Nr9+aG82Yk72f4ikmLNaB8mqU10ODmNVknnhFMkw==
X-Received: by 2002:a05:6808:10d4:b0:322:2f79:bd2c with SMTP id s20-20020a05680810d400b003222f79bd2cmr1671408ois.53.1650460516737;
        Wed, 20 Apr 2022 06:15:16 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:3ce1:a87b:51c0:189d])
        by smtp.gmail.com with ESMTPSA id n66-20020acabd45000000b002ef6c6992e8sm6148916oif.42.2022.04.20.06.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 06:15:16 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for Storopack
Date:   Wed, 20 Apr 2022 10:15:05 -0300
Message-Id: <20220420131507.1032732-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add a vendor prefix entry for Storopack (https://www.storopack.com).

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a1ff0f743e78..e9235ae11e78 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1197,6 +1197,8 @@ patternProperties:
     description: StorLink Semiconductors, Inc.
   "^storm,.*":
     description: Storm Semiconductor, Inc.
+  "^storopack,.*":
+    description: Storopack
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
-- 
2.25.1

