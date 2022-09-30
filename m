Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 837D25F12A2
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 21:30:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231766AbiI3Tar (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 15:30:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbiI3TaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 15:30:21 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47DA732A94
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id g20so5809727ljg.7
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rQBh9mrZMQXa4Wxb/syFmouoGZGa2l4WN/58xgtqFuw=;
        b=tdxerNTbi/LoJQJG41IsuEg9ghPRZMjzMrKeqnpnPcy8Th9n0bwZekC1cAsVPgVYnr
         F2eGILN/Ldn+EaCsK+c0xbgdiIu+53TgSbxeJwCn3pphw+yyuxzC68/++nfFM3s+hqre
         9zHhNNjKpJTJ/VqzQ0uE1wsDZc0XbuTO2o9g6MItoWdGyPF766aTXVqUHNr4tguBcymL
         2U+OEGTk/bjPcEebKKiypFxlgUOmW7GLMUlTVUJ0m5IU19BRhv9OmxV+K1Hd5j+F63Qn
         ICD64TlgDZdFwmscXQZevlgjL8PSQrL+gaMHEF56S/Sf8HybNlcnsJTL9pydbXWrXD9h
         UKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rQBh9mrZMQXa4Wxb/syFmouoGZGa2l4WN/58xgtqFuw=;
        b=mZtU0kbbfsaOQHKzn7XF8EhCP4KotRHYRbbvedvuM417wp4tNLlgBi918EwguAQxn/
         eZ4TWYapupTl+EHF7BJZNQJDKxFbRBEyHGUuw3JhOjBbqw8qRtjghToJbZOJPn5iLDZD
         Xhm3gmn8py1sH4eH0bmPGzAXO7aSe3pbSRdCK4JkTqvHvc/FzDkIvK6JSQwYuLOpksq9
         3hB5dyYuEdO8UlLENzNCRdMua/uCyMcgKN2aml+oCtZiQmwwUnEOLfxn4WzF6pvsGYi9
         fqDf500T8R7xWVeVsXXOoahFaOkdG8I7RS2+vAkF6jEAxULa7ctAO9T0eNK7E28G5cpt
         U9dg==
X-Gm-Message-State: ACrzQf13nxye+/wLMeq/ufR0raV+3faPto2/NlrY4Myw/OvCrisevPpk
        T99Eqg/YSZW1Aw6xLaNklhAILQ==
X-Google-Smtp-Source: AMsMyM4ZxoXwchKyNuf0WX40+oHXmtG03nDufsx5D/QesjCFD+EFYs/PaoiXZFlKCaHSRlDCF9kQ/A==
X-Received: by 2002:a2e:9d88:0:b0:26a:95c1:218f with SMTP id c8-20020a2e9d88000000b0026a95c1218fmr3266021ljj.223.1664566206637;
        Fri, 30 Sep 2022 12:30:06 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br32-20020a056512402000b0049f9799d349sm393603lfb.187.2022.09.30.12.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 12:30:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/16] arm64: dts: qcom: sm6125-sony-xperia: add missing SD CD GPIO functions
Date:   Fri, 30 Sep 2022 21:29:47 +0200
Message-Id: <20220930192954.242546-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220930192954.242546-1-krzysztof.kozlowski@linaro.org>
References: <20220930192954.242546-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add default GPIO function to SD card detect pins on SM6125 Sony Xperia,
as required by bindings:

  qcom/sm6125-sony-xperia-seine-pdx201.dtb: pinctrl@500000: sdc2-off-state: 'oneOf' conditional failed, one must be fixed:
    'pins' is a required property
    'function' is a required property
    'clk-pins', 'cmd-pins', 'data-pins', 'sd-cd-pins' do not match any of the regexes: 'pinctrl-[0-9]+'

Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
index 6a8b88cc4385..9af4b76fa6d7 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
@@ -89,6 +89,7 @@ &hsusb_phy1 {
 &sdc2_off_state {
 	sd-cd-pins {
 		pins = "gpio98";
+		function = "gpio";
 		drive-strength = <2>;
 		bias-disable;
 	};
@@ -97,6 +98,7 @@ sd-cd-pins {
 &sdc2_on_state {
 	sd-cd-pins {
 		pins = "gpio98";
+		function = "gpio";
 		drive-strength = <2>;
 		bias-pull-up;
 	};
-- 
2.34.1

