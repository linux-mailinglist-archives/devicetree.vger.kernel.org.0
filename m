Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E09D52D572C
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 10:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388620AbgLJJak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 04:30:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730414AbgLJJaj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 04:30:39 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFAE5C0613CF
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 01:29:59 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id i3so3492938pfd.6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 01:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TMM7FRlCD8YfgT9nH5Pw055Xkr0/ntfYTn3LIAtEXLA=;
        b=UT8Yn+ik/8OWESdJcSvQ/Oc8zrhhg1LljtviMYjdMXDqGlQ9DwKBFOq6Gr5Wf5Hsu3
         KFppzMrnbNOMyXCQU5t5v+cSwf3X5aMjaHNy8SUnqgDILPdTI5Eoi+1cS+9V2/dMiXNW
         zaQJleuvkgMUonmEypT42bkCn2dvQt52PYq/AhT3O5K/jxpPER2//darWwHoiE/D/GDE
         AE9D5Art9xT5mWuP/nKCSwKYHpSg64fKSpiIKvA0lkM29NQbg5Zyy2T+zMhyppSHfvYz
         9Wq1OVfQbix0ilhtIdMza6O2sVIjDJg7oadGRaNFb+XDPs6HQcYJLsGjjU+e+OR/sB/v
         y+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TMM7FRlCD8YfgT9nH5Pw055Xkr0/ntfYTn3LIAtEXLA=;
        b=E2OLoPjSlL2bUpsxdxz7WbQtywWLITqYJxZio10SJ6X0eK7n80ddETU/RU8HzKuSLe
         xPym3XLVx1+gWhURBRqbUTNDbjdMlRU8XC6b1YjZEc2z13sWZmFW0neKgKuixss1k95y
         W3oIg8IhwGaYHXP//Qpv8QhXccz2spa61n/HyLR6jSKEedmselzjOFiVnFdAii2CamgE
         fKJAsDzQh50sMci4+PDbnIkHeRBZHzNGYpNpTPXqp2R5Xy/9Ti2zkBpxodfnmOPwzyAC
         h1mMOXv/cOLqgOmKOX2967pvbTTW42TpyeqEoLKWEB8YNpCYTRQmOEKoLAUeku6Yz5J9
         KrjA==
X-Gm-Message-State: AOAM530bpXheOEmG7IN9qCqcntSg7m9dlLhOd9PNIh8995OELYHS2fEF
        HUU95TYxfVJBm89E8QzYm6yaHQ==
X-Google-Smtp-Source: ABdhPJy8KpNbujB4HGwPSYMJgHDpj9HX6rLYorgHAPHsIdk2p+WnoHKcC4d0hLX7b73wbH1fPychpA==
X-Received: by 2002:a17:90a:d0c2:: with SMTP id y2mr6583100pjw.183.1607592599227;
        Thu, 10 Dec 2020 01:29:59 -0800 (PST)
Received: from localhost ([61.120.150.75])
        by smtp.gmail.com with ESMTPSA id q23sm5726461pfg.18.2020.12.10.01.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 01:29:58 -0800 (PST)
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
Subject: [PATCH 2/3] ARM: dts: aspeed: Add uart-routing node
Date:   Thu, 10 Dec 2020 17:29:55 +0800
Message-Id: <20201210092955.358-1-wangzhiqiang.bj@bytedance.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: John Wang <wangzhiqiang.bj@bytedance.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 6 ++++++
 arch/arm/boot/dts/aspeed-g6.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 30bbf7452b90..bf40e8960244 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -523,6 +523,12 @@ sio_regs: regs {
 						compatible = "aspeed,bmc-misc";
 					};
 				};
+
+				uart_routing: uart_routing@9c {
+					compatible = "aspeed,ast2500-uart-routing";
+					reg = <0x9c 0x4>;
+					status = "disabled";
+				};
 			};
 
 			peci: bus@1e78b000 {
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 4b1013870fb1..8b37182e8f36 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -311,6 +311,12 @@ pinctrl: pinctrl {
 					compatible = "aspeed,ast2600-pinctrl";
 				};
 
+				uart_routing: uart_routing@9c {
+					compatible = "aspeed,ast2500-uart-routing";
+					reg = <0x9c 0x4>;
+					status = "disabled";
+				};
+
 				smp-memram@180 {
 					compatible = "aspeed,ast2600-smpmem";
 					reg = <0x180 0x40>;
-- 
2.25.1

