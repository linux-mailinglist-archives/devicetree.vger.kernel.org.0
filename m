Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D5445976D3
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 21:41:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbiHQTfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 15:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241573AbiHQTfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 15:35:08 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51B2A61CF
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 12:34:05 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id s4-20020a17090a5d0400b001fabc6bb0baso1228561pji.1
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6RHcvjaCTPAfT8h1N5wBVD9wSvcedQM4lOCspuuG4xc=;
        b=cO0Z5mXELmshBLobj7IgiqoNHNutDLaizvP+O7nv/jWrsKaZs30CXf7gkOEHBAwprH
         URH91MxuOCcYIx0mFRSgaXcgVkSw0p8qLnYxzdBo+65JczWSwEjU4Z+nY4/yUyHK6VzD
         aJP7tct/qG94KhPe58JHO6yEIXnLsmxr8fCEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6RHcvjaCTPAfT8h1N5wBVD9wSvcedQM4lOCspuuG4xc=;
        b=BtpKzcEJkfDmrebWLqhmvJzA6uGRlVX/fRqqPYIbcCly/133H2Lot9NBQMs5xkzyYL
         DWzNKlZm+mg+ltf4LAn/iMPkF/t4wsvDrfi5w2/DxJaHguM6pliewSn8lnn+B16fZ73R
         ZlobA9ELOgpvLMVswXhoBpo5p7MgAQxWSD1pJ00CB9tKWlbTc9mDpaUt549u0LBMaEju
         qQk/OxWhP5pleEDx4K3mWQqhZSVP+QYy17IoQkE6xDsXSDHGWDWwSfWa4pL25FiFtE2l
         +BV1xWQxr9zvlkYbwkjWNlKhk6TcZSHzKmTUwrLEg0EeNg+GjJBMm9sVQBwLb1rUV8y9
         jy1w==
X-Gm-Message-State: ACgBeo0V9YEd92aOQ4pOY7ACLsiWcuUjuhtWh8LkfS1BjSCi7A03kC7b
        gwkM8OiIMA3weAyExpEUhzJR6VPerdxQGA==
X-Google-Smtp-Source: AA6agR5cstItY77u+hnv1pO2pitjhFoBMfkmzJzeoUm5cjHXrFhSbC/LvnyxdfKTbVNLc26ZXdTVMg==
X-Received: by 2002:a17:90a:de13:b0:1f7:4bd3:36ec with SMTP id m19-20020a17090ade1300b001f74bd336ecmr5151598pjv.179.1660764844830;
        Wed, 17 Aug 2022 12:34:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:256f:e7cd:3f8c:19fd])
        by smtp.gmail.com with UTF8SMTPSA id nh14-20020a17090b364e00b001fa867105a3sm1964918pjb.4.2022.08.17.12.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 12:34:04 -0700 (PDT)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Support gru-scarlet sku{2,4} variants
Date:   Wed, 17 Aug 2022 12:33:56 -0700
Message-Id: <20220817123350.2.I5f4fd0808a927b08e267c189712fb4a85931fd3b@changeid>
X-Mailer: git-send-email 2.37.1.595.g718a3a8f04-goog
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
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

The Gru-Scarlet family includes a variety of SKU identifiers, using
parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
different manufacturer names) also use the Innolux display.

Without this, a SKU2 device may non-deterministically (depending on the
matching order of DTBs and bootloader behavior) select either one of the
INX DTBs (rk3399-gru-scarlet-dumo.dtb or rk3399-gru-scarlet-inx.dtb) or
the KingDisplay DTB (rk3399-gru-scarlet-kd.dtb), to ill effect.

For reference, the original vendor tree source:

CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97

CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../boot/dts/rockchip/rk3399-gru-scarlet-inx.dts   | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
index 2d721a974790..5d1879033e7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts
@@ -11,17 +11,29 @@
 
 / {
 	model = "Google Scarlet";
-	compatible = "google,scarlet-rev15-sku6", "google,scarlet-rev15",
+	compatible = "google,scarlet-rev15-sku2", "google,scarlet-rev15-sku4",
+		     "google,scarlet-rev15-sku6", "google,scarlet-rev15",
+		     "google,scarlet-rev14-sku2", "google,scarlet-rev14-sku4",
 		     "google,scarlet-rev14-sku6", "google,scarlet-rev14",
+		     "google,scarlet-rev13-sku2", "google,scarlet-rev13-sku4",
 		     "google,scarlet-rev13-sku6", "google,scarlet-rev13",
+		     "google,scarlet-rev12-sku2", "google,scarlet-rev12-sku4",
 		     "google,scarlet-rev12-sku6", "google,scarlet-rev12",
+		     "google,scarlet-rev11-sku2", "google,scarlet-rev11-sku4",
 		     "google,scarlet-rev11-sku6", "google,scarlet-rev11",
+		     "google,scarlet-rev10-sku2", "google,scarlet-rev10-sku4",
 		     "google,scarlet-rev10-sku6", "google,scarlet-rev10",
+		     "google,scarlet-rev9-sku2",  "google,scarlet-rev9-sku4",
 		     "google,scarlet-rev9-sku6",  "google,scarlet-rev9",
+		     "google,scarlet-rev8-sku2",  "google,scarlet-rev8-sku4",
 		     "google,scarlet-rev8-sku6",  "google,scarlet-rev8",
+		     "google,scarlet-rev7-sku2",  "google,scarlet-rev7-sku4",
 		     "google,scarlet-rev7-sku6",  "google,scarlet-rev7",
+		     "google,scarlet-rev6-sku2",  "google,scarlet-rev6-sku4",
 		     "google,scarlet-rev6-sku6",  "google,scarlet-rev6",
+		     "google,scarlet-rev5-sku2",  "google,scarlet-rev5-sku4",
 		     "google,scarlet-rev5-sku6",  "google,scarlet-rev5",
+		     "google,scarlet-rev4-sku2",  "google,scarlet-rev4-sku4",
 		     "google,scarlet-rev4-sku6",  "google,scarlet-rev4",
 		     "google,scarlet", "google,gru", "rockchip,rk3399";
 };
-- 
2.37.1.595.g718a3a8f04-goog

