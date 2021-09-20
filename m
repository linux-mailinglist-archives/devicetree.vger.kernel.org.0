Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E62844115AF
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239532AbhITN2k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:28:40 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34640
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240067AbhITN1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:27:30 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECB3E4025C
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632144362;
        bh=vJToJAd3e7XitzB+9QvxgrvOdQZu/cSSC1UlIYS41NQ=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=UG4VMLXiQwYBokcSCxAmyIBJgEdC2bsVwIIsX5qzfg22GLR8K5kxjtyrre8wmpqgc
         1L8v4/1126STgfVd4Ehqg2yp8HaPE2p9RbTUVYVqQS6nssCBAASpl2wlLikXfJmFoV
         MUhGRuxUO2XYH/Z8sgHM/pZApd6OlnyTAoik5Yz/lLosp8TDp+xVHFxeO4eCbDMlkf
         6SRmn1ODduxN0mtDwp6k4z/3JpUodDjxCW5I+v14Tz7tTZrB682FOwbwgxxNgbgOgo
         oLK/deo5iL/dNVid86ahz1QPOAvj3Xau/c+jF4pAuxfrgJ7oMYheru00elFTIkxVDJ
         TNj7Smbu7c/DA==
Received: by mail-wr1-f69.google.com with SMTP id c2-20020adfa302000000b0015e4260febdso4746439wrb.20
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vJToJAd3e7XitzB+9QvxgrvOdQZu/cSSC1UlIYS41NQ=;
        b=wTBO5QRNfgXExac59bROyqCwtvFIROSartfDmOG79ukyMds0MeHrEWX5ruMNVyk6Pc
         lCxULycrRdj9WjDFfxao49yeS7ajBIwIn9NGsszzuncmsvEHcmIU4SUm0ICJ9VSpYpVT
         aVQE3FqsfSi0oDd2X6r8uuQJnkhkdlc4Qf+508vLgPARySH5791y4JLSloI5LAkRR1Fs
         duE41WjzRszC8TYrfCLEJp/UQGVWZRHR4MwdtGmxmBmVv4P4jc8J+1zH5/v3x9SyTSR6
         smKLdcY3m1L6hrTpeIGd15/MrEqOPegL2Fz3cNyI198QrUaMziFjrWAtvvNaHW0okA0b
         lyBQ==
X-Gm-Message-State: AOAM531B0IEgV8+8ROfNgzT8jpFsBR2+juIPpYwRA4VZq1HQD1o5K4sO
        GawUc/79rLkw9SPFBIPBaq4RkH8GDQHeS05EoAQAmUcmPk6f1PUaMSgasW26921L4BYc7wHPqoF
        RiIMpC1+F1L4eBvJsQ7X+ndPMA2SKb7e7ukwqYwo=
X-Received: by 2002:a05:6000:1287:: with SMTP id f7mr29033673wrx.221.1632144362274;
        Mon, 20 Sep 2021 06:26:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJymf7l0CKsN1xSthBcoxGq3X4DmkxIw9o+QPMTz1O6EvUcCymMCo5tuwGlI5/sIFl5hOJNaIQ==
X-Received: by 2002:a05:6000:1287:: with SMTP id f7mr29033647wrx.221.1632144362053;
        Mon, 20 Sep 2021 06:26:02 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id y9sm23062787wmj.36.2021.09.20.06.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:26:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] dt-bindings: riscv: correct e51 and u54-mc CPU bindings
Date:   Mon, 20 Sep 2021 15:25:59 +0200
Message-Id: <20210920132559.151678-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All existing boards with sifive,e51 and sifive,u54-mc use it on top of
sifive,rocket0 compatible:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: cpu@0: compatible: 'oneOf' conditional failed, one must be fixed:
    ['sifive,e51', 'sifive,rocket0', 'riscv'] is too long
    Additional items are not allowed ('riscv' was unexpected)
    Additional items are not allowed ('sifive,rocket0', 'riscv' were unexpected)
    'riscv' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Hi Rob,

You previously acked this patch but I think it will be easier if you
take it directly.

Best regards,
Krzysztof
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index e534f6a7cfa1..aa5fb64d57eb 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -31,9 +31,7 @@ properties:
               - sifive,bullet0
               - sifive,e5
               - sifive,e7
-              - sifive,e51
               - sifive,e71
-              - sifive,u54-mc
               - sifive,u74-mc
               - sifive,u54
               - sifive,u74
@@ -41,6 +39,12 @@ properties:
               - sifive,u7
               - canaan,k210
           - const: riscv
+      - items:
+          - enum:
+              - sifive,e51
+              - sifive,u54-mc
+          - const: sifive,rocket0
+          - const: riscv
       - const: riscv    # Simulator only
     description:
       Identifies that the hart uses the RISC-V instruction set
-- 
2.30.2

