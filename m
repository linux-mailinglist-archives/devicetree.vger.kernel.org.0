Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41DFC73F71C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 10:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbjF0I2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 04:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231828AbjF0I2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 04:28:13 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D22E919AA
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 01:28:07 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9741caaf9d4so366723566b.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 01:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1687854486; x=1690446486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m5S8b9e8wV8xKSwJr6FIOGYxZbEUIfMfKiefXhXE2fI=;
        b=WvS4ixi7RLF9rs8ir6CIdtvBRGxXJkwk9dQyHDgQkJKLtSWcLoLSXjySELrY9z/kAi
         gS5y+YYHTG38DZ2+ZzUlDVrdm9dJ8/cQ1gjFDtguUio2eM/J+3LAr82eMqnU0Xeu7MV9
         2VIm96wr6fKE44OvL/K2YZm2TZphKBp8XEfzt7JnV+wEoPIm3V0WttneYB10aStr4JZ5
         JoHYr+enBDX3UjZV+qS/8MEfnBESnJCKgLeojtjBZsr/91x5gkPaEJMQwpCfKgkfsnIj
         1KjKt6RLusvZPnx95fM/VsGfrsx7Ut29u7EIoMlZxUoptutJTHoCO8+Vdo/b89QVbqFa
         Az0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687854486; x=1690446486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m5S8b9e8wV8xKSwJr6FIOGYxZbEUIfMfKiefXhXE2fI=;
        b=EgW1cTRVn7xOq7V2s07QK5YDr0tAK1vDqAK5a4tSs+wPlI3iNMZcizBKd/4LiqaFm3
         Vdf0qRBEZ+ds9tP660zER+S8kZThdbVgC+VZ74d/fF1S1z7ZtqW327GiUKR0AXBs3Bsc
         0FLwzEOLsRvPeGsgliY6OHPJGEwCGFdMMyfxRy5CWeiGFXFizWmEMS9Pv+4dx9S9e6Tc
         Pp/xXxRzqotgmCMCe2GAiFBhh7bh7Oz1DeUeJY0RhQTWcQQUFrnvzaFhpJhS2OOSCzLw
         3gX2x0ecGPbubhWd5v3UgF9KdA4tcpFm8gyby2oMkoqhWuu0IbtH+mWy+2kUfX+GpABH
         mM0Q==
X-Gm-Message-State: AC+VfDy2kEJK3fbveKoEXwRiqYgIqHKbxhO2bt9JhT1fjlHKDySD7ifz
        takr/PFdm72MRZM46H1o4QSjHQ==
X-Google-Smtp-Source: ACHHUZ47LEa3Ui0Hkcok9eFLfT/UA+Fa2+OJf8EMfROejOK13tBI/LP+tNrmfvjx6Q+gBgR/IdOSUw==
X-Received: by 2002:a17:907:724c:b0:991:f427:2fdf with SMTP id ds12-20020a170907724c00b00991f4272fdfmr2659833ejc.76.1687854486214;
        Tue, 27 Jun 2023 01:28:06 -0700 (PDT)
Received: from [172.16.240.113] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id kt19-20020a170906aad300b009894b476310sm4253038ejb.163.2023.06.27.01.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 01:28:05 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
Date:   Tue, 27 Jun 2023 10:28:01 +0200
Subject: [PATCH v5 1/5] dt-bindings: ufs: qcom: Add reg-names property for
 ICE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221209-dt-binding-ufs-v5-1-c9a58c0a53f5@fairphone.com>
References: <20221209-dt-binding-ufs-v5-0-c9a58c0a53f5@fairphone.com>
In-Reply-To: <20221209-dt-binding-ufs-v5-0-c9a58c0a53f5@fairphone.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Iskren Chernev <me@iskren.info>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The code in ufs-qcom-ice.c needs the ICE reg to be named "ice". Add this
in the bindings so the existing dts can validate successfully.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index bdfa86a0cc98..4cc3f8f03b33 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -79,6 +79,11 @@ properties:
     minItems: 1
     maxItems: 2
 
+  reg-names:
+    items:
+      - const: std
+      - const: ice
+
   required-opps:
     maxItems: 1
 
@@ -134,6 +139,8 @@ allOf:
         reg:
           minItems: 1
           maxItems: 1
+        reg-names:
+          maxItems: 1
 
   - if:
       properties:
@@ -162,6 +169,10 @@ allOf:
         reg:
           minItems: 2
           maxItems: 2
+        reg-names:
+          minItems: 2
+      required:
+        - reg-names
 
   - if:
       properties:
@@ -190,6 +201,8 @@ allOf:
         reg:
           minItems: 1
           maxItems: 1
+        reg-names:
+          maxItems: 1
 
     # TODO: define clock bindings for qcom,msm8994-ufshc
 

-- 
2.41.0

