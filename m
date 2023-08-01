Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C12B76C0D5
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 01:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbjHAXYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 19:24:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjHAXYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 19:24:52 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B810212D
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 16:24:51 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b9c55e0fbeso90035651fa.2
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 16:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690932289; x=1691537089;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vbt0bA2vtJ4I6j31n3aihe8AvCrhG46XQMCV16xbf8o=;
        b=wNWpzTKZEofovVBxxteGMwt/lOYDgL4J4RwAtSUL8jHYhAQAgCuh+vkacq2rbgeB58
         Y4K5ljzBSrNOSf4BUzBKh/Vn+4e7FCwRO0SjYsmlz0ZdDMKphcQ4y9rhrijvsiVbYpjq
         VLItab6rM+HsuARPpUjPopTa13rtvkf0TFJTovMvbP84PrPcgCsvI3L8GuAi9ZZyYXT6
         cIXkCJlgkhmoNGM4yaHQ9YzSLmvlHL6CCn1tlTetfZVjJI0xuL4ACC2cLal2ZyqxLE6W
         GsgRr10OryqUpqHzB2VbyhqjaKb0/lxv1ggQspOpAutD1HDLjqRFBmu2/wOAouiVCBz4
         6DsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690932289; x=1691537089;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vbt0bA2vtJ4I6j31n3aihe8AvCrhG46XQMCV16xbf8o=;
        b=NNcVe0te+ZdBEBuvwLZwkky6Hbo0QMtiCuxgoDDJAu5Xjwzi3QVGGr1Fce5B4yuYcj
         z+2JPSIoDhjqUgNnvA2UxT/Yku/7eC6ycc2bLDhNMCxtyYAfRlrware9nyrw7MV8atfU
         wFm7CwcrGU+4Fa6dehR1LMR+JZUkCa7HZ5MTp3SHQJtx1xhpfEUOavuQkB8d6nl68oHm
         mDNIbM9iDNVU/P3zGeLKVpysS2JU2I6QMGdRRMTrcs37Fq/FFcydxVG4cxFzICovsy2O
         oRWpimCYUHAyO2/X4uG5HrGBxLubeIp12EfeOqahLKvGLPaQP1fx2lWltJOvHT4APICI
         imIw==
X-Gm-Message-State: ABy/qLaxkMQVuS+Y2ZsVLT5QZLcSwgMeFW1M7uRNHx9l49HwkGy/miPU
        Lp//eQyr3rN3byj0NDvDLz8kcA==
X-Google-Smtp-Source: APBJJlFJVViNneYrvf+aQP2IjgfXCVQOW6w1UV7H4I+buNW+BCQnbLiMlr4HR9VCula49VNeDm9eiA==
X-Received: by 2002:a2e:95cc:0:b0:2b9:ebbd:be6f with SMTP id y12-20020a2e95cc000000b002b9ebbdbe6fmr3557552ljh.3.1690932289436;
        Tue, 01 Aug 2023 16:24:49 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b9fddc6d85sm433329ljm.62.2023.08.01.16.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 16:24:49 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Kalle Valo <kvalo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: add wifi variant property
Date:   Wed,  2 Aug 2023 02:24:47 +0300
Message-Id: <20230801232448.4175662-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RB1 platform doesn't have board-specific board-id programmed, it uses
generic 0xff. Thus add the property with the 'variant' of the
calibration data.

Note: the driver will check for the calibration data for the following
IDs, so existing board-2.bin files will continue to work.

- 'bus=snoc,qmi-board-id=ff,qmi-chip-id=120,variant=Thundercomm_RB1'
- 'bus=snoc,qmi-board-id=ff,qmi-chip-id=120'
- 'bus=snoc,qmi-board-id=ff'

For the reference, the board is identified by the driver in the
following way:

ath10k_snoc c800000.wifi: qmi chip_id 0x120 chip_family 0x4007 board_id 0xff soc_id 0x40670000
ath10k_snoc c800000.wifi: qmi fw_version 0x337302d3 fw_build_timestamp 2023-01-06 01:50 fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.3.3.7.c2-00723-QCAHLSWMTPLZ-1
ath10k_snoc c800000.wifi: wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
ath10k_snoc c800000.wifi: kconfig debug 0 debugfs 0 tracing 0 dfs 0 testmode 0
ath10k_snoc c800000.wifi: firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi crc32 b3d4b790
ath10k_snoc c800000.wifi: htt-ver 3.114 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 608bb119ff02..166385971d7b 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -536,6 +536,7 @@ &wifi {
 	vdd-1.8-xo-supply = <&pm2250_l13>;
 	vdd-1.3-rfa-supply = <&pm2250_l10>;
 	vdd-3.3-ch0-supply = <&pm2250_l22>;
+	qcom,ath10k-calibration-variant = "Thundercomm_RB1";
 	status = "okay";
 };
 
-- 
2.39.2

