Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12E4072FCA4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 13:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235967AbjFNLg5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 07:36:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236205AbjFNLgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 07:36:22 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B168C1FC3
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 04:36:21 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5187a752745so2219454a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 04:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686742580; x=1689334580;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NghouzrvvAU4Np30hAA7JLYG1+N2iXjSV31dAtikVDU=;
        b=SMIO740gZgagbuJ5LtaPSK/zq+EjXWmZ5extNeo7hypKB4YbPThXWXfLm9zfqfFS9y
         p+29EcQNvHRBxf8KmEgen3ZBRS+7bxiSTeXYqnHPo7Vqag0KHcBlF3JFcapR8o5MVd0R
         B3y2FEmynFIB1A/fP3+h8eJZhvUiAW7qFX2pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686742580; x=1689334580;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NghouzrvvAU4Np30hAA7JLYG1+N2iXjSV31dAtikVDU=;
        b=PUz/5r4FxuHf/tdI/cnMmvjVbZUONY1B4k/S5BqVo1nCpmDq4/Yy6ZfU18cbbDPp9k
         BiFtRNqFhTyYeinCHtdOIe1Zwzls6tCLQDA4dRR5O1Qumjk1J/h5Pn1NV0V0NXY0FiBn
         DvFtciTpTdwrVKQ2674TcL/jO41THsGBfVNPmp+r8VX3nl2BGpbkfAA434gITsWSLJda
         pcFLdFMl4GJmtZBf0voJv5Hn1fg4KFxIkJULEnQr9Zqu6Ont7bZcft7Zpd5lq/0igQTb
         IudqAAXilLVa1FkXokbarhLi5IdhG4tM1RY87eIZn8pQSR8+yo9UFG9F9y1AgS+tMitL
         z86g==
X-Gm-Message-State: AC+VfDzly7QwE4txXwk7+n1YYfni7aY36g4bCpKY/6ZEMXROD6Jl9eFQ
        /booDH93Dx2afuoFMIBGMj3BHA==
X-Google-Smtp-Source: ACHHUZ5v7bAZJEdLQvhF4G6gCt/B7YyZkVqy1clUxI9e8q237tKtb8QgJ7ONcrvtoslgp4qcxjP6Hw==
X-Received: by 2002:a05:6402:1211:b0:51a:1df7:41c6 with SMTP id c17-20020a056402121100b0051a1df741c6mr117059edw.17.1686742580129;
        Wed, 14 Jun 2023 04:36:20 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id b20-20020aa7d494000000b00514a3c04646sm7646020edr.73.2023.06.14.04.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 04:36:19 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        Jesse Taube <Mr.Bossman075@gmail.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: timer: fsl,imxgpt: Add imx8mp-gpt compatible
Date:   Wed, 14 Jun 2023 13:36:12 +0200
Message-Id: <20230614113612.365199-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The imx8mp has the same GPT as imx6dl. Add fsl,imx8mp-gpt to the set
of values that can be used together with fsl,imx6dl-gpt.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
This allows what imx8mp.dtsi already does, namely

	compatible = "fsl,imx8mp-gpt", "fsl,imx6dl-gpt";

Currently "make CHECK_DTBS=1 freescale/imx8mp-evk.dtb" results in
dozens of lines, partly because the IP block appears three times in
imx8mp.dtsi, partly because the checker lists all the ways the
compatible string(s) do not match the binding. With this, that command
merely produces three lines of (unrelated) warnings.

 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
index 716c6afcca1f..f5f8b297da13 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -31,6 +31,7 @@ properties:
           - enum:
               - fsl,imx6sl-gpt
               - fsl,imx6sx-gpt
+              - fsl,imx8mp-gpt
               - fsl,imxrt1050-gpt
               - fsl,imxrt1170-gpt
           - const: fsl,imx6dl-gpt
-- 
2.37.2

