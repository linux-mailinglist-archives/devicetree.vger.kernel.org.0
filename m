Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8CAB6D7656
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 10:08:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237288AbjDEIH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 04:07:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237327AbjDEIHz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 04:07:55 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B1254C02
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 01:07:54 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n9-20020a05600c4f8900b003f05f617f3cso2303101wmq.2
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 01:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680682072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHYOqnIdeZEQQSsG6kV/waTEgcH9AADMsfaYGJviNTM=;
        b=NJfcutidJRL0Sd3UR57Ek+M52rh4V6u7JmlddIraBxi0Ju8z6MMFEiXv/qhhQB2BNI
         4UPVf5jK3Cnnyvt4oDkJ8HPVZj65Q5w/1knZiegA5nGwbzsxeUUOZ6rQEYqEhl93W5Iw
         vNH41L1bzc87PA/UU3BPX1H86617Q4X2YobQfrVvVkX2VNWL9qCNXZ+bqlWuKFu2zYwX
         XsjjNOMhzkmMShFCrfTuraEo37xMjXiGPIxXClHb3V5MOvD8FpUI2w+YI/R3+sE3Rsd+
         KXRyJunXqTU5j58GF2OEdbIw4PozkAybpnTQJyt+RwrFwEK2jYwy8V75CXcr8BuccXWE
         2JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680682072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHYOqnIdeZEQQSsG6kV/waTEgcH9AADMsfaYGJviNTM=;
        b=UBA8nO5u0l5nVVMM6iOiph1+PcxhSpl2Z+Rd1DlEw3WCN6WFc7hcGTEo0rbUfqAr2p
         rmo6WSlq3C/Zw24yhW8myqr9UzPokFdq8ZSqFAkszsjVgZjkDcXS9iTdkIlXIO5XLe/e
         pobR4PETrDpZiIdvLw1emTfXR8SVvdxlGNF3/qxiM7nQ0dhxvk5QPMXc3oWudHA6yveG
         gIWPhyz6Mx4rq/QwzgD0zeeoLVIt4Y/yTEDbqva90+wiHlVChIy5k9cBqR2ZsrFN4xuo
         3/lu6swyvPoXDbRda4wkoerOUKg3xHjbSJc+0hS+IzvopnFTw2Ef5auHeF0aW35BrB49
         2fzQ==
X-Gm-Message-State: AAQBX9cMZ3hqwhpRsXTg56E92W35vFUEalvI8Pj8LS7HRVR+zLKplbpR
        uh4PlsCQKPq1AKQgdZHcxysY+A==
X-Google-Smtp-Source: AKy350afhnXLFxOrvlN1LNxxMmwnjjQmvnePT+4/CSqlxZZACPhRmxLnohdtgvRvanOoVXFaqemCGA==
X-Received: by 2002:a05:600c:21a:b0:3f0:46cd:c9d2 with SMTP id 26-20020a05600c021a00b003f046cdc9d2mr4031545wmi.16.1680682072601;
        Wed, 05 Apr 2023 01:07:52 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id d4-20020a05600c3ac400b003ee8a1bc220sm1378395wms.1.2023.04.05.01.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 01:07:52 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Wed, 05 Apr 2023 10:06:46 +0200
Subject: [PATCH v2 04/10] arm64: dts: mediatek: add camsys support for
 mt8365 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v2-4-60d5fa00e4e5@baylibre.com>
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
In-Reply-To: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
To:     Yong Wu <yong.wu@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1044; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=x/wu+Gg/Z7J2I0F/gXx6zOm7KvojSbz4OytIRAJsBIw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkLSxSYZTPbIPS2/RCyC2YT1QrM5a0tSocLwa/6I6a
 I/vATOaJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZC0sUgAKCRArRkmdfjHURUYRD/
 4rzPcpgK0AM0J6vKogWpVZJVU8nLPcCX2gZDw6MpNBtn/HRHxrMJJ9Ycp8s8pXAVlBlJSwJuKlCTpk
 b3SNROUmWXhYGTSExf0GPi0tW01Q0BYWnttAJxc+q6aMfu6wq367G5MupOYsySE9llF4hTUIfOeRPV
 GcBXa4jSXwL5o/7fX8S7LFI6x9wI3sOLywwopcfJ++mFDtOA0uD7YkiUHy/z0+LcWcuZsAPs36Z2lb
 nUnD/DwMQ+6z4Voa4UX3lPipNee5vVw6SkpvyLUERlgrUiSnhyOCXVUffK+KzS1jb51JorzQz8VJVW
 3+xJdhjyb59iKWp4Wde6o1IaiLQJ/QG8/XmSwxmCfpg3LsDmQSkQqpTDqBjleBTTF5Z+z6rj+rPOqH
 ejeUBG9bXbZOcCsTfR6Bhj9dTIJyN52m2aHV8SyHYFvfreDE5UmegdFAfKF/sTnFTZnBn/ABeKuYi1
 4N6LauFAlwkd6l53tsz913CmdA6AQyoECWQt3tyPQbOyVElMkK1XULPqyejmmstKjc5av5B3Z5tIki
 OIDdtt0seOt8npl6mp2aMF0EcJfwcjm3EO73PiElvRGyVSZxjrmBdGHnWkMk8lxBdLD/5TAM4QUZe3
 LYZRStwSGXcxC9dh9MRtp8ebf8o/LzhZicGsi7n8V0I5HSMk23rK5UJ/yZxg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Camera System (CamSys) incorporates an enhanced feature based image
signal processor to connect a variety of image sensor components. This
processor consists of timing generated unit (TG), lens/sensor
compensation unit and image process unit.

For more detail, ask Mediatek for the MT8365 AIoT application processor
functional specification.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index db9ab538c34d..73cb10d296fa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -598,6 +598,12 @@ mmsys: syscon@14000000 {
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		camsys: syscon@15000000 {
+			compatible = "mediatek,mt8365-imgsys", "syscon";
+			reg = <0 0x15000000 0 0x1000>;
+			#clock-cells = <1>;
+		};
 	};
 
 	timer {

-- 
2.25.1

