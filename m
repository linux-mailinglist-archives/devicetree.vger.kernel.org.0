Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3985B3A6A1E
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233479AbhFNP2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbhFNP20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:26 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 599B6C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:20 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id k25so17350568eja.9
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pllXmoBfaR6v88nI2EZLyWocXDe+jNv0XQ5J5eU4TTM=;
        b=tNhCiBjft4gAGezGOEY01305uPLFvbGlntQ75S9hcVMivlTh1CsHgj1Ts/Pdqtyxxm
         g4L73E/3ZYsp+h3f6oFMn82D+yzuM2SMuE1NlmWIB45oH1/vS59o1s6llrm4PNVC5Fu+
         FZ6csi0dtbkjyVCaKSM8r7frt5X9Qor3xdpsmGVwf2l0FtTYVaIBCSzBgpCqJnHXPwHj
         PJtC+oNLAt0BzSxqGxer3v/VOFT2ctJwBoLwRC/3bVr9ZuVlem7tnXr0yAJ5tq9sIgZE
         UkagtiakPqVCjKzUUJsrN+Q8M1q7XpHnuJostqmbrOCVc427k0jAGt/w0Enddmihh24h
         Y55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=pllXmoBfaR6v88nI2EZLyWocXDe+jNv0XQ5J5eU4TTM=;
        b=FMwGRP66czu4aDeDwsGYdfHRDLxaHquHwDIEJKbD1tzlQLtZEqx/LxKaOM0DyhfDuC
         MrKOJkGHjSguYzT4JDqKr9sZ4H2P0jLnSWDkkmx+zge1uqK0eX8RhNwocGFYGsdVTo3T
         pK7m5oqt/oshoKpCIKdljxE/hw+wuB4vX6QnNbgeStnCPwidgeV1ZcjOLpML+XduETz5
         n0W/JZuDzVx8Obg9ML7mFAZ3y7wxUEXp9qGhUFKtEYke4BVwxnNKFNK6fj5JL3G3I3C/
         PS/X93XuaAUbw0iWQ5mIO5TlKxkPIeiPPRorYQmDxNaz70+1zT6089pdQ9e43r3W2iDK
         7ntQ==
X-Gm-Message-State: AOAM5308xFiesDITKVFm/j5LjSf7/jhaC3vxTo2ioJKxr5Pvlr+KOGd4
        IIkmhLOAdDb5fZcq+gTzSdiJSg==
X-Google-Smtp-Source: ABdhPJyN519iEKLtVvVKu7t8tCtnyNqBAJriCu+SZizb3tk+MUM0VrkFIdsD9TGxuNAku0sClJkqoA==
X-Received: by 2002:a17:906:39d7:: with SMTP id i23mr15653970eje.121.1623684378748;
        Mon, 14 Jun 2021 08:26:18 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id x13sm7773746ejj.21.2021.06.14.08.26.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:18 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 24/33] arm64: zynqmp: Remove information about dma clock on zcu106
Date:   Mon, 14 Jun 2021 17:25:32 +0200
Message-Id: <17973ffda4e163a4b89d4732fe6fc7e089962ae7.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Clock setting is not static anymore that's why it depends on firmware setup
that's why remove this comment.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 2c1c4d96fb21..464a76a13c24 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -160,7 +160,6 @@ &dcc {
 	status = "okay";
 };
 
-/* fpd_dma clk 667MHz, lpd_dma 500MHz */
 &fpd_dma_chan1 {
 	status = "okay";
 };
-- 
2.32.0

