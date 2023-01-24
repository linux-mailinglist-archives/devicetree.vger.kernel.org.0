Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF4FF679558
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233348AbjAXKfA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:35:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233720AbjAXKen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:34:43 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D997C41B49
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:34 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id h12so9407281wrv.10
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dHfZHwPiU+/Ex/faMbLuK8u2HgXYi5so81nvC+syeg4=;
        b=bLJXZNYZ6YNcuYD1aX8WONfVyjqBC4bB2+DBepOAIlRkxvbiQDQ+QtZfG7efOZWwKq
         Rl7WbcPBFhq9ASqF5oGicFzTlUPSQQXLL8c7/pcKIMNJOvJZZBmmlPVImfMthIhHYzJR
         NXFVsDH1oQTODDytSuxet4pyjfWAxuG5FR+E7ykgbSjt3ZdL6mr4Qxv84Wc9jK99pJH9
         pnOJ3wqNjEbabGSwU4NI+w6JcxRzG45UM0vFbOpMnoafjYxBNPEFvJrkFZTTKb4xwaFu
         m7oL7zuOjfxhNnhmaTv5HWQB615N7ydYNh/IPBivKyqTJH/BFTAtzXAmN/0wsusv3P32
         L4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dHfZHwPiU+/Ex/faMbLuK8u2HgXYi5so81nvC+syeg4=;
        b=4J5UOW0NbcRUQ2/6yRly4s4JLqdYnkWO3Cwv+qmLmG8aRjBRsFN9UqSTxZVx04NfVJ
         kqGVsoNoUlB8UpTOFSmdEVhjFy/MsnWVcD+leVTOSwWVhf2epxbLsDB+Danch4TWnGCk
         370vwXtesOu7ruve1VRRv9kgZmpMhaM7Rn6A32jp+hCVRhmKhJe+thJANE8Vi2xF6/V/
         kKOE0ayfOlAzAOpq2ay2rriC9lnYkm/kr36gxG2pCvjqsxaRjGtA3CeZcmjxvXji/xSG
         CSUvW88HM4Ev//dEkJH/veMe1PupWfQXjWt3WAq1nR5PSLBXmUSOCxEI7naJbwtR6bIL
         +TzA==
X-Gm-Message-State: AFqh2krlmQ821uhT3SLzpOVtbfPJkDBmdzwtSFHiZu2s8/Xtr7Nc68aq
        +bktdvVNbyvexf34BC0RJMjodQ==
X-Google-Smtp-Source: AMrXdXsdaVFA1PXLjA6oIqDQH2aKQxcloRcd8o7Qz3aApI0teF+QhkqLIgW789snhkpEiFSA3Igjcg==
X-Received: by 2002:adf:f6c5:0:b0:2bb:dacb:638e with SMTP id y5-20020adff6c5000000b002bbdacb638emr18860368wrp.33.1674556473327;
        Tue, 24 Jan 2023 02:34:33 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q6-20020adfcd86000000b002bded7da2b8sm1551889wrj.102.2023.01.24.02.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:34:32 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 24 Jan 2023 11:34:31 +0100
Subject: [PATCH 10/14] arm64: dts: amlogic: meson-gx-libretech-pc: fix
 update button name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230124-b4-amlogic-bindings-fixups-v1-10-44351528957e@linaro.org>
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
 adc-keys: 'update-button' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index bcdf55f48a83..4e84ab87cc7d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -17,7 +17,7 @@ adc-keys {
 		io-channel-names = "buttons";
 		keyup-threshold-microvolt = <1800000>;
 
-		update-button {
+		button-update {
 			label = "update";
 			linux,code = <KEY_VENDOR>;
 			press-threshold-microvolt = <1300000>;

-- 
2.34.1

