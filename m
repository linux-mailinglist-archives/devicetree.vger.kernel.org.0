Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB82F6F3D01
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 07:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233507AbjEBFgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 01:36:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjEBFgA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 01:36:00 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9D74680
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 22:35:58 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1aaf706768cso15101265ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 22:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683005758; x=1685597758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFZDahJ1qpozC1mCB3SvMK7u+IXOSO5tIIA+RIrQqiA=;
        b=PXBUVLnKWk2RaXst7QwTMi1l9Rv/rZ7fvx6nBC2A7JYlc9CmFKC1EIu5jPJ7QIMS6c
         SKBgq7TC7bfFQ3DZ8fRgyKKQmJcetwsJ9mDIXWYPJ783niOTh4uZAEarQwAipaexzE9E
         v06qvOlD7KfUV8xoHnqYlrWm7qGTaYbKPROQaCjZ8U2SGJSDl2tymA/QRrDnIaHWmOs6
         TEJS0Rj86YSD/n+Z/lQvRc462Nao5miMC6QyEbQo1nCUcybxIwC0pkK34q5GYH48cXt8
         /FoR+F4PVJyQQpmpqzudEgAY8Rm8G20gDb/X2jKrPoNAlZ+bxxZi1U0zu0Pw7MXT0e/A
         VR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683005758; x=1685597758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFZDahJ1qpozC1mCB3SvMK7u+IXOSO5tIIA+RIrQqiA=;
        b=hxawgAUBEbThJTep9gyckHU9yDn7UZy0cnpitIl0AqbY2a6635g+Sp6oVk2FBHEqR1
         mwQquxtLrgl7LvIwmWirGR2BkTTUZPbxX4RkEkAK8/fcJHGGZ2glk/1Ptvn3mNThi5We
         567OpTP9KoxmP05ZFHeRRAhrUYSmlN7MFsZ+TKUzzl9bS9sR/r7EjzST+eILQS1qUFDh
         XXfE0pmrk5gml7+jJK4maobMWctzZRvnGs/rokZUbYd88eYA3SiZAKX/dPU0iOK//YEv
         F5tzJyVUd2kUcjiNJSF4/EM8Zswmwssya0qKCI/xfdQq45y3oE7NtFYmpnoY64BtuMa9
         2UZw==
X-Gm-Message-State: AC+VfDwzSTLZZ8c0nXBxn6lP3Dfm0xs0bGC0dMnCnldWWVtyVszFo2gU
        CKR9miEDcJpTZn6ZbOv2u3KfXA==
X-Google-Smtp-Source: ACHHUZ4IYyg9BKrQ3QtFVFftnxGNHKN1hOh6WGGkoaaJ/c4bAbcJoGke3k1Hyv12eU5+xl9gieSzVw==
X-Received: by 2002:a17:903:2350:b0:1aa:e0c9:7e77 with SMTP id c16-20020a170903235000b001aae0c97e77mr11209898plh.36.1683005758260;
        Mon, 01 May 2023 22:35:58 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id j12-20020a170902690c00b001a6a6169d45sm18870369plk.168.2023.05.01.22.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 22:35:57 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
        vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dmitry.baryshkov@linaro.org
Subject: [PATCH v10 2/4] phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
Date:   Tue,  2 May 2023 11:05:32 +0530
Message-Id: <20230502053534.1240553-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the new qcm2290 / sm6115 binding.

The USB QMP phy on these devices supports 2 lanes. Note that the
binding now does not describe every register subregion and instead
the driver holds the corresponding offsets.

While at it also include support for PCS_MISC region which was left
out earlier.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a49711c5a63d..ae4710f08bfb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1411,9 +1411,13 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
 struct qmp_usb_offsets {
 	u16 serdes;
 	u16 pcs;
+	u16 pcs_misc;
 	u16 pcs_usb;
 	u16 tx;
 	u16 rx;
+	/* for PHYs with >= 2 lanes */
+	u16 tx2;
+	u16 rx2;
 };
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
@@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0xc00,
+	.pcs_misc	= 0xa00,
+	.tx		= 0x200,
+	.rx		= 0x400,
+	.tx2		= 0x600,
+	.rx2		= 0x800,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_usb_offsets_v3,
+
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
 	.tx_tbl			= qcm2290_usb3_tx_tbl,
@@ -2493,10 +2509,16 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
+	qmp->pcs_misc = base + offs->pcs_misc;
 	qmp->pcs_usb = base + offs->pcs_usb;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
+	if (cfg->lanes >= 2) {
+		qmp->tx2 = base + offs->tx2;
+		qmp->rx2 = base + offs->rx2;
+	}
+
 	qmp->pipe_clk = devm_clk_get(dev, "pipe");
 	if (IS_ERR(qmp->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
-- 
2.38.1

