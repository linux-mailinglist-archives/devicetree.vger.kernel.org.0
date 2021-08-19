Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 231BA3F1E82
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 18:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbhHSQ7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 12:59:55 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:46606
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229491AbhHSQ7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 12:59:54 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id AEF90411F0
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629392357;
        bh=odiP8qNzCjQyM5ut6+4pfn5opT3C8BN5X2IXeYZ+uMg=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=qUxHeUdfUp1mJk1cY4Q5crjWDI4pI8nrCrlS3qw3oTeJkyKKwUd127M1HStyo4n3F
         GHmKK+HOm1d7wgqSpCyTCvroLyyr7jL7oyTBSAPk6VHye0tjO8x+LZ4DsG5Mh6/p5t
         9ANMCucPAPk5svp9GxU0FenmoYDkGtXTf4cnLxuPuACopclM7BAKDwhvx+JFdkIwr+
         70V+q6lHxWJJXNm45muB1SyLbX+GF+senolPJcaCswbMNPFE6bQlA2f2H39JkbTRrk
         Td+2z77MUYYVXzsnOT/ANl23RVPB0bJ090VdEo4ezQWEEosauUl9n1wOAFxQ+rtFlQ
         Go3UfKf2iqeKg==
Received: by mail-ed1-f71.google.com with SMTP id k13-20020aa7c04d000000b003bf04c03fc4so3130329edo.22
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 09:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=odiP8qNzCjQyM5ut6+4pfn5opT3C8BN5X2IXeYZ+uMg=;
        b=is+3tEBsiy4SEEM+dkwzpGPoVr5nzSiTtGc/7UUtLiGEygs/7xLXNZbIxQDLxLCGP+
         nbZGRY9RwL2OcuD07QOXXy/Pp4Y9oRGeVbNGj/6lk/NsS8CMEaXwjzzZujkQeobTkABZ
         hCt7y4bZNqIyN8y78l/ylA6YXBlBo5q8KZrvVt5SBNQ5851i73Pq16NA/uRrwVXsX2Fs
         ivIImvppY1auQ+9RwvUJgPywL12W11UakQ49IvgetxJV8YWkIPOLGLt3ejqymhLEnO13
         c3XkSTs0FnFrQhO+Mjhtl6i/GP5UV71cTP0xjXA79YtkiWHwsgr1liMmTaEpKJeQePLZ
         NREQ==
X-Gm-Message-State: AOAM533Rel+7BEy09SJlr7y++FBafSOjbk/vm4905MFaXe4QLNOkDApd
        2cj1CqdEXt+nQ983nqsmaxaFiWNslLqrc8Di/VbE5YgRdidVWCn4O1QhvkmMzTJXqkOK2WCpJ1n
        WrA51bbdW4q8jbm9vNeOG1yFfseLRUorMS7dX3h8=
X-Received: by 2002:aa7:da8c:: with SMTP id q12mr17338220eds.304.1629392357464;
        Thu, 19 Aug 2021 09:59:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9NLI19XYdziHhF/9RoSTCqYZEy4vkbe0t27FhZYRkfyGlpzr7xF3AO+fMykRg6cWcoCzMyA==
X-Received: by 2002:aa7:da8c:: with SMTP id q12mr17338204eds.304.1629392357351;
        Thu, 19 Aug 2021 09:59:17 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id h8sm2023418edv.30.2021.08.19.09.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:59:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/5] dt-bindings: mtd: jedec,spi-nor: document issi,is25wp256
Date:   Thu, 19 Aug 2021 18:59:04 +0200
Message-Id: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document bindings for the issi,is25wp256 SPI NOR flash.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index ed590d7c6e37..0db64ac7dc33 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -33,6 +33,7 @@ properties:
       - items:
           - enum:
               - issi,is25lp016d
+              - issi,is25wp256
               - micron,mt25qu02g
               - mxicy,mx25r1635f
               - mxicy,mx25u6435f
-- 
2.30.2

