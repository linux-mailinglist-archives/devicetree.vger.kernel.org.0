Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72B4563F934
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 21:37:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbiLAUhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 15:37:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbiLAUhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 15:37:06 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11DFEBFCD4
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 12:37:02 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-13bd2aea61bso3588154fac.0
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 12:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HHhagubBU9I/eLAgfTTLb4aJShqjddvM8h9wwY5WXbk=;
        b=WOFAwNLlPMAJkPINQJWRTY8NNxpX2UsOwq/lRZ7LnqNfbPCPl0eoGZCVWqQAssTxo1
         sMsqsGmPDPqYLYyKsmv2Kzn+jcE96esdcDcVbsTjbHxCqQxD3GuJVXSkVtz/Kv7u+3F6
         JuWupgiHJuliheS4DsurKS5ocI4a8hAvp2nZDNfL2zXLmB/UuW3IDpi/EH2SGs8v62yg
         JK6lsIcAusewyCr+PFiK3GdvtIXE8qgC5PuIcE6/eyttzBt+uc+SZNou/ugsh5cXR2vy
         LlIyvb4WdBeMjbCPwEVDFks64mVxXTVdVi5DCg/7+wC+hM5bskdxgiaM1HZLUff9yLBV
         /yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HHhagubBU9I/eLAgfTTLb4aJShqjddvM8h9wwY5WXbk=;
        b=G0BRjmW1t3Xsq1IfSEESKT+eWA93sjHkm2sujwW1Ha6YVCOGBmcWgZO1w/XfbpKljR
         zpxppuJ2m3hJ6Dkm+r8QPFPaFcZXS47jZWF7atREHFikNx05uxuuIvjwhwbmc8b6qLIJ
         +LayfHPyxpfdlEkVrlhvYnJsNSLaZH1wM4hOBCPtW0ycAVLhQXNJoZ+D9r0IaqJlnrGd
         mcpzSp9oXDAuSZOhCU41IjjtnytEHLJVw1O7dck/xpj1qoUgnxFhnZIzTBUPQT6+Lg+e
         1OQWM5WpkVrl3FjzuhzV/VN+j7sr0lrE9DMgaT7od1zGsvueSCRlXlC1gxXs4hFDuzPT
         HZ0Q==
X-Gm-Message-State: ANoB5pl+Y1nPv/FQdVWOnaaSFfHkBCsBjPbe4338RIJANkjkon814iY6
        4/xyGGl3syiflUdXnRmimYU=
X-Google-Smtp-Source: AA0mqf7EnvyKcdI0cEdYMyvgGliVp9Y/xtR5JszOeeOoJnvBaEtCX5tleO0/+ysiEJLtYn5Q29AY4w==
X-Received: by 2002:a05:6871:792:b0:141:c075:9346 with SMTP id o18-20020a056871079200b00141c0759346mr27877631oap.30.1669927021435;
        Thu, 01 Dec 2022 12:37:01 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:00 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: Change audio card name for Odroid Go
Date:   Thu,  1 Dec 2022 14:36:52 -0600
Message-Id: <20221201203655.1245-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Change the audio card name for the Odroid Go Advance series to
rk817_int. This matches the audio card name of the Anbernic RG353V.
This is done to provide a consistent card name so that a single ALSA
UCM file can be used for all (identical) implementations of this codec
and configuration combo. The rk817_int configuration is for when the
internal speaker amplifier of the rk817 is used. The other Anbernic
devices have the name as rk817_ext for when an external speaker
amplifier is used.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index fbc6bfbaa5c1..60063f4bb366 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -127,7 +127,7 @@ blue_led: led-0 {
 
 	rk817-sound {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "Analog";
+		simple-audio-card,name = "rk817_int";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,mclk-fs = <256>;
-- 
2.25.1

