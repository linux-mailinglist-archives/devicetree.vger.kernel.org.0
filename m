Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9AE277CF6F
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 17:45:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbjHOPpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 11:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238192AbjHOPo7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 11:44:59 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D6E10C6
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 08:44:59 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-68859ba3a93so378277b3a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 08:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692114298; x=1692719098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tA3QjSCigQ8q8wip9gFTKQkaEIdBJK1A3l6+t1K7Bv0=;
        b=ejBR2jtUerzx5wnrj86G8N+bYfois34YCppqR75oLTPLq7/QzDutph+WKgbHb9TqkQ
         BRwskwQ64WTnA2SvrsJQrwU2R/Yf0P8FKH2BrA2mU1DIq1lqfoHLYujw3hlFqPKexAE0
         PjCMKLHX9eH8M7wWAqubZGqfJFjytNf2qHyGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692114298; x=1692719098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tA3QjSCigQ8q8wip9gFTKQkaEIdBJK1A3l6+t1K7Bv0=;
        b=PKLVOFGbQOevxTa1T18lTs1EYyigIPcs7Nq5GleeEcFDKAda7eWnLPj1YJtmWBYgm3
         BdsCEGppXhMTZluM4tsNXwqOklEkXl55ZgcXzUvm9x9H3fWo7PdByNdRMeGMWgj8bp/X
         boPWdsyZ70yi/jsC957I2EqXUqQzm8hv153/r84EgvSIwkmoK80kO8efxR+fiVIOo1z+
         qgKMzg4okUcRIVgYJirNeat2X0Al+Giw6tPQfPsWWdg2C0slwLvuhrH6kboQsoBSF12Z
         GbhuDgY+MXo56LTHepjHK9V3WOeNh+AaYIG0UEaPbz5vvjPuTFd+Nc0TbDf0X6Fk21SS
         Hc2Q==
X-Gm-Message-State: AOJu0YzYS4JSCuyiUuc+mL6Vt1iZUIGsKnxsokI58G5uWIJfqia2hcU0
        njK14I05UJHd0LYqQNPvo+HoHw==
X-Google-Smtp-Source: AGHT+IG+MhhXs3J/eE7KIJtSsSOonQIqrRHLUlpGdM77zZQi1lncYBUpQPdXQrlw7WkocLYr2AbghA==
X-Received: by 2002:a05:6a00:2305:b0:687:2fa9:532d with SMTP id h5-20020a056a00230500b006872fa9532dmr11655270pfh.17.1692114298463;
        Tue, 15 Aug 2023 08:44:58 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:40cf:3807:f8c8:2d76])
        by smtp.gmail.com with ESMTPSA id n13-20020aa78a4d000000b0065e154bac6dsm9431247pfa.133.2023.08.15.08.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 08:44:58 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8183: disable quad mode for spi nor
Date:   Tue, 15 Aug 2023 23:31:54 +0800
Message-ID: <20230815154412.713846-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
In-Reply-To: <20230815154412.713846-1-hsinyi@chromium.org>
References: <20230815154412.713846-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the SKUs are using gigadevice gd25lq64c flash chip. The chip
default enables quad mode, which results in the write protect pin set to
IO pin. In mt8183 kukui, we won't use quad enable for all SKUs, so apply
the property to disable spi nor's quad mode.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 6ce16a265e053..8e4761e2b8ff4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -877,6 +877,7 @@ w25q64dw: flash@0 {
 		compatible = "winbond,w25q64dw", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <25000000>;
+		disable-quad-mode;
 	};
 };
 
-- 
2.41.0.694.ge786442a9b-goog

