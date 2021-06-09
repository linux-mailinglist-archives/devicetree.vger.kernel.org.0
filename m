Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BC8F3A133E
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239492AbhFILsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:33 -0400
Received: from mail-wr1-f48.google.com ([209.85.221.48]:36831 "EHLO
        mail-wr1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239404AbhFILsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:21 -0400
Received: by mail-wr1-f48.google.com with SMTP id e11so14938443wrg.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YYuLc1LqPr72hqNJJCXhm/SbKZfu9G6M9dH7AziyJJw=;
        b=UyMMRjDC6VShzzWvIHSx7+UqtXqhNcJz3bercrMmRU9+n4hkqIHrNgAu7py1aOyACO
         teT5BWAlmV/lIf2SOqKSyVQqBG02wQARco9V6K94mAvmbYUbnJzMwDrmOia4K8iGOLBP
         Ddu65qYKKguvQmqp+wPbPM/lGh7JLZGK4QFaxNwgw/uQVbsz4VrcEIsNIsH1Zd2cpXLN
         ApwwVRW26PCFAj94y2jGVEb8T3qMZbTFNnrhmeTkO5q94irEs8KXfo9ydEHWofjnFcsd
         vRtvFavKU1JYguyN5/RYjOatnWyJGIoolTIkWHW79U+R2NAmtFgVtxemafWQjO0Oj2BO
         SVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=YYuLc1LqPr72hqNJJCXhm/SbKZfu9G6M9dH7AziyJJw=;
        b=Ms3TMnRs/qiVz7I87u2euy8bOA17cvargA+Ls+oM+d+VmJeIZE6hAvSmT+SfKQ+v5M
         EVO2//C1bcqBE2nUplQvOrBs04yM4wCbgJtnwM3m0bt8F4JCBB4du4V2CoJhrOyCESgb
         dw/OgMYHERJPELxpmeWvQrQuPel1Moht0h0rlLFRGgkCQBlcTS0VoHJCMbeMUq+WvkFu
         0i9qu6WPje3BXE7YtyCTitFTD2zn85/WctCVA/3lWyJNU5RJ+5Co8crGYpvKJj1egWHB
         dYBR7s/tx/jQfDIJVk+4Ae5GdiK0PFCj3Bq3CJzk7X+qqkEzrNbi6Cdtn/NFejhWj9vd
         //BA==
X-Gm-Message-State: AOAM533luu6Ih6KToQNjMTYo/fqZgs6h650gjp4g7kO8iqrJaQpkiR5d
        9papmRGaJPzCxzZ5+ag1XHfJg5jrf7ZfWWfd
X-Google-Smtp-Source: ABdhPJyU6yQuHiCitOyJeixBKTWQW2Y9gsA2mP2i0gBJ8JDz1WitfCJcrgBeVWoOqeEb344fRg6aOA==
X-Received: by 2002:adf:a45a:: with SMTP id e26mr23012035wra.222.1623239126066;
        Wed, 09 Jun 2021 04:45:26 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id r4sm23760075wre.84.2021.06.09.04.45.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:25 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/31] arm64: zynqmp: Enable fpd_dma for zcu104 platforms
Date:   Wed,  9 Jun 2021 13:44:39 +0200
Message-Id: <76d330bf2b2414efa2e98965a3ca7f7c43e3645f.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable fpd_dma for this board.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 5637e1c17fdf..99896db6b8ca 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -65,6 +65,38 @@ &dcc {
 	status = "okay";
 };
 
+&fpd_dma_chan1 {
+	status = "okay";
+};
+
+&fpd_dma_chan2 {
+	status = "okay";
+};
+
+&fpd_dma_chan3 {
+	status = "okay";
+};
+
+&fpd_dma_chan4 {
+	status = "okay";
+};
+
+&fpd_dma_chan5 {
+	status = "okay";
+};
+
+&fpd_dma_chan6 {
+	status = "okay";
+};
+
+&fpd_dma_chan7 {
+	status = "okay";
+};
+
+&fpd_dma_chan8 {
+	status = "okay";
+};
+
 &gem3 {
 	status = "okay";
 	phy-handle = <&phy0>;
-- 
2.31.1

