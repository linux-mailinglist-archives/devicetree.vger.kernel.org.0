Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55EFB48B473
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 18:51:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344721AbiAKRu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 12:50:59 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:54048
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344702AbiAKRu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 12:50:58 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 923634005A
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 17:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641923457;
        bh=2zXFpgoXA2AXkam+aZqI+1j2Yu5tLuHo5Qd504tYlzY=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=nVPvZHtuC3Eut9zE/5H0IExv07HWxVPXU9LcSKiOVNEBz8GeCnkGlxGHzIFMBIYLl
         2QcWKt6j5DRumNZsdN6rxBCBJXLhB3FgKxaGHuAW4YueGMg4trj7Eb6KZ+xeJYM4d1
         O6P9z87e3klHP5yaNQDVb2yMFaTIdOzxoCjMa8JBLJG4GyGl+PN4HTNKGgVxA8pqce
         +bQJv/4n038KwKBI4+OsfUoSTpAoHQMYBV99CFx8bppUsifwevhRC7dCM6We5gk/LX
         RbNFLKxxfp8u5qZLx6coCBlRppDeSAZVhO76r7jItBl5r55jpQ2qjt4xL2f6FcRUM/
         DUj0CBsA6/lJg==
Received: by mail-ed1-f69.google.com with SMTP id o20-20020a056402439400b003f83cf1e472so14031521edc.18
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 09:50:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2zXFpgoXA2AXkam+aZqI+1j2Yu5tLuHo5Qd504tYlzY=;
        b=hNi/mhl5O4BXpU+8+b5Q/NQATOFwkbYWzlCOsmHWeKLO9upR7F4VbJtb68PgYoNG17
         b4G/LvtbIFLsfLf2W2n7W9KXwYc9d7oGoPsD/dtqTHBERMlk+CGTDCNtpqT2gt7vivhf
         2KMtmv0zvEE/xLjcyF1RY9mazb03lghCs4U/Sb+tsu+qbwWIsI3VX3FjRxijew4cG3oI
         niO8YXSIMFG/nMo9qtIL6BVic0hMNMrobipeWY1+50juwibH9UYsbuXIr5XEpRL8nL6a
         Ob69KyvJMOEqKhD0WEE5P9mx4pPQxmfsttbhhtQXmWXY2/MgZbb3gynF0j2n3PDTyShP
         zOTA==
X-Gm-Message-State: AOAM532G1rnezQFnoDiJK7Y53YCJsdZjIDl67DxD57mmsJtUBWH5VcYi
        JJxJdMzaE6ldTEfiaLnfnDWjdH+V2gE1qebhSDm5sbeKA1BymeHZC8Qqc3I9d4rPvLPW94ZglJ6
        NAnGjBVo7bji+86w5hOpn5aYfjSRH7JUfvRBV6fg=
X-Received: by 2002:a17:906:d542:: with SMTP id cr2mr4549399ejc.720.1641923457290;
        Tue, 11 Jan 2022 09:50:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2kpeA+pUdy5877+VIewlMQ8JeCRKAjmwdHfgw9/xGCtPvVu0MeRfkkHiVU84kGG8jlZaRPA==
X-Received: by 2002:a17:906:d542:: with SMTP id cr2mr4549387ejc.720.1641923457123;
        Tue, 11 Jan 2022 09:50:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id p25sm5265160edw.75.2022.01.11.09.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 09:50:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: [PATCH v2 0/4] leds/power/regulator/mfd: dt-bindings: maxim,max77693: convert to dtschema
Date:   Tue, 11 Jan 2022 18:50:13 +0100
Message-Id: <20220111175017.223966-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1
================
1. MFD: Use absolute path to schemas, add additionalProperties=false.
2. Regulator: mention all allowed properties,
   additionalProperties=false, add min/max values for voltages and
   current, don't use patternProperties when not needed.

Dependencies
============
The final patch - MFD maxim,max77693 bindings conversion - depends on
all previous. Therefore this could go via Rob's or Lee's trees.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: leds: maxim,max77693: convert to dtschema
  dt-bindings: power: supply: maxim,max77693: convert to dtschema
  regulator: dt-bindings: maxim,max77693: convert to dtschema
  dt-bindings: mfd: maxim,max77693: convert to dtschema

 .../bindings/leds/maxim,max77693.yaml         | 105 ++++++++++
 .../devicetree/bindings/mfd/max77693.txt      | 194 ------------------
 .../bindings/mfd/maxim,max77693.yaml          | 143 +++++++++++++
 .../bindings/power/supply/maxim,max77693.yaml |  70 +++++++
 .../bindings/regulator/maxim,max77693.yaml    |  60 ++++++
 MAINTAINERS                                   |   3 +-
 6 files changed, 380 insertions(+), 195 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/leds/maxim,max77693.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77693.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77693.yaml

-- 
2.32.0

