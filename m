Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D62F679552
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:34:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233662AbjAXKe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:34:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233691AbjAXKek (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:34:40 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A60740BD2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:33 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id h12so9407187wrv.10
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LLmolkcXwsNYtpVGeeRXsVm3lLPGm7voeNMYUoB/fn0=;
        b=NZcYj4ufA+8bENflErXhpiYEvPluE9RpszFLOt6UuNxKzVb4T+3DkDFZTolSpSGVs3
         F48hdocgt2ELvuKov/Dhoz3P4SdYHkS4B2CObrmgMQh1S+Hjd6j/gzl7Xl0edAntG4l6
         ss+hteLlREfkR9hbf323dciHPE+eIBmbOgpZtnsoBuJ7QmqLWKBTqKJ1JWp/v+qHHAQh
         cV503Tioy2O6iLqY7Nh3j9cG4Yz6enuLEL7uIWDeKH8ImegXDasZAYO28jn/42X8BkHa
         RLgoNHCYJoAgXMpJ8QyuutIyvjh+CHUowATC+wX950j9re2J0zmSSBE4oYYFTxyaNFVl
         8icQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LLmolkcXwsNYtpVGeeRXsVm3lLPGm7voeNMYUoB/fn0=;
        b=UncPJBOP21yKbZQXlsO0L8BgAc1EHAOV4ES7T/AsRvzCM3UDL3gI/W3KwPlIE/2beI
         P+dVFQI1MRVzF74YfnV2E9EVJLsbxy5mPIGZ0ByqpwwukvDIDHsrifeKhfSbUTJs+EuL
         qALPaN1f2s2i+zaacQgZ869oQaAUdursYoHqXSAgoAXLGs8bAE4lAvY/livinjDGyBIn
         7TjnWvS3lpnmjxraOj+jSfTmF4hP9uv9ITSq53uwO4DqR3kL1XKTMXipBdRUJx4WqQo/
         ZN0ImQGkETZHohEY2AqnXLywTMUglKI4DhhqF7PrVTDp7JqhUbwnUzZvHq0S1DVxllN0
         FdZw==
X-Gm-Message-State: AFqh2krmCzub5qpg1DrHxLpzkEyJX2HbwswdCy+mXasCKulHG1qxHEBJ
        J9QW0jQ73pIbeqyIhBcY1RyBrixA+oF1iq7r9aA=
X-Google-Smtp-Source: AMrXdXuspB8nkmiRDkUQo6gYiN/B7cXU/ORyyqjX7dYr3Zd8CROiQh/iiwJJRk8xJV2b+qhkGw3xUw==
X-Received: by 2002:a5d:4103:0:b0:2be:5408:5d6d with SMTP id l3-20020a5d4103000000b002be54085d6dmr14228835wrp.21.1674556471601;
        Tue, 24 Jan 2023 02:34:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm1551889wrj.102.2023.01.24.02.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:34:31 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 24 Jan 2023 11:34:29 +0100
Subject: [PATCH 08/14] arm64: dts: amlogic: meson-axg-jethome-jethub-j1xx:
 fix invalid rtc node name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230124-b4-amlogic-bindings-fixups-v1-8-44351528957e@linaro.org>
References: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
In-Reply-To: <20230124-b4-amlogic-bindings-fixups-v1-0-44351528957e@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes:
pcf8563@51: $nodename:0: 'pcf8563@51' does not match '^rtc(@.*|-[0-9a-f])*$'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
index 1916c007cba5..e1605a9b0a13 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j1xx.dtsi
@@ -217,7 +217,7 @@ &i2c1 {
 	pinctrl-names = "default";
 
 	/* RTC */
-	pcf8563: pcf8563@51 {
+	pcf8563: rtc@51 {
 		compatible = "nxp,pcf8563";
 		reg = <0x51>;
 		status = "okay";

-- 
2.34.1

