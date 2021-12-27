Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0F5D47FD61
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234176AbhL0NcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:32:14 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39444
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234105AbhL0NcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:32:11 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5F00B3F07F
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640611930;
        bh=MHp/uWCH5GnB9eOTk5ejo8HU97THJSgA4dspcnuZXTw=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=NBwZedFcCNYfYrCJzpyhn2vacoF2SklyAqP1rTSyEvwO3IIJsNqIgKfBeHHyuI4Xu
         mG78cSf6g4lFCLZRK9+pTHVMXVI8iTBeswjBI921YR0vvRg7uHaB7T9Ob1qZUfIIp1
         oEbHTZ/oGWgHGrxFgaXkxWbCcJ1wM4msDH06SKhMnUcsmmFIkDzODpiO9EKL0o1gTZ
         1ZB7O93ZRO2OJYnel1IGO0k9kYEhNlVm9S5GFdGduLn/mYV1NsFZkkLRHReTkPaEWz
         IUe3TYKEiNq1mUrDVUdFSBxAtl9FiqDaYYbpQyHegK59dKsV5WxuSMEBE+mBKtL6O8
         ZqA35erNF7EHA==
Received: by mail-lj1-f200.google.com with SMTP id bd7-20020a05651c168700b0022d71e1839bso4946430ljb.9
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:32:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MHp/uWCH5GnB9eOTk5ejo8HU97THJSgA4dspcnuZXTw=;
        b=YMkpeAg2LreZzck2RMb7lAx2WdnvhgaJ+cnckgfzmVM+n+geHhQ5/kFfy2GkGRTbXr
         y0Uun+RKw8hgvKemXwb7FZtEHz+wtkNGkq3pE975JmpgnisaXNYwS/7WZnfzUd/8KBU8
         TZz6xWmD+PUKlMKcaGKphOYQFbYKAW0TpNb6iBjpr+MigkHtDLoxgJ4vu0QBFVcr/waN
         D/JCpbsDwf/NG8YGEg1yRralGGyxNuTM1CPvEekYj2hfPicLSw9kbtItN+3rtriGwEhg
         sPBtVnjDA0UdaXVsQegdrDcIxJIchOb2cSSosj6e5kTLik24leIRh8hKUglbCeqzPTRr
         4v/Q==
X-Gm-Message-State: AOAM530wkkzW3nZXEhD6wso2zKH9VVOltFclnALc1Wgt7F6sX0YFM9D9
        UJIx8zCOB1+3CFk/mwu5mi1whGlC8hCcPjdOWQ5gVzORJk+bO92lHR5EzpVGcmenFx/4op2xc/Q
        VnHnWUp2J+/GC0aBHtTy9DEyswVOQfXEFth167D0=
X-Received: by 2002:ac2:4828:: with SMTP id 8mr16033489lft.477.1640611929489;
        Mon, 27 Dec 2021 05:32:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw77J68nGFhgLXCA+eXYxvqfScF69sInQCoFPQykWUbx1r+RPtCS3P0q/HkVn3cmdzNIMd/cw==
X-Received: by 2002:ac2:4828:: with SMTP id 8mr16033482lft.477.1640611929332;
        Mon, 27 Dec 2021 05:32:09 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d14sm1433510lfg.18.2021.12.27.05.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:32:08 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 05/19] dt-bindings: altera: document VT compatibles
Date:   Mon, 27 Dec 2021 14:31:17 +0100
Message-Id: <20211227133131.134369-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for SoCFPGA VT boards/designs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 963c83904010..f4e07a21aaf5 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -43,6 +43,11 @@ properties:
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
 
+      - description: SoCFPGA VT
+        items:
+          - const: altr,socfpga-vt
+          - const: altr,socfpga
+
 additionalProperties: true
 
 ...
-- 
2.32.0

