Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A643611A46
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 20:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbiJ1SlC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 14:41:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbiJ1SlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 14:41:01 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A32601DC091
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:56 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-13c2cfd1126so7220711fac.10
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpyIZVffuIxdOIfYvVswAUCJsvme+Kcw8Gat2LDzQEI=;
        b=Rg6HASonaiUryrYoyr+r4a6e1c7UDoxxLuTp/qZwATQOApibHardEl0dQtNY5YJjpM
         8WUW5e8MWLHIrgzyJOJOrSUmPxEhk7s5A+a6bRCCJW96A0DbSUbhC4dTuWd+VQ+OwbN7
         AuClE1+DL9NXpsoR1obzNwzbiWadGh8l9rpR8PyTAlCUVbjfuDgA76xZJ4LlhZNn+Ifa
         tAO1Fh2VoIwjyyBYounPwVgS9AAUdi5fHE/4rWLaEQWyhRQfk1BvJux22DaZpK+a31bA
         LMwZK0HNtaZjHbjG/PkwV7Xj4/YrFlw556ufHwLE2cRAxZWwnS0YW5zrx+OWWkF5OTWj
         FrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpyIZVffuIxdOIfYvVswAUCJsvme+Kcw8Gat2LDzQEI=;
        b=M7Jit1BKUWaP2U02IHQO7PvIsgsxqJRKr9PKVr61rruRdCk6DaMcplYyjA5B9MiktT
         +JSKmnWI38T1MnUSE5GeIK4nJiVdFf2NqUUjzhdIUweRRRko08pSQlN7/Ms2rLmIs8hy
         KqI+u3WPagIR+FPRAkkbtdzzsOI7ZtvfJH00qpcroClwBFoElewp961PNtFGYeaN/Jd0
         oQQjIVFOET7T1/lCVfcbbWVWB2hQsPY+17Z6665U15tRNQ8gTS7Nab2Y01kEX+Tohxwl
         eG5Mm1GtO/MKGoi0A6gkm0kta+iqxSdeowplnDuF7kUP/YdTeBbVbhRyrbRwzhWeUDJ/
         2TKw==
X-Gm-Message-State: ACrzQf0rEeWrxVopAlVH9PToQPyEjVWpYsEhQAv6Rf1TnAWYS+e/aJOE
        0J6ZH3R3L7XCl7zxYLBhCCvvj9AiYj4=
X-Google-Smtp-Source: AMsMyM5SLy6kx00jwdnaLVHITsi9r1R7pxjdOG7cRPBFAbthoZStMOySAcBo5wg8n8/45qNvqBjV2Q==
X-Received: by 2002:a05:6871:54e:b0:13b:29b7:e4be with SMTP id t14-20020a056871054e00b0013b29b7e4bemr351350oal.176.1666982455729;
        Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, michael.riesch@wolfvision.net,
        frattaroli.nicolas@gmail.com, jagan@amarulasolutions.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
Date:   Fri, 28 Oct 2022 13:40:42 -0500
Message-Id: <20221028184045.13113-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
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

Add entry for the Anbernic RG353V and RG353VS handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..29a1a30e0606 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -35,6 +35,16 @@ properties:
           - const: anbernic,rg353p
           - const: rockchip,rk3566
 
+      - description: Anbernic RG353V
+        items:
+          - const: anbernic,rg353v
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG353VS
+        items:
+          - const: anbernic,rg353vs
+          - const: rockchip,rk3566
+
       - description: Anbernic RG503
         items:
           - const: anbernic,rg503
-- 
2.25.1

