Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FA893A6A22
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233441AbhFNP2i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233591AbhFNP2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:34 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E40C0611C1
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:31 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id he7so17155113ejc.13
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7oJwRO3J9jsXmvuasxwt6m5nmE8ox262htAbis2LIe0=;
        b=g8e9UPd5m++/bsKtpjy0SKK56O/EIJ0TNYtPt4RDDmAotHcvci+d+fn+1zDFhUxKqi
         5XgjWhEE5FCbGUSwuQQ+s8mRFmAo220zwYXKqniHbjLbHMzzMPSI6IZcJNuwwdGkCFeB
         mn95RIElMkFSIDeBNopyXB3kaZmrZZUBUewiZrq3KNNhp/eOE3XryqaTqSJ26jFpD4Tl
         /9pM0Dm00i3mSqHqGo8L4OW1yCSWmE86s00uuAcBbLgcg+5W2mfJWB6t0brEGPLwHpJq
         wz7oZcXt1wHIqSfjYhDieSMJbP9lOQU9ZLKfvBrNwK6SbOlIWRzugfi6pg+eUnR7EcZn
         +42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=7oJwRO3J9jsXmvuasxwt6m5nmE8ox262htAbis2LIe0=;
        b=lTq2aLKAe/FmyqzeMeXeg9utmA6kNOyPVw5KO2d610k8YxJAPZCK4EVJ+48S/w9Qvt
         aoFjhJ+PDQpKAZT8a8gz55PSV8e3UEwFIz0xC+nyoYuYBask0k1UrismyQLIDIM2uVD+
         F5WzO2jylzUHw9qFWzYTvG0hBDb2EQawE0bk09/05vD3VT0L/galLAeoLItR58S07cu9
         +1MHeQFoJ4Ei84NzdQLQssvUZ9vqgRuTpo76xqs+FDmmeFzGjILjV5cM/aiPahtk16aU
         GT1eksw84btMHG56C5WspMeKtNLkXpag2ETbduaDL2lLhAmB56sQMTZUR5lnqUbqq0q2
         Oumw==
X-Gm-Message-State: AOAM533KbS/5Wccz9vUeDdQ8w/isLqELUeTzJqxn7CIRk7sPU1Ry4SnA
        aYNm3N5aZpIReCQrGzcuVfevsA==
X-Google-Smtp-Source: ABdhPJyPEaoqCbnrYu5oTZQNlG7qQAfkayDwR9/gkwveb93tMT+o5W+4MrRTvYbSCosMwkE2jwsNXA==
X-Received: by 2002:a17:906:7946:: with SMTP id l6mr4788556ejo.50.1623684389997;
        Mon, 14 Jun 2021 08:26:29 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id w8sm1380828edc.39.2021.06.14.08.26.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:29 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 32/33] arm64: zynqmp: Add psgtr description to zc1751 dc1 board
Date:   Mon, 14 Jun 2021 17:25:40 +0200
Message-Id: <51d9a5e0aa26b0ea79b8823bf3d15f4e2542f927.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wire psgtr for zc1751 dc1 board.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- New patch in the series

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index c1cedc92e017..c488c6812084 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -422,4 +422,7 @@ &zynqmp_dpdma {
 
 &zynqmp_dpsub {
 	status = "okay";
+	phy-names = "dp-phy0", "dp-phy1";
+	phys = <&psgtr 1 PHY_TYPE_DP 0 0>,
+	       <&psgtr 0 PHY_TYPE_DP 1 1>;
 };
-- 
2.32.0

