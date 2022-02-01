Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12E554A5B78
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 12:48:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237472AbiBALsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 06:48:36 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56560
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237455AbiBALsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 06:48:35 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1C3233F20D
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 11:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643716113;
        bh=o1EGYrWsRqx/bd/p11jiwzAPNZIWt1CcXa2YB+SDcqU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ix/0lFwZCPkpSmfSDpi0iM0cK4HOIizn0ATxf0YRuudd6kDL76U0EfwL1lAocxD3/
         36fL2oUj3Y/dDqRmD6ByhRKdEdLsxPiUkH6NPnoaSfA1Tcjh2hLQ+N552iyetNk6Ts
         WaFG4ONx/7mdy+zkJceqCPyv52xkaaOpOiQo6ITaeX+sZ1Fu+LT9VDpk/zK+1okd7j
         j28ubCNfi11nj0C5RhkimD/KZs40aZ1BelGXJPHz/plnvpSailR30pp8VgvV9k6018
         QjofiJ5STXpQ3QISNaW7DK4SdSyhjjftgVGNTAJb0Qdy+Gysl1ppR5JqyhRPhkz1Mr
         zVPLsazr1MhqA==
Received: by mail-ed1-f71.google.com with SMTP id q10-20020a5085ca000000b0040e3ecf0ec2so708157edh.14
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 03:48:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o1EGYrWsRqx/bd/p11jiwzAPNZIWt1CcXa2YB+SDcqU=;
        b=v/f7UUOv27xicGctYCKw/od5K3zON5rEcga/zbri52xcx1BGh/cjWTMkvJhw9IiVCa
         xUeVjuAq2q6szbVjEAx4Cwy1JQ/Rp2oXcKLdx3IEW0x761qDaGShUSM1GXnvm4sBgr4Q
         Y7Q4pE76ql9LWuDzcoQZrSfTrlUj2ZxhFGRh2E0r1Gjq9eQtR6RZ07T7KZpDZAMYjs/L
         Sksbpj9gNrepAE35SScJBWCtQEKI7qSfDb2EdXL8rWSuMsPVVfO5gQwIw15mdE1D3u1p
         /fcdFSZL+oGM6ncNLAav3l/EC+dDqaJwEYI09P5HB7ok5bdQLiL1UK4Rc/fpkzpM1wAh
         d5Kg==
X-Gm-Message-State: AOAM533IwSYWmo6R8snr29JP30Zj4td/j9/XoSvmsHcIgkwLrEaIGpTb
        9TFTlDwtt8b4lP75hCyUjhh0psF4khz4bBmeFCpcIpwnOIykdhgK6E1EkpN/CUPys8e1dvPsoYl
        +A33TtYRz3wm/tymyIujmU2+sctvxrZngyAz2XNM=
X-Received: by 2002:a05:6402:c8f:: with SMTP id cm15mr11990020edb.142.1643716109125;
        Tue, 01 Feb 2022 03:48:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwraRAjhC9I6DY9xAnWWXt1339RlIYhSluQ5JrwhO0g6NxEHo1NIp7ivDOtxHqLqCBE3vpCHQ==
X-Received: by 2002:a05:6402:c8f:: with SMTP id cm15mr11990002edb.142.1643716108971;
        Tue, 01 Feb 2022 03:48:28 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bo19sm17954484edb.56.2022.02.01.03.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 03:48:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 3/6] dt-bindings: memory: lpddr3: adjust IO width to spec
Date:   Tue,  1 Feb 2022 12:47:46 +0100
Message-Id: <20220201114749.88500-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
References: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to JEDEC Standard No. 209-3 (table 3.4.1 "Mode Register
Assignment and Definition in LPDDR3 SDRAM"), the LPDDR3 supports only
16- and 32-bit IO width.  Drop the unsupported others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml           | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index c8577186324a..0c8353c11767 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -34,10 +34,8 @@ properties:
     description: |
       IO bus width in bits of SDRAM chip.
     enum:
-      - 64
       - 32
       - 16
-      - 8
 
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.32.0

