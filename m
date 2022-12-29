Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65B05658B83
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:16:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233194AbiL2KQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:16:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232887AbiL2KNv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:13:51 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ADDE5F7C
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:12:07 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id p4so18762876pjk.2
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B4PWewLwFvhPgA/g5BiED2BT3HTWS9F6JCR/JU66we8=;
        b=B2DleHZVuSPcPWUD6oNq/HUS5bmKzL6BhQnqqL7ca9taihBXoh0DILjADWG3L2BlpK
         BTqGS/gjbNVA2mYiiPs7IhFKkmdBDJeMZILTB2K7RYRZKVPX3lNoYpbTHK/5Bzyonqtq
         TcPVME6rlp60Evj+hS6NC23sn7m0bBwC3LCss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B4PWewLwFvhPgA/g5BiED2BT3HTWS9F6JCR/JU66we8=;
        b=CNIOtWjT/IcFb4pxSmgi4qkzi4Fd1fUphL+2bitqHOVRC/Q4KD0lrlxFo4PG/hGn2E
         5oMnzqXdIZgOpajqi4W7h7zJ+gnzkidDaMLtbiXOLS7Qg/HpFlIIB9IFEQWXVMGoo160
         UNwgNCExJatZ4aeXw2ZgKDDRIzyk4gLL4/L6qxKlaLs0O9v5V3Oa6RznTUtizbK5Cg86
         wX8HvGryWLddG8CbX0ztpR3JYpI0+tyW6b8ETr9UVvvYMwzVB0GSFebTkuHhCzCuC7kW
         s3u6gBrFOnn2xu2l7WP6BMSKmXJmzbviQE9iCrxj112mPwd2wxN9rKohnV9iidbR/ep0
         OZDg==
X-Gm-Message-State: AFqh2koIzLtCDP8AHoZ2HqrL6Q8ygibv+7EnzqCZjkegHJAJixdhHnRe
        tkjJiwl1CXZXKKplBcRnQZQSGA==
X-Google-Smtp-Source: AMrXdXulMdiJqi+NjL53qAm03R3ExKKI+u/w+sYEV2B+ek9/J9EZBWk6aaRKiZ+Bn8BrTgjyt6X8/w==
X-Received: by 2002:a17:90a:bd11:b0:225:b29f:42 with SMTP id y17-20020a17090abd1100b00225b29f0042mr31599271pjr.14.1672308726759;
        Thu, 29 Dec 2022 02:12:06 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4f78:5286:f0f2:c795])
        by smtp.gmail.com with ESMTPSA id 30-20020a17090a09a100b00225f49bd4b6sm6072516pjo.36.2022.12.29.02.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 02:12:06 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>
Subject: [PATCH v2] arm64: dts: mediatek: mt8192: Mark scp_adsp clock as broken
Date:   Thu, 29 Dec 2022 18:12:02 +0800
Message-Id: <20221229101202.1655924-1-wenst@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The scp_adsp clock controller is under the SCP_ADSP power domain. This
power domain is currently not supported nor defined.

Mark the clock controller as broken for now, to avoid the system from
trying to access it, and causing the CPU or bus to stall.

Fixes: 5d2b897bc6f5 ("arm64: dts: mediatek: Add mt8192 clock controllers")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Changed "broken" to "fail"
- Rebased onto v6.2-rc1 plus v6.2-tmp/* from mediatek repo

 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index dd618c563e8a..ef4fcefa2bfc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -644,6 +644,8 @@ scp_adsp: clock-controller@10720000 {
 			compatible = "mediatek,mt8192-scp_adsp";
 			reg = <0 0x10720000 0 0x1000>;
 			#clock-cells = <1>;
+			/* power domain dependency not upstreamed */
+			status = "fail";
 		};
 
 		uart0: serial@11002000 {
-- 
2.39.0.314.g84b9a713c41-goog

