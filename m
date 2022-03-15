Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 715244DA650
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 00:37:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243759AbiCOXis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 19:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239050AbiCOXis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 19:38:48 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC8C759A5A
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 16:37:34 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id n19so1051434lfh.8
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 16:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7ZIpRMUfxfN2P2Jphf5BBz91uNjdePO2QpnTEW+cZn8=;
        b=h7K4ipBrkcUPp40+kb4TMB4L0kfO1QGxpsLYlNBl9xg8kpitCZzCJpJwOuIMtcgWmR
         bBGwFVVpeqNHkhp1UODqUeTaZSmLmhP5jfwv0SJSgBhexgn3wUvIoropaw0ozbp8pBpe
         oRBEzAZYN/nC/FVdCv1UHO9kcj9yfdO8J48uvyTX3MG7XHjLE+uDfvQJGVzxN/lclEgk
         FfIRSleeNqcShYjj1aPJk3CTjs2x0qYiDOoBT1w2yscSJ7dfh/KM0c6P+eIs5MZgCnfu
         PcCCcUbgqCTLAiuNjoDw7EV5EXginVIGMRRrrAX/nxwUmJDj3SYk7jpYp/bgM37yiGWF
         nwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7ZIpRMUfxfN2P2Jphf5BBz91uNjdePO2QpnTEW+cZn8=;
        b=nwFYz1q4hG4mhViabCc2/QqZ9Lw5MjNVLWv+5pw5vhfkY6HwiNKK7DUFynkEkJUIBn
         lLZpFgl75V8/58kXoSyM3gD0gDjx7PvB2cfqVv/asukIHuCYOhjxHN51mdTHjKQNiS+j
         yak15dALK/+OJa6sH90WpfYzDpanHtDCBnB0USEvZdjXE2dvgm7Ej6PeJtFSMshJw4+p
         j4m+1PuiA4dVKsNnK56Lpw05UJl5du/8EnO1OhjPVthi/scPOh6G90YuNEvMdS9DC8hL
         1pez2L19ARgppp3b0yZ7QCNGzISaTFLwXjOE92ahmZQMDLBk2JLJlhB+W8yCHzhXrcTD
         Zwsw==
X-Gm-Message-State: AOAM530CqVIVlhgcRsrIpOeM466NDlQ9TC3fDbk/5Nyl6kyA4XGCluOW
        lCGw3iMf5s0mQVWgSnObWysSmg==
X-Google-Smtp-Source: ABdhPJzGaBMUCoamCqlgIUEPBhuiznEKx2/oynitinUTRrLY2L/zfR2xcTl2BhntaGU0Vo11+77CcQ==
X-Received: by 2002:a05:6512:3ca6:b0:448:626f:b3a7 with SMTP id h38-20020a0565123ca600b00448626fb3a7mr15831589lfv.261.1647387453042;
        Tue, 15 Mar 2022 16:37:33 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id w10-20020ac2442a000000b0044835a52a08sm29543lfl.163.2022.03.15.16.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 16:37:32 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add Immersion Corporation prefix
Date:   Wed, 16 Mar 2022 00:35:26 +0100
Message-Id: <20220315233528.1204930-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Immersion Corporation makes haptic feedback circuits such as
the ISA1200.

Cc: phone-devel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 294093d45a23..182771cc913d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -549,6 +549,8 @@ patternProperties:
     description: Imagination Technologies Ltd.
   "^imi,.*":
     description: Integrated Micro-Electronics Inc.
+  "^immersion,.*":
+    description: Immersion Corporation
   "^incircuit,.*":
     description: In-Circuit GmbH
   "^inet-tek,.*":
-- 
2.35.1

