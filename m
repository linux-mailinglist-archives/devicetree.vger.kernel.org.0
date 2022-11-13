Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40C85626F88
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 13:45:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233810AbiKMMpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 07:45:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbiKMMpS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 07:45:18 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E5D12ACB
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:18 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-13be3ef361dso9901929fac.12
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGGwWwaD8y9af5HUWtiHHOr6oAZ7UTyqky810svQwkM=;
        b=mc0kyYMFTcxhgdkvA8dhNI9sDEnUrA86Swh2uauR7pquoY+hf1W9k9sjz6j3D1H1n9
         /AgGRmxDkjwuxXjQ3urUwqmnUVxCnKJ/BHSG+TMrffB3rBPLL8L58GPp02+G9+8DTGBu
         tSyZYHC3swW2mi7FMc6upyuRvQJL6sC00cjkJKvieskeI4RBPd3Au3pTi0mgV6zyoKPc
         hrp1Hfh5UGIcq77pJB8+YrE1wqteRjTrAcKb76cxJ/vJQCfmLDhjk4Duy4dcQOjZPUqR
         09SBduqFAvKeIII1qGHDULGrM9tvOTZfdZzSEupsjdtb3T5Zp8pjHjfausbegfOU95hJ
         uoow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGGwWwaD8y9af5HUWtiHHOr6oAZ7UTyqky810svQwkM=;
        b=ckPO1EmjOn0+aQHX3hmyB90ku2roC76teIpxWoc/GudQXgnrrfwtZTikk0gGKqHeGv
         v/MuqGY6bMErbSdKyPXwy6hxQqo4tquFlzI3BBOKxyxyUrRQdWZo6qC7jQ7jca3ABGuW
         H/NallZaBNsa9HDnpbRv8GUokxa8chpgGFC9A02G3hiU0fnPXa2jg2pWSGRnPin/wB/A
         Y4K+JVWsDrHbxV0giAwcR0iv2PfVzscotZ9lJHhTEbB7NGYgV4rE55d9fEhcwLPYnHDF
         IrJZYvNrcvM9BTj+29gtW/YA6iKbU/+ad5TDAg22lv8F2XMn+DICiYzdncoGFPUzQ15q
         jemg==
X-Gm-Message-State: ANoB5pnncB/AwM/v4uTLmKeA04+y2LZM7+RQiCL83+C+OVhVpBZdluMO
        m4Pw6Ee6FYEpgcrk7l3GbmM=
X-Google-Smtp-Source: AA0mqf4YPnkYVBqsH9mAkNx/Y/Emc48nZX+uu1Te0HBPD3peY54e0rj8SiWDcG23DBPczD56Coy4uQ==
X-Received: by 2002:a05:6870:1b87:b0:13b:66b0:3ef3 with SMTP id hm7-20020a0568701b8700b0013b66b03ef3mr4864910oab.210.1668343517356;
        Sun, 13 Nov 2022 04:45:17 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:d950:2f03:b64d:2009])
        by smtp.gmail.com with ESMTPSA id z19-20020a0568301db300b006690f65a830sm3016481oti.14.2022.11.13.04.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 04:45:16 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: Add an entry for Cloos PHG board
Date:   Sun, 13 Nov 2022 09:44:58 -0300
Message-Id: <20221113124459.662004-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221113124459.662004-1-festevam@gmail.com>
References: <20221113124459.662004-1-festevam@gmail.com>
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

Add an entry for the i.MX8MM Cloos PHG board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f430eef712c8..05b5276a0e14 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -815,6 +815,7 @@ properties:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - boundary,imx8mm-nitrogen8mm  # i.MX8MM Nitrogen Board
+              - cloos,imx8mm-phg          # i.MX8MM Cloos PHG Board
               - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
-- 
2.25.1

