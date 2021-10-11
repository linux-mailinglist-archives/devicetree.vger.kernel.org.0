Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1DF04287C8
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 09:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234129AbhJKHlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 03:41:49 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57460
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234542AbhJKHls (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Oct 2021 03:41:48 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 70BBA4000F
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 07:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633937985;
        bh=dKNe0YR2W1YWBul8nQdZBdCYA7T0luSH8qAs9JTPkS4=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=e/K31SnNiySIWZAqy9czqSHveTRBr+cxtdxfJUWrvlAYIRbrlgduHghJalQOTKZDM
         MRzT+vDUn2QirgJFvVIC9p5d0Dc8EZkgUzOIm24VVaPSWKH8CIt4P8UJFxrzCwXK7x
         2EBlJ63fqBeNZoE97wdi53mhQ2s1YPzLaG3PeOJabs/JVHrHSTSDRBV5P8CeQ+5HZn
         /nIy3SU7pzxi/ivf86sdSb0qiK7reszY6t3dZGLdK3OlnA9k+d/kCsTQstOAuel8RP
         /sScpnfMBzi6SjOunvyP2Ixf/6p8Iof1wiwow2vvM5ADGVQt/VQU+CSKAP6A33PK/e
         lks7BbdYRLAZA==
Received: by mail-ed1-f71.google.com with SMTP id d11-20020a50cd4b000000b003da63711a8aso15015840edj.20
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 00:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dKNe0YR2W1YWBul8nQdZBdCYA7T0luSH8qAs9JTPkS4=;
        b=xfxPg1Sf5TJNoakVDxD5nvXhKA5b+LJkKNKgAuDVW1AGR2D/l6ge3t5clO3unXVlJ9
         y5atp91Bf/2iLl4o016K+IeFBpC9qH8ftHBNui2aScP+x774re3uLHumKVigHi7HcFXX
         VD1d6AfLi8ZtBSu3jBGIgiiAjiJxwYVW19wIWE6M9Eanl/mD/WcLRBO9NY+1mSZDkCkj
         mM6N0t7VhqPR8W8t1+R1BBRF3Yi7kNq56B0JBVHJ/fxtPUBLmnoUfqK+CNAjrPUJfz8G
         aWCgVgbHz8x7R3mChSy0jdm6clMJmJE96mYqOJiCGp54GwgdTMXS/7PedhLl9NuIK2qp
         HBNg==
X-Gm-Message-State: AOAM533ZA+aclSD7inpH6SUi/88j0ujonNq84tzCEaT1VNduOygFCA5f
        w/gfmUlW+ifJwKfcMdmhEHKswcj7If4sRXaMrOqaQxzXqkQv+DOebOFbdaQM9KmorZMVAFCZNTO
        34jvgHy97NuZbVoSXvCJ7x9MqrQnJXaaWFCfGyzU=
X-Received: by 2002:a05:6402:848:: with SMTP id b8mr27593664edz.283.1633937983838;
        Mon, 11 Oct 2021 00:39:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4TGueCUqr8nipt9y1eUTDZZZuo1QIc9IRv4KZo7UB7TGDm48xnJ0Nl+i+OLa1EhAIjhllxw==
X-Received: by 2002:a05:6402:848:: with SMTP id b8mr27593641edz.283.1633937983622;
        Mon, 11 Oct 2021 00:39:43 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y8sm3023965ejm.104.2021.10.11.00.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 00:39:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Charles Gorand <charles.gorand@effinnov.com>,
        Mark Greer <mgreer@animalcreek.com>, linux-nfc@lists.01.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org
Subject: [PATCH v2 0/8] nfc: dt-bindings: convert to dt-schema
Date:   Mon, 11 Oct 2021 09:39:26 +0200
Message-Id: <20211011073934.34340-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1:
1. Drop clock-frequency from I2C devices.
2. Update commit msg.
3. Add patch 2/8: NXP PN547 binding.

Best regards,
Krzysztof

Krzysztof Kozlowski (8):
  dt-bindings: nfc: nxp,nci: convert to dtschema
  dt-bindings: nfc: nxp,nci: document NXP PN547 binding
  dt-bindings: nfc: nxp,pn532: convert to dtschema
  dt-bindings: nfc: st,st21nfca: convert to dtschema
  dt-bindings: nfc: st,st95hf: convert to dtschema
  dt-bindings: nfc: st,nci: convert to dtschema
  dt-bindings: nfc: ti,trf7970a: convert to dtschema
  dt-bindings: nfc: marvell,nci: convert to dtschema

 .../bindings/net/nfc/marvell,nci.yaml         | 170 ++++++++++++++++++
 .../devicetree/bindings/net/nfc/nfcmrvl.txt   |  84 ---------
 .../devicetree/bindings/net/nfc/nxp,nci.yaml  |  61 +++++++
 .../bindings/net/nfc/nxp,pn532.yaml           |  65 +++++++
 .../devicetree/bindings/net/nfc/nxp-nci.txt   |  33 ----
 .../devicetree/bindings/net/nfc/pn532.txt     |  46 -----
 .../bindings/net/nfc/st,st-nci.yaml           | 106 +++++++++++
 .../bindings/net/nfc/st,st21nfca.yaml         |  64 +++++++
 .../bindings/net/nfc/st,st95hf.yaml           |  57 ++++++
 .../bindings/net/nfc/st-nci-i2c.txt           |  38 ----
 .../bindings/net/nfc/st-nci-spi.txt           |  36 ----
 .../devicetree/bindings/net/nfc/st21nfca.txt  |  37 ----
 .../devicetree/bindings/net/nfc/st95hf.txt    |  45 -----
 .../bindings/net/nfc/ti,trf7970a.yaml         |  98 ++++++++++
 .../devicetree/bindings/net/nfc/trf7970a.txt  |  43 -----
 MAINTAINERS                                   |   3 +-
 16 files changed, 623 insertions(+), 363 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/nfc/marvell,nci.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/nfcmrvl.txt
 create mode 100644 Documentation/devicetree/bindings/net/nfc/nxp,nci.yaml
 create mode 100644 Documentation/devicetree/bindings/net/nfc/nxp,pn532.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/nxp-nci.txt
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/pn532.txt
 create mode 100644 Documentation/devicetree/bindings/net/nfc/st,st-nci.yaml
 create mode 100644 Documentation/devicetree/bindings/net/nfc/st,st21nfca.yaml
 create mode 100644 Documentation/devicetree/bindings/net/nfc/st,st95hf.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/st-nci-i2c.txt
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/st-nci-spi.txt
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/st21nfca.txt
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/st95hf.txt
 create mode 100644 Documentation/devicetree/bindings/net/nfc/ti,trf7970a.yaml
 delete mode 100644 Documentation/devicetree/bindings/net/nfc/trf7970a.txt

-- 
2.30.2

