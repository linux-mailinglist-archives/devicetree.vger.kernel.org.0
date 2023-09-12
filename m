Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C11279C7E6
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 09:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbjILHQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 03:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbjILHQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 03:16:08 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3859C3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:16:04 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-501ce655fcbso8475403e87.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694502963; x=1695107763; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mdGyaEUqsQwAIRI3DVuB9ZJiwAtKtbEaj7KS0JbLioc=;
        b=ZXQyN/G4mL13ba1TxvXqsOBUPeqMtQ4IJPl/Uv1TYz2ia95qyFsvkhUL3tY4qzwScC
         9YJEEEg7WRjum7yrH4xt9UuDouUR2x0widzwqZVNqg1AfGF1mbQuBR3M0XPUPnhN75tt
         ra1oiFy8YnY8c981yrBDWe0L7wzRKQsPGZ/Qa6dWB1YsLNOvgweBMIxbiAejk5iZm1l3
         TTCRVbs/6L2+HJUxLRmI6BZR2w29zECbcD0ppK0VlLtW8JcVu4oDDrLfeGEZFLTXlj0a
         1QdM68SJYfjka8/CJprCrtd3ue6GiTJPJITncCu0IDO4GSuQxGWFao5nqjHwxQqgGGVu
         HEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694502963; x=1695107763;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mdGyaEUqsQwAIRI3DVuB9ZJiwAtKtbEaj7KS0JbLioc=;
        b=ihkKHPQmvrCfU+/6fnvrCXe5sqjGtw+n/STZKU1AQTf931lutUNOhS90FX+1BsPD19
         Hu2ZjXUP9VYsFsHn20qjvIlx5ppyfxUtFdRY4/MYXwIVTzjy46BbmS7oL227sOXuFOPq
         8cwShqP6X1IK/Ho1ZUg/IyMQMjEllkUHM52SsVFUeg6Sm5jO4SD2vufQXtEBoDtu+Gnk
         QBrGECLRsNs2Zb+HMjCmoXxZdiLkwc0Z0GPwGrh2dnzYNPNxD2PIviOZK74ZJiAeQlVf
         mU63/mw6BWpiEF1KBoaWQVa12fXOZv4O+AEYr6gydGhv5/YLDqsFgIaCiLLwqAfz5X3t
         3G8g==
X-Gm-Message-State: AOJu0Yzte6bJD8CFuIzI8a4xhDAsA2o3v7YARIra8czbQ9gyfonvAkSZ
        A0BFtRqtMUV/EHTGlRTe7MhECg==
X-Google-Smtp-Source: AGHT+IGvR0cstm/NE4dFxq2WH8yiQXv93xGaCEi1/dwEaPh2mhUe3KiwxlNhO/KYXPLTlSRNr23pJA==
X-Received: by 2002:a05:6512:3d26:b0:4f9:5580:1894 with SMTP id d38-20020a0565123d2600b004f955801894mr11648133lfv.15.1694502962861;
        Tue, 12 Sep 2023 00:16:02 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id f8-20020ac25328000000b004fe20d1b288sm1626872lfh.159.2023.09.12.00.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 00:16:02 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] (no cover subject)
Date:   Tue, 12 Sep 2023 09:16:01 +0200
Message-Id: <20230912-versatile-dts-v6-7-v1-0-a2734f1757e7@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADEQAGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDS0Mj3bLUouLEksycVN2UkmLdMjNdc10jCxNL89REyyTzVHMloMaCotS
 0zAqwodGxtbUATlJJ5GQAAAA=
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Versatile family DTS updates for the v6.7 kernel
cycle.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      ARM: dts: versatile: Fix up VGA connector
      ARM: dts: integrator: Fix up VGA connector

 arch/arm/boot/dts/arm/integratorap-im-pd1.dts | 3 +--
 arch/arm/boot/dts/arm/versatile-ab.dts        | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230912-versatile-dts-v6-7-28497ea9b7e7

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

