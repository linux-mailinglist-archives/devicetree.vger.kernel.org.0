Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08E0E68DC7A
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 16:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbjBGPIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 10:08:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232109AbjBGPIS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 10:08:18 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92AD8C657
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 07:08:16 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id z13so3779248wmp.2
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 07:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mDLwb0REi9aot4lgydSdtlAMRDoMfdfENb6eT6jp90c=;
        b=kPywqcfJTHgGHxa1YybpYJzz7kO1W9HMTE03kle3f/D+vUsbuRoG0QYvACeDglQcc/
         BkBwgincRlPKuS9S3zGcMuae4Y9TBA9WSmTJjHATV5wI6S3DvHbAuE5tUgNCUk1CA7mg
         NQQHVD4hJgJyVPKn2XZPrA6XKwXWzfOdgpB+Vw2xe9yHaUVeJm4wTZklwovMCtaDh3U6
         z5mc9WoXcnxQmAgtxlkKyvztLIlZ35GLPLdqY6n/dLK8hCmEVHEjuaKH1uiWAffAPHMu
         VIqq1X0f2+ZDrEMrmm9y1cia/KWqq3p4P46QRr9WByvlWwuegerqwnNFFLvXKnuI9kAY
         gssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mDLwb0REi9aot4lgydSdtlAMRDoMfdfENb6eT6jp90c=;
        b=6iDYRL/L+Y/eosPokI2hiPuBzucooxAKVQXGAaTeA2YuRej1awfk+lEVgpxzK+q2Wq
         4LpKVAdlrAuyA4PpCu4EtVbNOD+sVCuYhMmXyfaJDYio+WT3L43JkTIC0bMB6gn3fD6F
         ATwPaq+IvIyYmbevkWWny8iMsr198obs1y6vuNfjKS7NLeLriqat6X4YxPYHgUuOTr8M
         n6skLgP4v3WSNhGLmyvUt7N1dMnlwSqAxVG76jRatK5UDiomyXY1Kgg+FMmc30EXgPCx
         Im2mxeEYeltg0Htyy9Q4i+M/iFUg2TvlQdJpu4nBNmaLuoPZvNKgQESIZab+JarINrkc
         nS2A==
X-Gm-Message-State: AO0yUKUZYEUTa6iQJmHjU84gdAN1zYPt8cx/dCqyweO/+mttdUdxEUuq
        uZQ0f4Vjs23pybE6dYanCppEPQ==
X-Google-Smtp-Source: AK7set/O+biA2CMO3jm0lUhOJVP7Z8n6pcHfSafJGyVwdEGd6XrBPnDvCgUt1Z3W0/UOA2Ch3FnkGA==
X-Received: by 2002:a05:600c:1e8a:b0:3df:e57d:f4ba with SMTP id be10-20020a05600c1e8a00b003dfe57df4bamr4101626wmb.7.1675782495124;
        Tue, 07 Feb 2023 07:08:15 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b003db0ad636d1sm22092173wms.28.2023.02.07.07.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 07:08:14 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 07 Feb 2023 16:07:54 +0100
Subject: [PATCH 1/8] arm64: dts: amlogic: meson-sm1-bananapi: correct
 usb-hub hog node name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-b4-amlogic-bindings-fixups-v2-v1-1-93b7e50286e7@linaro.org>
References: <20230207-b4-amlogic-bindings-fixups-v2-v1-0-93b7e50286e7@linaro.org>
In-Reply-To: <20230207-b4-amlogic-bindings-fixups-v2-v1-0-93b7e50286e7@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Yuntian Zhang <yt@radxa.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following bindings check error:
usb-hub: $nodename:0: 'usb-hub' does not match '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
index bb492581f1b7..e1683e0630b0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi.dtsi
@@ -316,7 +316,7 @@ &gpio {
 	 * be handled by a USB specific power sequence to reset the Hub
 	 * when the USB bus is powered down.
 	 */
-	usb-hub {
+	usb-hub-hog {
 		gpio-hog;
 		gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
 		output-high;

-- 
2.34.1

