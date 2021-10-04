Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49EDC42127C
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 17:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234491AbhJDPTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 11:19:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:60144
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233586AbhJDPTS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 11:19:18 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2EC7C3F32F
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 15:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633360648;
        bh=V3o0PPzdLxt9FTzgnpcmYNfVrR3nxoe1+2HhHs0RBOg=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=OwiGN2oqCj9tvcc8hQwMFo6qWa/7bAY+lnxFEHfJ8SA++Kod28PJ6gXUVcQIM7oAG
         MTpv4CRxyNYYfEyrQ5uxz+XlNCQLT8LJgBDn47Pz59MSIQrEN5Rlz0DbYecJuAfrC7
         EUOF8jKoMksKTwrjEMyjZaNnjEnkGdCbnvmBW/2TyXKVuCnbnyymo2yH+AAHCrrGbv
         dlPph4tJOu5G8V+0EYpSvjsumgWmO4NQ7aiEt79WMUyjgLh8dncRQUMlSxdCF2Tz53
         QqqYNPKOjcnAJSNS33wslWAPYjD3JH0uLSV+7gDDzTT1RSl6d5hDUh5UhXpwX/suiu
         NX/PN6GqTF8Nw==
Received: by mail-lf1-f69.google.com with SMTP id c42-20020a05651223aa00b003fd328cfeccso3274081lfv.4
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 08:17:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V3o0PPzdLxt9FTzgnpcmYNfVrR3nxoe1+2HhHs0RBOg=;
        b=PtsZa8tCr+0b5sqpZMb/X/r9i8WQA06tGy54xI2SUN2k8WENV9kigX06qbBvnzlwMQ
         XvzDyveLgxqdy+KEpMafJqOGfIBXMFp8oIPMfXj1fWQPID59bhzu1Gy+k/YnTigE8BgZ
         /U9IddK/fg5YiKaGcwY9yg/DUk4Qf/S/ISAbD5x7IkKHbgRjUOEYvIcRSa+sh4CtWZDM
         SupzG0BlIj+UUsac8XQ7lnSf9iIY5xPnFa7WinYTG6xwKHuZU5ekrZNmFnSvXCnK3DHy
         l0L8esxdy6wVjuAmzVmG/j8Jg1rwMuVTyGEFfVtq3WfN1RU2qS7cmkyXVV0W+M78VLY0
         l1rw==
X-Gm-Message-State: AOAM531VvGoNjK8JsLJ4+W52mV4k6sf64TVFJuVqpPVSShwT44NyNkYC
        eYRpk8XkljQaAFaXYY1CtjSKtI8P+TCEyEm7WUCpfYIPLLaFpxmLv3WTNO80wy8xSDnmnVwRynx
        voE4AVzPx0dVI+L6FNeCV1FxAEFoUFxCVCkzROys=
X-Received: by 2002:ac2:4f01:: with SMTP id k1mr14821247lfr.94.1633360647624;
        Mon, 04 Oct 2021 08:17:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqAmuBfz4zlVzr9PC+S5DriT+SGP+Xe1UGshV8/PwVH2o6sbeYfOu4GBpKMtuF700lCYfSFg==
X-Received: by 2002:ac2:4f01:: with SMTP id k1mr14821227lfr.94.1633360647464;
        Mon, 04 Oct 2021 08:17:27 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id f7sm1623302lfc.217.2021.10.04.08.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Oct 2021 08:17:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH next] dt-bindings: mmc: arasan,sdci: bring back requirement of clock-output-names
Date:   Mon,  4 Oct 2021 17:16:46 +0200
Message-Id: <20211004151646.73599-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The schema defines dependency only of clock-output-names on #clock-cells.
The dependency in opposite direction - requirement of clock-output-names
if #clock-cells is defined - should be explicitly included in the
bindings.

Reported-by: Rob Herring <robh@kernel.org>
Fixes: 22ea8ab0dcc4 ("dt-bindings: mmc: arasan,sdci: drop unneeded clock-cells dependency")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Fixes tag from the linux-next

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
index dd70431df0b7..de6f076e0ece 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
@@ -158,6 +158,9 @@ properties:
     description:
       The MIO bank number in which the command and data lines are configured.
 
+dependencies:
+  '#clock-cells': [ clock-output-names ]
+
 required:
   - compatible
   - reg
-- 
2.30.2

