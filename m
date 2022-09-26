Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 196425EB10A
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 21:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbiIZTOi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 15:14:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbiIZTOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 15:14:36 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4FC9240A9
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:35 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id d74-20020a4a524d000000b004755f8aae16so1263078oob.11
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 12:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=MR8x5tCxo5+AsVIz5WY2dO7QkwtS6s1ctIFSET3Abos=;
        b=L65alZtt01iELtJ1IiE7y7QJwZaYNPYo4cwTkNruRqcegN1RUG6lT+YA1Bff/H8uCZ
         lwXf6/hOGdeueLuNLyEtr/GTdRB1mrQXwqwHllidOinFRjB49qn4O1GBYZ0BwBSdYE06
         XnNuqxh6IqCIjm9Am3vZX0ez7Ovf1TjkzgRPC2JIlo9FXPzkklA6SVv6uW9iwzp7mcp7
         6Gol7vopEh7RoUzbEGJi43kb87CJ35qg6pHzBM/+4dEHsWtzef67/LxbmwccRQaKccXz
         ahRwZzCwqPQnUv8dlZBffMZkoN8CmwRPx/XQd07DbdXABTcV+07/LhgOwWj1JniZydq1
         4hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=MR8x5tCxo5+AsVIz5WY2dO7QkwtS6s1ctIFSET3Abos=;
        b=FeMb2hu7R3KQGZrYDuIYyksb5s2McvnL8KPYFdDZnc1ipchvGIe/vRulWEsO0zM7Jj
         Myye0TyeRza6jpdQLHncQItsi8tX72RQvPPsGyX6Yrr5bgKFaT2GuB2PFM40LVDgrDWM
         txfAEyHQFMH9qyA5E0Dc3n+RECTWJwnk6n7Xew6Fr0X8HfNGm4Bs+wNMd44HVBBihXXg
         VuXI2IWxoyjhwpzQDJSp7J7BVOZxL9qgeR4H6dZjjk/nVQ3BwU9H+Ah2eB/pvsrv8PIq
         XQ1oH8ujShSF8vGUSFsQ90GuQfh8+QOuiUKpo5IES4nc/LmP4Dk96VBrdZ7XSUiNAMOr
         8iEw==
X-Gm-Message-State: ACrzQf24ttjQXXEh2MUQgqSO9pJzVbYvvssWDx/FJrvkSz6tSc3+7ipM
        tjSYL5Qt29NvwIfkhI9x8gE=
X-Google-Smtp-Source: AMsMyM7Dq6DumkgXKLXqbaaLst7icSp7XqBUH1rcC+01MfB85jDCGybIlp1dy7fSgBgjokbyMOcnIQ==
X-Received: by 2002:a4a:1843:0:b0:436:1611:6b51 with SMTP id 64-20020a4a1843000000b0043616116b51mr6659381ooo.18.1664219674992;
        Mon, 26 Sep 2022 12:14:34 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id p130-20020aca4288000000b00350c5d946casm7278131oia.4.2022.09.26.12.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 12:14:34 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 1/3] dt-bindings: vendor-prefixes: add NewVision vendor prefix
Date:   Mon, 26 Sep 2022 14:14:26 -0500
Message-Id: <20220926191428.4801-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926191428.4801-1-macroalpha82@gmail.com>
References: <20220926191428.4801-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

NewVision (also sometimes written as New Vision) is a company based in
Shenzen that manufactures ICs for controlling LCD panels.

https://www.newvisiondisplay.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..d9c38e214863 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Shenzhen Netxeon Technology CO., LTD
   "^neweast,.*":
     description: Guangdong Neweast Optoelectronics CO., LTD
+  "^newvision,.*":
+    description: New Vision Display (Shenzhen) Co., Ltd.
   "^nexbox,.*":
     description: Nexbox
   "^nextthing,.*":
-- 
2.25.1

