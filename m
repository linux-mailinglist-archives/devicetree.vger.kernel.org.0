Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB3B116EF2
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 04:20:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726735AbfEHCUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 22:20:19 -0400
Received: from mail-yw1-f68.google.com ([209.85.161.68]:41703 "EHLO
        mail-yw1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726711AbfEHCUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 22:20:18 -0400
Received: by mail-yw1-f68.google.com with SMTP id o65so13200271ywd.8
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=luzkdm/vY/d9DSMJpZXXkdaCYVQylLWX37IuJlSjSvI=;
        b=O4CvT+wpioFlo6o1ONKedXd5PmRIkZ34A7MtUnDx5L42qIpPstYgNWmOxMg4LEGRyb
         DTpNaSj2GxM7k8NZLthuEyRPb3YKw47qUBfjXZUtBzCNNntwpttHmeU8dfBBg78D1iGg
         vuAMTacyFw5gLbCb6GUZG+J5G/heP+LtZee6+vPsxbSXotGPX9KI740YKLzJPbGfjAhP
         3mr2ytKXAY7QnMyz2MwpdNl4yGLWt3jikQ3T8fOOGCPrb8llxwC4/Kb71nUkJZ0aXmiW
         nUTMrLpvwZtmkA7+Dmqhy5yxPQ0guX2QYX1ro2RwDjsq7xioeAcYl9ruVbHsm64Xqm4N
         ZfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=luzkdm/vY/d9DSMJpZXXkdaCYVQylLWX37IuJlSjSvI=;
        b=twK1rnuaQUjtvfJMAaC8G9O2tyc1i6E9eyFy058rfNP6CGZyz6tPKGm4wRbgGCIn+d
         v/geGMnYCS9KMby4ILpXPDas38+HddwqT6Qop5PN7BULc6SjJg0ruhgPUGepH/EVHVqw
         RMQimf1YXj75tFRfKu9I/y6kQMcdBQ2QWjY8I6IgKlfDK14LaggBDgTcUO2eiL1J+HZx
         OAdNAbFG1Am8B1hPGx3Jm8jt4OdGiArmMAwwh3JrL58U2FJGA/DBNLM355HeLiNB4mLK
         VeB59JNFDI6VdJLQ1bmmjlF1XVES5O6Efc+/s42Cy5HuE4VyxfpsLAMrcopR/wN3CsG/
         xy4A==
X-Gm-Message-State: APjAAAW+Uvhp7+zTJpnD1NgmTyyqX3Df2Tp7V+VdxYSH3vGti97OGd05
        Fe555WBCFKSgY74SnBHR/QVE0g==
X-Google-Smtp-Source: APXvYqwtZ33+oLWzmatl408B313A7G34hUUVmzsJOmZ1DLU5dGNKsPVJWev9P0fXaghzne8AaVkDvQ==
X-Received: by 2002:a25:7652:: with SMTP id r79mr22520606ybc.216.1557282018025;
        Tue, 07 May 2019 19:20:18 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com. [45.56.113.65])
        by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 19:20:17 -0700 (PDT)
From:   Leo Yan <leo.yan@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Mike Leach <mike.leach@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 05/11] ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
Date:   Wed,  8 May 2019 10:18:56 +0800
Message-Id: <20190508021902.10358-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel and
static replicator, so can dismiss warning during initialisation.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 00cd9f5bef2e..164c904c9992 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -440,7 +440,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -471,7 +471,7 @@
 	};
 
 	funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&oscclk6a>;
-- 
2.17.1

