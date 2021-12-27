Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E41247FD70
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:35:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234135AbhL0Nfw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:35:52 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54522
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232207AbhL0Nfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:35:52 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E61C73F1A4
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612150;
        bh=SHDOTqD45fkOcgdIZOrzabWTlwg9fQB3mqCZYwiASwc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Z1jg8ZcBedomgejSNrQpsR9kELWBm4o5FFihZ+pUfGtJipMpjLJwKaT29rR9ZYz1o
         P6xKuXPz4rwp1GUQRn1s/zLZNn/Tj32RwyTn93mrknb3NrM2kmQ1nLjrvMe5FaIrT9
         1rLjm1LZOiUZvPhPJEzDeW6CanJAlWR8bdv7MiubFT8SOlNDlZF5Utoerhyu6Qu8xz
         lTplg8qszwEwCJciFajygXuMtVoxSFL/QiMOeaefNL8xFVIyQ06m50R4RPZoNS6sq1
         Ve9LA1wsFCbE8guXkgqD+FrhoKkc1A00LYrTaTSydmJ5PLZhQFyAfMdkBPzj6MEah0
         F3sNQfQeu/vWQ==
Received: by mail-lj1-f200.google.com with SMTP id g27-20020a2e391b000000b0022d8f41fa9aso4543799lja.18
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:35:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SHDOTqD45fkOcgdIZOrzabWTlwg9fQB3mqCZYwiASwc=;
        b=z6ImrMzZDjmbeultOavj+oJKeJJQsfeWAx55fXxCyRKquHpNhENun9I7OjpS7BPQ0u
         Ms32mNeWRo4D9gNWivtT18+Ae6QVAsKNrbuqBaTYGT8T4to6SXfxmosIf2iRQUJ7kXca
         yA3M3od6cO31d8bv6FBHu89YXrkKXBYkLwxiOM8iQZn+oU7kq2tW18rngq0v5sUXQg9C
         gmNXHWQ9a+Qfv5DFkz8mXPa0/BlIqwUAsBHuFdiK8zYH2/UH4lyG82h4V71sA0Kv8bY1
         s+jv2bzhlh2M4Xa3Z6lmGzZc0aeL+wIBm/1CjlpEZBgWDYVI9oOXBClF2n8ibB22i4EZ
         B08g==
X-Gm-Message-State: AOAM5323kv+YS0kCGa7ZNwfSMohDLnZKtxbCjxo4lhY8GCayOA3yrf51
        NUOVIjmqkMTd/iDeAhTmShG6Sm4bJr+TbMJwSGO64jBrwT9LigzO3vCgqbrgFIHNyILSMDcJD46
        agIED+/lghCys58gpB/0I0J1MGCHadzr0lAJD4Sw=
X-Received: by 2002:ac2:51bc:: with SMTP id f28mr15038330lfk.222.1640612150083;
        Mon, 27 Dec 2021 05:35:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz74YnaGqeKHmwR3S7E74UQQMqDX12yIAKinwFN3GzO62zbbfUGRpdn19Zp2pmz0D3CIOT/OA==
X-Received: by 2002:ac2:51bc:: with SMTP id f28mr15038324lfk.222.1640612149924;
        Mon, 27 Dec 2021 05:35:49 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h21sm829100lfu.253.2021.12.27.05.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:35:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 06/19] dt-bindings: altera: document Stratix 10 based board compatibles
Date:   Mon, 27 Dec 2021 14:35:32 +0100
Message-Id: <20211227133545.135049-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for Stratix 10 based boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index f4e07a21aaf5..5e2017c0a051 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -43,6 +43,12 @@ properties:
           - const: altr,socfpga-cyclone5
           - const: altr,socfpga
 
+      - description: Stratix 10 boards
+        items:
+          - enum:
+              - altr,socfpga-stratix10-socdk
+          - const: altr,socfpga-stratix10
+
       - description: SoCFPGA VT
         items:
           - const: altr,socfpga-vt
-- 
2.32.0

