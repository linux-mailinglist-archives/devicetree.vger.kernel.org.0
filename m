Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC90469CE13
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 14:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232585AbjBTNzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 08:55:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232575AbjBTNzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 08:55:46 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DA491DBBF
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 05:55:45 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id bp25so1947025lfb.0
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 05:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DE5alLbVy8X6VmLqkrTKXnAIc5UYOF+41WkrcJJn5G0=;
        b=iGl2W5X5EQLO43Kpwlp7zf+nkLaWQAz70M1gq/R/JttbaDhQoacKuhNV3Kc36ptO/z
         +4U/4NniaJF++prM+LkFJ6vzvv7Ix1m6/Uynb1ZC/5lLhRPpZXJ+RdwugmIltFEG80m1
         9WxHjtCn9GHtNYY0kb5qJ14EBGbTXQfOz5drlFMTgdNb4G/uxupYwH3JrUh2yaWhPKfr
         7PXnrBBICQOfcSQ+NLDh6YM4MWMYaXtaw69bjL6aJjBqt59UdpFGidLoHAaGfqsCMz2t
         hQeGlaEVtUypNUBWNT1Ys/oEMKuZqT2AbWfU+JKVZW5hF1MdAOIL56YUQKvVZwbBqi0R
         ARew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DE5alLbVy8X6VmLqkrTKXnAIc5UYOF+41WkrcJJn5G0=;
        b=gvN/ro1+IHifu4q/4mmBX+PWNrtdR+Ax0mBb5WHyJtY/MG22wMBXUruuIarVn64PhS
         JEYGkcZjRfnH57Qcxg7s29fOwiZE1o7luDBRvC7f4kHXHD7AC079qWJJK/alIKK+mTLV
         hv+YZYDEW9estpqqrU8GHY9/3rscCEBiABYz/8TWaHPn1VSvs45EkRNqvBrfFL9ESyk4
         zyeiZCjQyFy8APnXw74v216oyIPwlTi6Pgzb6mKmZK2WAOCOfKVnAkSj6QSvGoIHpIOn
         DBt7m6yzz23TifG7MpuzjFY8lBQ8clI2q3+we/9eopacLFFGEq1+NcrhUBiWo6yjWzMl
         R68Q==
X-Gm-Message-State: AO0yUKWdVBmyMQK9D4CYcMXjU5fmABmPgb3SRu2puE0/GIq073lXoRv6
        YJLOrDQu7EPtRfjSqQg6szAtV7zftwvnzN9P
X-Google-Smtp-Source: AK7set8IpEHuh6XOU3Ps6rH+1G9kJdpMfhhkYJ58mn7/QBI2XD92krslfMrBgNjq21OPoMouwOXPfw==
X-Received: by 2002:a19:f00d:0:b0:4dc:537c:9229 with SMTP id p13-20020a19f00d000000b004dc537c9229mr146526lfc.30.1676901343735;
        Mon, 20 Feb 2023 05:55:43 -0800 (PST)
Received: from fedora.. ([85.235.12.219])
        by smtp.gmail.com with ESMTPSA id r5-20020ac25a45000000b004db513b017esm1529652lfn.45.2023.02.20.05.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 05:55:43 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] dt-bindings: google,cros-ec-keyb: Fix spelling error
Date:   Mon, 20 Feb 2023 14:55:31 +0100
Message-Id: <20230220135531.1987351-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dependency had an obvious spelling error. Fix it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/input/google,cros-ec-keyb.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index e05690b3e963..a8abdb39623b 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -45,7 +45,7 @@ properties:
       when the keyboard has a custom design for the top row keys.
 
 dependencies:
-  function-row-phsymap: [ 'linux,keymap' ]
+  function-row-physmap: [ 'linux,keymap' ]
   google,needs-ghost-filter: [ 'linux,keymap' ]
 
 required:
-- 
2.34.1

