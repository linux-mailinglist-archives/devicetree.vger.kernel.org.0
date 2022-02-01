Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D4BB4A5B71
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 12:48:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237448AbiBALsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 06:48:35 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56532
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237438AbiBALse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 06:48:34 -0500
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8FC0C3F2FF
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 11:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643716111;
        bh=OuVWT+OxqE323DEVUlu5DyHs7hHuGTLMdHDm6pwqNSI=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Fbs15aGFgyvnkbWUtMPMpCUoM8+qO2YRu8ZLKtjcYMAkFKmbOHtePRgZXkfPczobF
         8LtGVc8k3BokIJoM+7yVBwcLUsKyxwvjlx3n7tVJYMwrPYfrsu9Lj2LT48ECZcnaQ3
         EyL7V++sdNi1p5tLZMP65miqlwrhGiFOEv20cD95G22I05ISeQ+dptM+4M3L7z6UVD
         UFXF/YIfdI+V3albUpnGby2f6TQ2EwoZUtekPhlxVKvT3hobRkRk1TErcHM8BLGasW
         agtHMssixjPYn0519F0aBdSXBXd+yhVAy7YteKJOtPXexuYrFpCqgrPqy1qbXtfaRf
         uW3M4RY/QTepg==
Received: by mail-ej1-f70.google.com with SMTP id rl11-20020a170907216b00b006b73a611c1aso6400217ejb.22
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 03:48:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OuVWT+OxqE323DEVUlu5DyHs7hHuGTLMdHDm6pwqNSI=;
        b=BgW2hyAm0zS0ce90w760OL9ne1LfJhW/pXYa6SlvlQhEkv54U7g8VE9wLGNrvxfoGf
         M9tp/yPvw0tq+t+tJpTEEWv2CO0bUcYe/wKdxRuAGFXqIuy822BjL/A/UAl5vOMBci7M
         xju81vDGbM/VZQ+IS8UWr4gyROXnsyC5oV3cxZKJGCXydtE9EGKibOTU4zIEAbXqN+Em
         XSfMPrTNIoB7qHPu0p/lKzP2eTQht7MExxWfhHzBdrZin8QEMwFn9R4WtSwHdscsxq4D
         Fsp3r7AMLcj4Zhb5Cdz7GU6J6v0BuDW0C+l2K6mBC0ZCLCbZb6M33ddy1FwoBkrTbUGS
         ojBw==
X-Gm-Message-State: AOAM532yzVk6bcgwNz67n1XF8hpegNhz+yJ81KFNyRw0+YHYKpCn7b6k
        Z2/7UIl6pWABnTY3jH1+pAkXs9BF4dlUJGmuoKIQP/q357ooh8/O6jxdURZJs5aYn4Y7zwsr9wx
        YAwADsVN6IjJGr5bowBWRTXWXUnFC89nXpSrHQvo=
X-Received: by 2002:a17:907:d9f:: with SMTP id go31mr21604850ejc.282.1643716111079;
        Tue, 01 Feb 2022 03:48:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz4hxffkdEDnSRNHd8A4Uy3TqYuAKbZF4KOrK7b4i45cPu6GWoai3jbLk/RRWS+LN17FX6K9Q==
X-Received: by 2002:a17:907:d9f:: with SMTP id go31mr21604841ejc.282.1643716110925;
        Tue, 01 Feb 2022 03:48:30 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bo19sm17954484edb.56.2022.02.01.03.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 03:48:30 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 4/6] dt-bindings: memory: lpddr3: deprecated manufacturer ID
Date:   Tue,  1 Feb 2022 12:47:47 +0100
Message-Id: <20220201114749.88500-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
References: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The memory manufacturer should be described in vendor part of
compatible, so there is no need to duplicate it in separate property.
Similarly is done in LPDDR2 bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index 0c8353c11767..138c57d8a375 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -40,7 +40,9 @@ properties:
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
-      Manufacturer ID value read from Mode Register 5.
+      Manufacturer ID value read from Mode Register 5.  The property is
+      deprecated, manufacturer should be derived from the compatible.
+    deprecated: true
 
   revision-id:
     $ref: /schemas/types.yaml#/definitions/uint32-array
-- 
2.32.0

