Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B4BA3A1337
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:46:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239423AbhFILsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239401AbhFILsM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:12 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA195C06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:46:03 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id c9so16444733wrt.5
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Zyj2qD3igNfbE2o554S+1NewmK7isTe8spptV2VStGM=;
        b=uATJj90MLOX6sVf2yy13LcASfZ80U4iSafWWZuDLCAUi7cFu2IW9o2HPaYRuAmkyos
         KOkHo9/Zfq7Fz8v7F9h510M+IIC5wRIUXmWIhxg7zE9OVlZgAPOp+d3qd5CjWrlRMRsN
         qHtCmIpeagsqZq1/nAjY1nh0KuPVVORivHxLa6Gn0zRR/E8jv7J5Wmvq3n7DpLIYffj9
         cCRHXOTlP1iG6JTR3i8NC5Ve2LJDXDxkgM6BQPEpnZcMS2kdQLkvKlIYDR+PMayPxJ7c
         ld+4frsVhhY7Vu8YXojCbKSCzdh/bmZEPxzD1KpHlGLdOc4cyVF4kEtZSBo+nW+LwDC7
         dJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=Zyj2qD3igNfbE2o554S+1NewmK7isTe8spptV2VStGM=;
        b=MtsAEwKBK5iqxCWlx/6L3L4X85dqYPpXb0Il6gWzGRrAvOYI9BKEttsGmadNw93ZYz
         bdAVr7Kk3YOGnQaXUiBdoq0qGTsX/SrMoWFRHMS2mIbb7/kVOhfRAzrYJlS6KL/f+a2h
         G8cWQlk3BKifbmTS0RBeA5gZW9HGskAU2xgrUtF3idhUvPgV4dsrcnMkOED8Hh+iDBNa
         yACjwuaXUu3nKzPp5Qsyumyz+yLluzBhvwTdHLKB2pdQGFA092DGiWLliP+Mu0mN4/1L
         U0+FUWs1O12o0hBhD/VQtyFjCpQ6O44F4p6MbUxHG9PLC/CHiHGEYn1rbGQ2DMDsURrM
         4yVQ==
X-Gm-Message-State: AOAM5323dZuPegqT7mCSOa6MvKSQW1722dBPVr1OLydh3DuPqodgvjiP
        5F6pskOXH/vvbUzmoaZDe0MVEQ==
X-Google-Smtp-Source: ABdhPJwkMIqiQ0Rv0FZopdOGc2NgCynivFN/KI1KGd8g72kcm01u8oTjXImZKv43HgnWsasGZGC8GQ==
X-Received: by 2002:a05:6000:1889:: with SMTP id a9mr15767835wri.288.1623239162477;
        Wed, 09 Jun 2021 04:46:02 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id b15sm10337551wrr.27.2021.06.09.04.46.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:01 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 24/31] arm64: zynqmp: Remove information about dma clock on zcu106
Date:   Wed,  9 Jun 2021 13:45:00 +0200
Message-Id: <fe7e8ebe44bbe34ea5e263c835ca1ab9aa0c69c6.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Clock setting is not static anymore that's why it depends on firmware setup
that's why remove this comment.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

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
2.31.1

