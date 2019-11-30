Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7690310DF19
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2019 20:53:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727142AbfK3Txq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Nov 2019 14:53:46 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:52420 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727027AbfK3Txq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Nov 2019 14:53:46 -0500
Received: by mail-wm1-f68.google.com with SMTP id p9so2351784wmc.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2019 11:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ii35c65KXcn3GJN80PDQRJl0sMOUpjAJggVQtBzwMf0=;
        b=YNVABK6FsWRk70BdNBi0u27t48fPAQ6/1oKYpNXvNLDAcXgLgb3HG4NnyEKy+8K4Jk
         D6sXZYj8Jy2d92a9Ba2Jp+L4hfCaCarF5xh2lTjC3J/byTVEJLUdR8D4ZMHxabtVhE9w
         UdxcaW1XVFxxW8Sl+GmuT/LNhYNSdQCjW4WweTrQiCK0+ID/XHZ4u/oFa1SukNeNDEUv
         PsqtHMDUzLbQsnxiyB8dfjMKpZ+u6/tv9FnRKDQG/O5VaGH4XOUIvlVgWFlsBEXfG+UX
         NfOBc8JZDafXxvO+3SUxzlySKuA47smuiB7M+g3T+gQMLu78LraW8mvuPb9dQajZwhmU
         EVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ii35c65KXcn3GJN80PDQRJl0sMOUpjAJggVQtBzwMf0=;
        b=oAQJijMH4O+t9r8eq7glOwIwcL+zqU+Pyy/afFoJ1dNwQPHs68/b5QDEFoyJCcb/Rs
         DK+XMyNry7q6X8WTi8u4VoFZYdiurtCwTKP2F4YbSK6iNXfvqY4j9eMUJ2sMsKPCR53W
         hoqRVJ/L3dsWuNLkZ4ZthwCn7GZdMGKiMfeKqh2h+Frw3Nybanv4ktqQNfv1R3+E9b9Q
         rOXegyo0dINn4ezcSogh69bA5ETu1+GNCXacyljbLBC+oR2hHp4E9E7zKqAAZVgveVPw
         d/jZ5QndWZRr0QsQ1//ekHWXK5VryhkczOObI79XbilSgzQr6poJy8bnhG+MyaXkuAXz
         V1sA==
X-Gm-Message-State: APjAAAVtDeftqvEErRVqOXV8KiTxystru65CXRku4QZCjxBPhiwscpCJ
        xr67Yvwt8oWROOCNUbKq0VJy9kPUVpQ=
X-Google-Smtp-Source: APXvYqyfElq45HGBQeftchZbmpcoEOxT0fzX5YLCTxp3RHNeiTDx1qGS0zQ8YpWQPa1RysneZB98Mw==
X-Received: by 2002:a05:600c:285:: with SMTP id 5mr2399791wmk.158.1575143622743;
        Sat, 30 Nov 2019 11:53:42 -0800 (PST)
Received: from localhost ([37.238.188.27])
        by smtp.gmail.com with ESMTPSA id d14sm20134040wru.9.2019.11.30.11.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2019 11:53:42 -0800 (PST)
From:   Mohammad Rasim <mohammad.rasim96@gmail.com>
To:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Mohammad Rasim <mohammad.rasim96@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: amlogic: add Videostrong KII Pro bindings
Date:   Sat, 30 Nov 2019 22:53:34 +0300
Message-Id: <20191130195335.17740-3-mohammad.rasim96@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130195335.17740-1-mohammad.rasim96@gmail.com>
References: <20191130195335.17740-1-mohammad.rasim96@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible for the Amlogic gxbb(s905) based kii pro

Signed-off-by: Mohammad Rasim <mohammad.rasim96@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 99015cef8bb1..8c97b8867e2f 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -59,6 +59,7 @@ properties:
               - friendlyarm,nanopi-k2
               - hardkernel,odroid-c2
               - nexbox,a95x
+              - videostrong,kii-pro
               - wetek,hub
               - wetek,play2
           - const: amlogic,meson-gxbb
--
2.24.0

