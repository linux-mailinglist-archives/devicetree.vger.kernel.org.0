Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4D7F42ED66
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 11:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235937AbhJOJT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 05:19:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237060AbhJOJT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 05:19:56 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C45C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 02:17:49 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id d3so35392795edp.3
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 02:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20210112.gappssmtp.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+VMRnA7HC88DlpNpC3CNIQMXTLRNrlmvCLC0hTrELVM=;
        b=OBH8KAuhrWlDFQYqW2OVpe/t/9f7uJUBC8qZlup9bg4CXkuH7z9Mq7JlRVh8Rpw8/o
         xmj5h4iaRn6qN+QNpiMed7w6X6CGTcw1woDIY59URg9r/mSl9hIapkSxnYzVo0txvKm4
         zWs9WprTDIq5pSRwd6DIucwyGexMsmo73nPHixb+qav5qGP5NGXiq9hJTtcoXfE1SFJD
         SrdWL2Q65uY6H83ON3f0O0OWL8ppPCyzZKBTHqjowucszF9agGPlC7COaXfkINymuBIO
         6gDKw8vGRyB7z0GFZCF0koqqd7yVqBNIslymiid1IvRv827Ti14JBmwwwaGvdTx2d7fa
         7VWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=+VMRnA7HC88DlpNpC3CNIQMXTLRNrlmvCLC0hTrELVM=;
        b=kI+63OJTI9Ih1OD82YoYIjGAGul0yEspiMwQAEd6JzjxtnkG0DRuOf0bZxu6yFyrrj
         hJDjIU2xu/WlR7Q9o9Ik/Do38tKvnkxomnAun4mGT6QAjtX1kYEWrG0rf8nlBlN2lYPu
         efIKVUwoFdAmTOHkdyamqP8XoapMAcswKxxpZC2Vcd6wQkA8if9tfLO59amEvygGq/1E
         RBotwo0KxbtcgbijzpH9TjgywbP1vEG3HL42nxuY/vamiU2r2JEoiMo8UUHtPGNdSFoe
         sZiFEr7DaPvS5lRe/qc5kg/5969dc8BE/kA5oQezO7PAv00kHwS/1FuMSKYZDvLBpvZS
         s8uA==
X-Gm-Message-State: AOAM533l949fob+WHRSTwKgrZKNUsZ1aJOtmrB095pgIgeMAgKLOu8rR
        45JCwWdbdmOEldRkh/twGquPoBKu6Ob+FA==
X-Google-Smtp-Source: ABdhPJwgYy+cpJiy9KN3qbY+IYbfp9B6teWAybvgXQMxWUacfG5m7ZFNGhZD67R18rF67hLBbX24Og==
X-Received: by 2002:a17:906:520b:: with SMTP id g11mr5433292ejm.502.1634289468222;
        Fri, 15 Oct 2021 02:17:48 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id m15sm5532409edd.5.2021.10.15.02.17.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Oct 2021 02:17:47 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: zynqmp: Fix comment about number of gpio line names
Date:   Fri, 15 Oct 2021 11:17:46 +0200
Message-Id: <c3480ba47ac9761903485ebfac127f297053d4da.1634289461.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ZynqMP has 174 gpio lines connected to PS controller but DT is describing
them from 0 to 173 not 174.

Fixes: 7a4c31ee877a ("arm64: zynqmp: Add support for Xilinx Kria SOM board")
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
index 550b389153e6..bb2602dd2805 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
@@ -285,5 +285,5 @@ &gpio {
 			  "", "", "", "", "", /* 155 - 159 */
 			  "", "", "", "", "", /* 160 - 164 */
 			  "", "", "", "", "", /* 165 - 169 */
-			  "", "", "", ""; /* 170 - 174 */
+			  "", "", "", ""; /* 170 - 173 */
 };
-- 
2.33.1

