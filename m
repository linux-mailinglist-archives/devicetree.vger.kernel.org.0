Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2366D2B725
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 16:02:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726108AbfE0OCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 10:02:14 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:50964 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726071AbfE0OCO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 10:02:14 -0400
Received: by mail-wm1-f65.google.com with SMTP id f204so16291382wme.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 07:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
        b=yCtt0wGZdVi1k/2V5asoBDK6Yzs1fm4vO9CA5a2/sfxJNiiymxdYyE3uFDC0zkOrvc
         ydMz9pzk79I3IOes2wxEYa0BstMJIdAcguZkAvWLbXN+t6KXYyksuB0xoFjtVYNQrFxv
         EIPmB9PCO8wEv8tY8xwd4BzgFPk+bGfOwemmo9jjbZWv/KqNNcG3Eix6CMQUXeOyU1YY
         hE5nsT4FVw9deb/lH7/WicXP+XVxnE2fdytGMhoynk5+b9qVPtwI5hJznaof1GEs4hYN
         UBkTW59bZNupnMzY6HWq7KSAXsQNYZukZrvDDPcX9UQXpNx54Ms/BJjK7kxGd45W+rrL
         zlRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rO31uLodqtR0UANwODTPyvdISTtsAPEuGeRxrgglRH8=;
        b=E1OanJKVD7eJh61O4kJTwD/16+W2sWcw871DmlYpK7ucRLHSI6u/Bc59Db4SLSA2bC
         0JtaDGfL21pUVgdxfiM8SnisJVxIORKGPdEf6PRUbL1X8q2yseuhGJO6u/D0J4mcRycB
         NIKyNsLTDo1shtmMUEoeiAbvGt06VIRJySpZwINyZ6oL7DuYGhMWLyCVFsDCLDxg05lu
         cbmDONwmHwFq+FWZx4O61K3HFc9EIkBUNtV+O6eMaKRbIdGG1sdkWaq0F4Nvqdv+1QP+
         CphveaSC5yS5kBSY7U21QVFM1F3pOvneKNIJa/f7Wl6gc2lSw1RDUu2urehy82BWn754
         tsXA==
X-Gm-Message-State: APjAAAVnd4ioLjlCJjenHO8biSILRAuGvxJtXUmbaJ5zQeY7a4lhRgoP
        LZfJaJF0a5aIsZp+dTHAfA8gmw==
X-Google-Smtp-Source: APXvYqz6fMBKbektBh6mgh4wb189td6wyNv3zG8A3t1I2yYon0EbBaq+sRg2X7rkbiVCNCbhyZzQig==
X-Received: by 2002:a1c:1b4a:: with SMTP id b71mr10259602wmb.177.1558965732652;
        Mon, 27 May 2019 07:02:12 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s17sm8231628wmj.15.2019.05.27.07.02.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 May 2019 07:02:11 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: amlogic: add Odroid-N2 binding
Date:   Mon, 27 May 2019 16:02:05 +0200
Message-Id: <20190527140206.30392-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527140206.30392-1-narmstrong@baylibre.com>
References: <20190527140206.30392-1-narmstrong@baylibre.com>
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

