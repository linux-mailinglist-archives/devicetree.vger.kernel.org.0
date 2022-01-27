Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C430649DBF8
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 08:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237538AbiA0Hwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 02:52:42 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:42472
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237535AbiA0Hwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jan 2022 02:52:40 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 650A73FE09
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 07:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643269958;
        bh=qdfi4d+HIRszzf26gXi/pQU/uCw5YnQfSUk9vCmYV/U=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=qovQ6rB8MkLVUT6Nyhw/eGBQdpE1fWj9NRKiVdlcY8XJFlGMfA9aNn1fnCWPlevEf
         Rg7t4/nPyrwFtALI2JmD52w0D7ELditIOGouxJ88q79oWJBemESbTPz8B1cDnzLerF
         OSCLAjLD9FTXwjEBfdBmwq4OhCYG5eyGldtuoC+RG0jKBD0EYQuPGMN8VmAXD8LAn7
         kjXd4fWjEgCaEBOiwuwKs3P247cnaK/sBDFalkVM7wT8NtP3sM5OaFVi2bXeinL1RU
         H+T+ArkZkzp3oH/zuPDM+EKGX8MFpuike7b4bDmcp/rNPDzORTRZUptcnK3drbrfUp
         kw37de0ahiFbQ==
Received: by mail-ed1-f72.google.com with SMTP id bc24-20020a056402205800b00407cf07b2e0so985411edb.8
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 23:52:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qdfi4d+HIRszzf26gXi/pQU/uCw5YnQfSUk9vCmYV/U=;
        b=GkrnakvrDYFwZgSspxtsLPCQBJMiec66ZP59Vc+WAwLd234LaaV9N/Ph6CjzhZUaax
         iEp92aXcbmbRjxBrrY2w0NPLGMdpV1G5XhKg4H/DX8IlJuCqufyEMRT1yMoRkl0eMiDy
         MPcWL6BY7l6w4BxFaEXXV1Z/Sg/oG7tyCBqawsQyBP3l4/ITRqtpNc2mWZA8ys1LfuI+
         wpOkn6ACm6/Emxxl/KZ63jiyMi93lJ2NBeU8ivgkWdfg/Q2rRzzzN9vPfbaZEZEZHOh0
         YWY+0ip0HmqkKMsWuNIbqTgwv9XeMZq6WwfmpNuKPipbZZlzDqD3djJ50/hZU/pUw+iV
         7dwQ==
X-Gm-Message-State: AOAM532DF76JcwutsCE0qRzTzmEppqkrvpxf7+ie6LFpRODoT9PXqbJV
        3siTCETGD82I6JavtfIgpeBiH95lDAM9y8ve39Ud6Ws+oHojqEuHQkyXA28CczNH2z5WT6N+696
        zV10Zc1roJUbth+hAD1lmisjqAtZwcwN4Rx3B5hY=
X-Received: by 2002:a05:6402:438d:: with SMTP id o13mr2539237edc.258.1643269956983;
        Wed, 26 Jan 2022 23:52:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzXgM/NUB2nDHBifcFiSo9kBuXpOj4f7jGx7eR7EFTCWiVTMxtZDYwMkSwUrGK449uKeKU31A==
X-Received: by 2002:a05:6402:438d:: with SMTP id o13mr2539208edc.258.1643269956206;
        Wed, 26 Jan 2022 23:52:36 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bv2sm8305550ejb.154.2022.01.26.23.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 23:52:35 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        nick.hawkins@hpe.com, verdun@hpe.com
Subject: [PATCH] dt-bindings: vendor-prefixes: clarify HP prefix
Date:   Thu, 27 Jan 2022 08:52:29 +0100
Message-Id: <20220127075229.10299-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two independent companies: "HP Inc." and "Hewlett Packard
Enterprise". Clarify that "hp" prefix is about the first one.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Cc: nick.hawkins@hpe.com
Cc: verdun@hpe.com

Optionally please squash it with a new patch adding "hpe" prefix.
See: https://lore.kernel.org/all/20220125194609.32314-1-nick.hawkins@hpe.com/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0d8da47cda1a..05a059c8a011 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -518,7 +518,7 @@ patternProperties:
   "^hoperun,.*":
     description: Jiangsu HopeRun Software Co., Ltd.
   "^hp,.*":
-    description: Hewlett Packard
+    description: Hewlett Packard Inc.
   "^hsg,.*":
     description: HannStar Display Co.
   "^holtek,.*":
-- 
2.32.0

