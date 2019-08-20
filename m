Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6A195DD0
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 13:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729848AbfHTLuL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 07:50:11 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:35721 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728283AbfHTLuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 07:50:11 -0400
Received: by mail-pf1-f194.google.com with SMTP id d85so3255121pfd.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 04:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=V62B7MzFnAQFSzASsarq3v0djmwNSddXSYLopfjS1Eo=;
        b=ScEWrsJXHGFfgfFMY2FsWP9lREzHrPxfZO9vf5D6sHuSaUmaFMTy3r4xIei2Xn3YGf
         zBA0axb3AXgu+onhYcy2goP2JUTH9W2S8Uc1ASn4y8PVGf/ELCU1M3phdGE1RBLquzQx
         AdIPKgETAzzbisuI3l7jTCMBDOSvohxLdXno2aBhpKyPjpTCJ7aPVzD8HxLPgmV5R7Zl
         Mec6MPgw7hrCnaEUAnKw+DCBl6TAio9THMD80bJxvZDH50kGEVt8OXPW/eKPbJJF47LS
         Wx30u62HO6/i88zEdENBGt1aDnqr6dDhmV626NFEDA7ytMhNur8YA1+I5swpn6vWWG6m
         lLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=V62B7MzFnAQFSzASsarq3v0djmwNSddXSYLopfjS1Eo=;
        b=W8+YGab9ZTMrrdP/OJePogRb1+QMosJlmwHKHnkv/2t1L81Agk6bGauXrKLX/iZNWJ
         VUi/IWtW15HmgKsXJGUg0y6S8ruRu4mcQFJoWUJ78I/OFefLIuD+kIRFnTto0y+/mGIy
         K+6sq66TYMiRJdVCu/d+4DHxbwK61CTB7LoFvgXGbt1hc+5FhbFv/DyvOY/60HxcV9UC
         GEeCktjfpzaiUs4/PSHfh6P7QqD5gHnH9h0ofgIphMh9z2Wi12lQdPNaJrstEd4htoZ3
         +lvsyDzkYySsaJLF2ZEPNUuciw/f3Egr4fkR9J0WoGMsXTTg7au2vaqOD77k1N8T4QRq
         nj7Q==
X-Gm-Message-State: APjAAAVllOucbG8QO+VhJkHB1riCqMlvUB60r+fwKgOCVw2HZk0Xlrj8
        6PRRnIzWUifXa6xgYH2yoWze
X-Google-Smtp-Source: APXvYqyIq9u46qpIg74Hhl59xxqv6vSE/u8JTB2HQGcXLhPhYLNXH9xyP2FFRD2/Z8o7wjdiQbI8zg==
X-Received: by 2002:a63:7205:: with SMTP id n5mr16649825pgc.443.1566301810071;
        Tue, 20 Aug 2019 04:50:10 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8e:d798:d100:fbc2:f9c1:80f4])
        by smtp.googlemail.com with ESMTPSA id e10sm23454832pfj.151.2019.08.20.04.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 04:50:08 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] dt-bindings: spi: Fix the number of CS lines documented as an example
Date:   Tue, 20 Aug 2019 17:20:00 +0530
Message-Id: <20190820115000.32041-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The number of CS lines is mentioned as 2 in the spi-controller binding
but however in the example, 4 cs-gpios are used. Hence fix that to
mention 4.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index a02e2fe2bfb2..732339275848 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -31,7 +31,7 @@ properties:
       If that property is used, the number of chip selects will be
       increased automatically with max(cs-gpios, hardware chip selects).
 
-      So if, for example, the controller has 2 CS lines, and the
+      So if, for example, the controller has 4 CS lines, and the
       cs-gpios looks like this
         cs-gpios = <&gpio1 0 0>, <0>, <&gpio1 1 0>, <&gpio1 2 0>;
 
-- 
2.17.1

