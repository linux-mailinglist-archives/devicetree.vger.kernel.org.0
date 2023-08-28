Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3E478B72B
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232981AbjH1SUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232993AbjH1ST6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:58 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4781184
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6bcae8c4072so2391536a34.1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246795; x=1693851595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ykR3sHre1Eir9GQLICxXH5WvC6+F9PzKSZWpeKVoRqc=;
        b=ZbJv7PE2AETfhGRQXK7dtdptnFRNUve9rMalZ6weVEa8FDeRTALC/XwXycTxhkt1EU
         jMWnJMUiiFPC4YVgDu7nZ3nqtVBzeiY13gr4io6pElNcnxnVUil4CRSEjYlhhZ0qZb3z
         0V0daMCv4EwSkTSaARi4PURxG09xudj6GneoGrSCVtm0BzBvqXlFnPLvG/R/cOTQmefN
         iDnuizbm5rmbVURiuQWSiBdAn9AnNz6JHqZMduTabqMsmA3RtAeZAo6zdBuJaBQOBrV0
         DDYhjkeT7RhvWTtrCUysyY65YdQBBX2TFU1ODB3qWSABgWmr27TKA13SGi2xpFRyxigd
         HD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246795; x=1693851595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykR3sHre1Eir9GQLICxXH5WvC6+F9PzKSZWpeKVoRqc=;
        b=Tpm8KvvTy83+4ixYUBNk2Hs7+ct9Uf/UpHZeoQTLa78sm3qG+rNbRdXvWzxNhPXiay
         He2zCk+hDh8AmNzBPeY6Ylcl7Sct2bsaRl1Wy1lKyWOwpacs2lXlfllaSCvvloBFXVJO
         KgW9VYMOfMKNf/6Ln7niXeARKiq0A8fSSAMYhqA6xDU4hwfCwmrzVDjGhmoG/oSvXbp+
         c6mTKfYN8Y/nbopcwCk3Ed1Uu3QWhxSJF+cEOkMKW2jZrk1VI3uRzRj6Kj8wDu7rnXv8
         bJzvFsa9Sq5chuooc2cnuGDaO9MR/ZdGxEz2F/NVJyT2W8uGDxIxZg4Xd23FoyeVydmh
         Y0SQ==
X-Gm-Message-State: AOJu0Yw2yrAIZ1XqSkt9FmhmUXdyuqdCFexDZGq/ZDlvSp8U2IgZBoWE
        ivDDJgQtd7gNR1DYb4HCda0=
X-Google-Smtp-Source: AGHT+IEqBjO52CBgxxPbfFieM84XReP6ihrN7rgx5Zp+Sa/l5vtvkWzkwtV2V+OA1E2uJgBo1Ycyfw==
X-Received: by 2002:a9d:7a43:0:b0:6b9:5b75:969 with SMTP id z3-20020a9d7a43000000b006b95b750969mr13082033otm.11.1693246795106;
        Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:54 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V4 5/8] dt-bindings: usb: Add V3s compatible string for OHCI
Date:   Mon, 28 Aug 2023 13:19:38 -0500
Message-Id: <20230828181941.1609894-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner V3s uses a generic EHCI and OHCI for USB host
communication and the MUSB controller for OTG mode. Add compatible
strings for the EHCI node.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index be268e23ca79..b9576015736b 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -25,6 +25,7 @@ properties:
               - allwinner,sun8i-a83t-ohci
               - allwinner,sun8i-h3-ohci
               - allwinner,sun8i-r40-ohci
+              - allwinner,sun8i-v3s-ohci
               - allwinner,sun9i-a80-ohci
               - allwinner,sun20i-d1-ohci
               - brcm,bcm3384-ohci
-- 
2.34.1

