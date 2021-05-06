Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 050B8375633
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 17:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234961AbhEFPHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 11:07:42 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:40915 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234759AbhEFPHm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 11:07:42 -0400
Received: from mail-qv1-f71.google.com ([209.85.219.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lefaM-0001Ua-Iv
        for devicetree@vger.kernel.org; Thu, 06 May 2021 15:06:42 +0000
Received: by mail-qv1-f71.google.com with SMTP id a6-20020a0ce3460000b02901c4f39aa36aso4276713qvm.21
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 08:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zSTA6cfN/qaK4lBFMa4RvAaYG+jH1EwyfhL01aLLFFI=;
        b=e48apGXpfEK5pp1O1HDxkSt8YVwl/l4petQvXuKT4afqmNbS8AfUovJNcpBf0b1/eQ
         GLixax3fJekRQ++zody+ta/z4XXeYqXZ+DFj9m5giXCkssC+VPnNudJhazePqOzUrn/O
         T1NDvhcSpHf6t849kOp5qgQQPyVte1tGstelZG75jqj5xyRzbx1AXVnaSxtWkufGCjdS
         LiRhzcyXJnBTlto68rCUv/BE5AKuln5TZT6VT+WyEZe350eTkITPRiOgZ91ruEUDUmLN
         Sj3xIGXLoLr4utARDjoEYp3LI9p/hlCc5DgyuwLG+Zqjwhxam0TcBUcbhz/ci8BALAcK
         7UBQ==
X-Gm-Message-State: AOAM533GcRBLQsXBh39xpRKSCRYNVvI+d+tlkEjeI2t4Vm3wJdWomgte
        704S8nvbsxm/w2fcGsKH5Jk9d8qHE0SobGWkTCkPQNlrmnH6cIjLR/qYleDqdfg/MZ4H8CU4Nl8
        GuObnTcpwL4nF08kwAXpLAuEjyhXbH21B1gBZ2/U=
X-Received: by 2002:ac8:4756:: with SMTP id k22mr4683309qtp.193.1620313601721;
        Thu, 06 May 2021 08:06:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXHibdcno/SU3vySZ0SKbY5rMtER8hN0dvVyva6Yz9XHsYNpregf/rzBekPqY22OhXzN+zzA==
X-Received: by 2002:ac8:4756:: with SMTP id k22mr4683294qtp.193.1620313601524;
        Thu, 06 May 2021 08:06:41 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.1])
        by smtp.gmail.com with ESMTPSA id 189sm2236192qkh.99.2021.05.06.08.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 08:06:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Peter Rosin <peda@axentia.se>, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] dt-bindings: iio: afe: current-sense-shunt: add io-channel-cells
Date:   Thu,  6 May 2021 11:06:37 -0400
Message-Id: <20210506150637.35288-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current-sense-shunt is an IIO provider thus can be referenced by IIO
consumers (via "io-channels" property in consumer device node).
Such provider is required to describe number of cells used in phandle
lookup with "io-channel-cells" property.  This also fixes dtbs_check
warnings like:

  arch/arm/boot/dts/s5pv210-fascinate4g.dt.yaml: current-sense-shunt:
    '#io-channel-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Fixes: ce66e52b6c16 ("dt-bindings:iio:afe:current-sense-shunt: txt to yaml conversion.")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/iio/afe/current-sense-shunt.yaml     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml b/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
index 90439a8dc785..05166d8a3124 100644
--- a/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
+++ b/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
@@ -24,12 +24,16 @@ properties:
     description: |
       Channel node of a voltage io-channel.
 
+  "#io-channel-cells":
+    const: 0
+
   shunt-resistor-micro-ohms:
     description: The shunt resistance.
 
 required:
   - compatible
   - io-channels
+  - "#io-channel-cells"
   - shunt-resistor-micro-ohms
 
 additionalProperties: false
@@ -57,6 +61,7 @@ examples:
     sysi {
         compatible = "current-sense-shunt";
         io-channels = <&tiadc 0>;
+        #io-channel-cells = <0>;
 
         /* Divide the voltage by 3300000/1000000 (or 3.3) for the current. */
         shunt-resistor-micro-ohms = <3300000>;
-- 
2.25.1

