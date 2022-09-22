Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B34A45E5B6B
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiIVGb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbiIVGbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:31:24 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 484CFB5E63
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:31:22 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id q3so8771046pjg.3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Xnw6MILr6W2VKVd3Jp7ZUysLH8fGhtVKg7zkvqQm4t4=;
        b=WGommxrifMvA/kM4kjqq6uPUQrY6GFkb6wIEGC+PLhIt3eCgBm5hjCKk0059s4Z2sK
         D5Pl1EPJAmS0ifrGpeh3PosyuZzvKuAQE415eZn+umOhMirZKr93F1ZIafVVykH3Xx/f
         4kj0tSeuOlcWpA0qaOxZPYr6eEjdWfMZMkcSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Xnw6MILr6W2VKVd3Jp7ZUysLH8fGhtVKg7zkvqQm4t4=;
        b=i7ErQGhqBBl59sDkWY49fMZMje86zBSKvGxk+gUTD2n22yWeX8ZbFs7xxzju7/0Ri4
         AnnHDj9S/YtfqUIT02Roup2nLd4T/uKkRm7CjBg/MSITTw1/e79ezwLp7l2v2o3eyGui
         LDLxZIpdVPCSLqRI/BSRl+hcV589V8+efW4mHlyuTj7CCwEMZ/muER9H+rZ7XldQwFd6
         3tE9sEPIqSLS1JJFQ07hELXZKOMUUFnAF/j0jczGzVpJ2kZmdYYNEfQt05ldEpJOOhoM
         wowCd0RsiYNL6XW2tWE2XIC9I2/3XZG1lEV+zrdwNexQbl0E7lMc6V5ZMRnwLVrDTyAZ
         Hxtg==
X-Gm-Message-State: ACrzQf0RtR8alISrc9YflfUlhElbuItAMSnXkOmQ71OXSbDXZ0+ND1l7
        yc8Aqs6gXHdg+Hdp4+iqTe5knA==
X-Google-Smtp-Source: AMsMyM4Qwx0beP5McoZOdw/lv4HBb6VkvZcrV3PoFo1r+Q3teNXlkgvMfkc+UHseZsEevOssz7sjHg==
X-Received: by 2002:a17:902:850a:b0:178:b276:aab8 with SMTP id bj10-20020a170902850a00b00178b276aab8mr1794489plb.15.1663828281538;
        Wed, 21 Sep 2022 23:31:21 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:766b:ba78:a17b:7060])
        by smtp.gmail.com with ESMTPSA id l5-20020a17090a660500b002005114fbf5sm2937326pjj.22.2022.09.21.23.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 23:31:19 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8192: Mark scp_adsp clock as broken
Date:   Thu, 22 Sep 2022 14:31:11 +0800
Message-Id: <20220922063111.1672515-1-wenst@chromium.org>
X-Mailer: git-send-email 2.37.3.968.ga6b4b080e4-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index 6b20376191a7..ef91941848ae 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -575,6 +575,8 @@ scp_adsp: clock-controller@10720000 {
 			compatible = "mediatek,mt8192-scp_adsp";
 			reg = <0 0x10720000 0 0x1000>;
 			#clock-cells = <1>;
+			/* power domain dependency not upstreamed */
+			status = "broken";
 		};
 
 		uart0: serial@11002000 {
-- 
2.37.3.968.ga6b4b080e4-goog

