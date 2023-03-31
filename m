Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3414A6D2736
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 19:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232628AbjCaRzn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 13:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbjCaRzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 13:55:40 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A6E22226
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 10:55:38 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n19so13380899wms.0
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 10:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680285337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jwase7lH/pIQ+fdUHX1Peydgp8rdPYou8E/famXpXaM=;
        b=vNDOaHRl2Kj/oqm2a+ZOvkVthke3hcEOsa1gShhrWY9pdOR4+1HnzUCEPpsAJwcG6i
         GfxmnUN9mHXe9yKlMkkLpUzj4EIULrAVlJfxYJKS3e6mFrQwIWWSUfUCOWknKnm4//Vb
         EuDdmwgw8XY4OBR+NB0ofqeh2lyl7XQ79uZiiHQC5/mB0uPcg+rcqUY3m1L5VlF8rO6W
         BjLQLPyP1Fjyl/QvTXcrQxJMgK5EmWldvEyRbsICGU+sz7bntwOQZDF2SuBQ8NX4HSzC
         8BOVPNlbv0Lo8bIKYvZPFKIw8lTYppLDhqG2OJ+yjrwBH/kLzaWxoWwVjm0qXRp/LtBh
         nV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680285337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwase7lH/pIQ+fdUHX1Peydgp8rdPYou8E/famXpXaM=;
        b=68xDBTCG7vk9JDpt7pSRhJT7+G08kW659SRFDzxvieHm98A/SZN3BtDPUPEWbsfrTm
         JP5IXtLyZzXG9eHSouvuqN3uZyOosBhCQk6Pe166lz+2xCIocj/PRUckOQJGvr9RtpPW
         9Ii8QblEXd1U9Ifb2sYR187k+uqwDgkLCIs/9wtXPTaCxfC5m2sUjEnFhESXCa7ZY04f
         WzSs055Tp/TtrCByHL4LE0sLzgFFfsGdLPOV2ufmpg1J0QVCHPwDqvThSIfUoypAQLug
         OrcB+pjY4zK3DCfOHArq+0JEp/X7KbK71XSXl7cqSUQagJvyv0juDGuRPfRmKBwBfCoN
         HwGw==
X-Gm-Message-State: AO0yUKVNkgMrDS6LBbzstCw1sHACSdqDSvT/gz9mJ33itYve4E06Pv2x
        Ail7peDAFWf4H8aCymNDuJy1Tw==
X-Google-Smtp-Source: AK7set/7YiR+6uvInKBDF5U3X3vbS3p5pTgCtbpBCrUfqHWCLuMaRSiB0t9TdM3aAcsKlki7PIML2w==
X-Received: by 2002:a7b:cd0b:0:b0:3ed:2f1a:883c with SMTP id f11-20020a7bcd0b000000b003ed2f1a883cmr22924076wmj.14.1680285336932;
        Fri, 31 Mar 2023 10:55:36 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 1-20020a05600c22c100b003eeb1d6a470sm3370171wmg.13.2023.03.31.10.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 10:55:36 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Fri, 31 Mar 2023 19:54:47 +0200
Subject: [PATCH v4 03/11] arm64: dts: mediatek: add watchdog support for
 mt8365 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v4-3-5cffe66a38c0@baylibre.com>
References: <20230203-evk-board-support-v4-0-5cffe66a38c0@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v4-0-5cffe66a38c0@baylibre.com>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=892; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=sanLlORy8ZXQl/7pqZ+xOL9pEwEsbTjvO/nq6i79rEI=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkJx6TZlgIokDKg08GNEP70+ShS8iKpqmXUqsh1Ucb
 brcDys2JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZCcekwAKCRArRkmdfjHURY/AEA
 DCtwg3eRbv65f68/nKU0XXQL0jBa7Jmnsq1oE1w1oxBQXjWEbAlUceHhnFOiTnI02gs66zMgRJVaQA
 Bwn0bsRRebmE69Qdcv4qsuM8OsRy+hRFfEsaE5M+xNrD8zCw2Lrq/ywasJfn8B03OV6vb3KK7P0DEE
 R1e9eKbiyrf7xtnnU9bPMTyh1OBU8fzrzFpywsYfwh1LWhoMUusddFDpSGkF5APkissQxh2lvG1GWu
 IlPTxT0vdsfrSyaG9ytUtuPdVImYf35/NFym4xAGVElPSLYgeYdqgvNMCgb7wnRJ9OQfc0pYmJXDAH
 SsOllDF5506DJOOH5cQktSjuEX7svelefHuOIDIJYtZqv/1iarRy9TDiIKejaSHqJ8+uSGzatyqRyi
 KASvjPttRvVetoTUThLaXQ/ZmI0wPqV+9OmLACBc8DYaN/+uHTqbaB7CVEOzdqiQEMt4T8ymqMZgzT
 AAojcoN6b9GgbiAYBMPeLdt9LzD2wJ0ktVfz48i/M+kuLx6ab6qodgYYK4mXhMShcmMag5+fUkPAV9
 Fnl3ARBpMGsEnkybKwHIPspNMuBJ5EqevRAhhhzDhkDy4soWGmBMCLvfMlo1HteUCgcztc58C7Gqio
 nIZYREGCOXarfxBpLqJzXfpcp4eiTavD+40+Hd007I2vivYSCG7ZTjAL9SjA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add watchdog support.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 1f6b48359115..bb45aab2e6a9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -162,6 +162,12 @@ syscfg_pctl: syscfg-pctl@10005000 {
 			reg = <0 0x10005000 0 0x1000>;
 		};
 
+		watchdog: watchdog@10007000 {
+			compatible = "mediatek,mt8365-wdt", "mediatek,mt6589-wdt";
+			reg = <0 0x10007000 0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8365-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;

-- 
2.25.1

