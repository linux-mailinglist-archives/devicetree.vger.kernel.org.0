Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 252DC3ED03C
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 10:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234958AbhHPI2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 04:28:35 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:59940
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234896AbhHPI2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Aug 2021 04:28:32 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 8A06940C95
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 08:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629102478;
        bh=+y9KjXm+6Q1Y6xNBVx+7TD4DqLneEI99iYpMkXGnRf0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=VKgOHwf0axJLoYaVxkp+xOAhFOBLdpghptXG180lldDGJPT1T9Nhw3i4+0z9Fes8H
         lLsyJoEDZctVD0b4xy2t5CQrEkBwevZHfThdMOUNTLjU1PApBBeUoPUNZ2rw7kVW18
         NtnSKlzvVIHYL7s4COdYQpqclnEHUV0S6mbgC+XMLpWhDr9aF0FhSaWEQWc0jdxNjy
         Ub6ugaPCm1NhAGHDAGJdcHmvy+09oN3UenV5T6kanE2P7rR14qyTe4CWUW2o9gekbL
         x9e3HQJ+w0BZvuFcWHxaB3nEJoTCBbv9CqYmhwzZVqbJDZkrprDg8bHvoVR9rJzjN+
         haLtb3NKlVQsg==
Received: by mail-ej1-f71.google.com with SMTP id ja25-20020a1709079899b02905b2a2bf1a62so4408533ejc.4
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 01:27:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+y9KjXm+6Q1Y6xNBVx+7TD4DqLneEI99iYpMkXGnRf0=;
        b=XVrPsOTSvDsNBS+Y0Uv7k/xmuMFia/2uqbjpsR76CPIiNrY2LXCv4PDtJY4Jum0OEu
         OSKL8TLQMQ9gnWKqRNCtma7H4EZkwhV3Sz5VVKy3KUDn0lFKPnmSVFpgM7+mcoD1o1QP
         gcVGc7FlRgjN0BrQT6mxTaKfjqesLU6/nZbRf2/XYIXsOTZVhPEPG7rQml6ZR51gY7dh
         3xMPDFXzecot99qEWaqibjKWkj5nl4mH0Qt5ser6tbWHGTBIVDuwUi1HQ/WjnVaDKDnD
         hjT2Xh+dU2xns26TtUqeV2eRmUpVl7yVDOQIzNI3eDrmIn47TzoRkv/mPQ0MKPh3p2Dv
         RA5w==
X-Gm-Message-State: AOAM532p84QV8iedypjGWH3Qcnv85OY9fjO2lq9YGUYUporziLuHyT+5
        474vvCcyRGZ7X2ukYAhm2mV3GnDkcPntfwKuJzrFKH0Le/zQoKLzHW2YEuM2+VguP+M9/HPAwm8
        aY/KbZqgDknlnZ+L73Q9rxEyOd05PJ8oUqX/PYuY=
X-Received: by 2002:a50:d4cf:: with SMTP id e15mr18634199edj.2.1629102478236;
        Mon, 16 Aug 2021 01:27:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyqJhwkRNUMN2vnocd+GAYi0oAHKop6/HTG7JKSYREFONHvZ2PTbnYhmsrS/6vdD/O+TlQA2A==
X-Received: by 2002:a50:d4cf:: with SMTP id e15mr18634191edj.2.1629102478131;
        Mon, 16 Aug 2021 01:27:58 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id ay20sm4469605edb.91.2021.08.16.01.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 01:27:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Hans de Goede <hdegoede@redhat.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 3/3] dt-bindings: power: supply: max17042: describe interrupt
Date:   Mon, 16 Aug 2021 10:27:16 +0200
Message-Id: <20210816082716.21193-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210816082716.21193-1-krzysztof.kozlowski@canonical.com>
References: <20210816082716.21193-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Maxim 17042-family of fuel gauges are often embedded in other Maxim
chips, e.g. in Maxim 77693 which is a companion power management IC.
In such designs there might be actually two interrupts:
 - INTB signaling change from charger, flash or MUIC,
 - ALERT signaling change from fuel gauge.

Describe the interrupt in bindings to make it clear it is about the fuel
gauge ALERT interrupt, not the INT.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/power/supply/maxim,max17042.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
index c70f05ea6d27..95beae958096 100644
--- a/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
+++ b/Documentation/devicetree/bindings/power/supply/maxim,max17042.yaml
@@ -25,6 +25,8 @@ properties:
 
   interrupts:
     maxItems: 1
+    description: |
+      The ALRT pin, an open-drain interrupt.
 
   maxim,rsns-microohm:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.30.2

