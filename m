Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5EB2729C30
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 18:27:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390662AbfEXQ1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 12:27:45 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46198 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390702AbfEXQ1o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 12:27:44 -0400
Received: by mail-wr1-f65.google.com with SMTP id r7so10606853wrr.13
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 09:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BDVCH2sHIJOl3oTxOH2Xw8NSMYpE4DumvzxW/scZEI8=;
        b=xkOIhFq0XHfmFE1n3FRXs6JDt2lQu5s66J2ADnAbAa6G2kZ+fdlzQ6RAtv2nlGhsyM
         R1rf+nYHj8/njLWYLvOIXVxdniD8av3d/k/Pg2GCmUlhTOEeVlsr2y1JaK/4roNGmv8Q
         NxZ/oitIzGsyzysXL7SpXZWRuERubYmKXWV1S3WM1WxnKiqVxVODCo70sO5Gu3QvaDSX
         vFUPndyRzLKABkHMXXtWLuPUTiMH2UM5PqOREsziEIhZtW6wx12xwFyl3imoHDy5EFqg
         gM3CC7Te/YcQRp+VUJvX3mr3oZKOCbJF94ooJFH83CtwHuTJM1vKWOGqAttr+T3YCxoK
         UvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BDVCH2sHIJOl3oTxOH2Xw8NSMYpE4DumvzxW/scZEI8=;
        b=jG7OEvxDb1ezjUP+duWnwUsVJOritDwQnOGE2d96/PTQb96TBiy4oEejnNjiefkGku
         15BwFk0735KNUdTrktJE3SjC8jRey74cUEhF2TKUtFzWHXCL4UbpYGbkaNvFjOZ6SfbC
         OW+z6MfbTIdRY4drZl0smfIF3LqysK3KK3BZac7OurWpbdStWFobwLfTeuyQ+A3lqSRQ
         Mgj270xuZ0rlf2KXTb4WZGe+cVnGZz4uDl0pC8J61QvHL/xSy1ROBoF+Tmj8FNP654d8
         jFE1RENTRw7hXsZD0CEPli8T4M46Ge6kOHZL8FpFiiJuyiZyUiYoAZdVqrEyW0I151lE
         LGrA==
X-Gm-Message-State: APjAAAUuD0rDhDp2oN50aiWQLydB9k5xh9WxMpjTjr5CqcQGIPhJHJ/n
        YCcIiSAMtgNBb3lBnCYU8v5gyg==
X-Google-Smtp-Source: APXvYqxUvB1wZ5HmkiCejCPEp/9BFe7k2AxZDdmzViyasNUYn8c87N7Yp9bXOdxE1FhkAFbci5NyWA==
X-Received: by 2002:a5d:61c4:: with SMTP id q4mr53273464wrv.295.1558715263199;
        Fri, 24 May 2019 09:27:43 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
        by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 09:27:42 -0700 (PDT)
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
To:     linux-crypto@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: [PATCH v2 5/6] dt-bindings: add Atmel SHA204A I2C crypto processor
Date:   Fri, 24 May 2019 18:26:50 +0200
Message-Id: <20190524162651.28189-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string for the Atmel SHA204A I2C crypto processor.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 747fd3f689dc..a572c3468226 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -52,6 +52,8 @@ properties:
           - at,24c08
             # i2c trusted platform module (TPM)
           - atmel,at97sc3204t
+            # i2c h/w symmetric crypto module
+          - atmel,atsha204a
             # CM32181: Ambient Light Sensor
           - capella,cm32181
             # CM3232: Ambient Light Sensor
-- 
2.20.1

