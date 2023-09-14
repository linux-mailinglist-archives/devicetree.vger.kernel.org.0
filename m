Return-Path: <devicetree+bounces-212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B67D67A04A3
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:59:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BEB22B212AB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D06B24212;
	Thu, 14 Sep 2023 12:58:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E00241E0
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:58:53 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76311FD0;
	Thu, 14 Sep 2023 05:58:52 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1c39f2b4f5aso7083625ad.0;
        Thu, 14 Sep 2023 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694696332; x=1695301132; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gbxv4h8Eb+stnFN9n9SZqBKrtaKHgRljtRTslf/2l/E=;
        b=qOqcis7F08Mt2xlh3PGDt7wFsSVtwliAUL7QFi1tZcOpvhEIW66JctAuJQaeQwewGc
         iAzjG7G1laTDpJr5TQ54X2aclJj1dERsfOaCGs3BKaJkFYrq74qVFjT8SilVJgt2H4WP
         6pP0z9Rcl0WW6+cvAF9Hs+bChv1RdM08Cj/Wo1sBtoUqt32O8q7Cl6kfyrYypjT2cwpj
         OheOB9r1RSFg4mjRoOGwaGQbB3TAVoG9fLmVP8rpzttTQFDTSShYMach2bGVqDIQpz4V
         icXCZ0UlAfmj1lOel/nLQu1W7b/2eg5PGttIWWRCheQ4mEmnbMVPYjAUKihfJkWRHw1i
         Aokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694696332; x=1695301132;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gbxv4h8Eb+stnFN9n9SZqBKrtaKHgRljtRTslf/2l/E=;
        b=hah5fWqhL3Pht+yQunHnC3NScVHjGNj4VVFPT0vB6TAKpzqJUGOlx4RMTpx1fNM2tZ
         LQQHkwS2M4bNyfJvuwGhP0zW4oB9uXeRmHDqgGxkThv2/dpQKTYQaWonWIdo4IaoFJGT
         PhPVQJSKyTduUUUn5Zp3xcmHlQZpMWev2me5tOujVp+sbgQ3WBQMBhWTAiZgq+7HJFYz
         I3vkFCYNyUCmh5AQGy/7PmHVpT8kXdW7IOSdTGM/Fg1LP9fNPvflTQFCknDcnGCf17Ha
         hcCba6fTX94DFzkuQtbPRlarVEf5VTrmFcc28+xMSOAtOuBKdOYlvVppyZToNhSjZpTk
         JF6A==
X-Gm-Message-State: AOJu0YzXpUvCZBUnwgjJhd7jV0UIAkYoEhZq+sI3gMnDzeOsqx+mnhky
	56N0Bvo57DaTGDSCp9FXz3nDduWcQTY=
X-Google-Smtp-Source: AGHT+IHmr8nEWeWKbAswJ+Fi1DDBOh5E/tPwrau6PTlFCxqky+1IVS5faEJr1y2R8r1HkNtOXxUiuA==
X-Received: by 2002:a17:902:b710:b0:1c3:9544:cf63 with SMTP id d16-20020a170902b71000b001c39544cf63mr4994940pls.23.1694696332396;
        Thu, 14 Sep 2023 05:58:52 -0700 (PDT)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id c11-20020a170903234b00b001b8a3e2c241sm1535105plh.14.2023.09.14.05.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 05:58:52 -0700 (PDT)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: patrick@stwcx.xyz,
	Jerry.Lin@quantatw.com,
	Eddie.Chen@quantatw.com,
	EasonChen1@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH v2 0/2] Add CMC of Facebook Minerva platform
Date: Thu, 14 Sep 2023 20:56:46 +0800
Message-Id: <20230914125648.3966519-1-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add linux device tree entry related to the Minerva Chassis Management
Controller (CMC) specific devices connected to the Aspeed SoC (AST2600).

Changes from v1:
- Change adc0 and adc1 "ref_voltage" property to
  "aspeed,int-vref-microvolt" which is defined in the binding file, and
choose the ADC internal reference voltage to 2500000 microvolts.

Yang Chen (2):
  dt-bindings: arm: aspeed: document board compatibles
  ARM: dts: aspeed: Minerva: Add Facebook Minerva CMC board

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../aspeed-bmc-facebook-minerva-cmc.dts       | 265 ++++++++++++++++++
 3 files changed, 267 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-cmc.dts

-- 
2.34.1


