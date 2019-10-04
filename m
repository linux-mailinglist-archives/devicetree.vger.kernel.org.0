Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CED92CBBC4
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 15:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388662AbfJDNdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 09:33:08 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:34189 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388661AbfJDNdH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 09:33:07 -0400
Received: by mail-lj1-f194.google.com with SMTP id j19so6559406lja.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KJd8sbimmy5mnSq6QgFxWdBMbJR5jACe59+ThyKK82g=;
        b=QLFFDcVHI2EhaLtxhPso76+poBjMJHw10fNMzcHwmoy9Cx7Afn8Mk5EQT7FCzlOnBI
         YhUhbpnEWCSXynuZYJcKXvG2a71t2R0i9EybdRZHp3LNjkXGueILouvZUvIxp9OnQl5a
         T4QtdWuCdh0huq8+tgQQPgcDyr9ovSMCjdFsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KJd8sbimmy5mnSq6QgFxWdBMbJR5jACe59+ThyKK82g=;
        b=LEIjgfen0+EQU6bpVHiyylhMjsncCey0RpR5PVdiYQbbCy0FC5s8NZcx7Y+aWUrHW1
         kVslTVx+RJ1ytiYHbXeHT+9qtKNDJTMrgoxcGgKbIxpgsD5J2UEl6KuJ8IBXpJqHZCO8
         6zW24Bp1ge4yusqD+mECmBGPQVUWxURc+CEkGLqKF47EmC82cIvE9tpNNQj9LSnZinhj
         79+2uwyJxk3lqnu6CoWfuYSRp6rG266BwnQV2vQFVAcEdNpb5eiY4xdo27jzxCOmPM10
         SyXqEk/zGJqwhsegft4c48NySZQqFJZECSOq5IC2GUGY4u0h/teG3MBJMTmRaaQ8sLug
         LUDg==
X-Gm-Message-State: APjAAAUrZeYANBczP6nDA5igjmH+Jg30i0CXcNe8+aP6Z9a9sHEIoPu8
        TMunS85/yXp0dT4BbPBbAtOxwA==
X-Google-Smtp-Source: APXvYqwvmj9emNdcSYaeyQ5bIj8DBfAdIXf//abqi9CfcXTehTrWUROGkbvTAyHXk/O4qK9ZmcUc3Q==
X-Received: by 2002:a2e:9f12:: with SMTP id u18mr9775583ljk.23.1570195984389;
        Fri, 04 Oct 2019 06:33:04 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 06:33:03 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Rob Herring <robh@kernel.org>, linux-pwm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
Date:   Fri,  4 Oct 2019 15:32:05 +0200
Message-Id: <20191004133207.6663-5-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We need to increase the pwm-cells for the optional flags parameter, in
order to implement support for polarity setting via DT.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/pwm/mxs-pwm.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
index 96cdde5f6208..1697dcd3b07c 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.txt
@@ -3,7 +3,7 @@ Freescale MXS PWM controller
 Required properties:
 - compatible: should be "fsl,imx23-pwm"
 - reg: physical base address and length of the controller's registers
-- #pwm-cells: should be 2. See pwm.txt in this directory for a description of
+- #pwm-cells: should be 3. See pwm.txt in this directory for a description of
   the cells format.
 - fsl,pwm-number: the number of PWM devices
 
@@ -12,6 +12,6 @@ Example:
 pwm: pwm@80064000 {
 	compatible = "fsl,imx28-pwm", "fsl,imx23-pwm";
 	reg = <0x80064000 0x2000>;
-	#pwm-cells = <2>;
+	#pwm-cells = <3>;
 	fsl,pwm-number = <8>;
 };
-- 
2.20.1

