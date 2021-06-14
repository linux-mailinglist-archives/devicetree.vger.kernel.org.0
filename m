Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B9E63A6A1A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233440AbhFNP2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233549AbhFNP2S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:18 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72512C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:02 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id k7so17324944ejv.12
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y086/3Vb8l/j6MijbS9GRLbZljtg5wwxE96eR+fUbxY=;
        b=v69WUXvWTGhZ5AAFUMPyL0zcf/t3WyZzaZHhwB9jyxOjwCkXw9qeNMeh0tERU4bsT2
         QCycoaZPVO8z2Y6/m5Bzq+gGnp/hky5yS6kTlQCYWcKrjmPV/AdP9L+raedXyWIL3MxP
         ocuNHKKiKThmCTOhTzDydo7/l78xmq+ttA0qEYsf92HPRP7OgZCARHNFdV/uKcXf349C
         6YoQJf3Eaj+lg7yqwlWDLzOP6QiMXOg1EEWZkNhIs+nNqycLu4KGJgcVGj0IESIeQRyV
         ZcwynvF7kRuwlTk1O9y165YhFLqwrtbJTYld4+/mVIzyHkVnkun7duSD7Q2wVVGdLe5S
         q9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=y086/3Vb8l/j6MijbS9GRLbZljtg5wwxE96eR+fUbxY=;
        b=YIgzo/h4n8WLCzuoqZDsnmi/1SovxN4i+9VDb2I5VH5uZF86JpTCmaPkPTNsUEnxJy
         sDgU5v13wyJdYCFOC3OGHik9anhqnlorAPtOl15G/0W4q6UJxepa5ILOARy/KYhntFGf
         mvmwc+cpxCCIv23p/jqHHXdfFxpj4lZ820Woj4s0mwBX+21JKDB/x1MEm8IQAldIhqsz
         SuX+xqJ5+dFPjHGFNrhAWDg3u2QTydrITT9ZsnCetu3EbTyVcGAa9HW2FtbL+D5y5DCC
         uAjTjhaARBOwUTY9iMHXZV2dw52pKdOzrof6TW/w9oaWZEomxZ/k3YAfhwo58cWOn6cg
         FnZw==
X-Gm-Message-State: AOAM532+osUqMSMM0n4geCOoibI8xiye1kufNNuksRExW45qVYRkcr5P
        AxFCfayTSC46B3+IQmEdS8koyw==
X-Google-Smtp-Source: ABdhPJxt9YZsUJHl3F6lcV2jTPN/+KSjz6rdUToRPkBhvFBUe82kAIulrMvMh+8g2zZlXXtH2jsmBw==
X-Received: by 2002:a17:906:71d2:: with SMTP id i18mr16548883ejk.373.1623684361115;
        Mon, 14 Jun 2021 08:26:01 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id k21sm9240943edo.41.2021.06.14.08.26.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:00 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 12/33] arm64: zynqmp: Add missing mio-bank properties to dc1 and dc5
Date:   Mon, 14 Jun 2021 17:25:20 +0200
Message-Id: <2b2ab31639c706651dfd319f5b6bc59e68f111b6.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing mio-bank properties to zc1751 dc1 and dc5 boards.
The same change was done by commit 63481699d6e3 ("arm64: dts: zynqmp: Add
missing mio-bank properties to sdhcis").

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index f57cb5356cef..dd129347174a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -364,6 +364,7 @@ &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci0_default>;
 	bus-width = <8>;
+	xlnx,mio-bank = <0>;
 };
 
 /* SD1 with level shifter */
@@ -371,6 +372,7 @@ &sdhci1 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
+	xlnx,mio-bank = <1>;
 };
 
 &uart0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
index 6c9460a0707c..ae2d03d98322 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts
@@ -407,6 +407,7 @@ &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci0_default>;
 	no-1-8-v;
+	xlnx,mio-bank = <0>;
 };
 
 &ttc0 {
-- 
2.32.0

