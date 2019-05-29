Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA6232D982
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 11:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726015AbfE2Jv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 05:51:56 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:34869 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbfE2Jv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 05:51:56 -0400
Received: by mail-pf1-f195.google.com with SMTP id d126so1297966pfd.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 02:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zlNx+FeIZa6+8tcXrGypeEn2LH+hX55MXjjy4+bN8nA=;
        b=MENXA/EdudiV6LP8kCWsEkMuppMdzcUKClwg8CVa80PTpLm+6iI5tpZIciTqRu1aIu
         FVaghHLb89lxjGa/s9NnepKFKYUelPLg0fpmmCFELU0+KYPOtZNySKk70Lsvz5v0cS5I
         mKlYQ4SwIDm3iN2D4km8cQkXWOtTpzW7wt4t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zlNx+FeIZa6+8tcXrGypeEn2LH+hX55MXjjy4+bN8nA=;
        b=gfPRksAq8bx/+BB8us/cujRIDzjz31HBP/CJx0FXiBLl4Eh5gsfnW57mfCmBGb/uOX
         ZPwHcmpfGQv6Pkeh1Qb64L8K3tiNNBcZ5jnISrG0Jv1UdKD5Od0dAPTPXmdwZw4S4Vrz
         rooM9j64ls5uSXULz9oE2CWXF8RvcJcQZf/zAlutGjNCMEKAzm++HBlBfCLFaKe4jACj
         5Yne4avm/cu0Z81z4x5ZjHOJhrsRpRMgc+sN7KsD83qsxAG/pTi6B8fFkNOIv+RWZ2Cq
         aw8YHmwhbXfsMWQfj7Z9HDmKuow7ORXxZrL3ddUDYcHr6/QJA62fH6iKIDnkEwTVjpOJ
         q0kA==
X-Gm-Message-State: APjAAAUVzi+cP6SiwKDzXlhsAdCoBNdea/KjSvkzNqyHjpIBcZGuw5H2
        pOvDcirSjG47tvFNsY3jbtP4kiUfoJR6iQ==
X-Google-Smtp-Source: APXvYqywrcUZTspzmfJVDw2ExxAGHN3ssDQGw82OaxmlMP62J1SxgOjm3/oIPzNwevTxmK5qWwu2YQ==
X-Received: by 2002:aa7:9a8c:: with SMTP id w12mr63223329pfi.187.1559123515645;
        Wed, 29 May 2019 02:51:55 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id l38sm4894207pje.12.2019.05.29.02.51.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 02:51:55 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org
Subject: [PATCH] schemas: add rng-seed node schema
Date:   Wed, 29 May 2019 17:50:52 +0800
Message-Id: <20190529095052.182257-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is based on kernel patch "fdt: add support for rng-seed".

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 schemas/chosen.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/schemas/chosen.yaml b/schemas/chosen.yaml
index a768215..a35fea8 100644
--- a/schemas/chosen.yaml
+++ b/schemas/chosen.yaml
@@ -51,6 +51,21 @@ properties:
       the Linux EFI stub (which will populate the property itself, using
       EFI_RNG_PROTOCOL).

+  rng-seed:
+    allOf:
+      - $ref: types.yaml#definitions/uint8-array
+    description:
+      This property served as an entropy to add device randomness. It is parsed
+      as a byte array, e.g.
+
+      /{
+             chosen {
+                     rng-seed = <0x31 0x95 0x1b 0x3c 0xc9 0xfa 0xb3 ...>;
+             };
+      };
+
+      This random value should be provided by bootloader.
+
   linux,booted-from-kexec:
     type: boolean
     description:
-- 
2.22.0.rc1.257.g3120a18244-goog

