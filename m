Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CDCA2253B2
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 17:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728818AbfEUPUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 11:20:07 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:37728 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728144AbfEUPT5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 11:19:57 -0400
Received: by mail-wr1-f68.google.com with SMTP id e15so19108626wrs.4
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 08:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vhkCArdSYp19WRy9pHtDkpRiGu4ocnCtsFxZgKHOrQQ=;
        b=ZdzRHhNgFLRHQR2KIcm6dzqe1zFhhkXiYls6dlf6D0mkFq02TpZrZ2l+l4r75FvB0v
         m4JTBZwT8qCdcC88C+fXX6a8njfGpjqV9qvC0JKB2cddv12E4/a8/lAgFsVFSPzQ1rBR
         ZXL+sA089J4vbDi/TfRsJXTWmnzY2bOxPWFxnTaaF5fLuf+ZICJ7f5x0LsKUyOL545JK
         XgbN8tMu7pvfgSSACiloqxRp+TQy2HQq2cGYLE11rSl8SWGkOqxqKfdex0fPdwgW7ihJ
         2RG/iudUEiUaVpyAU0wOUCv/tL1kzCqe1EilyLOC3uMtPMPXyteLlUMS4TSRPWihE6ie
         Iosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vhkCArdSYp19WRy9pHtDkpRiGu4ocnCtsFxZgKHOrQQ=;
        b=NVYkCZ3HdJ3USd9ZfN5C+aRjWaLGar2rVnGTk0uZSnfBGNw/V2JCaAEp2Aw0KxGbMG
         XJQ1j9lGYGh/d7M0+ksqI34FGzbOcG97ootVxZRDCXr+mYqZQnPaKeqwCN/PDg7RMxRZ
         Uokr9FA9V0ZsI/5+vDmrhzBTraaPkP2XDY8eB6KNyVAwmllnqOnzoCMtwp2yovJJDUvd
         /LAHhc+31sBOVfLTCvzO2RW3GQK0gXa/lRd7B4mlnafsfVEF9OE1rLAvOGbXrxD/ptRm
         +iW5ET+cBR9hxtBzVFGNmGTyu3gYhqFO9akcJF7YFj/YLPqrcfUgEdlJ722MDjDrGT6L
         xfLg==
X-Gm-Message-State: APjAAAVVzjlPYEJ3vgorxTPUQhPla1TFNKuSG+6VLp98VamUFcbbuahM
        n0lItnYITqqG6JSvNomgjHB/xQ==
X-Google-Smtp-Source: APXvYqyRX+GLakjFp0Eh9cc4c2GsZ6BB2KNHfqbeBehOMfsXhgM9oc/3OwNRrSmb43o1etqmgBN0Nw==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr14666829wrj.230.1558451995591;
        Tue, 21 May 2019 08:19:55 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id p17sm3945677wrq.95.2019.05.21.08.19.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 08:19:54 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: amlogic: add G12B bindings
Date:   Tue, 21 May 2019 17:19:50 +0200
Message-Id: <20190521151952.2779-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521151952.2779-1-narmstrong@baylibre.com>
References: <20190521151952.2779-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Amlogic G12B SoC, sharing most of the
features and architecture with the G12A SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Rob, Martin,

I converted the patch you acked in yaml, I kept the Reviewed-by,
is it ok for you ?

Neil

 Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6d5bb493db03..28115dd49f96 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,4 +137,8 @@ properties:
               - amlogic,u200
           - const: amlogic,g12a
 
+      - description: Boards with the Amlogic Meson G12B S922X SoC
+        items:
+          - const: amlogic,g12b
+
 ...
-- 
2.21.0

