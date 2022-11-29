Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 299E663C74F
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 19:43:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234059AbiK2Snx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 13:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235770AbiK2Snw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 13:43:52 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98D35220D2
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 10:43:51 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id io19so14298306plb.8
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 10:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8lGntM4kOktmfQdUaeSjevYi4oUpuqHsLPXR1CgAwY=;
        b=obeLgfkyGkMKWKCrw/Erz/5BArpTueSCf8bT3iUEDi9Ish/XAzXxW4Xa3+d6AM2QAp
         Xd6xBZt79tvTggr2GJ1u/dfQrlCmbUvNY2KN7OBfe1kCvhTuHNjwCBkHMNBxyZ7dVsa4
         fy96fIKU0cjhMj2TgII5L6v8cu28mpTHapAb8pviJIyjbRSL/qbpcnDRKf70+vf0eB9B
         MiPAH8P7D/5gV5/SOf+MNhyh6vteQKpH0i9QWE52nXmWosRsA1fPUEGo9Y2LuJTRQVGB
         8/HFAF+4qdPbOLPSUvGnxnYjjYo8ksyeQrO6UfZwiLFlQMKHhLHQJkXsnAxmDcJ+tdpL
         rMAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v8lGntM4kOktmfQdUaeSjevYi4oUpuqHsLPXR1CgAwY=;
        b=V2XyWZHxbBp1m2xVW2NBPIxaDPHCEfEuBqhWlc8xoSX/7BpSfS1+ES9mLs8M0h9egI
         m+mR65mmmVpKSRWhTmXxZKFk4tSEz+Ked1mvViFjYmXr/Ap6LXICO4uvXV8ZCpJrdTBH
         aSPgEQdiPv2vckKXDZomrKlXpCy+O1Kg2ttv7UMWenymas7nddDjCt36L4s+XcmmRur1
         fi4xzC4j7/mQbxoHuCkgSnEOxGD3w7nwQ9+IR8te0ymiI5vTk9WCiGpHZ+HvVOjQFDUy
         zLhfBIVszdimjwKh1sNmXwMlyKAJpuAfmFbDBtMH1rXvL2/B8HGCRqthYslCGEyxiZey
         mbmQ==
X-Gm-Message-State: ANoB5pmogISNhTWH7SLXcq9bjku3YXbcLegK5pqR3fBckwzA8yqB6fA6
        fbP7D2uk+bcH5uP0JK6hMeC7eA==
X-Google-Smtp-Source: AA0mqf7cbjoYVp0R9RTwHGzuOaTXMkjf1daC6uT8wIT0jRdIISiBqQiw+C5KaLxr+2dyYMFKxbUmkg==
X-Received: by 2002:a17:90a:8b03:b0:213:16d2:4d4c with SMTP id y3-20020a17090a8b0300b0021316d24d4cmr61926206pjn.70.1669747430925;
        Tue, 29 Nov 2022 10:43:50 -0800 (PST)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id u6-20020a17090a890600b00218abadb6a8sm1658684pjn.49.2022.11.29.10.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 10:43:50 -0800 (PST)
Date:   Tue, 29 Nov 2022 10:43:50 -0800 (PST)
X-Google-Original-Date: Tue, 29 Nov 2022 10:43:40 PST (-0800)
Subject:     Re: [PATCH v4 0/3] Improve CLOCK_EVT_FEAT_C3STOP feature setting
In-Reply-To: <20221129140313.886192-1-apatel@ventanamicro.com>
CC:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        daniel.lezcano@linaro.org, tglx@linutronix.de,
        ajones@ventanamicro.com, atishp@atishpatra.org,
        samuel@sholland.org, Conor Dooley <conor.dooley@microchip.com>,
        anup@brainfault.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        apatel@ventanamicro.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     apatel@ventanamicro.com
Message-ID: <mhng-767f0a38-40c9-4090-8341-ec0c41dc502b@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Nov 2022 06:03:10 PST (-0800), apatel@ventanamicro.com wrote:
> This series improves the RISC-V timer driver to set CLOCK_EVT_FEAT_C3STOP
> feature based on RISC-V platform capabilities.
>
> These patches can also be found in riscv_timer_dt_imp_v4 branch at:
> https://github.com/avpatel/linux.git
>
> Changes since v3:
>  - Rebased on Linux-6.1-rc7
>  - Replaced PATCH1 with a patch to initialize broadcast timer
>
> Changes since v2:
>  - Include Conor's revert patch as the first patch and rebased other patches
>  - Update PATCH2 to document bindings for separate RISC-V timer DT node
>  - Update PATCH3 based on RISC-V timer DT node bindings
>
> Changes since v1:
>  - Rebased on Linux-5.19-rc8
>  - Renamed "riscv,always-on" DT property to "riscv,timer-can-wake-cpu"
>
> Anup Patel (2):
>   dt-bindings: timer: Add bindings for the RISC-V timer device
>   clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP based on DT
>
> Conor Dooley (1):
>   RISC-V: time: initialize broadcast hrtimer based clock event device
>
>  .../bindings/timer/riscv,timer.yaml           | 52 +++++++++++++++++++
>  arch/riscv/kernel/time.c                      |  3 ++
>  drivers/clocksource/timer-riscv.c             | 12 ++++-
>  3 files changed, 66 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/timer/riscv,timer.yaml

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

IIRC the main issue here were the DT bindings, though, so I think we'll 
need to make sure that's sorted out.
