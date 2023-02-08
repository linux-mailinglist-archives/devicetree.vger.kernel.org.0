Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8569A68EB89
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 10:35:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjBHJfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 04:35:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjBHJfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 04:35:41 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B269025
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 01:35:28 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so979685wmb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 01:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e5Tu8R0oupz/ghiHxU+IGFJ45u5bYP68xNxl3K3/IjE=;
        b=iqGdC41c/7Nav5uKJe7OFSVlN/w+wAHQedSiSAkvS2V0cWV1aa0Vz+pHyXM/Bhgw1t
         kQ+ZYwiGtNowD8cHal8ybws8mppYjq+jtUrl1+kgm2r6TSK2obKank2PdZnBZBOZ5oTn
         5SFe3xDzSSkr653gRrWicS3lePMHkFofroQSRg3NW4mizNyb1SWTxBozNHJuVB2WKl39
         pSOSO7ev/PlYUHMQ55bqc1VAek0gRkRln/clenas4STXF50e+WGhd4yVbLg/PCGaiR6m
         d6+VpLwlrYrPHGiSKfYTAU/0SyfXslc3w8xYu4ap7ns54COAm8pIh1lmLKsW2lkOHiWs
         QEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e5Tu8R0oupz/ghiHxU+IGFJ45u5bYP68xNxl3K3/IjE=;
        b=awja3rbXFEJV3z8nuF+Yn+2VvUv6m9r3ISbO+xzna1l+Uon/EyZicwRGp8IJtXzYc2
         P8TPbjB4rLbrIRSnZvauR2+S+zZ1f2bQO+fskWMY9UkM9UxRpEOm0LvNgCJKydwnFQSy
         lqHEUkQQM7jJD9Op/+wH1GMHrvEUeE3NrBFQLqMq/lZSTvGqR9IvXzLfdP/mF1SxkkOA
         MWIfELewHkZszHp+rXWJJUctMxqmNv/7BviDFjrcBkBOLYOpCEVN2C4CdB0yeNl/FCXy
         a4OrSWhGjufj4UnsbYvYyYK7jOp0GNVYwiwOU2xw8QkbWyXmaXjCxupc70lNz7E5Gl1P
         WUlw==
X-Gm-Message-State: AO0yUKV/mjvIwJ7o6xYLheu3x6UKlYKO6Lb0J7OVE6zkQwy6VOuU+KHK
        h0MgzqGL+1eCpmZvGg61efhV1Q==
X-Google-Smtp-Source: AK7set/kCIIZcHoJ4TsvPawNaB7DdeTgLnyVQKSy16xqjOEFQfYshN3+RU6iL+FYD1oxwlLAWFVWqg==
X-Received: by 2002:a05:600c:1d8b:b0:3dc:198c:dde with SMTP id p11-20020a05600c1d8b00b003dc198c0ddemr5669502wms.41.1675848927019;
        Wed, 08 Feb 2023 01:35:27 -0800 (PST)
Received: from jackdaw.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j23-20020a05600c1c1700b003dc1a525f22sm1375051wms.25.2023.02.08.01.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 01:35:26 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/1] ASoC: dt-bindings: meson: covert axg audio to schema
Date:   Wed,  8 Feb 2023 10:35:18 +0100
Message-Id: <20230208093520.52843-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Continue conversion of AXG audio dt-binding documentation to schema

Changes since v2:
 * Drop 6 patches applied with v2
 * Drop Yaml block style indicator for multiline description

Changes since v1:
* Drop 2 patches applied with v1
* Drop node name patterns
* Fix examples indentation
* Yaml fixups requested by Krzysztof

Jerome Brunet (1):
  ASoC: dt-bindings: meson: convert axg sound card control to schema

 .../bindings/sound/amlogic,axg-sound-card.txt | 124 ------------
 .../sound/amlogic,axg-sound-card.yaml         | 183 ++++++++++++++++++
 2 files changed, 183 insertions(+), 124 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml

-- 
2.39.1

