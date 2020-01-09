Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F3504135A5C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 14:40:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730910AbgAINji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 08:39:38 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35780 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbgAINj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 08:39:28 -0500
Received: by mail-wm1-f67.google.com with SMTP id p17so2894827wmb.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 05:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GqLLvQg0ATNSkIqLQkyWCN1a7OI6F+wbBlqHUwVhDqw=;
        b=KZUsxg5zoTR27cOYUpRPW0MMQGUMVqL8dSxF38ru+enYB3/9og7B6YHPMqXzyw5FA0
         YZQdS6H/seiUdrmxrns7fTSM8XQ0jlus1MDonLPscioPzx6kXFzT0CGlpcSXghec2X8w
         RCFLDtpL/n8u6NBe2fHgLItRs/2aPqHNh3O3TXkiEIfd7ZmqWKG0bFmN1Q3KryAB1/R3
         YVINW4DMINnoZymQK+Antr5KLEVLxPn7E0QFwJWS6732bcFfvzl1uY/Xpzq3hftFK3iD
         zefZY/ambvqr10cx8eUB3NukWMWIRr7O6MAx+3BQGYHs4LgJuY/RRB7XDEItQZRe760N
         0ULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=GqLLvQg0ATNSkIqLQkyWCN1a7OI6F+wbBlqHUwVhDqw=;
        b=TAcQCuwqW4iBcYQ59HdChZVrc5QOee/nl3/3eU0r/au8izgqkT2b6G9Va/PD5A9t7e
         7bjQouoM0cYIa2jnnrI7g9ImTgQJcubWtkxR02J/ZqnkRWJH609UPh5o23aAGV0K1lhO
         6VIViJSkd5b1pKv7wXm019TXxCYxobBVSIVJ38hXO2D07qTzopJOj7A2cRufN80YrSiB
         X55QnIn5sgoMZI9TLZzPkl/20TYoQc1PC/ArpOXo/kwm2X48e14TbyAOOXE9vTlMik8K
         C4tQpL1mTtEZ64uK/WGFSw/dRfxoYYSrtNMk055oa6oCBsbaIlvStnv/Tw4KYypu3eQf
         UIsw==
X-Gm-Message-State: APjAAAU2di7CFOI97mnbqGyE5lS135eZN2abVVbUj/KqwYmVKl6CQDEw
        s31D603mmvhkLWQFlJzw8cDdPA==
X-Google-Smtp-Source: APXvYqz8lgccZsUdV6UcoZDn9lP0mGIaJjc7CrvVVs2WxQzH/y/hefKVpUtfJMMVEspmFeMBK37knQ==
X-Received: by 2002:a1c:ddc5:: with SMTP id u188mr4750512wmg.83.1578577166217;
        Thu, 09 Jan 2020 05:39:26 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id g21sm8673580wrb.48.2020.01.09.05.39.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 05:39:25 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] arm64: zynqmp: Remove broken-cd from zcu100-revC
Date:   Thu,  9 Jan 2020 14:39:14 +0100
Message-Id: <0976295a021145b7b1ef1f225b7c6314c91f0daa.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Card detect bit was broken on revA and it is working fine with revC
board that's why this property can be removed.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index dd60f7d85cc8..2b3757dd74cc 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -226,7 +226,6 @@ &rtc {
 &sdhci0 {
 	status = "okay";
 	no-1-8-v;
-	broken-cd; /* CD has to be enabled by default */
 	disable-wp;
 };
 
-- 
2.24.0

