Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CED8B59A880
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 00:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234305AbiHSWZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 18:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242846AbiHSWZd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 18:25:33 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59DE4108FBA
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:32 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id g5-20020a4ac4c5000000b0044af7c8c4b3so943235ooq.1
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=NEt7aiHhfCAk5Tz1JH3WlHcXcSRNIRWN/vNAz7naIyMTKeiUyoX6jPksumwjMXzJLy
         GdUteUqeKz3HAHwt3OgHdF8hmUvFHMYzd50dQ8Wut9uleEgo/2g/nW1eIq9QsyUmg6oO
         NYcniCMVAZvqNK2yvNUjmOGa/yJorCieBwvXl5ghZDM0Kcc7YuC4DpMiICLxSmXcdmCm
         im/GQJDCcPz8NKn9HoEteLepGUhJQpZm4Wj/c16HX0c1KFkDAG+S2sNDLvCyEyYMDFuc
         pfZG7AaXa0LhMjTa6A+GldJfPQz13Wo9jc8oh9utJn1YikqT+uyGcZYd5/Kxf/OdUpPB
         PE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=ze8HB2wwGRs9mMFwqccxkFeNMY9qbJN/53X6//eeeePDL+SKYYYGeqPRJhRjW/X8Bc
         mYjk0qXP7ZDSkGKzIHxElac1/jnZjM6MAtG+9AqsHOrNrmnb+9I12QvKAT/xDERabjsw
         5CnPkS4eXp75W3erCgyj/ZG5jX/Qk0CkwFHvTmJLPuNnuRUpF+CzhEy/dA1wq1Ya2k4N
         2gAQLxwrDokpYEKHL78vr08lPP93EortYLh8ZQrTryJffKxyaPcxLqFy7w9LouBeGDCw
         0k50FVoTYuPB86ZT46bChHyM440acNCUnB2yeIE/XDoDT9xZ2P362i6d8HLghxJS1x/x
         X2GQ==
X-Gm-Message-State: ACgBeo2tpujC/aXNfMRtfaJKdJgfsuwZzQabObasGQpsuqCliaoHFI0g
        2kdUGIs61oP6b4ZmocBpEmp28uq683M=
X-Google-Smtp-Source: AA6agR5gC19Qv9ZC15sfHa1dtsj+g+Iewd1gU8/hzHtGpWZG3YpOfkQNvg0piyMyWTbVpS6K7aesvA==
X-Received: by 2002:a4a:dcc2:0:b0:449:129e:17cd with SMTP id h2-20020a4adcc2000000b00449129e17cdmr3220178oou.98.1660947931524;
        Fri, 19 Aug 2022 15:25:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:30 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
Date:   Fri, 19 Aug 2022 17:25:19 -0500
Message-Id: <20220819222520.3069-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819222520.3069-1-macroalpha82@gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add entry for the Anbernic RG353P and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..5d947a2de739 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353P
+        items:
+          - const: anbernic,rg353p
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1

