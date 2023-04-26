Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C48E66EF2A8
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:50:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240482AbjDZKtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:49:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240059AbjDZKtm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:49:42 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E43AE67
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:41 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f1958d3a53so54599085e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682506180; x=1685098180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ShVQ7cNiesOQxt+dSTilOr55/lZ8c9SXW92HkGaO08M=;
        b=LIJ+LAE6cCEv3GCpcMCf7nbM3MWtLk8VyZ+MpeaCfZ7APB5WFUaRuvX5cybmp5cApi
         eIK+AcBqJvw0E33Ir2VJlWcwB2LKusBjmftOqN56OaHSb+KixJZzhCYrFK4MDLeLLtas
         ko8ZM3e/8CrFxkrmJawETlrGr6jNLJ+fgx/jd6a++LMF2ib/2Sgx5KXBe384FC3l3ovX
         /nvQETMF/XjuDhty9omKNmjLw+ykWInv55gXK6FcAHepejB2qUI/bj88TXjazFsrUQYp
         Cfb6zIuVOjmifDda/23UGcl86D7CKHiISmV2V4/CJs4z91R281QcY24/JXjm8jJX+NXb
         y3ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682506180; x=1685098180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ShVQ7cNiesOQxt+dSTilOr55/lZ8c9SXW92HkGaO08M=;
        b=PXWXdedb007m/TNS8CdQng1jp1pTqyMbtI1kCdt07R0ttz1tHrYjoWOfYp6PZ5K2F0
         lHujh8TMZ6zTRWdUH1Mu6MzpOETqYElcvqtk1VfOPhRdNO/quJ/AFdPzBEcys0kcdgbN
         M4BN29MZOjjXJ4SbNRnBQ/a9+GOR1zz3ptGzObrNwPWgqRYqq1k5Aikkm8YKcV/u46Gy
         xejMSkCwoVUJ4PIpfXiYWX59zJOd+17Q/7DkDArHDAhhKHbD7Tu2HCp8fpohWvqx8EOE
         83R72U2uh7XQSl7Kr9NV2d0KesKX5UbYRVKC5I4twtMGLmA/iz5Lp5cNJmaM/6PfRNIR
         FcpA==
X-Gm-Message-State: AAQBX9em9jHkhLpFrrEYD1vvaXDQ7XDyPkNNn7fgQX5MB4fcdbiq1iua
        Fxd6FXXY8PPmmqLTna8PH+pFSA==
X-Google-Smtp-Source: AKy350anvHq46IPAf3WZHrRBhZuA/L8gSKK464zrseouQqgnKKJNs9DiIi9Xiqev0eOqTQotEv9LbA==
X-Received: by 2002:a05:600c:2291:b0:3f1:728a:1881 with SMTP id 17-20020a05600c229100b003f1728a1881mr12679478wmf.31.1682506180028;
        Wed, 26 Apr 2023 03:49:40 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 25-20020a05600c025900b003ed2c0a0f37sm17601988wmj.35.2023.04.26.03.49.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 03:49:39 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Wed, 26 Apr 2023 12:49:03 +0200
Subject: [PATCH v6 03/12] dt-bindings: watchdog: mediatek,mtk-wdt: add
 mt8365
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v6-3-8d6b1cfe7f29@baylibre.com>
References: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1133; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=GDhk/m0fF5qCNCdcaWi8PVQeneypbzl/HHAsu/4aQ6E=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkSQG/6sFFOlnf1KIfZQ+od5rJyXR7vGiygFFg+eef
 AjVGfhOJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZEkBvwAKCRArRkmdfjHURfhND/
 0bwgOVuv6fifdPhYyFMYgQYwAK8YEEWQDVdai8A9vF3+/hng6WEf35wX8gCYmgzM6vAYTnEFqU7WrZ
 bH/AcqF7FId0O1ikOcwAUdYHh0P0dMW7pVceIfKF7HGOpGK1I6a1nmu4cPHGUriqLyWTb+UJckpKdf
 LbSgotnfCYrcNAEXY2HT8s9joGuoEL8WH5KGehF9M7c753KlxoEtD77dJ/GYfMDtFrtcjP9hW8OA8h
 0CqkpCrgz5eR/wTa0UrBJyQWOB7TqxWbOL2WIEyltt+D9Dfr9fxx6CDY+vZ1ACk2uNC8INXV96AA4u
 eXM6PLP88cpLeLNFFta3rpIxbvyibVgq97XWSqzU/q77Ppx8ItE2wAOV05mSZ5oXkTURJlnuolIwjX
 7QfuKSyqWepWjB5jPU95t08UyPwpVfm7+cJzdInOh0Iz5a3/pv2wzVYeyqpmOGKv85R51QznCs5Cyc
 WP0dyqLCSLKgpPc3L33WsTN/opglcHQ0F/NiDQ04WVlbLCyzbldN6VURUl6lNPi3dvArWbo0Xxncxt
 EBYTqBQ1J3TO00tgvmjXJ2qSH5tRnIzDDrnF/OytJ9d+rsxQd6n84q/0XOqey2q30FraE/mJbpcMKs
 5/GCAaj0mfNC8eThYRuIMkAYSEFRGbv6yqEzOZ7EaIbKhAqmHoDyWqT9pt1g==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding description for mediatek,mt8365-wdt

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
index 55b34461df1b..66cacea8e47f 100644
--- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
@@ -38,6 +38,7 @@ properties:
               - mediatek,mt7623-wdt
               - mediatek,mt7629-wdt
               - mediatek,mt8173-wdt
+              - mediatek,mt8365-wdt
               - mediatek,mt8516-wdt
           - const: mediatek,mt6589-wdt
 

-- 
2.25.1

