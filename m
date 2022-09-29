Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43F525EF66C
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 15:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235337AbiI2N0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 09:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235679AbiI2NZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 09:25:41 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F39027B0D
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 06:25:38 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v28so2211901wrd.3
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 06:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=wDPVtJUkpxAb4ia1Z2nUs031++Rp/t2w7zinzfg9BkM=;
        b=hsTFIADiWUA6pZ3wo8brfQ6BkOlPKFR9WHlriPISKQ3EBdLObeBevzxgVhMaXwRyQK
         Us/3bf8MUDuss4NdO++vsc6B3RSM9oiAj1qYTKJukCg+vCRdeLXXilBSbDK47W55yVaK
         lITPpTEd5vKmYZRCbzmxv7mTgbPKY2VQLitVquWCYERfqSVWAVkQXBPN6HBRZnN0h4wu
         cwKUooocl0ESK4iurpcJ36PlYQAOqspBB1kAsxo1dHITaEMReWDwU1Y3efKf5vyhqEHX
         DhKUcmMw3+iDN0TyPx1k84WQcpYFIQAGbd3duNl4CTSHlvnAXQA1cT8/p8w7NvAIFFRB
         Va6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wDPVtJUkpxAb4ia1Z2nUs031++Rp/t2w7zinzfg9BkM=;
        b=S4jmZp4KocEqeyKB17Jj+1hQFvAP7RQV24MwN4aVFCifdZbL07ZeVkl4ARrswnbTWU
         Il65IxVIpTR4lhpbOK01rzlQKr7tpyn6nsvw06p4F5co0klxgZk9AqO43pyt4HkZidEF
         ctdJAcyXQ6yC84wwbnoA1u+1eTTvMs55RZy25zfpwtAs5+kcDFbSqe9/Ez82zF3w+Io9
         aD1hzhGwYiieJwEPoYHmBt+aGX25sYTIsZwctHs3wTZCA8Zqi+4/QC9VeUAKUIpwbeBG
         8WvSiYnxcdroMiQpPgP7nRNHX8WvV+rOYY0glbifAAd2Fm2wP6AYVwBIPbXXdkJ43frY
         VJ7A==
X-Gm-Message-State: ACrzQf2iR9qkk2O1yAPwdF2bWwO7/34K9eU53gjhHCUhazNPcPcLQHbu
        rn3ZJp957M8pgdFZf4uFOeW2uQ==
X-Google-Smtp-Source: AMsMyM7eNcesW60hlnrnQRh8NSlG5JqGgeAgevFkrVoXrleVZIQ+E7rZQ9K5UElh63H5KeWMVrZTRg==
X-Received: by 2002:a5d:64cd:0:b0:22a:ba05:8bcd with SMTP id f13-20020a5d64cd000000b0022aba058bcdmr2440358wri.74.1664457938006;
        Thu, 29 Sep 2022 06:25:38 -0700 (PDT)
Received: from localhost.localdomain (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id bu24-20020a056000079800b00226dedf1ab7sm7032222wrb.76.2022.09.29.06.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 06:25:37 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, msp@baylibre.com,
        Jerome Neanne <jneanne@baylibre.com>
Subject: [PATCH 2/2] dt-bindings: gpio-regulator: add vin-supply property support
Date:   Thu, 29 Sep 2022 15:25:26 +0200
Message-Id: <20220929132526.29427-3-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220929132526.29427-1-jneanne@baylibre.com>
References: <20220929132526.29427-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is same scheme as fixed-regulator.

Without that property used, the parent regulator can be shut down (if not an always on).
Thus leading to inappropriate behavior:
On am62-SP-SK this fix is required to avoid tps65219 ldo1 (SDMMC rail) to be shut down after boot completion.

Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 .../devicetree/bindings/regulator/gpio-regulator.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/gpio-regulator.yaml b/Documentation/devicetree/bindings/regulator/gpio-regulator.yaml
index f7e3d8fd3b..6c3371d706 100644
--- a/Documentation/devicetree/bindings/regulator/gpio-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/gpio-regulator.yaml
@@ -85,6 +85,9 @@ properties:
       - current
     default: voltage
 
+  vin-supply:
+    description: Input supply phandle.
+
 required:
   - compatible
   - regulator-name
-- 
2.17.1

