Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80FB930736
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 05:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727041AbfEaDyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 23:54:24 -0400
Received: from mail-it1-f196.google.com ([209.85.166.196]:39697 "EHLO
        mail-it1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727017AbfEaDyS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 23:54:18 -0400
Received: by mail-it1-f196.google.com with SMTP id j204so7724299ite.4
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 20:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0MRFaUSMAfw/XRQQZHzE3aa0KzqIA2a6f7/ADiTDy48=;
        b=uwklmqHcoHhu1WLCfPLSWItOjPdTvghEYLBU6xALfWtsnd113VuUy3W4OCt7Gf7QPo
         41T0Kb96J3ZSXspViH4KCr3Z1SxedNQJeBOUBfoI6mWPpGqYqYDdnTOvkIRtYFl7he/C
         tuHhPYcxS4Bk+X35n/t9s33SCJGdhQWJcvM0GMVAvgKp0JhTyaf6a7pcaeMTEIKcmgXZ
         3tE7+sKkPwBES53s3TxVG2diUKbi6dwVeJNQMPdqSZXPSI3AAgq14TRNOQlsumqidDGX
         FlY+vsFjKBKkr8fzT6M0XgLfkjQO6tSythQDO4ptBHatoj3PqdEFPTk4RzUy6/qfC7sW
         yRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0MRFaUSMAfw/XRQQZHzE3aa0KzqIA2a6f7/ADiTDy48=;
        b=qn2f2nBTJ+d19junuvSeoa+Vpw0X5+SxdyvEOYak4bNlBGKZsvZPwnlOSOvP2q6xfb
         XdoZVhDRaT9ZY6hHZ2Lo4XE3+5ydMpu/nRSwDI22xzIIwdlbyjeQFeGauW0N+ca39iGF
         PFFDJJeEGHQO4SIRl0pBGBMmmhYmTy7bWtyr3FungiHvevK01KX+Zer3XGiyALIEIx2y
         0plUs0e5XH22RWIsnOo8QXubkE/XLdnwwt4T7m3XRYcF31frL2RTO8bG3zMq1AvB4VhC
         yPYDnYQXs+mv/caTxikK5ZFnJgDUdNkGQNSeK5B4ZfElfiPINgQdkeisBzukfGH187Pj
         qf3g==
X-Gm-Message-State: APjAAAXnbTyt2YLRmkOMY70dWkhI32vzqgYXgyvp0ANw5ecrVzbZfR5O
        5e9YK4qTaU26159LRtMUaohf9g==
X-Google-Smtp-Source: APXvYqzAp7WqDtF2svw6m32RESqRJSWfwXgOZsWCJl/PO7gAfHjI0bpJKwO94bXVpo532sRxJONkgg==
X-Received: by 2002:a24:6583:: with SMTP id u125mr5701155itb.168.1559274858043;
        Thu, 30 May 2019 20:54:18 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net. [71.195.29.92])
        by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 20:54:17 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
        ilias.apalodimas@linaro.org
Cc:     evgreen@chromium.org, benchan@google.com, ejcaruso@google.com,
        cpratapa@codeaurora.org, syadagir@codeaurora.org,
        subashab@codeaurora.org, abhishek.esse@gmail.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 17/17] arm64: defconfig: enable build of IPA code
Date:   Thu, 30 May 2019 22:53:48 -0500
Message-Id: <20190531035348.7194-18-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add CONFIG_IPA to the 64-bit Arm defconfig.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..6ed86cb6b597 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -261,6 +261,7 @@ CONFIG_SMSC911X=y
 CONFIG_SNI_AVE=y
 CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
+CONFIG_IPA=m
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
 CONFIG_AT803X_PHY=m
 CONFIG_MARVELL_PHY=m
-- 
2.20.1

