Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B811365FCC
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 20:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233618AbhDTSyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 14:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233697AbhDTSx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 14:53:59 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03985C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 11:53:27 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s7so38678532wru.6
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 11:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=ebyPwcdrPNJZ8NlIZPrB4jWl+zySFB+YPdDAxVIYV/A=;
        b=aSyR7WC+sW0cdvczodryOKG9/LngPw+7ooQh+Z/ZitRwLNknbczJRZZh1pVhjlAtoD
         vAuLH5k2rV3aJ8L/0uS7MsvjwoEVoglM0eh5BRj7H4SjzDcapmtZT16UCpkqVjPXXOWS
         bAQi6holwQIzCxjj3TfigMdFpRr6gyBE5vXYF0Kgjo3mRBg05fTDP73hTOY5PEJAgkXS
         8uanRKR7WIGcPukqEQdufh3TqCU3jJSalfcKMIKJCT97ly7PN1qCvKpFmyGfitUbe+I2
         lezFzLm/0wfqZ4ypBaZFxu0jvVTBJoyiFz28rwx8jBITF0wC7H/POU71LSSMwEe2OWBb
         98mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=ebyPwcdrPNJZ8NlIZPrB4jWl+zySFB+YPdDAxVIYV/A=;
        b=avJs9t3+Q2Pa6QbhvXCjGbHpD/zpwdImWTMtB0/c7+vBire4fNJrPyWnNVF8B96Ha1
         k8rMelQVw5nRWQzsFOk/yFRqMyMV2Drb1pCHoZqyzKmNw2JZvfpdSNNDXMsQaoPVpWSm
         npxsEbafo+A15hkszvuPNJstRlswDjMD5kAO9pBcScke9OhNUNK2Ltq3T0vkVqQMW0J4
         FcjcW0kFWd4LN71e1txhV7IJPWOKsIvEhWBYgxmkPcY9BT5UJ3jW2Oeq30mIGHrWCzMb
         barv76ZQfonNpj9NSHFAJQDXrcEm/qLz8DAmftfUnA+N1YYB38AbayHvlGCWQTNcSj+t
         o++w==
X-Gm-Message-State: AOAM5306JWnVwGsmgwzhC9kzDq6LjINfhR8fao1G+d2SLbCamV/1CtiW
        NKC6+38/+6AklpCZq06RNqVSLg==
X-Google-Smtp-Source: ABdhPJzZWLpyDMfLjVsPnnpXEwimN8gu3yG1xx9ftWalQYNb/W3R8Epva41nLZHvd2tJJIyGtiYs+g==
X-Received: by 2002:adf:e707:: with SMTP id c7mr22409856wrm.391.1618944805800;
        Tue, 20 Apr 2021 11:53:25 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id f7sm25897402wrp.48.2021.04.20.11.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 11:53:25 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 net-next 5/5] dt-bindings: net: dsa: Document dsa-tag-protocol property
Date:   Tue, 20 Apr 2021 20:53:11 +0200
Message-Id: <20210420185311.899183-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420185311.899183-1-tobias@waldekranz.com>
References: <20210420185311.899183-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'dsa-tag-protocol' is used to force a switch tree to use a
particular tag protocol, typically because the Ethernet controller
that it is connected to is not compatible with the default one.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 Documentation/devicetree/bindings/net/dsa/dsa.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
index 8a3494db4d8d..16aa192c118e 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
@@ -70,6 +70,15 @@ patternProperties:
               device is what the switch port is connected to
             $ref: /schemas/types.yaml#/definitions/phandle
 
+          dsa-tag-protocol:
+            description:
+              Instead of the default, the switch will use this tag protocol if
+              possible. Useful when a device supports multiple protcols and
+              the default is incompatible with the Ethernet device.
+            enum:
+              - dsa
+              - edsa
+
           phy-handle: true
 
           phy-mode: true
-- 
2.25.1

