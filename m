Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 277DB78624D
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237598AbjHWV0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237628AbjHWV0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:07 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5423D10DA
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:06 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3a7ca8720a0so4256789b6e.2
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825965; x=1693430765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aeVSLNMf/yjn1QpYEyiG1HeRadwh8kE5+d8OkagsrvY=;
        b=WXo8x4U5ER6Kjyew/WYIQxOhXSSiFUyV8RBwa7Uf0HDK0bikkSJ87Fr9k7BCtD6eHq
         VOBcmQgsfWOHJDKBK1ESNZh2S93vK+sBctGEcDhc5fz/2zKnd0+7dsScIewAMioYCkbw
         NoQZ72gC2OZzfuzyhTjTmFufoQPTIXl2uf9WxU9zChESmU4do4O/lFokd+YuDXOdfoV1
         s9qT00hTfVPcf29T0eo06yWEtkU3VtF9Y87Gvhzk3pCEq8QQspsqrV/5esH9yVUk/Soq
         Y4O8FAh53NBN5BWtCjjMohSbnnRM7iNFni4T6uB6k1u/86pZUjeRcbrA/rv2jqBylqsB
         UsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825965; x=1693430765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aeVSLNMf/yjn1QpYEyiG1HeRadwh8kE5+d8OkagsrvY=;
        b=hEuLDCSHCqZKznW+baQs6oVsrksQe1Kim626MHVdiLCrOsObYYH2jqwtcw8DeclxLO
         QRHzaaVN0uVoHICdfKQGsv4tnFblgbcfIqlRPz/xpyhL07h4d1KycsLhlSZPypxsmS+e
         ihFfCUZzuYQ+8YWOYw1Rt0FmBK2dnpprNFqZHeumKT1s1GxLLmivdeMpVUJKj+6nGdhz
         tssQtVlnLDI7oVEWeBhKqI9JqD3ylBd7/O8iS1W9PBdWFcEAPLSsKlB2O8rCVZGJao2T
         YMhAXOzTO8acm8XrFUJz1PbzMbNAIjwNlt33fmzKAyuq6EW0mTiR6UIBtkKD6l4IZ2pp
         paoA==
X-Gm-Message-State: AOJu0Yw4URh2UBt9X76EgVAL7SLZlO18kAICF3FOL8uIpP+hgtP3B7H8
        6sG8yX76zShnTuqGqrmmfcM=
X-Google-Smtp-Source: AGHT+IHaIgPAw3tyTO34bsPrnW4YbtdktYnJE4XGrQsA49ecHyVYN6oLDAXH4ZLB9mHV+kHxlcrCTA==
X-Received: by 2002:a54:4808:0:b0:3a8:5ca2:2e1e with SMTP id j8-20020a544808000000b003a85ca22e1emr9268112oij.9.1692825965607;
        Wed, 23 Aug 2023 14:26:05 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:05 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 5/8] dt-bindings: usb: Add V3s compatible string for OHCI
Date:   Wed, 23 Aug 2023 16:25:51 -0500
Message-Id: <20230823212554.378403-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823212554.378403-1-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
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

