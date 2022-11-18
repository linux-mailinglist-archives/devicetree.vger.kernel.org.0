Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00B5162F5D3
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 14:20:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241336AbiKRNUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 08:20:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241357AbiKRNUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 08:20:34 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C6966CA1
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:20:32 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id h132so5316803oif.2
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QKptrtDak5xNgogQtUzqh6nsMsdSKa7rBerhEtOlgEw=;
        b=DPuLitaop7WrOTZRtLDvW3149cLPppbEHjYveGlfjNbOhbVqs8rC/Txm6du6o1cnN2
         fZMJJvWzpiBpcpu9LhCISK6BGdPPRDsVQN4nSeX5OQqpUuZHyTbsZmluXV3aeP8chP8e
         kTRLqpJ/MKbLkhA5e9LF/IeUv/Gg8h+IwRagRvMCNt8qAKyex6S/0Pp0mLUz2tuEVGSf
         tTh4wJ79aH6VrQct7oxD0Mu96zv+LfeoTN0zLFWIKvY6HxRqwIPuwQx0mQkbUmpa8t3L
         m/BvpgrE7VEJQSUp4qf3c5iDIquNs6++lEl6rVamJSBLF/QzIyYykX1Q8eY7xOHrah/o
         VTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QKptrtDak5xNgogQtUzqh6nsMsdSKa7rBerhEtOlgEw=;
        b=H7pQGHUhcUBLEK5VgzueTRs0bBvH6oY7r6P61DBT1WZpN4na96MUVGpcGW3U/gghLk
         q//B3uVVjuGJhCTi5viAGnHl1V+W5FmGX8X+CRc4Fxr6zNdvYXxB4FyvMCsqk1TVxSSn
         cK64K4xV+KRCUmG3RoQiZyQaELU/o+XITFewy413fRb3uKlNOkuNJE1VbUEgNPrumxpl
         kG3bcsV5ZQ4TcKpw9XjWX3aOruFgS8ptR2shQbVueI3xd3RY5mWyNTZOZL2Oa3FjsccO
         mnnxAGV7zuboWyhtR4CsR4gtIl0xvurZFySgV5RejMq5MnepmQW0zWDJOzFoU2KnlX7k
         M8vg==
X-Gm-Message-State: ANoB5pl5Pw9cLssb/iWGKO/COeaJnRHguN/hS0Q0NbJXQWJE097oxSai
        DBL5SiHlHbnbVNWSnQw50RU=
X-Google-Smtp-Source: AA0mqf7nadVFqdk8r9551qyUNSOU1VLMBy73Fhf58mPt3rWEaMtpZ9WZAxXiW7ONg6Dt2Jo0b7fJcg==
X-Received: by 2002:a05:6808:1293:b0:359:dc34:5b5e with SMTP id a19-20020a056808129300b00359dc345b5emr6111993oiw.259.1668777631307;
        Fri, 18 Nov 2022 05:20:31 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5e22:964c:bd31:bca4])
        by smtp.gmail.com with ESMTPSA id h14-20020a9d6f8e000000b0066d2fc495a4sm1570012otq.48.2022.11.18.05.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 05:20:30 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx51: Fix sram.yaml warnings
Date:   Fri, 18 Nov 2022 10:20:16 -0300
Message-Id: <20221118132016.1752358-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221118132016.1752358-1-festevam@gmail.com>
References: <20221118132016.1752358-1-festevam@gmail.com>
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

Add ranges, #address-cells and #size-cells properties to the sram
node to fix the following warnings when checking sram.yaml:

make dtbs_check DT_SCHEMA_FILES=sram.yaml
...
arch/arm/boot/dts/imx51-apf51.dtb: sram@1ffe0000: '#address-cells' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml
arch/arm/boot/dts/imx51-apf51.dtb: sram@1ffe0000: '#size-cells' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml
arch/arm/boot/dts/imx51-apf51.dtb: sram@1ffe0000: 'ranges' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx51.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index 853707574d2e..ba92a3ea6872 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -124,6 +124,9 @@ soc: soc {
 		iram: sram@1ffe0000 {
 			compatible = "mmio-sram";
 			reg = <0x1ffe0000 0x20000>;
+			ranges = <0 0x1ffe0000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 		};
 
 		gpu: gpu@30000000 {
-- 
2.25.1

