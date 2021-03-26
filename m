Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13A8C34A5FE
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 11:58:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230104AbhCZK5w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 06:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbhCZK5g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 06:57:36 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B311C0613B2
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 03:57:35 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id n138so7051210lfa.3
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 03:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=0+klkabTeEvw0WJV8BO/v4dQpSrn0TdpcI7Bv/xjc28=;
        b=Ep/maXsSuMdE8i6PgUxX7oQkbaaWqtDrT9BpKIsTk2LlDof1n87dQwgjSDp8qOco3G
         ltq1IbXiDTvsgBLMORYFEFvH4xq9KxE4wpmcbyiAJRMJXKHp2YPGm7VTiuVecwy8wUaN
         Ug2a7QUojgeSbvVarhep3XSHEDk1BvR+/8z1GVXpMk7LR2dK4jsK0P9Oq+P02iukYhLS
         OkVIvopLKjJTg+/EkRP+9x+qut+rxCuHhWDROBHp6B0jaL6wKG5W/hlE1lBWhdo5SLdU
         h+4XMceIuYgiZI6zAX+9xwjVxUlpfN04S0GeeX1YQTl7ji+hmoNkd+ZtZsE+2BEf7Mwd
         F+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=0+klkabTeEvw0WJV8BO/v4dQpSrn0TdpcI7Bv/xjc28=;
        b=NBgUgfoqDNFOToFfSSM5CmxXTDnrRl2Wqx1LAdEBkCGm8JmUQ6Co1M/pInhUshLSlY
         VKGZbUEI1LGWjq5ohncmrciPlWDoDDJLOQ89gr5u7FdanHOFzs4KRF/fGh8ay/ajbDRU
         i6DKmPp9D5zf0HQG5pdNymO6NYn0u0/ZnxKmmQxEEMbQuRLWfAcZ3oeR29nK5CimZ1Eh
         pppO5AHBzJ0Qj1ledDgDKw6wGSptmdtLFQipwuCY/OrJMr4YYBKsq4aOsjby3cPomOCT
         4J2jW1lIyxz2pt70X0iLaYLcSGRs6CqxcPjv1eVm0lA3cxVPNi1CGxu9iA8zkZnfqgZ5
         Xp2w==
X-Gm-Message-State: AOAM53355AjqwISEH1ScPLD8hje0aRIuzHAvYM6W827IcNXQcfvg7/sO
        DNDZmoBfGgKv12J5EhuWLwgpxg==
X-Google-Smtp-Source: ABdhPJy/p6Z0jp/qGHIM6d19d2al5fxJSuc+D9EKisjJjgj434vhQ7GVuAQsH3F7XqQ+NYIvGrnCGg==
X-Received: by 2002:a19:380a:: with SMTP id f10mr7599372lfa.294.1616756253972;
        Fri, 26 Mar 2021 03:57:33 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id n23sm832629lfq.121.2021.03.26.03.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 03:57:33 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH net-next 3/3] dt-bindings: net: dsa: Document dsa,tag-protocol property
Date:   Fri, 26 Mar 2021 11:56:48 +0100
Message-Id: <20210326105648.2492411-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210326105648.2492411-1-tobias@waldekranz.com>
References: <20210326105648.2492411-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'dsa,tag-protocol' is used to force a switch tree to use a
particular tag protocol, typically because the Ethernet controller
that it is connected to is not compatible with the default one.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 Documentation/devicetree/bindings/net/dsa/dsa.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
index 8a3494db4d8d..5dcfab049aa2 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
@@ -70,6 +70,13 @@ patternProperties:
               device is what the switch port is connected to
             $ref: /schemas/types.yaml#/definitions/phandle
 
+          dsa,tag-protocol:
+            description:
+              Instead of the default, the switch will use this tag protocol if
+              possible. Useful when a device supports multiple protcols and
+              the default is incompatible with the Ethernet device.
+            $ref: /schemas/types.yaml#/definitions/string
+
           phy-handle: true
 
           phy-mode: true
-- 
2.25.1

