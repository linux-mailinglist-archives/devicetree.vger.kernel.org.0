Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D43451BDE7
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 13:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235336AbiEELXO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 07:23:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234423AbiEELXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 07:23:13 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C561A53B6D
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 04:19:34 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-edf9ddb312so2956073fac.8
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 04:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+2gbZdEmOgGWXaRFpi3w8hw9IgMgRYZ9CTOy3dGC8Fw=;
        b=D5NZR2metDDZl5uwpAEX6Y9Fa10mCGLeSBCG3H+sfJ7uGwOwE+eyevJIFs/Mea3UfK
         HuRSr55uPvmA8GBYDKbbDKq0DsRZjMXjtRZW/jx+VVHQw7WXf8sdo7+QG+WJ1j+U0RAS
         U/UopkBOGYWfNp0+Xu7DzCEYmzzeX2cxz67dg+QJiHUpxOcO4RACuA7dhKKMm6/xCJMy
         PHhV4BKlae7dOtAZdqYBuYPhWhjaVnqXHgQI+XJMLiG6+v+NhTJhZSiFxhmO53HrwcmL
         IHsjbBT9D9Wy5+DUaP/x5R2SvriQfPoOYEpgO2vPARdsmE7c6fjoBg05NVkKQ4D/aliR
         PO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+2gbZdEmOgGWXaRFpi3w8hw9IgMgRYZ9CTOy3dGC8Fw=;
        b=yFDph47ovJ8W5acxoTAn6/YRJJ/p/6nDJX2bIJFMbQSqip5QjpcVcpviAX5F09yvhp
         21Q360yXbVLUTihwppCEcKleKchmxAwJ4204ufz7fq+MM4fdtmTZ0VgOHO1gQd47B8Au
         utujyHZMb/bUmuAJLIEwudMCzsdVqLYdMYWOfxNVTNBuoGNVy1tABYxbmqDp4FZnoTab
         dFNzzx9jRKpq8UtJ/+Q7T86so8c+BZqeiSAFTnQSpHRBy6ndP1aU/qrF9nO4AMwwlDUb
         Yc9WvZ32VO1cmkfeVDWViTBgeWpnMJ0E4gGV0UgSesjjLSygKqucToQIvn8qPf2W3zyV
         gtiA==
X-Gm-Message-State: AOAM53399si2FHqdJFpepIdJJQuIclpokKvdTeRLlr3v+Y23F5bW5BqV
        Bc6qAX0wUnCxLP1m6aHkt9Xh8IOQlb0=
X-Google-Smtp-Source: ABdhPJxLEjZb1zTdmjKBhXxToIcVVk6NElkZxaWAEu9f1OF0nww1Ugf5a+Vj5LNzWLINC2DvQBaf4w==
X-Received: by 2002:a05:6870:b292:b0:ec:ec79:4842 with SMTP id c18-20020a056870b29200b000ecec794842mr1858375oao.145.1651749573969;
        Thu, 05 May 2022 04:19:33 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:d77f:b636:b8f0:b089:e0ad:f3c2])
        by smtp.gmail.com with ESMTPSA id n7-20020aca5907000000b00325cda1ff9esm532779oib.29.2022.05.05.04.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 04:19:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: fsl: Add Storopack i.MX7D SMEGW01 board
Date:   Thu,  5 May 2022 08:19:04 -0300
Message-Id: <20220505111905.1510904-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220505111905.1510904-1-festevam@gmail.com>
References: <20220505111905.1510904-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add DT compatible string for Storopack i.MX7D SMEGW01 board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v1:
- None. Only added Rob's Acked-by tag.

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 13aee9fe115e..abb133a870bc 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -748,6 +748,7 @@ properties:
               - kam,imx7d-flex-concentrator-mfg   # Kamstrup OMNIA Flex Concentrator in manufacturing mode
               - novtech,imx7d-meerkat96   # i.MX7 Meerkat96 Board
               - remarkable,imx7d-remarkable2  # i.MX7D ReMarkable 2 E-Ink Tablet
+              - storopack,imx7d-smegw01       # Storopack i.MX7D SMEGW01
               - technexion,imx7d-pico-dwarf   # TechNexion i.MX7D Pico-Dwarf
               - technexion,imx7d-pico-hobbit  # TechNexion i.MX7D Pico-Hobbit
               - technexion,imx7d-pico-nymph   # TechNexion i.MX7D Pico-Nymph
-- 
2.25.1

