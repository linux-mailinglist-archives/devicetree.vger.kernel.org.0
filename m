Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC29A6DAAEF
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 11:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240615AbjDGJei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 05:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240537AbjDGJeb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 05:34:31 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15AC35253
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 02:34:30 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id r29so41827328wra.13
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 02:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680860068; x=1683452068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHYOqnIdeZEQQSsG6kV/waTEgcH9AADMsfaYGJviNTM=;
        b=k3pIR4x5+wOfjx9lQEO60im9hZ96rrj0z+y5eKQBUKc/aMLuxUQhk06d4qr0J8cT/o
         VACKgdXzQIcO8Ww8V7/xqWlii5sZPH3YZ+ZFDurV2Qo99iqovpiMl5fjBn6p7hLCa61v
         loD9wxBbUmYRITQL6OBUyTTIrCG0/b0AEYF2HeBHAbrtfafFLPuthhR1xM14m5opHcJR
         GTG0DO3ErDPWNbNYiXkEf5H14rqlaBSuIVM38LSA80uKssCVELYsFVlMHeilpmK68etI
         9sDeHmIS++xnJyJREr5ZkpaLXjQra4tK235i7NqDEqarbObSt9HIYH62uw4uQKx35ukF
         KUtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680860068; x=1683452068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHYOqnIdeZEQQSsG6kV/waTEgcH9AADMsfaYGJviNTM=;
        b=iPhPKvypAsvgQin/NFhHJyIEz7LTuTg+ItkuKSH7W7gviJbGMUtRiuHubDkuL7HnqM
         oKHrkNAwsDF7soy00K5n/SquX2VuUeuNjAaqs4dxtCqmV/b458bmygqYnWsFNBDkp625
         zEm8QhdbNhYuXsqvlikstzhk1nnFuImFrtuLtL0aDVLjfmHHoEsW64xqKJvK6jCiabri
         aseIKRf8/ejBZfSEMEwQq/PzxzpQSJV22hF2MUyi6j/K6057mjNQEAcNMZGP1kAUprEQ
         1Xl0jHHtEYsLoW80r6mLaqQ1I+6v1Y1UIHwji/7cStbN/sGhHQP/GEX5QgBeWnK6wpQc
         Qqbw==
X-Gm-Message-State: AAQBX9flBXN7WdeliCGxeIvGe8GIempQL/G0K6ZFyJSmICxoClykoJpJ
        KFM6M+PQnzWTV5fzlTSyyaIlHQ==
X-Google-Smtp-Source: AKy350bHUE4UFLR7A4HheArzii7UQVzEmxq9wP+ITj9W2OkfjTYRlR/FG24WqK5tgspb8CbPkQ9txg==
X-Received: by 2002:adf:e846:0:b0:2ef:b052:1296 with SMTP id d6-20020adfe846000000b002efb0521296mr879884wrn.22.1680860068577;
        Fri, 07 Apr 2023 02:34:28 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id s13-20020a5d510d000000b002d64fcb362dsm4020432wrt.111.2023.04.07.02.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 02:34:28 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Fri, 07 Apr 2023 11:34:13 +0200
Subject: [PATCH v3 2/7] arm64: dts: mediatek: add camsys support for mt8365
 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-iommu-support-v3-2-97e19ad4e85d@baylibre.com>
References: <20230207-iommu-support-v3-0-97e19ad4e85d@baylibre.com>
In-Reply-To: <20230207-iommu-support-v3-0-97e19ad4e85d@baylibre.com>
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
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkL+OhucnBrd49pvMbqIMlZUY8dvmyomr+x4uYi4vC
 eh+C3bKJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZC/joQAKCRArRkmdfjHURVdHD/
 0WCP0DZQ+UKoyCD95Yd9rE6bg3Nr9C4CfmZyQ4806NHa1KO0J+tOvhXn8krVpWU8wXS8vY0148LXmI
 WBB18zc5bk/nSrYOhxr/05jCdr2f+KkAqZtUTx8qc4xMZ8K+DF/cxtya0LkFuVSUOTvSSBZf1501fZ
 nQ+eifAMYStNJPvkjSbUEkQ2lTf0rVgo5Alvz+5ZJPJiqJF7XLGAHNNgHGpg3BTqKBdE5j9OBkNRMg
 vAoyIXXlx2K/f5vFFXqAP+PVhyl8DibiL1a5W+kwZFZbba3NpoKbSayJWbJnXPBTGIpmkcW5tVoCox
 GqMOlGez00z8ErE8MDtZMdaBzMwCyp8aRjcGmtRn0DHIlQWFEgir1Sz4ow8zdRsiTP+CaJyMmkyJBe
 UQjxorXX//VMZbzrzFEf4cIX5LRE1Yg1RhPXHW8ZXPc7cGvA9SLSTK4ebAhj4a72vq+fx7+YfKSJEb
 3mNeo5KugG+2EizgVze7CNOrVEBu/y6iQdQsY7uvpiO36sO6A7pgQ6/PiyeqWtTd77/sfFGKxYpqmz
 ywTYXzT638j/UbhN4VKvlI831lI+1uvrISiXTmE25cPzhG/2iWNXx9hIyYhKFzCeT5VUywB1LI1fKf
 rJHMAoek+0yGDMKNiQDj6zP6P5hMOZf4HP5n1mQ9W6X49hhRjeIkVGbh9RYQ==
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

