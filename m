Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25BB4769338
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbjGaKgR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbjGaKgQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:16 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC9AE46
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-686ba29ccb1so2672613b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799775; x=1691404575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7wWUGs/v+ImTg6la07JUUOGNgXiEd+D9UkVWUeb/xY=;
        b=aKCmVAh3ZjgncuiUoYMo4S+G9tvS1SVRPoqlucOk43GiLicJREDat/Ep+9AJ8v6JHs
         oDqiDC86nUczMtooX38L+VpnHw5Ylxtf9PTOnxMi9ea5jt6Iz2274HNFqphpeFFhYtwJ
         cvphjoYj7btHsvGYeo1ntfuFKmbuotegn9wni04OHV0xoKKP+LD/tb9Si8YM0z3OLxiV
         m/gHZrWeeBmqGS8iuX/vuzWVDTma5sjTaIV1WAIZhYI73sdHcY6GjN9rNHa6aJqjY5QQ
         zIlxoLwiUwvSos7e+bA1LQp0goJQeJN5EBltDzchofCbrvx23kNqC9UGf8qAI/ycRHm2
         lhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799775; x=1691404575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D7wWUGs/v+ImTg6la07JUUOGNgXiEd+D9UkVWUeb/xY=;
        b=hGuvp4ugAQGlRyvLS31leuRIncvbYaDNGpQvChSUONQ/IHo4QXHhYzkUpCfwHdK4Fg
         eS3IZiANy4h+G9yhtdx9fG3uQ7NKJpfH39uJp/K43xE0uJJ1t2B5RK3HrCp8kSwX2GeX
         jqGg/RJ2VlgiVgLEn05RgWAmrtiYVr7/dJKGKgapV93jaceOqE0r5EY92JY1yUQBFqmv
         x9X0jN7HNb2C4oeS9dIf6ZTsixgB66rAN+UNXVZJs3SQ26960+cSIk6Cj/nvaLnI1BPj
         dp7KvPwRA6FpvM1kLpWDsKKAkORsggqXLSjvdyt8zqcBewlCY9fJONzaNVXDJi54urq+
         CtKw==
X-Gm-Message-State: ABy/qLYCUSwAoZRXLbzFf6FSK0b6eOneowzwSVOhMRC7UobRC7fBkUJL
        w11pxS3/sMVHVlMyRY/XAuwTBg==
X-Google-Smtp-Source: APBJJlEhUGkpmPWPU9n4Zc5cFJjFcxCUlPtPbB5awuud41XG4ilIiiuIfZtKy4lJk9bqmCxRsmgvPw==
X-Received: by 2002:a05:6a20:a11d:b0:12f:d350:8a12 with SMTP id q29-20020a056a20a11d00b0012fd3508a12mr10679410pzk.21.1690799775321;
        Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:15 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 08/13] ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
Date:   Mon, 31 Jul 2023 16:05:13 +0530
Message-Id: <20230731103518.2906147-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add uart5m2_xfer pins for Rockchip RV1126 uart5.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index cb31e6bebcec..bb34b0c9cb4a 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -283,5 +283,13 @@ uart5m0_xfer: uart5m0-xfer {
 				/* uart5_tx_m0 */
 				<3 RK_PA6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart5m2_xfer: uart5m2-xfer {
+			rockchip,pins =
+				/* uart5_rx_m2 */
+				<2 RK_PA1 3 &pcfg_pull_up>,
+				/* uart5_tx_m2 */
+				<2 RK_PA0 3 &pcfg_pull_up>;
+		};
 	};
 };
-- 
2.25.1

