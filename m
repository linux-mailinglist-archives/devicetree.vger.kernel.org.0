Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F3E779756F
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235318AbjIGPrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:47:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245595AbjIGP3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:29:51 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E3F1BF8
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:29:21 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-6516bc20f37so2872346d6.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100517; x=1694705317; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZ73iwqNusewSxtiA/Uk7UFaUGu5HwyIQXNJIc7HXUQ=;
        b=EH6o+hSxak+sDQfdzmWC+9ZpNt6lFonGQsn0GzeKLGkIc3UR3lzPwvoSfXZUh5OVqq
         fp4MfOVg3DYk77mUG3W2NL2XlImiAAGIARc5aHjCTyU++LZRKsnAgL0zxWawu8G4ow3H
         ga3+XFo8DiQu6FVgBpZT+fS8XV1PWp6xQVe+6GZlDZrSgxp2EDw/l+AgrMbN5VxaP14M
         JOvdOUmcMPi1CJg96TG1Zi8lumR0RFCcbEdduFonS3cMNNsdEbpS/ZodhDX/rBfMnRth
         4rM7osAAmK2pyN/sDCTgaY5UU8AtqarefktxDQTcC8st8RSlzosbA6vqbygY7QMLKe7j
         c39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100517; x=1694705317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JZ73iwqNusewSxtiA/Uk7UFaUGu5HwyIQXNJIc7HXUQ=;
        b=JXXG6WsF58Zm1tXDQbjEgOEPfUGYHDzqLeVutQLOrTjfp4I5/WWPJBGgIShy6RPxHT
         2K1XAfG29sCQymKP26zIU4q+9UlQa20G7K9wE7bA6Kn4XIz6saZaBftKMMd1GcDEWx77
         uoTSR9S1iINmB17n0KfdMo4J+auoyRzj57tvzn4HjkevezVXQP8fpxt+i+kTXia09C4U
         +Gg0aAx0W6QiVsBDE745NqFASl412UFALjPgnaJ7iU8jbCAMXn9P452+ctQeZC9TBblR
         jL1yhgucCy/KhZT56Hsz0XvHH+8I0LaHx9ywMfEIGuZyucYOGCHR0v8Y1jmRZNWw7D+f
         dNNQ==
X-Gm-Message-State: AOJu0YzNzNT6IrQ8R2VwtdBlrsjvHwIZKVQWZW6qX7GNSHXoOa5wFlsY
        byw5PNrMNC4zAoIGjw4A8wrMOczQ6FQ=
X-Google-Smtp-Source: AGHT+IGxBAIYk1/qamzMJrYHVkL73ilVx1Oizr95GY1Fp+a1JYr7GcjEzdN1g6ivWKvf1dcJhH+BBA==
X-Received: by 2002:a4a:de43:0:b0:573:2a32:6567 with SMTP id z3-20020a4ade43000000b005732a326567mr16690559oot.0.1694100018753;
        Thu, 07 Sep 2023 08:20:18 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:18 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/7] arm64: dts: imx8-ss-lsio: Remove unused clock
Date:   Thu,  7 Sep 2023 12:20:02 -0300
Message-Id: <20230907152008.491775-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The lsio_mem_clk is not used anywhere, so simply remove it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index ea8c93757521..f5911dac68ec 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -14,13 +14,6 @@ lsio_subsys: bus@5d000000 {
 	ranges = <0x5d000000 0x0 0x5d000000 0x1000000>,
 		 <0x08000000 0x0 0x08000000 0x10000000>;
 
-	lsio_mem_clk: clock-lsio-mem {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <200000000>;
-		clock-output-names = "lsio_mem_clk";
-	};
-
 	lsio_bus_clk: clock-lsio-bus {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-- 
2.34.1

