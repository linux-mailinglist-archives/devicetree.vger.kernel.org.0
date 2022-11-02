Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1F2616539
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 15:32:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiKBOcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 10:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230086AbiKBOct (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 10:32:49 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AB5D2A715
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 07:32:47 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z14so24809793wrn.7
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 07:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WUlhqgAYjzaM6f3uoqSLbbe1TgInZODBBMy9AJJoL5E=;
        b=htFCsPEbDIt3Th8WglgkYEex84wwRPyeeZ9qDbhYjbkQuoZNeEECSnY6FhR2s1DduW
         f/ing3PSCXoZZqEZDFkDbfU+2py9HQFXuaAa8Y20U6GYVp9RMlxNexVa+ryYBkUNjKF1
         gyrgNTLef9wbabZXEVS4om5abV43IMhcJD+TTzYKNbsBmmav5ZBUU/t0expkiNYTUHPx
         YD5oQXnCk+BXJWyyaX3az4qetNdLqgDH5ClVs22jsd+6Z1ml6F++YHbeYyDOH0PntveR
         wcSFWrDDDZ/IRO8rtMWDYLneQxj7VWlIxObEetyd3nP9tI/tW9XZgvlZVTlCQkK3htxp
         17pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUlhqgAYjzaM6f3uoqSLbbe1TgInZODBBMy9AJJoL5E=;
        b=zpSlrRisv6LiKu1jaI2yK99D+y5CgxFL0npwEGlR0oTo2RujzSQhtJi/U2wkqf4Xhr
         Cphb1RZU3dAFkLQgzwQcFlx3CTs5Gk4tTC/UD3VWhm5zMWNt866WklkY/tVJig2DhFTv
         gc3pfZHqYQkqvPSEe3di2BGYlw9jDwbCKMtw3ppaOPxBPUH/23XthUaKanzFN2WWOqvZ
         V3naT+osOyNCILcjjBaStvU3g996KYBrgu7bUfD3cGyvPknEe8MuoOJOFqLs1gCNPPvx
         R2cFuQ6TQ4Id2pWMp4m3pdRZCLTDTJCjH6DswmKT88+1zAugiDPlTbh4RVexNct1RFFU
         LQVA==
X-Gm-Message-State: ACrzQf1VsYDTJ+OFUeW93Ca/oxg49+gVJX+aIWbCgSsLuJIQgmULKFaF
        BK7LYVcJ3FQO1x1YWEYhzaA=
X-Google-Smtp-Source: AMsMyM5PL7mLoh+f4ZVCXJWZLKDG7eGZDivbv7AGJAmU67yEuletpmgQ9pMI7B7ur91RBnrtyWgZjw==
X-Received: by 2002:a5d:6485:0:b0:236:4ed2:409c with SMTP id o5-20020a5d6485000000b002364ed2409cmr15292014wri.110.1667399565545;
        Wed, 02 Nov 2022 07:32:45 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id t12-20020adff60c000000b002366ded5864sm12858909wrp.116.2022.11.02.07.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 07:32:45 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add HDMI supplies on Rock960
Date:   Wed,  2 Nov 2022 14:32:42 +0000
Message-Id: <20221102143242.1126229-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the avdd-0v9-supply and avdd-1v8-supply regulators to
hdmi node for Rock960 to silence the following dmesg warning.

[    6.582782] dwhdmi-rockchip ff940000.hdmi: supply avdd-0v9 not found, using dummy regulator
[    6.583094] dwhdmi-rockchip ff940000.hdmi: supply avdd-1v8 not found, using dummy regulator

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 94e39ed63397..c920ddf44baf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -128,6 +128,8 @@ &gpu {
 };
 
 &hdmi {
+	avdd-0v9-supply = <&vcca0v9_hdmi>;
+	avdd-1v8-supply = <&vcca1v8_hdmi>;
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
-- 
2.38.1

