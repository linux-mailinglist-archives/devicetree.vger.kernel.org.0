Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CEAB219C31D
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2020 15:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732804AbgDBNvg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Apr 2020 09:51:36 -0400
Received: from mail-wr1-f98.google.com ([209.85.221.98]:46101 "EHLO
        mail-wr1-f98.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732618AbgDBNvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Apr 2020 09:51:35 -0400
Received: by mail-wr1-f98.google.com with SMTP id j17so4231508wru.13
        for <devicetree@vger.kernel.org>; Thu, 02 Apr 2020 06:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flowbird.group; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1/pNS0FhaTO2BgGmZP8T3UuHjqYyNV8AcJR7abT3rIo=;
        b=NrQV2I3WGCGDBwf39bLMjY/gJ3ZGaxu/25t4RsjbQlMP1hM+a9Rs0fv2OGzKrng000
         Ijj7S0a1l0ydJIr1HpLVrjcosb1USFHWv/pF3/FGhiVsFC28eUUQnHzQ2/nFiU8NbAoT
         K6Ggkm2p5xK+06QSo3qKyo9ccs5ohdd3MlpFHovgbHJP291/gmglvBntq07kvn7y0Oq2
         yX2Wd18LQTGwillvDPbtjRimSezxm9m29d/wnV9iYZYDTFRF0YqekPq/H7gp+U5gyQTq
         Os8BWEcLu4E26fi0mUu4m+otJGATxbBbL1IH6I2JC6zENzVK8DSQebfeCHVT+a/WnYHE
         aReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1/pNS0FhaTO2BgGmZP8T3UuHjqYyNV8AcJR7abT3rIo=;
        b=Ysquqwzbo6PZ+NxwL/lcWbQDv9pC5QK1L6qOcH6j81Dj5Vi0LlT+P7vGNwXDazhgWN
         mVGi8GZLmXQ7UQOwxMLD4hRplB+VIVjK2cnf3EP+gxzQ6adO6CDHLMQVYjMl32HALB0i
         9SRRHorPC0SRnE9VgyNPs8kCd6xz3aJMd8kMJq2AMqWC4GkszkAdN86to2UMdGiq50sx
         3Jn7uqAFWZGk1BvnrolVv60wPz4COBVA98BPDo2v6q+c+9F0fRbq6uDJWrUQ0Q+WFfGR
         ZROiRXprVWHd2g8TA2kF5/xlMA7dLzRDl5I/RR2gGAbyQiTPNzcNjO2laAZodP2s61a8
         pXNA==
X-Gm-Message-State: AGi0Pub+OxfPnoVmeW5WJ5HZAXvuqnLHYSYECxTpUiuB68xJwxALA6vR
        mYLWEiF8a9fvmlgaMIgEHsZqaTWPOGFDzVF33LIBwAWgjo/v
X-Google-Smtp-Source: APiQypJY9EzxmH/Jgql516W/Q2BkMW7gK2obhxiqK/xRfP2uO4FmrgIw/rVDr58Q5fzfT0BFGHdSNLTpzXJs
X-Received: by 2002:adf:a457:: with SMTP id e23mr3650108wra.21.1585835493748;
        Thu, 02 Apr 2020 06:51:33 -0700 (PDT)
Received: from mail.besancon.parkeon.com ([185.149.63.251])
        by smtp-relay.gmail.com with ESMTPS id v63sm64490wma.16.2020.04.02.06.51.33
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 02 Apr 2020 06:51:33 -0700 (PDT)
X-Relaying-Domain: flowbird.group
Received: from [172.16.12.10] (port=55896 helo=PC12445-BES.dynamic.besancon.parkeon.com)
        by mail.besancon.parkeon.com with esmtp (Exim 4.71)
        (envelope-from <martin.fuzzey@flowbird.group>)
        id 1jK0Fp-0001KP-3T; Thu, 02 Apr 2020 15:51:33 +0200
From:   Martin Fuzzey <martin.fuzzey@flowbird.group>
To:     Fugang Duan <fugang.duan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        "David S. Miller" <davem@davemloft.net>
Cc:     netdev@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        linux-kernel@vger.kernel.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v3 3/4] dt-bindings: fec: document the new gpr property.
Date:   Thu,  2 Apr 2020 15:51:29 +0200
Message-Id: <1585835490-3813-4-git-send-email-martin.fuzzey@flowbird.group>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1585835490-3813-1-git-send-email-martin.fuzzey@flowbird.group>
References: <1585835490-3813-1-git-send-email-martin.fuzzey@flowbird.group>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property allows the gpr register bit to be defined
for wake on lan support.

Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>
Reviewed-by: Fugang Duan <fugang.duan@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/fsl-fec.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/fsl-fec.txt b/Documentation/devicetree/bindings/net/fsl-fec.txt
index 5b88fae0..ff8b0f2 100644
--- a/Documentation/devicetree/bindings/net/fsl-fec.txt
+++ b/Documentation/devicetree/bindings/net/fsl-fec.txt
@@ -22,6 +22,8 @@ Optional properties:
 - fsl,err006687-workaround-present: If present indicates that the system has
   the hardware workaround for ERR006687 applied and does not need a software
   workaround.
+- gpr: phandle of SoC general purpose register mode. Required for wake on LAN
+  on some SoCs
  -interrupt-names:  names of the interrupts listed in interrupts property in
   the same order. The defaults if not specified are
   __Number of interrupts__   __Default__
-- 
1.9.1

