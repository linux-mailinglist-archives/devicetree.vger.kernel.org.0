Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 775AF67F645
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 09:28:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233616AbjA1I2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 03:28:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233133AbjA1I2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 03:28:12 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36792402DA
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:08 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id q10so6914800wrm.4
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 00:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9lMGU9rK9OB+8LEnGHVaRIc7MkDB7sJchlMUQDFM0y0=;
        b=rZT95hm6VQ/dlTbnr5z6N8UBMsvLchadHMEBFMV2XBGkUsGHD/QU6n79nClcObpn1F
         kZ1u7qoE3HHGHLdTExOQbKq7fxX4xpw8sX8reg/4wxQW+49VnNTttFu9WUrrj8ngtazc
         R2v+fAQSFD9IG/M0OLBdTYCZuttfeKyGCycpWAtJe6HehLpKcjFotFzo3UPgVerWsPzN
         /LY+EaIdi0bowkLb2llHseF+GLlumd1HYKjnbB/GSTUBF3Hzq5xkrqCYUS1jpFOj6TH+
         4godhj/H9s6ABtxRHD2vJop06pBMu5Thhw0NHswBxuXH5oatFwHLtni0/S2wjkM3weK5
         CJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9lMGU9rK9OB+8LEnGHVaRIc7MkDB7sJchlMUQDFM0y0=;
        b=ixB+HUBDpgtvfrL1ajqjnksvAa0w2EyJCm4juHdPwja14ondA9RT7hv2xTpIOAxPIS
         G6HDNArEYwkQICQMUVJSP6yY2QpaWcvS9x7keeR7T3Fw5i61UlKVc55x7OQXttBGRbHb
         9NzzUtzscOqSZHxQZdJdBQuVzYbDDHpntzW1F4egFy+VW/cFLsDk2xH3a2qecePBGfDu
         UinZfPkhLId5BhBpEFX1LdoO5rEamR0u+Oymuu3GA21vSNDDO1qnfeZXSYZ5384bsZ5v
         ciLYpCnZ63tVLt8qUgnsSKX599h7unjZOE+51D4LiVPIJrqt16aPl4cAsnPZAbJOPjca
         72gA==
X-Gm-Message-State: AO0yUKUEbIEjVrN88P/MNfLF2yuON271ha0MdI6BsKArl3FXmkkuT9z6
        rFT3T7D7GrUIDspBXGtv9glI7+0h3ieGJbK+JKg=
X-Google-Smtp-Source: AK7set9oxXFIdFSQ0KSzUdDUbKWvmM3nTWEb9JSr0orKabeTKM8Oto3DClgUXqezk8BKyXibl5ayZg==
X-Received: by 2002:adf:ffcf:0:b0:2bf:c134:befc with SMTP id x15-20020adfffcf000000b002bfc134befcmr8591012wrs.18.1674894486339;
        Sat, 28 Jan 2023 00:28:06 -0800 (PST)
Received: from neptune.. ([188.27.130.91])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d4cd1000000b002bfd52f31f6sm3815338wrt.9.2023.01.28.00.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 00:28:05 -0800 (PST)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        steffen.aschbacher@stihl.de,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexandru Ardelean <alex@shruggie.ro>
Subject: [PATCH v2 4/4] ASoC: dt-bindings: add entry for TAS5720A-Q1 driver
Date:   Sat, 28 Jan 2023 10:27:44 +0200
Message-Id: <20230128082744.41849-4-alex@shruggie.ro>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230128082744.41849-1-alex@shruggie.ro>
References: <20230128082744.41849-1-alex@shruggie.ro>
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Steffen Aschbacher <steffen.aschbacher@stihl.de>
Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---

Changelog v1 -> v2:
- https://lore.kernel.org/alsa-devel/20230115193347.24190-4-alex@shruggie.ro/
- Added Krzysztof's Acked-by tag

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

