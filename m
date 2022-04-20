Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F607508908
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 15:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243708AbiDTNSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 09:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378837AbiDTNSI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 09:18:08 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DCC51B791
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:20 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-e2442907a1so1874181fac.8
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 06:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fIqcKXSThVwSAeA5OwVVh6Al9RSLI7FmAfk3shZ6oZQ=;
        b=eHMek+ZyCWkJGtViTHunDcjRENTZkEm7R/EOJdPTdSLFHbmp01rteaJ2VV/BMEozDT
         eq8HPnSwPC3efqw1TpHUvJRp06a7/O6VZ03/tgBdIXYCONMrYBmIzx/uZuxbmJXUba+d
         RvhHwepf9yQTq7QPo0elJ4x4ULGX/+ICtBHahHuZBVCZjc0urUnqIOQn62jpwKqHA2Ig
         /LQwesIBhT31Np4Q4Q/cnMNPBwdnEeEdOhKjRJeqwgsDZEo0i06TekmRFnipDkAJ7OcW
         TP25I1Eesjqo0NQTI64DvYTZ/UlddNnUKQOBhuplTQgz0c/+gGwj+D9Jqip/2iZkJ6C+
         xvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fIqcKXSThVwSAeA5OwVVh6Al9RSLI7FmAfk3shZ6oZQ=;
        b=3p3/yrwvoyPvSQ7nbWUfXHZCcyqs7A2Kcip5iHFkEuyPCLGcal3BXUHzddL48s/Jel
         8hVidvL5CoUH4GCiV+3WntNixvMxNSIfCX9h222LgQ2GCHMmRgwqr7z27BFQwiOKgt4v
         uCwUWL7kW3K/sZvCP7P7J/i0GcOLcrutyjaBBsdO9HkmEcCoW6MlbE8MrVY+f2Hef5nl
         fT6pNrEv90ysqxlUpD3s2/WwlXWxBy6IeIPsYq2fl+A99J1JMHYTbpacGqL9t7feTPkb
         OcvMKMUFLXLJeK3rslr9jta6f02xYuDTk0iEnn0B2z9owToXOkca+xoihvTWcJkWARrR
         +lMg==
X-Gm-Message-State: AOAM532B2rZmX35ORCwnrUeyAgZeBVA96lRelEbP3HHRCWP1VG5sonPE
        sEabi942krynVfjG1GTH58D9OVadouc=
X-Google-Smtp-Source: ABdhPJzPa+e3qysSuSFwdutlPSZNlo6q7SZWO0lQ2vU/+P4RdxYZcMffEHp7B2QlYvsSOHn4saFT1A==
X-Received: by 2002:a05:6871:1ca:b0:e5:a8db:a93f with SMTP id q10-20020a05687101ca00b000e5a8dba93fmr1519767oad.232.1650460519267;
        Wed, 20 Apr 2022 06:15:19 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:3ce1:a87b:51c0:189d])
        by smtp.gmail.com with ESMTPSA id n66-20020acabd45000000b002ef6c6992e8sm6148916oif.42.2022.04.20.06.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 06:15:18 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: Add Storopack i.MX7D SMEGW01 board
Date:   Wed, 20 Apr 2022 10:15:06 -0300
Message-Id: <20220420131507.1032732-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220420131507.1032732-1-festevam@gmail.com>
References: <20220420131507.1032732-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add DT compatible string for Storopack i.MX7D SMEGW01 board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
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

