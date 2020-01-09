Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D46CF135AAA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 14:53:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731370AbgAINwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 08:52:39 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:41662 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731376AbgAINwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 08:52:39 -0500
Received: by mail-wr1-f66.google.com with SMTP id c9so7463599wrw.8
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 05:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NCu2jl/XHfUALT1gSW/oUJuMvhaIfk+GEmxRnskvRww=;
        b=WBiZ04BGf0FD0e3HDXi2zqqJES7l8wIRo5kwT1O3LHGWVo0iDVBf5TA5HzIEFbutg7
         kpUTzFJjPnmXM0h7ETEg8JmgFtf9UqRhqAwlpTTalIxffO2dLm3XPZqNfKopczBXC7Ui
         ZKKE1w56+xR9VK3Caa08qsUnp5SyN/JD2wztdynHE9OsL0DSLgZvIJXQcZDWKWUKe+6o
         4M4CPAxrnDG28z7o53mVHI+9oaaB/qPWXgX4HRF0NniezhiF1ffsTNCtNwaOOei7ovM6
         KZlLbV8Y6Tj6OZw7zDmN/ZsoQdWmTJDRQqwIUCIASQ2Tc+Jk0C/AiaZvY4NVyl2kDn6c
         vYiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=NCu2jl/XHfUALT1gSW/oUJuMvhaIfk+GEmxRnskvRww=;
        b=Sejt/nopw1GkPsNYtqMdB60B+bJW8StmwMCIn2OfbEUA8RctTFgQRkRypA9KJrEKTk
         2m3+QjFYkx6g1IOrQiE19ddJsho4qinwvr+CpuaFHDVFSJbonOnURIi6eg3YFRnS0rlk
         R+NQvomxq4XQw33gsyecM6UK65vchMtbwIu014pH/ZBUmMb6kBB33arxKI2IcdM0syCe
         ql4CLcxHlGLPDoZ6+D48SIlXbIo2CICQL3IcVM7Ec81JPxDNMysKbMoOXpI3u4TkztjF
         PuoSI9UIQVwpUwTVJ79yZ5HMmAwgSX1GAkhg1lnRJSPekIZ6Sb1n5P5tQHgr5hVJyLTg
         VEkA==
X-Gm-Message-State: APjAAAUzy6y3YfltYZNqyYTEaW5nRIa0v4EJsy1evRy7u2DDi4euHyFe
        PjB0/uxXsSg9aqOujMeXRmjFhg==
X-Google-Smtp-Source: APXvYqzlZUNpCtgZo0eIHsRriyQS9df0EhD997mMpVJO2gscTH1ejvVUUg0WzAxElifJzEkjuAAYQQ==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr10940641wrm.210.1578577957079;
        Thu, 09 Jan 2020 05:52:37 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id l7sm8332605wrq.61.2020.01.09.05.52.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 05:52:36 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org, git@xilinx.com
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: zynqmp: Setup default number of chipselects for zcu100
Date:   Thu,  9 Jan 2020 14:52:22 +0100
Message-Id: <227c68a635b031ce20ba2a48a950bf4407c01359.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is only one chipselect on each connector.
Define it directly in board dts file.
There should be an option to use more chipselects via gpios.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index 2b3757dd74cc..a109e82982ae 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -250,11 +250,13 @@ wlcore: wifi@2 {
 &spi0 { /* Low Speed connector */
 	status = "okay";
 	label = "LS-SPI0";
+	num-cs = <1>;
 };
 
 &spi1 { /* High Speed connector */
 	status = "okay";
 	label = "HS-SPI1";
+	num-cs = <1>;
 };
 
 &uart0 {
-- 
2.24.0

