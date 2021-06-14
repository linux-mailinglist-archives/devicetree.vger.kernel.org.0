Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 319CB3A6A35
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232776AbhFNP3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:29:21 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:39466 "EHLO
        mail-ej1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233473AbhFNP3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:29:03 -0400
Received: by mail-ej1-f44.google.com with SMTP id l1so17269716ejb.6
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H1by+ic5kCnkZmbZYv5aysS3H21LtClorSioqqWHafw=;
        b=IqtJkfzKCBwjHdoK6vpmKpeEReUBWVeyUMEII6oTIAkqgaYGDchYjNep1VE3LM+rIA
         VtFqs6KtF1QgXnWZLvynv47pSQ83jzAYR6AKlHBcj/b83w+owKwe/bhm71GIgep1gL3b
         s5iHrZ/2zHOI6YyjmI7At/yOz/btH7D+kfVF4SJxNnJuSW/48leXeWhLX7qpUQP59zyS
         m36v/MqXiEmhkHrxaGgI1HttTxeoc3a3ljXT5usttsdedtRIO4LcP17XIEI3paB5D2++
         q9WajWHUQ4PBv8kPy9bPvHh8cLU0pta14Gyh75KnQo2pzqO3wqjMtu5TLi5ty+OogtzB
         AC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=H1by+ic5kCnkZmbZYv5aysS3H21LtClorSioqqWHafw=;
        b=Is2zCrbgghCd6B98l8s80gOH7r+Hwrvpy6Er6bL8OOxo/jcjwZUQ4BWVbt9l1Fbg2Q
         DMhFBlFkjGQsE5PeqlGv8ag1P9xfmYyOJ7AmNRKPNayUON8W62i5wHKu2kCrgB6xvnIU
         CM53VxQyTCZb2oP4oxoHJXVi7QFCEuljENE9eWJvOEZ9rdR7zBxkOKToi3CC+FURmo3q
         ZkhCR9C4a1tE85dMVhHwkxClAp2YmRJsj40erWCAZSWqBllOL2Xv6rh5uco9L9kclBl6
         0uNZNxR5p7PH2RowYYR+1JNX0miUe13lMjg917n3fSCJZlxj/AwjTTtdTTVgsTa1RVeP
         Eicw==
X-Gm-Message-State: AOAM533fDo+rJyVOrwsrYx7HMGoA+nhnEm02GrLiqHUcVYFL6eMI4O2a
        hQpT1Poocc3PyL05IVDXRWtjRw==
X-Google-Smtp-Source: ABdhPJzVO+UgZYb8aPkMsR8xsBqbPViqBvy52IbZFOUjxN2aDJ8jtcclViCcGIlTVQWGMFtQBrN9wQ==
X-Received: by 2002:a17:906:b7d7:: with SMTP id fy23mr16221416ejb.49.1623684359512;
        Mon, 14 Jun 2021 08:25:59 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id y10sm8911757edc.66.2021.06.14.08.25.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:59 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Stefano Stabellini <stefano.stabellini@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/33] arm64: zynqmp: Add missing SMID for pcie to zynqmp.dtsi
Date:   Mon, 14 Jun 2021 17:25:19 +0200
Message-Id: <43f21f5033f7806fba049474bced6131c8cb98ba.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefano Stabellini <stefano.stabellini@xilinx.com>

The SMMU is disabled in device tree so this change has no impact.
The benefit is that this way it is in sync with xen.dtsi. Xen enables
the SMMU and makes use of it.

Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index f860e90ea2a6..3fa0517cfd98 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -636,6 +636,8 @@ pcie: pcie@fd0e0000 {
 					<0x0 0x0 0x0 0x2 &pcie_intc 0x2>,
 					<0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
 					<0x0 0x0 0x0 0x4 &pcie_intc 0x4>;
+			#stream-id-cells = <1>;
+			iommus = <&smmu 0x4d0>;
 			power-domains = <&zynqmp_firmware PD_PCIE>;
 			pcie_intc: legacy-interrupt-controller {
 				interrupt-controller;
-- 
2.32.0

