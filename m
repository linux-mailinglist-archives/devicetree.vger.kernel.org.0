Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8233E2CBCB8
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729807AbgLBMPI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:15:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727066AbgLBMPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:15:07 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E59C061A56
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:43 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id v3so998016plz.13
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=twh7FdLnI3Fezd8SG0USiCPnQPrQFrNMmmfjQ/SF6eE=;
        b=Ra3qjBsU2lId9leoR6YrGFCIh8IBKQrDGUjKPbVBUi0nRiIjIPY0e3Lxju5UGz36Eb
         FUyHHdSO6cbYd2WhKMZc1+rL5UO8YvCU4RWtSJsBu4CdineLOiy5qoHaxXGTYFeeKENc
         KXJpyG0kvq0kOf9MbH0Yrefv3RKu2Rsjau00s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=twh7FdLnI3Fezd8SG0USiCPnQPrQFrNMmmfjQ/SF6eE=;
        b=qi0QfYt0t8J0GUtYo9VlaTT810JHZ1yT8DRxLfMTiBX+pwc0wG5q51vfvU8hVOttM+
         6+q+4J2CoPh4MpD7uecNqyR/4HdRj50dnayFPwBfSOctFkVvCPVTKVqaBiPkxqIqujNB
         Ot9Ni7g9916YbXddB1QXB1qOvud6BV3eWQZ3dsKGPPoEuO0LdKKztp4jfrZTvpzwLaUQ
         /cqhuLwBiwqJEWBY9IL7h+Eab8pQzw5IOtiUJeurY4pQP4R9jS+4UCvoB28POKvB1QEL
         hHUafHkdWxcGerKsrMUBX3Wy1pz+BcxNednBDYPPVpW926th64/gwXgQl9SvKni9Qjlq
         lzBQ==
X-Gm-Message-State: AOAM531Wn0CP6GFm31r4gOSXmMyS9tVhqPiv35o5OUUovWjWT7J8Fzg/
        r484msLCiJv45T/XyhqaSY3r2A==
X-Google-Smtp-Source: ABdhPJwcgJ3Euhvx5PWyQcxmWJUdLYodQJL4DDylGLMJipaSJoce4oUGxDeygF2wMblP3aAvC+oaKw==
X-Received: by 2002:a17:902:14b:b029:da:b499:25c7 with SMTP id 69-20020a170902014bb02900dab49925c7mr2297336plb.80.1606911222873;
        Wed, 02 Dec 2020 04:13:42 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:42 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 09/10] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0 10.1" OF
Date:   Wed,  2 Dec 2020 17:42:40 +0530
Message-Id: <20201202121241.109952-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SOM based on NXP i.MX8MM from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

i.Core MX8M Mini needs to mount on top of C.TOUCH 2.0 carrier with
pluged 10.1" OF for creating complete i.Core MX8M Mini C.TOUCH 2.0
10.1" Open Frame solution board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 8c8f7728788d..9e275921112d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -669,6 +669,7 @@ properties:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
               - engicam,icore-mx8mm-ctouch2       # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
+              - engicam,icore-mx8mm-ctouch2-of10  # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0 10.1" Open Frame
               - engicam,icore-mx8mm-edimm2.2      # i.MX8MM Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
-- 
2.25.1

