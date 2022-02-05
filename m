Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFD384AA943
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 15:04:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245487AbiBEOEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 09:04:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238816AbiBEOEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Feb 2022 09:04:44 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB2DC061346
        for <devicetree@vger.kernel.org>; Sat,  5 Feb 2022 06:04:41 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id y5-20020a17090aca8500b001b8127e3d3aso8860380pjt.3
        for <devicetree@vger.kernel.org>; Sat, 05 Feb 2022 06:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DSxtWuVyjxBp3vSmV+sz2Wj0h6lAL5DSYj6mAV0ueBc=;
        b=SyQ+u2WVKQIpLU30ixGAIhEbL3v3I7u6z1w3HyID3Nvm7DCJCV36Nw9+MO5agPe4fZ
         iOWdhqRH+pcjUtP7pGrMIfN4/JLB+5zZ2IksPp+61aHZWveY5dZMV6bp2FsmCAkmDEeV
         Yv893IT3JzWmZVyZOcZyafTum7CI/mwoHMyKnWjC5dfQsTebqLal3csthP+QxMr+7Uff
         Qb7xtgfCcFyfomNx0IVIxLAHFGQVBTb+gCTrWg9i95tlQ1y5vV7SoMD+2Q5D3yARxruN
         8sjE3UUvpKGAVj5e18wZl6t8iZ4bfgMhLZVynVvddQ4gMHhtV8uEft8SQoGrgY2cBVIr
         4z6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DSxtWuVyjxBp3vSmV+sz2Wj0h6lAL5DSYj6mAV0ueBc=;
        b=SPOMMsnOjq5N7Tq3Z96ewGFyVZmPncKzI7b5TYKLaPnb0k9BhJ28zW68taoAHQb4OY
         Nh7lAigRQsgtvgeNR6yD8PO/k450A7JMZXoaSnQGSn6OTu8D0EvFSSemgDpST7thC78R
         gmWLPKV6tQ02+29p2Eceo3JaRnsyaacYzjwGgl2L9QU7nCnBAUJL1+sOWrbr95CkSoG5
         PT0hRDsIzcSxQ6wHvHBx7R6AdnU07dn+ugBLQzbXttEdqV/4XffdLUhaybD7rToGm/El
         oSnSNHjix0uIj9lvrqen3RNbAotb8hEHOpaWvBnmM6vi23JuaTMCjCAecHsme1foVJwB
         Q+BA==
X-Gm-Message-State: AOAM531M29zPwZsvJ48J9hJJHTJASm4eeLqUrR0IbtmNVsDwEW/hFzKZ
        j/vU/TdOMQBt20kH33xOte/uyqDSVXk=
X-Google-Smtp-Source: ABdhPJxv2xTlA7gQM7K4gKIN8kEuup9rNGWRePPE89JQqMeVbPThd9lvlzGSThU/f9CNAciT37n6Iw==
X-Received: by 2002:a17:902:8f92:: with SMTP id z18mr8179775plo.42.1644069880204;
        Sat, 05 Feb 2022 06:04:40 -0800 (PST)
Received: from geminid.DooM ([118.211.233.122])
        by smtp.gmail.com with ESMTPSA id a38sm6191630pfx.75.2022.02.05.06.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Feb 2022 06:04:39 -0800 (PST)
From:   Michael Saunders <mick.saunders@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, heiko@sntech.de,
        Michael Saunders <mick.saunders@gmail.com>
Subject: [PATCH] Make Firefly RK3399 enable the mali GPU
Date:   Sat,  5 Feb 2022 23:33:41 +0930
Message-Id: <20220205140340.109118-1-mick.saunders@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Firefly RK3399 device tree had the GPU status set to disabled as per
the default from the rk3399.dtsi. This patch sets the status in the
firefly dts to enable it  for use. I've tested this successfully on my
2GB Firefly RK3399 board.

Signed-off-by: Michael Saunders <mick.saunders@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c4dd2a6b4836..f7b8da4953be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -298,6 +298,11 @@ &gmac {
 	status = "okay";
 };
 
+&gpu {
+  mali-supply = <&vdd_gpu>;
+  status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
-- 
2.35.1

