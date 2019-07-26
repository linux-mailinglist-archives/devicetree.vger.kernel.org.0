Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6140B75FAD
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 09:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726535AbfGZHVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 03:21:45 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:35781 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726124AbfGZHVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 03:21:44 -0400
Received: by mail-pf1-f196.google.com with SMTP id u14so24086450pfn.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 00:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=UKHcPnP1X/YH0KxOMapb8zoNNla2jhYhzX+lsHS5cTM=;
        b=E/8yDjb7ZXAoXz4rohf7xtU4fhLLX5e2g+HPtRaZkv3EEOnRi93Lc23PAFcSQlkXjb
         J3Wa6rERdfomrw2OTiK4FH5qYxtfwCfuIP5rQTWocufBjT6s+yyn1isAdW1mS7TBlhF9
         zqljjj5O16ddI36qYavzuNIlDPSDILRII6NiiRPPmJihn6ZmtXZXEsUy2qxRn9toErIe
         4pfyj+dW/0gFmCbyCGfQd+hC89i8hZK+dH8qwarrCFKd4U4csbslNRiqS39I2iAeb36O
         DbPPLxMS6drd93OWQxQEkAus7EIMyOpygAFaoynlbckmOxeAGcmfGvzwBIlPb3h08hLh
         3cYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=UKHcPnP1X/YH0KxOMapb8zoNNla2jhYhzX+lsHS5cTM=;
        b=l9oo00aTOPCELDddkm8vlttOSHf1ex8d1/55bJB+lcMa8D/Es6JQ4pPQP7ioeyevvg
         rho8K3lk53ocImi8WmlLcEL4/lCEubVP3O7D9NSwDKG/f0y/wgpS30S8qPqRsK6w3RM1
         whrmQptzT88DTh48Sqj2DjCG/ZM5hPsFC+MtLnOIDgUynT0x42AQFfCZWU2n4BYWICLU
         3anSDSCN/51poLZB21zl+rEno/LLxzBy30coQfmSM31xwDNVpr8UBeAOZm+7c8BPPGXe
         CggYCBzPxmUh3mXd3V8mght3DgxSq1PRnvhcwjptPQGCCM3lGZk6QIinXKrojBnN5vv6
         B3Ag==
X-Gm-Message-State: APjAAAUmlZZ3mkaVrdoDdIIRdjDbRlAlMsfCEAUm4EHqwdP1u3442mBm
        4hM5ZD4mUzYX8TbuJKAitRkOShXOP4UQwQ==
X-Google-Smtp-Source: APXvYqx0MzCJG7d9iPnuvF6O22gUq9ll3iEEBUmjoDkNejDovvr6c+hOVWesySnuyHKOJNCRdJYZtg==
X-Received: by 2002:a63:b747:: with SMTP id w7mr36749242pgt.205.1564125704234;
        Fri, 26 Jul 2019 00:21:44 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id o12sm39216152pjr.22.2019.07.26.00.21.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Jul 2019 00:21:43 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        orsonzhai@gmail.com, zhang.lyra@gmail.com
Cc:     weicx@spreadst.com, sherry.zong@unisoc.com, baolin.wang@linaro.org,
        vincent.guittot@linaro.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] dt-bindings: spi: sprd: Change the hwlock support to be optional
Date:   Fri, 26 Jul 2019 15:20:53 +0800
Message-Id: <23d51f5d9c9cc647ad0c5a1fb950d3d9fb9c1303.1564125131.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1564125131.git.baolin.wang@linaro.org>
References: <cover.1564125131.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1564125131.git.baolin.wang@linaro.org>
References: <cover.1564125131.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No need to add hardware spinlock proctection due to add multiple
msater channel, so change it to be optional in documentation.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/spi/spi-sprd-adi.txt       |   11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-sprd-adi.txt b/Documentation/devicetree/bindings/spi/spi-sprd-adi.txt
index 8de589b..2567c82 100644
--- a/Documentation/devicetree/bindings/spi/spi-sprd-adi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-sprd-adi.txt
@@ -25,18 +25,23 @@ data by ADI software channels at the same time, or two parallel routine of setti
 ADI registers will make ADI controller registers chaos to lead incorrect results.
 Then we need one hardware spinlock to synchronize between the multiple subsystems.
 
+The new version ADI controller supplies multiple master channels for different
+subsystem accessing, that means no need to add hardware spinlock to synchronize,
+thus change the hardware spinlock support to be optional to keep backward
+compatibility.
+
 Required properties:
 - compatible: Should be "sprd,sc9860-adi".
 - reg: Offset and length of ADI-SPI controller register space.
-- hwlocks: Reference to a phandle of a hwlock provider node.
-- hwlock-names: Reference to hwlock name strings defined in the same order
-	as the hwlocks, should be "adi".
 - #address-cells: Number of cells required to define a chip select address
 	on the ADI-SPI bus. Should be set to 1.
 - #size-cells: Size of cells required to define a chip select address size
 	on the ADI-SPI bus. Should be set to 0.
 
 Optional properties:
+- hwlocks: Reference to a phandle of a hwlock provider node.
+- hwlock-names: Reference to hwlock name strings defined in the same order
+	as the hwlocks, should be "adi".
 - sprd,hw-channels: This is an array of channel values up to 49 channels.
 	The first value specifies the hardware channel id which is used to
 	transfer data triggered by hardware automatically, and the second
-- 
1.7.9.5

