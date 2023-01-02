Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D70D065ACA4
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 01:44:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjABAod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 19:44:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbjABAob (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 19:44:31 -0500
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E527625D1
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 16:44:28 -0800 (PST)
Received: by mail-lj1-x244.google.com with SMTP id e13so25279354ljn.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 16:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9uYQEhoeofO4mF2NcoPWHGAu6aO3KVmgJ7gXB+vWeWU=;
        b=B+DPBShsKqLJ5mWIsC3ga7GGbfg9eCilWbYrf+twSDiK7wyTMItr+BFEG4x2099AAX
         yHOIoFC8hhsWLBl5NLGEfmnbiziNMu49R9k0JIRGbp3C89OaPfjPqO7uN98dshhc+9R9
         pve7IjCnQQfbnDhL9JDSK7HBxpoMQYc8O3Ps/emK4f79UcMUx62M36f6DfhQ5z1mZbbW
         R7KIRYmrHs6FDqfBRIJDtYK3OJuEhXqMb7L+BUeHMDy+UaWL4q620rSIywR2iwxjQmXN
         aiPhHDVAol/Nut/P7TdQTjEIlAoUOkT72yrVdkjuwv3Iscor4/3i7ElsCTCjdUibzoTl
         v+Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9uYQEhoeofO4mF2NcoPWHGAu6aO3KVmgJ7gXB+vWeWU=;
        b=ggIgreO8hyVNY1y7fMVjhoNmedjXsH1Arc8LV43Hh0JxtJEpVzY8JRyEfa2CbrnaZA
         eYLqY3QGauk/dJjjlTjF20guLkqvDqerDYr6IkOyeC9einXxucwXd5TyZzSte2Fa2Wvf
         YSwioEBaFv+Qjse9jl+AM/6gPbQ+ZJeRRntFH6Iwbag6zD5RP1ULYVJlv4FlE6klGerv
         jRslW4ubPbVeF84S0Z8nbZ+qQjEJM0YuqOpcrNdZWxkkCIBaAiNEiaQMej2RdwwX8aHy
         jD2FM1rElcN4II0451umhV+7oO0RjDNqVKPPPRHfVdmSlm29Y+6+Tbi1mhOUKfd0HjQc
         63VA==
X-Gm-Message-State: AFqh2kp7k64iIgEIIaETu3g8nWqPrzm/hDY5gqXMzJS8lkGk1FhTaCTP
        rxkkBOj3mxnavher7vOeNk4SxA==
X-Google-Smtp-Source: AMrXdXueDqxIPGRmXllSXZ4FHWgeKM237dN7g0JWPSOw4QU3qDHXgVIUbUFUBEi7/YgWotFrEwhl4g==
X-Received: by 2002:a05:651c:618:b0:27f:bbaf:2a0b with SMTP id k24-20020a05651c061800b0027fbbaf2a0bmr5792416lje.21.1672620267269;
        Sun, 01 Jan 2023 16:44:27 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b0049482adb3basm4304788lfz.63.2023.01.01.16.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 16:44:26 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add Startkit
Date:   Mon,  2 Jan 2023 02:44:23 +0200
Message-Id: <20230102004425.887092-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Starterkit is small vendor of development boards and SoM based on Atmel,
i.MX and Allwinner SoCs.

http://starterkit.ru/html/index.php

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 70ffb3780621..5c0fef90c5c7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1246,6 +1246,8 @@ patternProperties:
     description: Starry Electronic Technology (ShenZhen) Co., LTD
   "^startek,.*":
     description: Startek
+  "^starterkit,.*":
+    description: Starterkit
   "^ste,.*":
     description: ST-Ericsson
     deprecated: true
-- 
2.39.0

