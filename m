Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 856D062B3FD
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 08:33:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232704AbiKPHdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 02:33:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232711AbiKPHdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 02:33:08 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671A3BC96
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 23:33:07 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id y16so28438574wrt.12
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 23:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYNlJyihLZjd+VQJNRFqHneq/kxBQWta00+5mLZPhSc=;
        b=Q6xyqG3ndI5aq/sWqfLQTKiGdcWJAmI3Oa/Et2oMDiAaVp8SKXeCBAYm+UeIJyuqW4
         rDGbE0knBMpgYLDgeWCXrntJFy4NVI6BbWbC1awE+okko2B4nyhRfhMmbZBXMyTabEW1
         4YVP9uL+hRsrUaaTdPmJUf/ZqRv3UltsxGW0yUmvgDh4fCvv7sy3Hf86RRMGV7OtkqZz
         x53UtEdMgH3KTjl5gooZHSkHhCTd8Ui9E3DTk/RcF4hZkYOSFn/tun29/7DXGdtPCdYQ
         uR2TgQIkxDBWOltdF0oInQteekJuOYDRz+Omh6osaYgq6mEqDSGbl+qXs+5hc4Hc34Pc
         wD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYNlJyihLZjd+VQJNRFqHneq/kxBQWta00+5mLZPhSc=;
        b=h5R+hvVQmWauxq7En30d1xq8IoM7RSfGg8YRFNGSgy3cuKJeGutZf8XuPUkXIYRRof
         b9rGs/wijVLq6bP/QSLPbm1o8pO/CCc7fOvIfixwLGTA/ia8lWO4mrMVrw9ovVLKLuZQ
         l3j59AWA0yLq+/5JCrMeoHLupEvb72NBe6+h0h5WgrhdrrKO9mjcZolxJ+++j7pT+Mhp
         c8QHBWV5I6cB4UX/XyXHUxPDczRzBdsQ/VO4pZk2Uz40Qb3xpDWRI1lQ6Ot9/GdHYj3F
         UsAE6D7jnXY32ec6sgUtfxD78yEG0g1Yvw3U4S4xW9TjrrgiPM4BHAUM19A7cz5X+ent
         5iFg==
X-Gm-Message-State: ANoB5pl0JQbxoG/NfKJF9lDLKbkNrFqlmYp79ZWZhy1DlDnSSkcpKOly
        hjXODvaqI1O7y6R1Kka451f8Nw==
X-Google-Smtp-Source: AA0mqf79Jwm1CZUIvNyOxXNbrSaQyp5YQ46u91JhTruMoD5mNp5fCApJbJqtY2t8ghJQGO5+JRBp0g==
X-Received: by 2002:a5d:518d:0:b0:236:4ec6:af52 with SMTP id k13-20020a5d518d000000b002364ec6af52mr12606634wrv.524.1668583986957;
        Tue, 15 Nov 2022 23:33:06 -0800 (PST)
Received: from zoltan.localdomain ([167.98.215.174])
        by smtp.gmail.com with ESMTPSA id g34-20020a05600c4ca200b003cfd4e6400csm1058823wmp.19.2022.11.15.23.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 23:33:06 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next v3 4/5] dt-bindings: net: qcom,ipa: support skipping GSI firmware load
Date:   Wed, 16 Nov 2022 01:32:55 -0600
Message-Id: <20221116073257.34010-5-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116073257.34010-1-elder@linaro.org>
References: <20221116073257.34010-1-elder@linaro.org>
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

Add a new enumerated value to those defined for the qcom,gsi-loader
property.  If the qcom,gsi-loader is "skip", the GSI firmware will
already be loaded, so neither the AP nor modem is required to load
GSI firmware.

Signed-off-by: Alex Elder <elder@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v3:  Added Krzysztof's reviewed-by tag.

 Documentation/devicetree/bindings/net/qcom,ipa.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index d0f34763b9383..9e81b9ec7cfdd 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -128,10 +128,12 @@ properties:
     enum:
       - self
       - modem
+      - skip
     description:
       Indicates how GSI firmware should be loaded.  If the AP loads
       and validates GSI firmware, this property has value "self".
       If the modem does this, this property has value "modem".
+      Otherwise, "skip" means GSI firmware loading is not required.
 
   modem-init:
     deprecated: true
-- 
2.34.1

