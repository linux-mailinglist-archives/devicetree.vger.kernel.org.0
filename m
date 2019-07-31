Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 632B27C1AF
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:40:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728968AbfGaMkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:40:08 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40464 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728922AbfGaMkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:40:07 -0400
Received: by mail-wm1-f65.google.com with SMTP id v19so59707556wmj.5
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vlLAZG3376vvQfzbiUNES3FqbulnmazxfSm05rud9uw=;
        b=DhP64lAedWvamo5W5NN3GbWU9atBaCuUKmKTJnuEu3/Q6NUXbc5eQ/QJshDzy0Otjh
         /owLX8DA1RrZS89bHOW8e1LI53M7I9FuQMgCNi829xpzCzFcbB0rCmqHrnD/fBUeCVO5
         qCdACesG6Sm21tnByeCJSWeD9JXw/1MyIBydetMPrQHz12+VKhTZJn5BVKn7hSTlc8uo
         AObZiLM7xMJb6jqTP7riFTsok5p2fqw9Mxq/lVLcXlPAMUsBpsx7KerNv0DZ2b9BpikY
         iAaXHGM2U0CsVTUVwMtc8fFV7DLMtP2iXcYfCdoZxraBQ+A/7J/yVAQN26sZDlrI29Rv
         ub6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vlLAZG3376vvQfzbiUNES3FqbulnmazxfSm05rud9uw=;
        b=gGLcyO6Pc/ci2e8O+Dd7RVvZbeSIyHQU5Jmw0CvXNK9jMLUbfT6nUh+jNgFdGWMfeJ
         L+o4OxyNSjPUUmMqRkkcb9PWpRQ7DbpPRRC/ueipzYd6WUn1eod4B3Peb8aKxsTnV6ef
         1aJlLTXb0XiQ4WJ4n3H2AxaVQgO4Ottwf2+z/Xi8u4h9K/pBigIeXOKVbjLIq9U8ptlD
         h/nearOy9y4/C+KltB29kVvp+p3h20kjaWqfSJ1Tt/KgPElbK/X48KZoW8L4OOIbz1SV
         YTM/iQfkb7v2RYXglDVAbbBr2eghwtbshd4Lm6ZQpXvSCcO4neezQXWorBvyibEa8U0+
         ZNPQ==
X-Gm-Message-State: APjAAAX+uRa6iC1bfNVt6UyEZzPQj81EA9X/x0Sxm6JB1HXclSWNQiLl
        6Pg7KoNMl+dXmcOg4P76YQ9Etg==
X-Google-Smtp-Source: APXvYqwdhbsgWyNma56uwz+SEJ9Te+cQwX4Tmf9Ld57twlw4YO82/Yo6aO7smXGtz7lwTn98lqEPIw==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr116321019wmj.31.1564576805437;
        Wed, 31 Jul 2019 05:40:05 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.04
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 05:40:04 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        christianshewitt@gmail.com
Subject: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B based S922X SoC
Date:   Wed, 31 Jul 2019 14:39:56 +0200
Message-Id: <20190731124000.22072-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a specific compatible for the Amlogic G12B family based S922X SoC
to differentiate with the A311D SoC from the same family.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd3566d..3c3bc806cd23 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+          - const: amlogic,s922x
           - const: amlogic,g12b
 
 ...
-- 
2.22.0

