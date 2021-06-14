Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 863EA3A6A2C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233814AbhFNP3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:29:01 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:41967 "EHLO
        mail-ej1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233473AbhFNP2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:48 -0400
Received: by mail-ej1-f54.google.com with SMTP id ho18so17334657ejc.8
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5iw6j+So2xja7Nn4Xb1YrsDecAqpw6fkQHzTQiHGVHA=;
        b=qSvvAdOX5mhRjZUmyzK4S23UaMb7KfvYGdwe6Sy5Ej+Vieew0MAO0rlnhzNlO0pB7C
         IKQNpIM50XdwxqyC+PSbjeWBOTieycwqGtEMxnWQN76mOSAVXp2sy/YS85WCLbUwL53H
         hmdhaCbV2nMYDOLlUf+DNzYcWCIXcmVvGQ/BPwzJxJkGOzIlx8oZ6QYkzFAtz8KT18Un
         jLzzAlZ8uN1jT4Soz8PUuOO9n8VxCFL75S6652Y4TkWQk96kNHJyxBFiVSolamHebayS
         0pH4zuhYXZNQX62Eymg4XYFJqzkUGdT8Tuuj76V69MyjNGg33yI2+/1S1v+BYKfFiUhW
         qzqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=5iw6j+So2xja7Nn4Xb1YrsDecAqpw6fkQHzTQiHGVHA=;
        b=UhuLBz0+MPnFC7hRjE+T9UWAIG3c6R4WKXmhswcCype7wbaT6rAAbP3rf/QaAWGJrB
         f+d9AXVlkon0icjzgxbLY64xSbp/i5C2620ph/Xz+uN3nQP9TfGth0E7OAiuhQnfPlUG
         Em2w117XDjlFh3GRoIZFrPGVCk7qYWBqj370k9C9cdkewJqvF/GdF+ZW81FFlDdrs9Vq
         dB9LoMxhADkRu94itjWKb+Y4xuMLC0n42d5UkhWb9+2P217q6VgewgVFI/Q1b7ngMeJu
         9ihajfKUUSAROAXTILqEYtNSfbLQ/geJkCojJjV5CD4+Hg/huq66+H1RzeEIftYprzpl
         gulQ==
X-Gm-Message-State: AOAM531SL2/CoJs2cj1AbrY18i6+HcpPfJ0t3z0tVcfo610VTtKXNhBo
        iWonp53sBWY6xDEiWiTla0jc4Q==
X-Google-Smtp-Source: ABdhPJwCZ5cS8EG+THRZjNALzkSt9eTuJYnFO99d/1jawrSh22DbwXSYnzfgJyP5/MAlrM2bRiJnPg==
X-Received: by 2002:a17:906:d297:: with SMTP id ay23mr15727124ejb.418.1623684345058;
        Mon, 14 Jun 2021 08:25:45 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id q20sm7835389ejb.71.2021.06.14.08.25.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:44 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/33] arm64: zynqmp: Disable CCI by default
Date:   Mon, 14 Jun 2021 17:25:09 +0200
Message-Id: <f507d45fbaa0bd31f641e758efa40a2532466ced.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no reason to have CCI no enabled by default. Enable it when your
system configuration requires it. In Xilinx configuration flow this is work
for Device Tree Generator which reads information from HW Design
configuration.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 28dccb891a53..302ca0196c34 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -245,6 +245,7 @@ can1: can@ff070000 {
 
 		cci: cci@fd6e0000 {
 			compatible = "arm,cci-400";
+			status = "disabled";
 			reg = <0x0 0xfd6e0000 0x0 0x9000>;
 			ranges = <0x0 0x0 0xfd6e0000 0x10000>;
 			#address-cells = <1>;
-- 
2.32.0

