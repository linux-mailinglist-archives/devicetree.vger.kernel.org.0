Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68BD96738EF
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 13:46:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjASMqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 07:46:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjASMqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 07:46:37 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D913D30FC
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:46:35 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id z5so1744053wrt.6
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 04:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IOwo8LF5UioxJqhtkgv5uSSQrAdJemw90Lq8Kb8EeFo=;
        b=oY0Lrthxd4+vVcPlkK09ziRrRgl11/+NebLTHAxVLMXBB2ziZ1kB1T8lRnywftRkOs
         /vNsLRvx0MCi99iQx+LmgKuigteuSa9CDLMppHb3lnBry/sif99j/3ChEBLCB8pJG9Pd
         G2M0If6qdLf5lD0YATxj0gNaY7nEgn0/l4Hx9BmUsyz3ClyLpoJb4bDFKRNxfR8ku0dc
         riZbhwIcs98qvkHsUhNYdluMfbwbi6vxa+URMxNv4BS9VHkylx8i4tj9nAyxlgYvBgfx
         ebeQDuCl/NUDz7ns10DwJNgpaogsWpjDhtCYGS8IMy3bJxfhOF5luCO/bOd1HX9PVjwT
         RHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IOwo8LF5UioxJqhtkgv5uSSQrAdJemw90Lq8Kb8EeFo=;
        b=UOjfVb90QKtb04alW0puVhPhVLof9LWx72/kKUakN3Pj6DhiUSbP3WgbcGgsYJYbKv
         8NMvgQ2HbnVW7X/l9/+xNLA0lWNgkoVRQF7MKqSB7Pwoo51aGfUrjzHZdQb7+4BVaUGe
         +2FGMlbc/zzeMiOTJfiXE9qIvFZ1kK5p9eAXK1Ee/Y8l7jJbG2TqyJ1oNhGl7awjPr23
         FrmhFcKDT/dTqf7R9prAWnEL2ugNvRP3rsrl2JWhxKJI6p5XiJ7wpH7QOImUSLe2xB/u
         bY4ylzdc1N5mlMAGVqi+jDhBzqfiziSmF0s3sMbl6HLFN2kJoojc8a7z+x50A0emOfJB
         J1Bw==
X-Gm-Message-State: AFqh2kpjglF1sJKTAp0WYKJTGX5mtkGDiDmAX607OtG3GFnq6XFXoIe3
        nKMAQrVX6r+4gpSy+pjNRW2MsQ==
X-Google-Smtp-Source: AMrXdXs3cahP4mQWRJh7rjtkg/wq952cF8AzYtCROCEUoJTTFAa9fHarynjDeD8CeKnZZ4vaaZM4xQ==
X-Received: by 2002:a05:6000:1708:b0:2bd:daf1:9e4c with SMTP id n8-20020a056000170800b002bddaf19e4cmr10737273wrc.43.1674132394400;
        Thu, 19 Jan 2023 04:46:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d62cf000000b002bbedd60a9asm27918175wrv.77.2023.01.19.04.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 04:46:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: align rk3399 DMC OPP table with bindings
Date:   Thu, 19 Jan 2023 13:46:31 +0100
Message-Id: <20230119124631.91080-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect certain pattern for OPP table node name and underscores
are not allowed:

  rk3399-rock-pi-4a-plus.dtb: dmc_opp_table: $nodename:0: 'dmc_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
index 6e29e74f6fc6..783120e9cebe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -111,7 +111,7 @@ opp05 {
 		};
 	};
 
-	dmc_opp_table: dmc_opp_table {
+	dmc_opp_table: opp-table-3 {
 		compatible = "operating-points-v2";
 
 		opp00 {
-- 
2.34.1

