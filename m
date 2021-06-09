Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37DA53A1358
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239545AbhFILuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:50:01 -0400
Received: from mail-wm1-f48.google.com ([209.85.128.48]:37525 "EHLO
        mail-wm1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239650AbhFILtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:49:17 -0400
Received: by mail-wm1-f48.google.com with SMTP id f16-20020a05600c1550b02901b00c1be4abso4081701wmg.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fh8Ijkb1J1EQRbMUlgIiVh7lHaVO6VD8BKhO7+YIbyY=;
        b=D/VNpJ3Luz2OD+p1JYllXDKuVZsLfQlJjEIoHdNrJKGh7AcbH+KHixYNJeuWORUqJy
         ulPePsO/kin9INWcNraTBSAf0IyO7tKfQMnQtCLaWTt8s6iF5AmihmJl8Dte1rDnGyEL
         HrdlLzdvk9hFz+WEMrBxnCQ6ieR+OITGstd8OdeISS0XrbAAq66RvZ3nlQwYDw0S6feA
         hdEgB7nAl+yNNOxz3UVjxvouSRl7UdguUroxoUMRN7Sc3/ZStvQgrSYlnlyTMBL/hinN
         cRpDF4tsidc5MoHTgbu01ByMW1RFnGa363MxpZOb0RKd9U2DGTYNzGG9XjFPk598Nt1L
         106g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=fh8Ijkb1J1EQRbMUlgIiVh7lHaVO6VD8BKhO7+YIbyY=;
        b=OkUIrK1YLZr5igXC182PfyW99LcJqyHMBt5Ebj9OeCPf/h+lF02yjAhfm5LUiFfHhR
         ujlkWrTvnMq3ppqcvO/k1CjRJOrgR7u6WCFxRivnpTB8uDav/Moq1so75E/3otLtkwhs
         t0j/pIqJFZAaTUB36TKqg209K/gG3mnSB9OB0LHrlGAuTYInSmL+yqpzCDf1/o/uHyOs
         9PErvxIs++MrXgfG3qqStlobxXpa1+wZ5julsD0+5JHFEctWtTMU65MaAc06Xxaz4zc8
         1wSXr0XaWFPLGnEk53gFejwVzEDsTxIIcEuOtC9DqveVpW1MyD2OXD/qKwRW7+JWNCqu
         EqDQ==
X-Gm-Message-State: AOAM5309YMXf/fTwvP4tKM/KNnMMXSR0wQERkBw4ebjFoZuqgIF+vUsu
        8Y4r3Vtuse1Jn+wSD/NB2MhRPg==
X-Google-Smtp-Source: ABdhPJycDus8GKbp8t7/Pd8ttcToS1P6blHP7sMp1XcpcIJ2J7Ay0cG4bN89bUuVpSkKiQHZbuDkDA==
X-Received: by 2002:a05:600c:2059:: with SMTP id p25mr26372912wmg.56.1623239167529;
        Wed, 09 Jun 2021 04:46:07 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id n12sm8065135wrw.83.2021.06.09.04.46.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:07 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 27/31] arm64: zynqmp: Add reset description for sata
Date:   Wed,  9 Jun 2021 13:45:03 +0200
Message-Id: <95ef94aafc4abb374900b4e97d99f95eb22c342e.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sata needs to get reset before configuration that's why add property for it
there.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

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
2.31.1

