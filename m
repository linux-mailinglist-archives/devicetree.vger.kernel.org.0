Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBDBC63CDBB
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 04:17:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232618AbiK3DRw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 22:17:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbiK3DRv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 22:17:51 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63CD61B9F1
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 19:17:50 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so645987pjc.3
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 19:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xnw6MILr6W2VKVd3Jp7ZUysLH8fGhtVKg7zkvqQm4t4=;
        b=bRhKhWobAh4lRjLZ/Vft0dJoKCd6KIEgvIe+0eYUS+mdCP3ZyjWxtBx6+sspQjs/cl
         HYQI6Y8koUdlZ92rYxh8dxf8QdDwPECI3MJ73eaoQ0gj2NzBrBoNI12oKn1hsI49U54g
         TJDjxFDg2LPeV9U60npgw73PtV18wfwxBPMf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xnw6MILr6W2VKVd3Jp7ZUysLH8fGhtVKg7zkvqQm4t4=;
        b=y9THIWpJmQOvgJjyaJqR7N/1Jvz3LF9f2YBPEkkUTCzd2R0TvJy445RmGP/ia83f/W
         y4N4vhsXdk8uW/+t5+iPG8cXWHSntcfpqf5sFpiOIgTsYAIx4xM7Zk36xN9VK6v/Qxh6
         KhafahkwMnbLoFwZ2kzTCgfiHJ1SPTOgzon3BWEhJBKtFOBpi0YrSHysG8UhI7RnJPYZ
         SNBBZulsy1aNDDHNpyJkHUgGAKDLO48sMBY00JBU4Cvoi0uTSggdq7oAsUcqjcTx1na/
         yIm45ra7F+j4L2hBbL3dFBGaoBZvTErGAx18AXAupwb9peq49JKlZ8hnnzQpVlyv9ahW
         9M3w==
X-Gm-Message-State: ANoB5pnoVbQiGlFpKJrJwOoopmUrN9+F+LdGwVWjl5h9vPuahMWEmFGp
        MUKXSQzRyrcpGfEGZA3k2yrVGw==
X-Google-Smtp-Source: AA0mqf75iEv1cvE44fzlVJSZmOtOaAJ1uldMqzY5I4PqRRATBV8mNJueKUPwyw2/lZIlkd2A/7APAA==
X-Received: by 2002:a17:90b:3687:b0:219:468e:88ac with SMTP id mj7-20020a17090b368700b00219468e88acmr9351959pjb.105.1669778269941;
        Tue, 29 Nov 2022 19:17:49 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5acc:e86b:9bc6:1770])
        by smtp.gmail.com with ESMTPSA id 135-20020a62148d000000b00528a097aeffsm212329pfu.118.2022.11.29.19.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 19:17:49 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH resend] arm64: dts: mediatek: mt8192: Mark scp_adsp clock as broken
Date:   Wed, 30 Nov 2022 11:17:41 +0800
Message-Id: <20221130031741.3176853-1-wenst@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The scp_adsp clock controller is under the SCP_ADSP power domain. This
power domain is currently not supported nor defined.

Mark the clock controller as broken for now, to avoid the system from
trying to access it, and causing the CPU or bus to stall.

Fixes: 5d2b897bc6f5 ("arm64: dts: mediatek: Add mt8192 clock controllers")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index 6b20376191a7..ef91941848ae 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -575,6 +575,8 @@ scp_adsp: clock-controller@10720000 {
 			compatible = "mediatek,mt8192-scp_adsp";
 			reg = <0 0x10720000 0 0x1000>;
 			#clock-cells = <1>;
+			/* power domain dependency not upstreamed */
+			status = "broken";
 		};
 
 		uart0: serial@11002000 {
-- 
2.37.3.968.ga6b4b080e4-goog

