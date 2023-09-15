Return-Path: <devicetree+bounces-557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF807A1F0D
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9EE72826E8
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596E1107A6;
	Fri, 15 Sep 2023 12:45:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD2C107A1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:45:21 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E55F115
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:20 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b962c226ceso33101631fa.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694781919; x=1695386719; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oTnoDjXgLFTKf4cq2qJGKU+HAQuadX7y4b7vlp63yRY=;
        b=NPpKiRkAmbqkwzHu4t1KswJuTT/x4QWhuJz2dDGQykNeLqFtlcghxKmbJA9Jo12+pv
         ZekXa//DaXT1+1UUm1Hgz7WyGM+ZgfUoHUfZpr58Tx3+WcmbICLE2rP13DXm401ekArC
         2lntiOxa4sRMKCfYCcMMHdVZEz3idGRVLh8M1w0ehps4yWNIGZ1O8L0kiKiy8uIGfTIU
         11WvVOwUx9oy5CwJCCHBxuCEGnnwMQtg8jX+TWKZ4Tge0jAImufctlk9EX21Px/NY7A/
         Z8hYuN+J0MffaFSiMwbRTgzKeGKlnlFMrqkrvlUvG59v0sxKNlm3bhmzLh4Cp20gduQH
         p1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781919; x=1695386719;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oTnoDjXgLFTKf4cq2qJGKU+HAQuadX7y4b7vlp63yRY=;
        b=MfXWUZfqFwsUfdea/ppc+dd8ZbIYRk9SdTcVt0c2QsQwwthleVfjqKIjYQbmrwJazf
         dcIlA0B5KEpylgCrYT90OcKeIWVMKZ+ryztCTQ0TQN8P5WLZbWlmUfiCONy3z7tz93lk
         sQy6+yVk/+JTOtm3pq4Cfjr2/ufmK4bdXhNKEMyZmCSEgonGPq37RASQPvnqc4ivNJBl
         OxYwofWxPt/jp24Xto3DPuTvvjJjU836u2qg2sCrAIIJHNaShx/ZxQJfqvmZy32FHfyV
         D46xVv0Gajk8C7wfe+GUGeI6tauIeyvDlI1iex+Xi9rDvpWTjR+491hHMB9yYG0U4yCK
         Teaw==
X-Gm-Message-State: AOJu0Yxc436PPUa/mdB/coRuq6G6YqYnQDEPHOrkml6IRBjR/D5e/zRZ
	Ah5fK9lhKL5Gackgs+lcdykmLg==
X-Google-Smtp-Source: AGHT+IEIhep0b5NH0jnu+TqG0GJXxOXKbUnUd6PPYLIWPh5+Td3XG0+pIX9XvTqlui71/MvOe82tkQ==
X-Received: by 2002:a05:6512:3e11:b0:502:d86d:6b26 with SMTP id i17-20020a0565123e1100b00502d86d6b26mr1653998lfv.50.1694781918701;
        Fri, 15 Sep 2023 05:45:18 -0700 (PDT)
Received: from [10.167.154.1] ([2a00:f41:cbe:bc7d:62a6:5d09:5ba7:be5b])
        by smtp.gmail.com with ESMTPSA id f19-20020ac25333000000b004fe37199b87sm624752lfh.156.2023.09.15.05.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 05:45:18 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v4 0/3] MM8013 fg driver
Date: Fri, 15 Sep 2023 14:45:14 +0200
Message-Id: <20230621-topic-mm8013-v4-0-975aecd173ed@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANpRBGUC/33NwW7DIBAE0F+xOIdqWTDgnPofVQ+A1zGSAxGkV
 qvI/16cU6uqPs5Ib+bBKpVIlZ27Byu0xhpzakGdOhZmly7E49gyQ0AJGgW/51sM/Hq1ICSXRpt
 +oMF6tKwR7ypxX1wKc0PpY1laeSs0xc/nx9t7y3Os91y+nper2Nt/1lfBgSsFJmjUAL18XWJyJ
 b/kcmH70opHGnftSSPK3ho3/tSn7kgNk/BKTMoH0H8+5dGnbNpYMTqpBQUNv/S2bd/+XekMcAE
 AAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694781917; l=1579;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=MhLWYhlsgWjrrAQjXdxmmKcqg9TDemaldksf0wIoqfQ=;
 b=Yv611wxqWHSWLVClX9U+/xp5KSTXDWqUVqd9Dr2nxJ5RjyGXSDXWoCzsjTJGBsGytirY0yyfk
 PwrPKRKApmiDzsM4d2m8xuCy/ktk67lPJ7ZBJr/z2NG2ceUSi7sVRr6
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series brings support for the Mitsumi MM8013 Li-Ion fuel gauge.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---

Changes in v4:
- Use regmap
- Fix units for some properties
- Return retval of mm8013_checkdevice if it fails instead of -ENODEV
- Minor style fixes
- Link to v3: https://lore.kernel.org/r/20230621-topic-mm8013-v3-0-781da361ec60@linaro.org

Changes in v3:
- Reference power-supply.yaml in bindings
- Link to v2: https://lore.kernel.org/r/20230621-topic-mm8013-v2-0-9f1b41f4bc06@linaro.org

Changes in v2:
- Fix typo in patch 2 commit message
- Drop driver.owner in patch 3
- Add PRESENT psy property
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20230621-topic-mm8013-v1-0-4407c6260053@linaro.org

---
Konrad Dybcio (3):
      dt-bindings: vendor-prefixes: Add Mitsumi Electric Co., Ltd.
      dt-bindings: power: supply: Document Mitsumi MM8013 fuel gauge
      power: supply: Introduce MM8013 fuel gauge driver

 .../bindings/power/supply/mitsumi,mm8013.yaml      |  38 +++
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 MAINTAINERS                                        |   5 +
 drivers/power/supply/Kconfig                       |   9 +
 drivers/power/supply/Makefile                      |   1 +
 drivers/power/supply/mm8013.c                      | 274 +++++++++++++++++++++
 6 files changed, 329 insertions(+)
---
base-commit: dfa449a58323de195773cf928d99db4130702bf7
change-id: 20230621-topic-mm8013-376759e98b28

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


