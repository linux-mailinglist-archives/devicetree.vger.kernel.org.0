Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89C7E598348
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244258AbiHRMmq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244482AbiHRMmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:44 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3044CB277C
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:43 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id 20so1393731plo.10
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=h67Kn1x/Ft76K/0awLwv0hPNEZ9TAuzvtwDnw3ZJUAI=;
        b=rdAQLIZFFD4VoiOOaz9HlS7CdNbCMYfcHpj2gcgiy8FKgEIBFiboMTlY9q5x50BhT4
         yguJPlz7dgUpNEnLAjztOABKhsDcXD5DcGXFT0COt9NlUFSqaYjk5x4wyCy7pyVKBBTa
         mJzxW+VapcY8UST+ZyqQBl0PJDVwPvv6EL7xjOlSSQrjxYHshsTJRaBaM3pYvH63MSRA
         hiSg9QW9ex4OIkajMyY7x+59LlrMe8aowEUqfYzGBs5/EA+5g1cCfXNf7aXdwUeSNL+2
         cNKcOKvy2KY5oqCLaTXEXCcfSKNUL5NFneRguLWfL1yOWRG9G8fBMAX56Dd2YLr5EW3H
         xCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=h67Kn1x/Ft76K/0awLwv0hPNEZ9TAuzvtwDnw3ZJUAI=;
        b=bsM93fvsogEHdMZ1WDzqoB+kFu64FgbAjpFg9b0eO2V/FVMYroSZv76EVBt5Oy8Omk
         +9IlFFgJguobd3ylnj0+xA87eqPCD5KpYBob1BJ9rDm/R+ofZ/dXlCSX/ZhB7p56NHZG
         pLILJYV20Jq771Grd6iSX+VOEoacuuIjgg75y0Wy9AiCxWahemYvRKJv4LQ5+0pAOF/x
         YZcWj4YfkPQ2nifvi9uFv7xVa7BWdFZAR1bJwh/3VgK6R/59hR59Ws88xFQ9KFjw/K6D
         cM7USCRNksYRvv2nnaW5lpf9ISC3+M+DTBbmifl+akLUKg6udYnowkjmYmvTcZHsaQG8
         jMNw==
X-Gm-Message-State: ACgBeo2kEgXBS7TD4+ERREve+UuHcmyMkUwWZDoHtaYOULKGLkT3JBHo
        yHiSl5upKRQWMAOzdTnM4whn2A==
X-Google-Smtp-Source: AA6agR7YVqOBoVPhUQm1GCAKZp1/9gvEg+bjHx2KuKN5mtT5XZSbb2+UtIr4Ft5cXp4tNDTxgsThOg==
X-Received: by 2002:a17:902:f687:b0:172:8d6a:3c10 with SMTP id l7-20020a170902f68700b001728d6a3c10mr2445516plg.109.1660826562641;
        Thu, 18 Aug 2022 05:42:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:42 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 16/19] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Thu, 18 Aug 2022 18:11:29 +0530
Message-Id: <20220818124132.125304-17-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
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

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..d2b8ef2e1ea5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

