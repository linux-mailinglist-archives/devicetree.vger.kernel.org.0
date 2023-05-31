Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FEE6718718
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbjEaQMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:12:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjEaQMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:12:37 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD124E2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-38ede2e0e69so3601228b6e.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549555; x=1688141555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRGMbc5CA5gbApr8byJzGma0rBdn83NoACULX/tdSoY=;
        b=UgF4EaOFC3RYspDE4hGw3cb6qSJvaaspfu6nbPynoHhra2QZjNDtC1FaTeYTWLNMvs
         EticXO1E3yE5vhmdFt6Lo3yAq2nxxtQ1TxFvPXMy6hbmTH4L2yxvj9+aDBHyL1SBomGx
         RDgzr3uKKJaT441zyGEFAAhvErjEXKiXR7VZa10+rnHEDOBXGHy9xwNGXdkxcL0A5dZ9
         xyrYEA0yDfjd2gbVODN/0Pxx3iZf406Dc8gaTv7oVKw7/Td2Ffbi75VENGP29NphgeI1
         DQ0QP+7yyZ/Q8XrkpwHVYzTxKwF2ccTNBa87JtHhNI5PoVsRC+unc9imYWgSfEc6Qsk6
         8LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549555; x=1688141555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRGMbc5CA5gbApr8byJzGma0rBdn83NoACULX/tdSoY=;
        b=IoUq3e4dbxSMPUS+9jytxYeTqlDgIJODEOoY8N5UOIGB25jUV8uIs9uMEVD6K7tvDs
         aYysfzwWsqljiVYaFidMQ6HJLSfv3zmSCu2fbPZhmG5VMQa6UMN6kmy2pqshXvofhnwD
         KR+fhkC1OlCXgiR8/zOrHLylmhs7SlD6LvjXAhLVZUVYFhRYHXKLk3dnmzQ5reF/csRN
         pnv8/8sf6ezdGHjHSi95wbpgGtZSxJSx7LWpZrjTXzGP1AdJjHB+/po019meeTQMqrx7
         WBGAnYEUEehAsTQqfDIEnMj84H080DuWNHRMGD1QqVBgDMPcTI0eILUOhNBwEFm8cOeP
         TSjw==
X-Gm-Message-State: AC+VfDyv0tN4ToyhhI5yZt/Xc0TsPmCnXxvGvTTbQMD7T7tll+zq7Kud
        WgA/EB/ltWZtwcDZkhavwqQ=
X-Google-Smtp-Source: ACHHUZ7CCuVp+qmQuRbUpmhvQEFBGVbfpbIc5QjXdZYaR0WEldQXrwDPBe3y4FyE22xDr+QPnV85Wg==
X-Received: by 2002:a54:4190:0:b0:398:e4c:d5c2 with SMTP id 16-20020a544190000000b003980e4cd5c2mr3542268oiy.9.1685549555174;
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/5] arm64: dts: rockchip: add default pinctrl for rk3588 emmc
Date:   Wed, 31 May 2023 11:12:16 -0500
Message-Id: <20230531161220.280744-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add a default pinctrl definition for the rk3588 emmc.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..571cdec24a66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1187,6 +1187,9 @@ sdhci: mmc@fe2e0000 {
 			 <&cru TMCLK_EMMC>;
 		clock-names = "core", "bus", "axi", "block", "timer";
 		max-frequency = <200000000>;
+		pinctrl-0 = <&emmc_rstnout>, <&emmc_bus8>, <&emmc_clk>,
+			    <&emmc_cmd>, <&emmc_data_strobe>;
+		pinctrl-names = "default";
 		resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
 			 <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
 			 <&cru SRST_T_EMMC>;
-- 
2.34.1

