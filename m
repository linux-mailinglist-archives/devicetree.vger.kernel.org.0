Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 409FC3F1FD4
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:24:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233785AbhHSSZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:25:06 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:34502 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234085AbhHSSZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:25:05 -0400
Received: by mail-ot1-f43.google.com with SMTP id k12-20020a056830150c00b0051abe7f680bso4796700otp.1
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:24:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7GBCrlPlIAYPwIdLvhGbvnnMA1dA6OvJWkR1OBYxuOU=;
        b=ZeNCxDDXaKFU2bBfSDF1XF9ZQRMC8I9yPbdqh9+Dj9k/bXHyFeJaex/XeOUB7XqSPA
         zW1mKAFAD2mndo3FGWmzkee8r75J3lPCXvhKsd5+WETjE0EzfuJz0OPoaFOPuDq635ny
         RvGWZ66snkItYB0s3QtJg3ZIa9sVXGk4rAZ6OwfuinyNKV4RUiP+YtNNcRkJaQXec9MR
         vBhN/QA1czNvyv1cCREjkuGJp2DcGMUDGPHa2pGzy68mS6xMxXQPtyou/0D3n7AmCLhi
         jcwC1yEtGgZtsjgQV9LjFKHQupgFKTSLkyOT7e1rO7antwV6REIa6ZfQmSyM0KAOF6+B
         eBNA==
X-Gm-Message-State: AOAM530pR07xpsNUnBOPubOoZzv8UQUMZ4PgLjkRGWzLI1JHCp6A/R2I
        gDgaUS2un7iFoKOgQM8hdw==
X-Google-Smtp-Source: ABdhPJx8zX7MSvGJdiiQY8ESE/dX0vB5LTQHwN8XfJfBqFUreSSEhSDxtstCwt/cvM1ZNsLtAW3Ibg==
X-Received: by 2002:a05:6830:2709:: with SMTP id j9mr13012959otu.147.1629397468887;
        Thu, 19 Aug 2021 11:24:28 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v126sm629856oig.2.2021.08.19.11.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:24:28 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org
Subject: [PATCH] dt-bindings: mtd-physmap: Add 'arm,vexpress-flash' compatible
Date:   Thu, 19 Aug 2021 13:24:27 -0500
Message-Id: <20210819182427.1175753-1-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'arm,vexpress-flash' compatible is in use, but has never been documented,
so add it now.

Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-mtd@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mtd/mtd-physmap.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
index 13c29cc91b59..f827984936f6 100644
--- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
+++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
@@ -23,6 +23,7 @@ properties:
               - amd,s29gl256n
               - amd,s29gl512n
               - arm,versatile-flash
+              - arm,vexpress-flash
               - cortina,gemini-flash
               - cypress,hyperflash
               - ge,imp3a-firmware-mirror
-- 
2.30.2

