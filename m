Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3056D596A2D
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 09:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbiHQHQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 03:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231376AbiHQHQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 03:16:28 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCDE66B177
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:16:27 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id v10so12713323ljh.9
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=yMl+tFEzdGX0GitYuhgBuJRmYAvfMaE0QWbJ9B74bmM=;
        b=jERj0BQc6jtjmk3aX2so6suyIqC4kUKNDcNFS+Ed/rrs9STbN5Yd1FYsoAX6s+lMR0
         LS1xlvBwtGX+C7oMzkO/Rnx4U02Gj5qY6ntH/otZpSzhgP77seTfbn/lxqirqQAF3TMV
         vNvA/owLK8lJlFqkF52wRT12pMKspOsiHnFKvbkSIMrUwYmNuZumhe8z9SlhoC+luZaA
         x/9hpotWnTm1evmLqxP1Pjfb38XxbQnSMqX2TM02cYOO8zGMupvwkT9r1ZBNkjK1cP+m
         MMvh2RMTGJthOeV90RF8EXxRAbXNeJio3halgALUrZgoJf32l7qvS6pc3H92srNYSEDi
         MOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=yMl+tFEzdGX0GitYuhgBuJRmYAvfMaE0QWbJ9B74bmM=;
        b=DyN9nzjyIYdHuMsJ+nHVrlO3rxwk8cpgmB96S8qeH8PGm65nQ01qg+7Bo8uQEtErm3
         L0xEy5fCA0MVcpa7Mfex1tkMB12PuPrPIbikGAPGehk+vWzYSuOR3Kkh+J+B9WdXnmMw
         FcTUVdgkcvBEdQpDmFzUqZLgsU5t4aVmvgM/KL0eYXVdZSdip3O9rQ8bnT6LnoLgptWa
         1wRB5nB5A0V3dPLVQG3V8FieDICvnyCLzTARP3Z6TfdM7Ssj8m8fnNmWpHs4ynINou/C
         nCLnPUkcQixqMwj3QQ2KttHpTfBJPBk3YnLqLx/KmgZRSo2duyE0Pw/rL6otHAA5j5H4
         rNiw==
X-Gm-Message-State: ACgBeo3GrHGEO+6BGnUm7zvTB+PqeaemBoGz08qLrvi8Cdrb4T0TFp1n
        ZhezmuORL4AojVjPg0Ad10hVCZdNdVg55BWj
X-Google-Smtp-Source: AA6agR5tHMDeP9wC5S6V+QAUunrsvKpymMUjcoZVKMjiVQBpOa+B3iShBPv0JAwFqXuAtmK35ByBog==
X-Received: by 2002:a2e:9613:0:b0:261:8022:d67d with SMTP id v19-20020a2e9613000000b002618022d67dmr5101654ljh.28.1660720586299;
        Wed, 17 Aug 2022 00:16:26 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id h8-20020a0565123c8800b004786eb19049sm1597520lfv.24.2022.08.17.00.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 00:16:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     f.fainelli@gmail.com, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH v5 0/3] Add Broadcom STB memory controller driver
Date:   Wed, 17 Aug 2022 10:16:23 +0300
Message-Id: <166072058033.27255.17777055235605907073.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220812222533.2428033-1-f.fainelli@gmail.com>
References: <20220812222533.2428033-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Aug 2022 15:25:30 -0700, Florian Fainelli wrote:
> This small patch series adds basic support for controlling self-refresh
> power down on Broadcom STB memory controllers. We might be able to
> contribute more features to the memory controller driver in the future
> like accurate reporting of the memory type, timings, and possibly some
> performance counters.
> 
> Changes in v5:
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: memory-controller: Document Broadcom STB MEMC
      https://git.kernel.org/krzk/linux-mem-ctrl/c/0da0b6bf854dcfb047fec70bbbadabb7ff0fcb3e
[2/3] Documentation: sysfs: Document Broadcom STB memc sysfs knobs
      https://git.kernel.org/krzk/linux-mem-ctrl/c/df0269bb936430c2e5c45b158fbbe5a13728d53f
[3/3] memory: Add Broadcom STB memory controller driver
      https://git.kernel.org/krzk/linux-mem-ctrl/c/65991a63d02decf269e7d5334620df0dd5919762

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
