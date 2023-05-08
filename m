Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F02BD6FAD2B
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 13:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235972AbjEHLcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 07:32:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235885AbjEHLbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 07:31:42 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2095F3D579
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 04:31:00 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ac8d9399d5so30776411fa.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 04:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1683545459; x=1686137459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ago5W1TH3NtYlqnoMKL2QoZcqhImH0EhtanUKlx90+o=;
        b=ubqJyPUXHkbI4WVG4p1/PBG73AtSJIpqB/ICYxMLF8yrq2pTPj0EmaTlq3zuCful4n
         MFM9xrXSTPVnn4YflEdt3wvK4GTbpC3Xj2EeRLfcCKfyEtX4jXTwKMWNG/dQOLRvLFfp
         xy7ky6fMUjmLdBl5TBiz+RqdJWePrLWSaJln1Hxes8TL6RxSTRfDpG1IDXsXe432PRZV
         Wr1rxHAZ66XoVTFDYbgrOFkA+ohh52HMjDI8drQu8SZw4zGiKMZ0f41TAj4KT17K9ogG
         HZ2jU4GPk/oRejiYUuBS9z13dOZXLx0o1MRT2uR8V+LhKeCy2kWDGNja1DvLGZJT0W7Q
         E6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683545459; x=1686137459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ago5W1TH3NtYlqnoMKL2QoZcqhImH0EhtanUKlx90+o=;
        b=PIS7nsSf/CyzXacqzvrHYgjFOteXHZvr8FmHvyZcwcurisSSTCB589x/XWZEfa4EKk
         fYnClywn77U0xQClxtH5m+1lPN0qa2Y97aJ5Q1g5/vZ8SxksSdslwdElClYYZNn6DZoR
         NwOeGHbISYuFsFokEpQzhHTWWGR4jd0EnFzhbV5gISxmztLwiAxCQb7dp/IP1OoxKbKL
         ZcwZXsGXRubWw65K8fntWFGE/hITnROr6ELvta4bUtxNeoeSjizC1EK02jgRzdPKEpgx
         cTi2fpHnaK0juP5j+XP5tGETrpuZG/xlbFf+DjsDGAsXqbttqvSOtm9XWDs6qERznH6k
         s/Aw==
X-Gm-Message-State: AC+VfDwEvJ3Q5zdA/nkoA+jVIkOiGPwFDUHbfahNWft15eHokGCnlTqa
        cCe6Lwoz2SHDKUFVbG4AHbA0Rw==
X-Google-Smtp-Source: ACHHUZ6dznyxLhJT/VBoJN3aVEWWHkYoCuIWMKXSx1E6hT10TgdkNvC/r4/EbQWmrtsm3zZdT804Jw==
X-Received: by 2002:a2e:9b08:0:b0:2a8:e480:a3c8 with SMTP id u8-20020a2e9b08000000b002a8e480a3c8mr2548687lji.44.1683545459588;
        Mon, 08 May 2023 04:30:59 -0700 (PDT)
Received: from panikiel.office.semihalf.net ([83.142.187.84])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e2408000000b002a8b9353338sm1144406ljk.117.2023.05.08.04.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 04:30:59 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        lars@metafoo.de, nuno.sa@analog.com, upstream@semihalf.com,
        amstan@chromium.org,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 5/7] ARM: dts: chameleonv3: Add mute gpio hog
Date:   Mon,  8 May 2023 13:30:35 +0200
Message-ID: <20230508113037.137627-6-pan@semihalf.com>
X-Mailer: git-send-email 2.40.1.521.gf1e218fcd8-goog
In-Reply-To: <20230508113037.137627-1-pan@semihalf.com>
References: <20230508113037.137627-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an output-high gpio hog for the mute pin.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
index 422d00cd4c74..f0483ef46a36 100644
--- a/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
+++ b/arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
@@ -69,6 +69,12 @@ u80: gpio@21 {
 			"TP122",
 			"TP123",
 			"TP124";
+
+		mute {
+			gpio-hog;
+			gpios = <0 0>;
+			output-high;
+		};
 	};
 };
 
-- 
2.40.1.521.gf1e218fcd8-goog

