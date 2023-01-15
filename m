Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D042866B3AC
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 20:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231596AbjAOTeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 14:34:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231590AbjAOTeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 14:34:02 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E132012865
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:34:00 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id h12-20020a05600c314c00b003da50afcb33so2309244wmo.4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKS96pmJPoYb7b0N1pU8tQ1JoETnhuDxnTgIIKOenYM=;
        b=ptg+XxdP0iKhBkszM3udc/4H9pCnHeQS36Lsg2Ij0gMHkNcIvlvI1Cju75BpLjmsGX
         kHc0qsHeG4rGBEVp+kh2tmeQyyLVyDrdtY0z1CmRapu2VdLNtavrsQKmSz5u++fHJ4aV
         RliGMKFR4cvOcRMAeKpW3D/+zhgiqUyxi66rUm1gNcKYWk/VHZ12gMsoGRD/REB2BWBk
         RDshmY8uokHGzZjixSDoc67PtAdDhIXgjex3/HRthkje6iEvctdN4QX5AlLkD4i+0/Mp
         cIgj3pZ3+0D5e4tpKCaQT8v9Bqajzg8yccQ4Cocq5QqPTPsYdgoplDeH+ulyUInAAH2X
         iqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKS96pmJPoYb7b0N1pU8tQ1JoETnhuDxnTgIIKOenYM=;
        b=LxT9g/6VoYkv4maVaPtktvchofJ2unKdnihNNBnyI7gOSzI/dmbHNr+qPI6AMkdoYt
         nkcrnc7jjarB4fN7aKMyDw297PKIW2q/mlsLy120h/A+ZVnfko4jNm7+M8S+I7GLNCKp
         DZhvGpnmRGdEN2uOMT6BDGucGGEHzGPuYELHqSmI40+irqmArh8OLEk85QJTj3RUy2P3
         vPjwBFBWNQIEIhyQwzx5FCBe0Rs7dtNPMVXvWRI9saxe7VzRu3DWnooI43zFrJgbOpWI
         QtOAnUfd58njDspdFDuHLrVaPWwoBbpcXb10Z/B6nLhJToRPjVc++/S1tWX42rz8Po1B
         Bsbg==
X-Gm-Message-State: AFqh2kpvJRv6FxvZmWFC0kskyq27siUkhIPUMm/kpJUGCYw2N+f9pizT
        24XUBrH/bRnDe8DeJIBYaYAmXVxonF/3Gm9InhXEBw==
X-Google-Smtp-Source: AMrXdXtiAtWBNInaUn1ciDGHW3hTscUUewtiMApYCrZAJJioAH4xZZgDcR5vCIpdWiBgI2mj0JNJ6A==
X-Received: by 2002:a7b:c39a:0:b0:3d2:640:c4e5 with SMTP id s26-20020a7bc39a000000b003d20640c4e5mr63160339wmj.8.1673811239112;
        Sun, 15 Jan 2023 11:33:59 -0800 (PST)
Received: from neptune.hotspot.internet-for-guests.com (ip-078-094-237-238.um19.pools.vodafone-ip.de. [78.94.237.238])
        by smtp.gmail.com with ESMTPSA id f15-20020a7bcd0f000000b003d9a71ee54dsm30559281wmj.36.2023.01.15.11.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 11:33:58 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de, Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH 4/4] ASoC: dt-bindings: add entry for TAS5720A-Q1 driver
Date:   Sun, 15 Jan 2023 21:33:47 +0200
Message-Id: <20230115193347.24190-4-alex@shruggie.ro>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230115193347.24190-1-alex@shruggie.ro>
References: <20230115193347.24190-1-alex@shruggie.ro>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Steffen Aschbacher <steffen.aschbacher@stihl.de>

Add entry for the TAS5720A-Q1 driver in the dt-bindings doc.

Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---
 Documentation/devicetree/bindings/sound/tas5720.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/tas5720.txt b/Documentation/devicetree/bindings/sound/tas5720.txt
index df99ca9451b0..7d851ae2bba2 100644
--- a/Documentation/devicetree/bindings/sound/tas5720.txt
+++ b/Documentation/devicetree/bindings/sound/tas5720.txt
@@ -6,11 +6,13 @@ audio playback. For more product information please see the links below:
 
 https://www.ti.com/product/TAS5720L
 https://www.ti.com/product/TAS5720M
+https://www.ti.com/product/TAS5720A-Q1
 https://www.ti.com/product/TAS5722L
 
 Required properties:
 
 - compatible : "ti,tas5720",
+               "ti,tas5720a-q1",
                "ti,tas5722"
 - reg : I2C slave address
 - dvdd-supply : phandle to a 3.3-V supply for the digital circuitry
-- 
2.34.1

