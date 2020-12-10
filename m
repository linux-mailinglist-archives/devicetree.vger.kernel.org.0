Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83DFF2D5739
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 10:33:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725789AbgLJJbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 04:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728762AbgLJJbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 04:31:45 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A07C0613D6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 01:31:05 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id w5so2910608pgj.3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 01:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9lTbkG6qYnle+XI3+FSoMjubtfTJEmSz5CKlrBtvf6E=;
        b=ktJdc72nQon+D8o3CN6amrYc+2R2Xe9NgVdEQLiUb+N9xnep1qCYhVISyvZMOpLcTd
         gVKcOMINlUiv1HeoB7QpbtjW465deQhf0MyfTUbovVHcmnDKAeimXhqiOo+VjifX2GaQ
         c7WyVGNhVp7mp8HHDLe1GzyXIfQeTOTul9CloydL2z1umdM+lCj6VJAx7YNamnea1t1K
         sE3EaHIZzeEDYLy7zUPftlI9SbcNrB6bg40LBRK/muMZmDxlc27+ma7bPNXvK4fjQB1N
         nYYHCSM+14iyW6EGFu/lhjpW7XD+wLBvgUuF0dAvELw9jqbp4ZauOGNHytfUb0wvpHFc
         0ZRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9lTbkG6qYnle+XI3+FSoMjubtfTJEmSz5CKlrBtvf6E=;
        b=LnjHM1quvsIgGeUV/zZa1CsVw2O5aH2xxGKOLT2WnCnhkxIgo07Qal0d52VBCo1UFE
         PhPosRhobfSrna7H5GHfmSCoQoKOnVaVDuxGOJP3v3w2sP6PmYDsCzS84Fnm8SFuRs/t
         GbZZLkmePjXfa+iX3o8p7ghRxd9EhE0pGuFj9wQMK9J1xMvtA+yDOincp1qM4G/ZUNAE
         RXllFhgIYX0llyWKHFUI+P+jLPHyulXnO7mIzY5tEE6vpPVIzE+R5WTxB+lH2hyS8eOh
         8BCNjO9aQFXp7ip9zG7sFRFN/QmjMkNO4/aWKqwQ/gXS07L5Yj09qiruSEUJMk75zch8
         gFbA==
X-Gm-Message-State: AOAM531Fudtpx18XIDNKl3SS81Tz6jjQ8YvGfRvIbQCIcJuFDuJbXYkF
        TdPmnB+OH7P8VZa9ayLLHGRmqA==
X-Google-Smtp-Source: ABdhPJxvSV2G/C+0G+bkx6xFvzSF4bUj0cMreoupZzb+ckqOtPlyhaJ3KcVb6ZDrOtuDHEhxT/vL3Q==
X-Received: by 2002:aa7:8ac1:0:b029:19d:beff:4e0f with SMTP id b1-20020aa78ac10000b029019dbeff4e0fmr5893394pfd.0.1607592664959;
        Thu, 10 Dec 2020 01:31:04 -0800 (PST)
Received: from localhost ([61.120.150.75])
        by smtp.gmail.com with ESMTPSA id l1sm5043385pju.48.2020.12.10.01.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 01:31:04 -0800 (PST)
From:   John Wang <wangzhiqiang.bj@bytedance.com>
To:     openbmc@lists.ozlabs.org, xuxiaohan@bytedance.com,
        yulei.sh@bytedance.com
Cc:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/ASPEED MACHINE
        SUPPORT),
        linux-aspeed@lists.ozlabs.org (moderated list:ARM/ASPEED MACHINE
        SUPPORT), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/3] ARM: dts: aspeed: Enable g220a uart route
Date:   Thu, 10 Dec 2020 17:31:01 +0800
Message-Id: <20201210093101.413-1-wangzhiqiang.bj@bytedance.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: John Wang <wangzhiqiang.bj@bytedance.com>
---
 arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts b/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
index 89916a2eec18..e3a82679ed9c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
@@ -929,3 +929,7 @@ &video {
 &vhub {
 	status = "okay";
 };
+
+&uart_routing {
+	status = "okay";
+};
-- 
2.25.1

