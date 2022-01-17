Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 074EB490C5A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 17:18:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241013AbiAQQSO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 11:18:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241003AbiAQQSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 11:18:13 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39497C061574
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 08:18:13 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 30so67833551edv.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 08:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fGanoGVnUA7ogI50sGef8k6e4+3YsWfksfB0nBzF5U4=;
        b=riRGZqlkwAHgCtFuquE9dgZtNhN3ch3F56qRaqv1FAPuqEfrMBXSq/8s58k/9ZcUlj
         nkPnt/9Wn2TYAkmZzWhJI4fFv2JKf8avnv1574uQdPs9HosWZ+I+sKz3DQBOI2d91ugs
         IuS+BK7TNl8yffJslZwqTzN3tWh/cyUFRu2wI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fGanoGVnUA7ogI50sGef8k6e4+3YsWfksfB0nBzF5U4=;
        b=LjnywudFtoYFXI6veV/C4ZYimpxZFCrpSkRGSNHhsZwFtN0WEsLW4zD+Q9i4rE2g4n
         jcyx7g15AidM2IJEp6C4ZbF2Ez2o4AshCZulFZgEUO8axQd2KZgfJNxs0Xbe2GA9fUEy
         16UsfWJpfq6f3rVZNAWR9pvcaft5xlFUuxmGMhrTikk+nLm5J9OvoKPOnygSswg/+Vuy
         DTiSfQGNNyq3RvzylqaRtlc1A2GIGR4rTGCYM7xTqtI1ZYlihwE5/+HwpxrPtx3ZjM2/
         KHXdO0VP+vA5p9MbD0y3Ormd8/KUpRow9iLmTvMCpkoztefhvHrpMBuC/J9kjTKjpqLb
         sVNQ==
X-Gm-Message-State: AOAM530H/n9b9fQPRpl0ivYVaHDxacbRD46LRn7iECH6+Qn1+WH8J5Q/
        STr+Pocbz+u7Zsp+axhYBr+zlg==
X-Google-Smtp-Source: ABdhPJwS1xgJ2aU3JW86nj1q1s23inQuC/RyS5X6gxK/3Q8TAmFzdCX6xM2FYHDRMW7f2/Ti8Wi6RA==
X-Received: by 2002:a05:6402:2282:: with SMTP id cw2mr12661577edb.161.1642436291827;
        Mon, 17 Jan 2022 08:18:11 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-52-8-210.retail.telecomitalia.it. [82.52.8.210])
        by smtp.gmail.com with ESMTPSA id s4sm4147652ejm.146.2022.01.17.08.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jan 2022 08:18:11 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v3 1/4] ARM: dts: imx28: reparent gpmi clock to ref_gpmi
Date:   Mon, 17 Jan 2022 17:17:52 +0100
Message-Id: <20220117161755.1863579-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220117161755.1863579-1-dario.binacchi@amarulasolutions.com>
References: <20220117161755.1863579-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since ref_gpmi is sourced from pll0 (480MHz), It allows the GPMI
controller to manage High-Speed ​​NAND Timing (edo mode 3,4 and 5).

Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>


---

(no changes since v2)

Changes in v2:
- Reparent by device tree instead of code (drivers/clk/mxs/clk-imx28.c).
  Suggested by Stephen Boyd.

 arch/arm/boot/dts/imx28.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
index 84d0176d5193..130b4145af82 100644
--- a/arch/arm/boot/dts/imx28.dtsi
+++ b/arch/arm/boot/dts/imx28.dtsi
@@ -110,6 +110,8 @@ gpmi: nand-controller@8000c000 {
 				interrupt-names = "bch";
 				clocks = <&clks 50>;
 				clock-names = "gpmi_io";
+				assigned-clocks = <&clks 13>;
+				assigned-clock-parents = <&clks 10>;
 				dmas = <&dma_apbh 4>;
 				dma-names = "rx-tx";
 				status = "disabled";
-- 
2.32.0

