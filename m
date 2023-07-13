Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 538D075254F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbjGMOjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:39:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjGMOjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:39:51 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF991734
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-666ecf9a081so818180b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259190; x=1691851190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=44xntmQVuIocvp9s9TbsDCmRl73TYtCTvSM3VlELycA=;
        b=KT79sBxeert8Qlb1aWZLVC/38nQgjwbe7HVTKUvBPbHE2QfBJBLBoDnDL5+GDId3nJ
         kA/hrbbQidWUtsN6wVyXo/3/3zm0R4UoaRG7dhIQv2PgezUkprnknCMER4hUkkiQhULZ
         iP1YylGitYnwrJoJL1iT2cO4OY8y5h3mO10th+stBAty2CeObFEoxEsNCfq1kEtSCL/W
         iwynbZHYwt/Kq/YFuj0/7KVtBU1lsAJd8+fsyONZ2fr7Vb6uMGrlROvhqpnyhee/5zOJ
         fA4JUyVBTw6tN2kNwG7GpSL+HqNV1g4YZX7/GSXiFgyF3WaBBBeoZiUy3jmfEdyazj1o
         zGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259190; x=1691851190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=44xntmQVuIocvp9s9TbsDCmRl73TYtCTvSM3VlELycA=;
        b=MNFb+cnEwHC1YlxMb2+/E+sEwPq4x0yVfVJpFnpnSqVlSW+zuKRLxwWJAeRB7AmZy+
         0513W3iX7gnkCxj46ySMV/aB2fSznr6zJxUbJ7kEVSPwNhFllTYNEwwWlB/T00SGDFb7
         VrpyJ2trJYWrDFl2U06cH28qPYc96jVQGaxrtKbw5nreqcjTBbKcapcF6vbpxZ0k+aN8
         cdLp2POqot97T1FfatB5Pt7lQwNFPVZJhinwrdAYJxhYxKocB2K7i0FmZLAeLpPhcdhA
         eC6RMmky1jeA+4AiG9Y+xhUR5kOEqvEK9qUkhmQTgV0Pl7re66kLMXP1aYKiZlck/VpT
         eqWw==
X-Gm-Message-State: ABy/qLZiZnzZeQ7ARqDGrScDdGjiAHw/3RhclpMZYstYpcxjb7/Z+n3+
        Ajc2ei6NTCqtGhp8ng1J/nztew==
X-Google-Smtp-Source: APBJJlHgQi7IAw3UGaYH8fi8qgIWy+V/PE6O0DiYgylzUsU1VOkGEolDAugg26tqgaJfWlTnwUUKng==
X-Received: by 2002:a05:6a00:2e98:b0:662:5146:c761 with SMTP id fd24-20020a056a002e9800b006625146c761mr2330273pfb.17.1689259190279;
        Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:50 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/8] arm64: dts: rockchip: Add microSD card for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:35 +0530
Message-Id: <20230713143941.1756849-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sdmmc support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index e9d5a8bab581..7f9e2c750287 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -21,6 +21,19 @@ chosen {
 	};
 };
 
+&sdmmc {
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
-- 
2.25.1

