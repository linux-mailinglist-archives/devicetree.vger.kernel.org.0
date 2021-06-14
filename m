Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2903A6A44
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233855AbhFNPaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:30:02 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:40532 "EHLO
        mail-ed1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233775AbhFNP30 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:29:26 -0400
Received: by mail-ed1-f48.google.com with SMTP id t3so47085307edc.7
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dDT5rlW0N7H4VvpBkB/rB2GqsHgubckjDkxPaOtr/xo=;
        b=eSdx8zyzDm9ucytlOww51RgKl5j8xPNdBuP/pNIZGcFWXEyWFGP+oXDdaYOrnRAns5
         tCvBx0oeOsaaHUTxQdrwTGlW6z6uIhzqYhlz3rHiXJcACTp7IsBNiDbjhl/osXSNqIKK
         W2D5kGv1YQESPcMPI90eUooFkDqjB/bpjfHERtgkN/j31SHejexuPCo7a7pk9s+L7C32
         tHxW8qbvfGze3OtqwQGh5SlRiPJOX3mYUfld3q42yC4/EGlyKeqExxdFSEmbgQA5crds
         U9WenDMH3VqOvivbH0PmGOBRYE/a7WPAu1qhcJqNmluqGokalg/MQ2Mq4xNA3nPoExV2
         IwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=dDT5rlW0N7H4VvpBkB/rB2GqsHgubckjDkxPaOtr/xo=;
        b=NR7zoYxkQhJQTwmqCgjvpiL6Ho3qLtPwOvsRqDTgCrF6dMcH1xV4ivd4t9isjnigxq
         XF/oRZyXuIfLpyp9J6aJI7blWLGiIEzQR3E3Pk6qNWoYYFu+6WQPR2IvqRH8tBDyetFR
         WXMZiQ/tRt/r8QG3k+nNvUduguu1j2f9dSkJX4Zezjn0AeQJv2o0IH2Qt++CPK6wQ8pT
         zME4SW7GZwXzf35dDsVjw3osCwUfLZHK3IMuI966TI3IDteQ2cCVrbcMhkm8DGNqdQXd
         Op6BREt4v/3DWpdkFkDcybV/Z6l5fP6DNsXHMdCZumHVyD8COJbYxaoiIVDbAR96CCwc
         FBdA==
X-Gm-Message-State: AOAM531U2TI6jyXnJwcfi5q5LBStWKhH4xOs2bNKLVnXrzbIz921jtjo
        ne632k/YTY7QWXu2wH5x4wRx8Q==
X-Google-Smtp-Source: ABdhPJzUsfoA0QONluP+sE0c5qOTK68fAZbX/3ipyn6BYTFQ1TPq5xaTcq4t3zQ1mjs0pJuSKsmpUg==
X-Received: by 2002:aa7:d5c9:: with SMTP id d9mr17497072eds.278.1623684382874;
        Mon, 14 Jun 2021 08:26:22 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id s18sm7948219ejh.12.2021.06.14.08.26.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:22 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 27/33] arm64: zynqmp: Add reset description for sata
Date:   Mon, 14 Jun 2021 17:25:35 +0200
Message-Id: <b7f61daa2fe1a2300767af73c46b8082088f741a.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sata needs to get reset before configuration that's why add property for it
there.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index da54a2d35552..6f0fcec28ae2 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -673,6 +673,7 @@ sata: ahci@fd0c0000 {
 			interrupt-parent = <&gic>;
 			interrupts = <0 133 4>;
 			power-domains = <&zynqmp_firmware PD_SATA>;
+			resets = <&zynqmp_reset ZYNQMP_RESET_SATA>;
 			#stream-id-cells = <4>;
 			iommus = <&smmu 0x4c0>, <&smmu 0x4c1>,
 				 <&smmu 0x4c2>, <&smmu 0x4c3>;
-- 
2.32.0

