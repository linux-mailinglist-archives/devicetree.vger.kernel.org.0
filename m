Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 366B55215DB
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 14:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241012AbiEJMxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 08:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241982AbiEJMxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 08:53:40 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D68D31A90D2
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:42 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id g6so32743637ejw.1
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rh7zG3O+Dy4PqpKCp7MegLaCEpXOxU3Krg/xiQKb72c=;
        b=mEaxFctqsTHdBcLIalNT2qesrKkXCjxZ+KRAhzfJFylEcKD2S2V1rxETfoPmbfXSzJ
         6VWHR/tF6avmcYxvstkL6xgtE8/RSJxkgmaOxaGvcqmxBRZj4jpRbN5erWg3n5msAcBE
         xu3sUbPV2SbZ0NDe4bUlTzLDtKgp4RmbCYz5OPandHrW8fXcHjX9o3961kkmjXlnk3aV
         ofsVRiFO7sxrUQAMfw2Bh7ZGsZUVEmqyxBCwswNXUQfnMbNuAdmYgUNEop8cCTl6XjzZ
         gOFBonIPUnMp8jdkm9Vz/R2IQc7V+1BP2eUIrftVJdfpNA2os+q2PKB1kM1ba/h0fr/B
         cigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rh7zG3O+Dy4PqpKCp7MegLaCEpXOxU3Krg/xiQKb72c=;
        b=zn0jGchMPztljyQi9APg786qQ3duC+HrwT/JCPDNdQzzvpzk+slGI8VX1d1tKuohek
         E6v5RhCi5e9dKt8QieLssZVFP8xRV0fKT6S5LVJ//9hnRYdmg1Q4zDhpi9UDp6Cq7HHS
         5CEtFx5CTeElPzC/NCoMTEuBjqykDP2VlH3Hu7XJOMVNNVVM+bRnp4xoqiHtDJVSWjke
         5eDtFyNiWq7D4rKhjGfhweKoMa8+IBy3qafLkzPh0KkDfVYBWM1GGZAMBkrI+SpnMIOd
         DTC7crNRgY10Lo2dGBZdqQD8NUTx3/yVI7n8GzHWtAld678xOU/L1Fl8Jz9YKrBhNYSD
         eZLw==
X-Gm-Message-State: AOAM5310rY6g5rW9DfcNt3+C4gtXrHtslzPyGfu9FLDh/H/keAAmBGpz
        23xqbxNCaw3bog2OaEBudB9s6w==
X-Google-Smtp-Source: ABdhPJzjo+vdG9doTVuwRWdtpMzEi+0zXLwcOsy9bJCJl4lz2HVWw99XaCsbRevLne3guGa+7ZsfRw==
X-Received: by 2002:a17:906:804b:b0:6f3:8d78:ffa8 with SMTP id x11-20020a170906804b00b006f38d78ffa8mr19686161ejw.588.1652186981406;
        Tue, 10 May 2022 05:49:41 -0700 (PDT)
Received: from fedora.robimarko.hr (cpezg-94-253-144-75-cbl.xnet.hr. [94.253.144.75])
        by smtp.googlemail.com with ESMTPSA id gz14-20020a170907a04e00b006f3ef214e62sm6094290ejc.200.2022.05.10.05.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 05:49:41 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, pali@kernel.org,
        marek.behun@nic.cz
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 05/11] arm64: dts: marvell: uDPU: align SPI-NOR node with bindings
Date:   Tue, 10 May 2022 14:49:23 +0200
Message-Id: <20220510124929.91000-5-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220510124929.91000-1-robert.marko@sartura.hr>
References: <20220510124929.91000-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SPI-NOR node should be "flash@0" according to the bindings, so fix it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 62fce6f2a3a7..4ae1688e6627 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -99,7 +99,7 @@ &spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi_quad_pins>;
 
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <54000000>;
-- 
2.36.1

