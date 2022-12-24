Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FEB9655A8A
	for <lists+devicetree@lfdr.de>; Sat, 24 Dec 2022 16:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbiLXPmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Dec 2022 10:42:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231294AbiLXPmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Dec 2022 10:42:15 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90085D2E2
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 07:42:13 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id cf42so10734212lfb.1
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 07:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VqWUzbhnIAOTNuauAVvGliUcjdZQPn3jI6LrgXIAOOE=;
        b=ZISpF/bQ1vT7Hdz9XwEiNw5O4wSPD9NIaG8Bj72o+0OysHCmbuLWznK+t2xd2SnkEt
         BT7j6S1TVu4r1W/QIC8p9wm4HRyTSqIRwUdWImryZfcSyGPRlkKb6XqQygsyvl1yPwLw
         oPukVD1Axb0QmACySyS6pw7mbZzuklsOLAXYKpsW7MjOvGahSBl/p4kk1MjY6bv2WV8n
         s3xE15aHGpFJ3O+egsbP9YIWeu8LiLIV8aOT5OjYsm+5apC8TJJCch1eK+mE9n9C8+p1
         gSVn93lJIiGSOosrvAGEFh8BTPWE5IemOHksSeNE30ZPH3BHt4cj1JS5hZ14w/4H5tio
         xWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VqWUzbhnIAOTNuauAVvGliUcjdZQPn3jI6LrgXIAOOE=;
        b=hGgx1NNS3xrnPlg+riVz/aHs22t+W1orUZED6pzmZaiETpKGF02gKm9rDTiAVFj8UP
         k6eVo2s9NaePdde4j7g/bBVv41bxw0ujgXOIOxdeBUh3SC0AlJVAuclCX8/moEEucrUb
         LWP1hp8osDnwAQMuhVtmAOA11lJopdGbTbNrNrZskQoSMEucJxjFzE8CjmIFNYrau9VQ
         wx09zDOfIM0H5ud6svT7E1H4vtoFoZPQLz14s6sOeSa4JxcjNpVuGgknDbJ94E496qPr
         wmTVioo0YHwYQYdo5ja/ifnieGRtSI4kdujRwNzomrYMVCRQZ/7DPkKMhtNOLCej5e3h
         o/tA==
X-Gm-Message-State: AFqh2kof6w8pUe1vk8y9xyPRQ4COuv7vH56TCdCHR2uM/Lrekiy2aYBs
        jv+v/1/432MJkWAKGuq5+5WyXg==
X-Google-Smtp-Source: AMrXdXtE4roLvHWHaTa2XWArg6aS1kUMpuXXyPvEmgNO0tkVjIjWdQkVTIyMDwCHiss/5ix5ynBINg==
X-Received: by 2002:a05:6512:3294:b0:4bd:de32:b789 with SMTP id p20-20020a056512329400b004bdde32b789mr4633400lfe.52.1671896533122;
        Sat, 24 Dec 2022 07:42:13 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c14-20020ac25f6e000000b004b5821219fbsm987035lfc.60.2022.12.24.07.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Dec 2022 07:42:12 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     James Schulman <james.schulman@cirrus.com>,
        David Rhodes <david.rhodes@cirrus.com>,
        Lucas Tanure <tanureal@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ASoC: dt-bindings: cirrus,cs35l41: add interrupts
Date:   Sat, 24 Dec 2022 16:42:09 +0100
Message-Id: <20221224154210.43356-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Both DTS (SM8250 and SM8350 based Sony Xperia boards) and Linux driver
mention interrupt, so allow it to fix:

  sm8350-sony-xperia-sagami-pdx215.dtb: cs35l41@41: Unevaluated properties are not allowed ('interrupt-parent', 'interrupts' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
index 82062d80d700..919d7f16f24c 100644
--- a/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs35l41.yaml
@@ -22,6 +22,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   '#sound-dai-cells':
     description:
       The first cell indicating the audio interface.
-- 
2.34.1

