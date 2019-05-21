Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6572253AD
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 17:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727534AbfEUPT7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 11:19:59 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55299 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728752AbfEUPT6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 11:19:58 -0400
Received: by mail-wm1-f68.google.com with SMTP id x64so3404006wmb.5
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 08:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2UEmu+PQTJMEzkzxShtce1PUS0kwGjqD32xVaKXEq8k=;
        b=m4gDvS+OKNfl4tPhdhYIPSGwDI5QUMCD0qa2ChEKnlS1dVhLQFGx+t+skeULPeKIKK
         va6KX7ohP5NII4ATmVhU8vtjZUELDtjDNotPuBJ3nHzves6U656GVJdsKOkZd0eHJorR
         Jj/RLpv3ksfacmK2rjHOhbG4J/ioBy0yNuvKQh8d0JZQGO6D2cRj7SMUmGfa4AnOHEAf
         swr/rdaEmrXl6s+NHLTg1RMS48bUJOD8eSBGFyQ/gAuF08dEdG9ns6/8nsTW/BH3GFq3
         Bqs9KuArvqeZRBuCVhg9axNdwF6RNS94r1Mz1Ha2E+EJl5HqB+a/ovi7zDRdOTsma/Pe
         EkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2UEmu+PQTJMEzkzxShtce1PUS0kwGjqD32xVaKXEq8k=;
        b=hTlYEElEeSz3NCikfzi+mut/Egz4VxRzSFYsaRInk67jh4d4EtE0F2mMJdSEad89Gf
         hwID/L8A1b8i0yJ6QAEWS6BF8ZvA+5aY3yucPZXdRvgN7essOf5enAorwT1yDTNkjrnd
         G1DXdjkDjsLst/HTeitjKTQwelu061Mv682dgIkqAxaUt7smJN/vqLZ2Ijf1SJ8SRmqu
         WwqnbhyBFZIQ1iuru9fFqhgg87BlcFBfkJepGGZhBG6+XTdzhfVKdBWjVPE3wwVCcv1c
         enJrAITT/3a/l3AKfvDhtqzzua1gUYPk/gp2DifYlk/DOehx4tg/5Lw8/qsCbKweZH9D
         JbUw==
X-Gm-Message-State: APjAAAWcC0efkwR97P43f95wvyifhObULgk0xcAMPt35xXBB8usoahjV
        Pqt7CR5sWmwl1d06XsPuIz6I2640GmzU/Q==
X-Google-Smtp-Source: APXvYqwk2IBY1kdDxl8FarpdDrMnx6sRXqje8GLIZs5Bg3e9TU58EJrEreRIcvDw7cnoTqyedCYF8A==
X-Received: by 2002:a1c:ba87:: with SMTP id k129mr3900600wmf.132.1558451996629;
        Tue, 21 May 2019 08:19:56 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id p17sm3945677wrq.95.2019.05.21.08.19.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 08:19:55 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
Date:   Tue, 21 May 2019 17:19:51 +0200
Message-Id: <20190521151952.2779-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521151952.2779-1-narmstrong@baylibre.com>
References: <20190521151952.2779-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Amlogic G12B (S922X) SoC based Odroid-N2 SBC
from HardKernel.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Rob, Martin,

I converted the patch you acked in yaml, I kept the Reviewed-by,
is it ok for you ?

Neil
 Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 28115dd49f96..f75df4471c0a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,8 @@ properties:
 
       - description: Boards with the Amlogic Meson G12B S922X SoC
         items:
+          - enum:
+              - hardkernel,odroid-n2
           - const: amlogic,g12b
 
 ...
-- 
2.21.0

