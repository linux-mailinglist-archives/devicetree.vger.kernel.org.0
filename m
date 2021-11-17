Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFC6B453F28
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 04:51:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbhKQDyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 22:54:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhKQDyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 22:54:25 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A75C061570
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:27 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id 188so1015411pgb.7
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 19:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Na4Atxvp5SDv0NmvglOs+7sRMoBgX8DxKVHfywq8TaM=;
        b=UzE9NTuKQx5aPM/Er8F26hFBz9h2z3MW38yfaBg+GTlv/nmbGiX/2+1qfYp0c6+hNR
         5yrAUEgAr5TVV/oWq3ty/wTGnV6yngAHg+rW7Mg/CspEdqu66gdhcYocQCQSSUgfCM2E
         z9NkqhBFdJxEHIBEKktPXglMXh7TLmMRj8Kb9TfOl4N4uf/BG4IYc+AT6gHLAeQvDPeE
         /4MsmUGcWHt0piqzSnOezYTeLNa2O6bG0yuVTBYCKZMb41U1CxvFQptXgKaNHPzFuWp9
         aJlQlTWyzViKtPd1PlExqxfco4vBGifK8Nd7vCnmqEWiLNRqVlWoZDHfINktYSM4fUMC
         lExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=Na4Atxvp5SDv0NmvglOs+7sRMoBgX8DxKVHfywq8TaM=;
        b=VTco6hTBKE5TtDYJUBBJF8ZVM56U1jEq6Qi+YxNLnc2MJhwUbx7w0JWvY9VDH94MJ+
         IUYsI0gcoW4Ocz3o3gdwfjeZZPvjnlDkKwhzxJ1z2xJXIecbg56+uQ4PS6uMkpASbJPo
         OcrnkUVTYLgB8tsuyh93xgXBgYltdN0GN0LEi+ktMelRcOwAxHNXI6J8Naeowjp8tHMf
         1jNO+vl6+C1MWxQr8q18Yqb/9GnTMsgXvC0/uQhhhjjcwhW0ObxTrll/miR2SMQ+/7X8
         Aju6brUwKVTw1/16Tlh+kWF8NyillyQjN5rLknc/6YIUpZC+vAY5EL0zbB4lM22ev1it
         JCqA==
X-Gm-Message-State: AOAM532Fmdu28WcoEjlbpVMM/j7XYUu8fwQFAJ7CYHVTzzxlcQtR7LG3
        ULz82zdxERn/OtEFuZaZGGI=
X-Google-Smtp-Source: ABdhPJyfoa/fBZLztLXiWQPqmsXg2vkFWDAFUGLgJDnaeKwWPfykFaQBXjaVoJ2Khs0bfAjvqXzlsg==
X-Received: by 2002:a63:5a63:: with SMTP id k35mr3083582pgm.230.1637121086796;
        Tue, 16 Nov 2021 19:51:26 -0800 (PST)
Received: from voyager.guest.fluxperth.local (210-10-213-150.per.static-ipl.aapt.com.au. [210.10.213.150])
        by smtp.gmail.com with ESMTPSA id c15sm3671339pjg.53.2021.11.16.19.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 19:51:26 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.u>, Rob Herring <robh+dt@kernel.org>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: [PATCH 2/3] ARM: dts: aspeed: Add secure boot controller node
Date:   Wed, 17 Nov 2021 11:51:05 +0800
Message-Id: <20211117035106.321454-3-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211117035106.321454-1-joel@jms.id.au>
References: <20211117035106.321454-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ast2600 has a secure boot controller.

Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Ryan Chen <ryan_chen@aspeedtech.com>
---
 arch/arm/boot/dts/aspeed-g6.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 5106a424f1ce..16b36c13695a 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -384,6 +384,11 @@ adc1: adc@1e6e9100 {
 				status = "disabled";
 			};
 
+			sbc: secure-boot-controller@1e6f2000 {
+				compatible = "aspeed,ast2600-sbc";
+				reg = <0x1e6f2000 0x1000>;
+			};
+
 			gpio0: gpio@1e780000 {
 				#gpio-cells = <2>;
 				gpio-controller;
-- 
2.33.0

