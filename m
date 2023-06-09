Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0389729130
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 09:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238716AbjFIHcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 03:32:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238739AbjFIH3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 03:29:48 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C95A835AD
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 00:29:18 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-65314ee05c6so1195933b3a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 00:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686295758; x=1688887758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFvJp9MKPzIyi6S8BZNnG0J1ZKcj9eDruvsl3ndG+x4=;
        b=W3zHlgeCteyA5/h7T/zT/CEDMd7tW5H1gmub4yPa84VsY/FzktFNe2sABDAQkpwRh0
         dCEdP3yZh7fS/tDIWFkE7o4AW0BOH42bT+87wVmCL/w3I5l+YCEFHsGT6xLrpxx9y5ER
         i36Xt6lDg1HlB7E1sBMMx5SDeC4cqleCVRlMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686295758; x=1688887758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JFvJp9MKPzIyi6S8BZNnG0J1ZKcj9eDruvsl3ndG+x4=;
        b=U/wI83hzZBFW7IARMkIaeka9Vez7LVjo6TKk6kjl2sbXdg8eYIhwt9FrPF5dZbVp9l
         YaEoS3/PfbkE7NV0i/LoKUkF34+TdqIPoDu5qbpT+afk7ARvUUFiycxUWqu+5Cu95cg4
         CCACLREyatk/Whf0Mo/JBkiJhylXHPvOWBV0E14Ep4YYMH3xUwStazAYt27HHD3TBSt7
         JSdTrbMAmchh3Vlr4tjujKyLU4ihyM1LTvZxTlP7jPiTP1JrByaN/2FeIFuKuweYx7wy
         mUB1riT+8z+t8Wf4M0B6tENUo9rWii3x0Qmauasj0TKOsctBKJ6UnozPkpNXbC2dT/Pu
         PQnA==
X-Gm-Message-State: AC+VfDyk2uNO07ebX/ReKBv6YwuPsID1rCEdKAG97ikW1UOKUBP+pLFG
        /YbHb6wh6ZB69a0nD9nPBPCbCd2VrqAX9CxApdg=
X-Google-Smtp-Source: ACHHUZ4/R41ts0yq+D+izuk9QKrBsLXtoNV2EZbQA6MjNw8ibgUQYZmX3lZZXPG4B8U0fqhKZw9tvQ==
X-Received: by 2002:a05:6a00:24d6:b0:646:59e4:94eb with SMTP id d22-20020a056a0024d600b0064659e494ebmr445628pfv.15.1686295758318;
        Fri, 09 Jun 2023 00:29:18 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c2ea:d8e4:1fe8:21f0])
        by smtp.gmail.com with ESMTPSA id y9-20020a655a09000000b005287a0560c9sm2160283pgs.1.2023.06.09.00.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 00:29:18 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 3/4] arm64: dts: mediatek: mt8186: Add GPU speed bin NVMEM cells
Date:   Fri,  9 Jun 2023 15:29:04 +0800
Message-ID: <20230609072906.2784594-4-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
In-Reply-To: <20230609072906.2784594-1-wenst@chromium.org>
References: <20230609072906.2784594-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the MT8186, the chip is binned for different GPU voltages at the
highest OPPs. The binning value is stored in the efuse.

Add the NVMEM cell, and tie it to the GPU.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index e2becf2fe79f..3762a70ccafb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1519,6 +1519,11 @@ efuse: efuse@11cb0000 {
 			reg = <0 0x11cb0000 0 0x1000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
+
+			gpu_speedbin: gpu-speed-bin@59c {
+				reg = <0x59c 0x4>;
+				bits = <0 3>;
+			};
 		};
 
 		mipi_tx0: dsi-phy@11cc0000 {
@@ -1551,6 +1556,8 @@ gpu: gpu@13040000 {
 					<&spm MT8186_POWER_DOMAIN_MFG3>;
 			power-domain-names = "core0", "core1";
 			#cooling-cells = <2>;
+			nvmem-cells = <&gpu_speedbin>;
+			nvmem-cell-names = "speed-bin";
 			status = "disabled";
 		};
 
-- 
2.41.0.162.gfafddb0af9-goog

