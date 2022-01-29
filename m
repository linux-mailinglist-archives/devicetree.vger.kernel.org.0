Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20D334A2F53
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 13:24:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345418AbiA2MYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 07:24:05 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54090
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242638AbiA2MYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 07:24:03 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3DB303F4B6
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 12:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643459042;
        bh=Xin2bUCV5GBX+4IaAK+yFj1wjm1SLWxA3e09mShlOR4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=upfxwh5gSrgAt6Iow7u6hc274z6e9RAsI0wWWfj3AZ3D2/5xyxVKl8qjuUBxGhnVX
         NYzCZ0q9hftiCmT1cY2zPUM3fWoyDsFvy2TGvjszqyr8zaM6ru8cN/PHrBOpPp5y6S
         8eiY7WqYCJGr3bsQrYKdxqX72WSj07CXUDGJsrn9eoQRpe//wSVDNwk3u6u54JewvT
         LQgLSXV+2S+no9rDT18Vlq+WkvtArUfavwl3U5K4K8z8Q4DXpT+0skvNcmIzxC9wNT
         hO2yi4bG74+E34IIM41tJUBF9/ycK4HY/1y4C+mHHjb6xjvIpXEUHOcclYysSAFx2j
         3jv5qxnqMwroQ==
Received: by mail-wm1-f71.google.com with SMTP id bg32-20020a05600c3ca000b00349f2aca1beso4208291wmb.9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 04:24:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xin2bUCV5GBX+4IaAK+yFj1wjm1SLWxA3e09mShlOR4=;
        b=KQvu80lecbbwQ8VCBL+90bLWyxhOOWgJ7bcm+3HVg8QB/f3rQbbSNh9aFPYaxcF246
         WbcwZPTjXpwMmmImSX4Zb53rzEjOtKz/vZ1XJBdJTh3I/3s6c2hgxkda9QlaNJM70hAM
         n/krEHtE14f7Lz9G5Ctc1YLmDcDIzGBIvPAf2cHBWRoPtcODlbHiqADmO3D2wfxCUkUz
         uQOWtaeaUdvsfHSk8pmhhJ9/Q1ECMPfNVNGypKbf4A5V470r6Qm0C3qpEOY/PBsORSRR
         XH1C8Y69jhbDgztdUFqnS5x9+U3oWigRN92yX/3unxk+FfE3uMhq12kbO6QZMZDlPVF+
         RzQg==
X-Gm-Message-State: AOAM533CqrwIgB4+ndenFG+u16Jxz33u3aIfa4Tml888ZkL2mBPaWIjn
        fVHiKT9+hgA6TAIGzQD1Ba8n/gOOZmG49shbKDp7Pq6dQ9Gpyxjno7lApNxKx9DYCbQgjLcE+jt
        tqNSu13vNdnqdeFc3z/eiRwzKVaWR3N1tGa4bqVI=
X-Received: by 2002:a05:600c:20a:: with SMTP id 10mr20149001wmi.19.1643459040757;
        Sat, 29 Jan 2022 04:24:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzX2X5P3axlQ5WI/mG6GqvwXYyv9cpxowJ11N6MeS+DE60iDMwN+meIUmiOJBb6d5n8wE5K5A==
X-Received: by 2002:a05:600c:20a:: with SMTP id 10mr20148982wmi.19.1643459040514;
        Sat, 29 Jan 2022 04:24:00 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id z13sm7901534wrm.90.2022.01.29.04.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 04:23:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] ASoC: dt-bindings: samsung,aries-wm8994: require sound-dai property
Date:   Sat, 29 Jan 2022 13:23:52 +0100
Message-Id: <20220129122357.45545-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
References: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cpu and codec nodes must provide sound-dai property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/sound/samsung,aries-wm8994.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml b/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
index 4ffa275b3c49..97f83eeaf091 100644
--- a/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
@@ -30,6 +30,8 @@ properties:
         description: |
           phandles to the I2S controller and bluetooth codec,
           in that order
+    required:
+      - sound-dai
 
   codec:
     type: object
@@ -37,6 +39,8 @@ properties:
       sound-dai:
         maxItems: 1
         description: phandle to the WM8994 CODEC
+    required:
+      - sound-dai
 
   samsung,audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-- 
2.32.0

