Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 784D941AAFF
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239734AbhI1Ivk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:51:40 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48236
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239718AbhI1Ivj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 04:51:39 -0400
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 27DD640844
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632818999;
        bh=AbbCj9W6fgvQ0YX3UCQV/nDvOLaUQu6puIQCBSTWMLI=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=KSkHaKao8CFwiePIvhYKxXcjRZzWtn6WUBEEnTF0mzJVelM0vXnbsTlejMn+R2wnu
         qAcvqNW1Lwtiud93VHCNU3UbIdJmiYZOcxVVYEFqKGrSxnHclz1RWBqEj9zMKhuylF
         5eApVZhGiNFpmS56sG6lrGs8bpYloY7/bKSr62GPBIToXlohsLy2XmiSZST0ztfWfl
         b3M4oY0NlH8j/rdk7qTCZj6Ss5QKhg6ucXu4bStr2Ue4mRuSb+KSZG7PGN7aeRSkCU
         7/6VyvjY0Qmrkvcw9Nm7O0exeHRq2Zn4a6AG0yZzNNrQSWvJTKlaURj0v/4yxLhAkm
         aF/89HTM5mY/w==
Received: by mail-lf1-f70.google.com with SMTP id o4-20020a056512230400b003fc39bb96c7so18669735lfu.8
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AbbCj9W6fgvQ0YX3UCQV/nDvOLaUQu6puIQCBSTWMLI=;
        b=0zhXoS3mqL+pYgScS7AlYz1KJ2m/9Zn+al09SLE4Zp8sJzFl3D4MqEvkAX2wlc3bMe
         5aqYM+QqPu0R5j6l8DSfrzPsxnYO34Ie2qDLSFA4h0mG/dyMvkuVpHRmEi95vPsqpYpB
         XuGtOuosrEI02XrB2AMNpesHL/CYPLtAREGPwormv+kdm7uyrtPPMgePMz77kAeSsBe4
         4UBnkw/G+3F/Kt5Z1Yr4LTleJZ2UEQWFR4apVU79MNB3DMaIbPLeE/nWuCJnxVH3+SOS
         JqlEE0r3/quvvYy5WV0oxi2vVC3HmePaclBzKiCq5w0FLG9hNRLsc05FeHjF0+z50nDV
         YSCA==
X-Gm-Message-State: AOAM532/i1wTn4AHekb5bUi0wJvzaI8RfsrKRpcYtq5FHYpWAIjcL1rK
        UcVjdw+KdRee2J6UTGGtcT7TjynWrAznuzd2H80dr+UvkI98peweXdlZaGienVxnn54MtB7hb2J
        mCLfO7mvMx18cMCXKZ2mBIWHRcFr+1/kyCSBHG5g=
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr5004441lji.67.1632818998544;
        Tue, 28 Sep 2021 01:49:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+jmZuGlOMWLwSCGqG5ZxzPv7RzpU3AVMuSPcDXWUcDo+lOv1Q5DFIJD0PwCq6hiQcDUSsnA==
X-Received: by 2002:a2e:9b07:: with SMTP id u7mr5004414lji.67.1632818998387;
        Tue, 28 Sep 2021 01:49:58 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h13sm1848419lfl.205.2021.09.28.01.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 01:49:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        stable@vger.kernel.org
Subject: [PATCH 02/12] regulator: dt-bindings: samsung,s5m8767: correct s5m8767,pmic-buck-default-dvs-idx property
Date:   Tue, 28 Sep 2021 10:49:39 +0200
Message-Id: <20210928084949.27939-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver was always parsing "s5m8767,pmic-buck-default-dvs-idx", not
"s5m8767,pmic-buck234-default-dvs-idx".

Cc: <stable@vger.kernel.org>
Fixes: 26aec009f6b6 ("regulator: add device tree support for s5m8767")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt b/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
index d9cff1614f7a..6cd83d920155 100644
--- a/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
+++ b/Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
@@ -39,7 +39,7 @@ Optional properties of the main device node (the parent!):
 
 Additional properties required if either of the optional properties are used:
 
- - s5m8767,pmic-buck234-default-dvs-idx: Default voltage setting selected from
+ - s5m8767,pmic-buck-default-dvs-idx: Default voltage setting selected from
    the possible 8 options selectable by the dvs gpios. The value of this
    property should be between 0 and 7. If not specified or if out of range, the
    default value of this property is set to 0.
-- 
2.30.2

