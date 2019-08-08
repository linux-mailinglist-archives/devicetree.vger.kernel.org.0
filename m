Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87C3E86D62
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 00:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390296AbfHHWq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 18:46:28 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:46196 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727649AbfHHWq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 18:46:28 -0400
Received: by mail-ot1-f67.google.com with SMTP id z17so6842760otk.13
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 15:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:message-id:user-agent:mime-version;
        bh=DnKHgJ9F5hokgG278SkinqqFUXS9qMAaHfTmRp0Gvqo=;
        b=Qe6yTEc5lHyuNe3Kf1y+C7yMfA4J8cPirbxyKUxqIMijShWwv71mpS+P1GMZsdk9zU
         MJL0xzY255mrh5Z41UAuis8IXpA0Pm1OL4gudKNwEuyJn9P1OBoUkfaIYdZerfsRdESX
         meXE45SpvCSSjfDpki+qZYRIvBXGe0RkZq2QHjAraxdqYJS0Qi7KZzIQie/wbETRphb4
         Gj7NMoI7icX/J6AJ44ZZKrkpQmX9/QI6HjX/UWkQ2ZhaaQC4h2XOWSk0ypBiL52vH6Iq
         dgya1rDlGzPvgI+Tl4WnLGSeo56oK45GhjZ0LZ4LT2dBYgHcv7i43Wbyv9uvWIXyjHqp
         Boxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
         :mime-version;
        bh=DnKHgJ9F5hokgG278SkinqqFUXS9qMAaHfTmRp0Gvqo=;
        b=ka+GDSQcJOjliiIIoW4J1owNVqUkeqL3RBQoWR3NWXgfBSaWnxIYdtITBFI6DX+QYu
         nRiEYKvZqxWp85TKtNtEAi206yttQ95SAmUxYBRHxGX82tk5lbSc7KwKKb2YwbStEYTu
         evBNgAFL6IHYlwl87zgKI0RDZGji6ITiPWu9BYnkyRW7b6XSq42okHF8rrXSXelpTKLj
         adyPskltGQZJu84mQy//a2FAm2J07H23vFYCxFwycv3EXK+e1U2kJL04a10HEAzIGGvW
         XezlQxotlgPHQtBZQWz1lpDwIXAFzI0dKu0cgmL5VvDZWrS//AhuBATKVmfMjN9dmz3B
         +q1g==
X-Gm-Message-State: APjAAAVjxNOnUtbo8nnnU+QrDzOb1Xg3Noc6FjHqbA/2BWvQkSi8FJIS
        zGSknhGGltrXqpGuZLSfXRd6Fw==
X-Google-Smtp-Source: APXvYqw/HYoZ5cytMYRaqkQHJ3Zry9RC9XfYq/QgNc6zKYhejepO4NFoWoClcga0cEGE0fNVae45yQ==
X-Received: by 2002:a02:bb05:: with SMTP id y5mr19028205jan.93.1565304387609;
        Thu, 08 Aug 2019 15:46:27 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id c81sm148242491iof.28.2019.08.08.15.46.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 15:46:26 -0700 (PDT)
Date:   Thu, 8 Aug 2019 15:46:25 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org
cc:     linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: riscv: fix the schema compatible string for
 the HiFive Unleashed board
Message-ID: <alpine.DEB.2.21.9999.1908081545190.15649@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


The YAML binding document for SiFive boards has an incorrect
compatible string for the HiFive Unleashed board.  Change it to match
the name of the board on the SiFive web site:

   https://www.sifive.com/boards/hifive-unleashed

which also matches the contents of the board DT data file:

   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts#n13

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 Documentation/devicetree/bindings/riscv/sifive.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
index 9d17dc2f3f84..3ab532713dc1 100644
--- a/Documentation/devicetree/bindings/riscv/sifive.yaml
+++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
@@ -19,7 +19,7 @@ properties:
   compatible:
     items:
       - enum:
-          - sifive,freedom-unleashed-a00
+          - sifive,hifive-unleashed-a00
       - const: sifive,fu540-c000
       - const: sifive,fu540
 ...
-- 
2.22.0

