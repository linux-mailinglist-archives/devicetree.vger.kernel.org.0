Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C164B79E447
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 11:54:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239552AbjIMJyO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 05:54:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239584AbjIMJyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 05:54:10 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B975C19B4
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 02:54:05 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9ad810be221so243370566b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 02:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694598844; x=1695203644; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y61vDLY2d3z1XABw8fo4c9R1eNGV9j8r0ag87ujCd/s=;
        b=vUYpN1T4xXsSYMKRj6j9d5nyc5Pg+8XJitpgAvy0deWkpspw6AxHOMGy+WQkPD5H7X
         9q75xgHSA/W0rMTsSPTOJhW7n9dEZzqzZGqrYz87wAYfXgB2sEK597y0TmF2BhukEf67
         q3Eh2RMVTN8K/Fk6BCJGOLTHCAAcwc1vs4yNkpMtWPMH6vxdCN9Yps8dIR8kTEf1qEH2
         2DwqbanxuzpN6n/mTqrpwiSg1+PjUkTkb2Df4uHstyOY3TKbhjo3BNkj8+5osAMrO+zj
         aI/mNRvkjY3BQDhaStvYnbpy6XOxTIyncIy54ScOAinNf7nZcFw2z9MWMsu9dAqbio6J
         I9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694598844; x=1695203644;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y61vDLY2d3z1XABw8fo4c9R1eNGV9j8r0ag87ujCd/s=;
        b=H98+qAIoL/C8qTX0vqemJC6KEaJV2sEhW5EmtqgMx3sXD4JQVROPgYxWKk9akDSyz6
         /ebaXwCezXnXfaSglZbCz8fxuD7unxgF8VrA9FLoJzIYYE9GLUtzvM43EgEPh7WbC0S7
         u2mxBEa3Pfp6qC/nsQwNgeawJP9ETeYjK5k/8SJHeodPb+nxHCxFWCrr1vmApk+HBDje
         8BZMvYuDPa1n6JRwDeOH3KZaWpvVF7akZOqgNoUSyGyqGPRcUsBrJWBkdFJl9m4DbI+7
         knH4wxzpCTmOLArrkN9MfAA1kfodFB4f0KyPJwJfGX1e3x13njk6x81i3cPmp0mzYTSS
         CZqA==
X-Gm-Message-State: AOJu0YxMK7s8XKbeVfzhFEwYszrK3d7JocFI6J2EdEtg+Kff448tEVgx
        jxF8n/l0flS6alBjjF1CPPLUzIgIyYAqYTEjGO3aWQ==
X-Google-Smtp-Source: AGHT+IFq5xptVCdrvn1Iw7ewtXMqSOxhBecllLxs5hb0dwAim5rm5D+Auq3O1vfHh7PKHxaom5Tmng==
X-Received: by 2002:a17:906:319a:b0:9a1:c00e:60c5 with SMTP id 26-20020a170906319a00b009a1c00e60c5mr1459575ejy.48.1694598844117;
        Wed, 13 Sep 2023 02:54:04 -0700 (PDT)
Received: from [10.167.154.1] (178235177106.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.106])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906939500b00985ed2f1584sm8092669ejx.187.2023.09.13.02.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 02:54:03 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 13 Sep 2023 11:53:26 +0200
Subject: [PATCH v2 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning
 overrides
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-topic-eusb2_override-v2-4-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694598835; l=1798;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=vlWt+/crcyxMQdUhFQmb4WOVKaBs0wbkNDm3+xQ+iBc=;
 b=rj7SzS4MbUgXjzqv55kbUGwKD8esrMRttXxGkS+rICUBd8qFKbouTxfru32W5y6X7a00cfv4x
 32ZjJI8ZlwwBxD5Fbcx78qPt7e2le1FLdTFvkRx6e79+TsMPkhHqPYH
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are devices in the wild, like the Sony Xperia 1 V that *require*
different tuning than the base design for USB to work.

Add support for overriding the necessary tuning values.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d4fb85c20eb0..a623f092b11f 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -142,7 +142,9 @@ static int eusb2_repeater_init(struct phy *phy)
 {
 	struct reg_field *regfields = eusb2_repeater_tune_reg_fields;
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	const u32 *init_tbl = rptr->cfg->init_tbl;
+	struct device_node *np = rptr->dev->of_node;
+	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
+	u8 override;
 	u32 val;
 	int ret;
 	int i;
@@ -163,6 +165,19 @@ static int eusb2_repeater_init(struct phy *phy)
 			regmap_field_update_bits(rptr->regs[i], mask, 0);
 		}
 	}
+	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &override))
+		init_tbl[F_TUNE_IUSB2] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &override))
+		init_tbl[F_TUNE_HSDISC] = override;
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &override))
+		init_tbl[F_TUNE_USB2_PREEM] = override;
+
+	for (i = 0; i < F_NUM_TUNE_FIELDS; i++)
+		regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
 
 	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
 					     val, val & RPTR_OK, 10, 5);

-- 
2.42.0

