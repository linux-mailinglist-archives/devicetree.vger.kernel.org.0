Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9161E4B8EAC
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 17:58:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236558AbiBPQ66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 11:58:58 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236787AbiBPQ6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 11:58:54 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B6FB2A4A3F
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 08:58:41 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id q5so1756434oij.6
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 08:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lNu8D54ph+W8Cps8UhmIk+4rU/QInxr5iG0JuEbFSPg=;
        b=iZdiQ4Sm8DS0Hi5NnV4sOxvZR3hFaRjnPKyskwSsRvFIPgR9CX8RVLHHnmXBIX1L9N
         MkpxH5+t+yT3X8L9av03F1HIBlLiHTYYLcOzsiGgbGuFKRkTpSsuG9OSflDWCMYKHQRU
         eMVJ55iYWL4t6Nc96yVS+WYgyzBXrD//JJvbLN1Yw2eyvbn789c4hb+jgKIKPzyiGrcN
         0U7djSyVPmw53M90DbZd6pBFIcV05+Og+liiMpQ+WZgM843Rl+r/ZuZPcLuhTxweY1d5
         p/bD7ibgeyR/neaYOeutIBmPmvymJCs0LIENgpPGJLhWjhaz9TnL+7U28fUd8t8LX1RF
         ih1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lNu8D54ph+W8Cps8UhmIk+4rU/QInxr5iG0JuEbFSPg=;
        b=E9BH90DHBssEZbt9BHdbbP08TVjlJIn13D7IPna/Qx1WpBMINENVeH2ZWy7LzWV5gZ
         i8oAb7KkKfwQE4HWCgXP22uDsCeoptzU0v/gA11Y8mbKClnM/KkeXyjNj9lmZky3svea
         QTE35AOS6zRLuPMgubdh4c9WQhHnTGiQaAImeUyhK3Ar0lIOuQA+qnfXEx9CWtHMa1A5
         NATZ1XWDGjDEI5eTdlZvs1m1EaMolMGO1bi5MvFygJv0KkOmZRv1OiNraKJ02d6CVHRA
         bqRdvRRbdpy5dV7+8ztmxrAoopUIKy1HQkdYqfQCgJV9I1bv/DpjC91hMxKjZlAXi+OK
         qA5A==
X-Gm-Message-State: AOAM531/PM0+AAXK4HYgKsVDhkRFIUquEorIzcZVtMRKHafYTs9FRhdo
        BaW5kqzgxsYu8CyxqC37Ur5XLvhkrVQ=
X-Google-Smtp-Source: ABdhPJz3jUd68o0ULVl4RwNQNaiE12bSQ2/TGlRD+yPdovUMIreOb2DvcBm9dZXhUZkk7nuxSpF2SA==
X-Received: by 2002:a05:6808:f04:b0:2cb:f30f:7183 with SMTP id m4-20020a0568080f0400b002cbf30f7183mr1074071oiw.157.1645030720463;
        Wed, 16 Feb 2022 08:58:40 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o13sm3712438oiw.17.2022.02.16.08.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Feb 2022 08:58:40 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     heiko@sntech.de, robh+dt@kernel.org, jon.lin@rock-chips.com,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Date:   Wed, 16 Feb 2022 10:58:37 -0600
Message-Id: <20220216165837.4721-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

According to the datasheet for the rk817 there is only a single output
clock for the PMIC. I don't believe this is causing any harm though
and testing this change doesn't appear to have any noticeable effects.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index ea0695b51ecd..5b23e607876e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -296,7 +296,7 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-output-names = "rk808-clkout1";
 		clock-names = "mclk";
 		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-- 
2.25.1

