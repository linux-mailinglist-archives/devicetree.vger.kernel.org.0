Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB019547BEB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:58:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234464AbiFLT6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234723AbiFLT6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:58:10 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5F6D5A59D
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:58:00 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id m16-20020a7bca50000000b0039c8a224c95so1154932wml.2
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HPK8k4gKJZ+wQWjBYJ1REf4HNNl/uXfLF+28+th4jm8=;
        b=WxS4e3m70DLW1yjIUhnUbrBdeC8hHUVcYuxLS5HhyBfAJgqwPHyGo62VUl1t4TWG78
         qa0Spt0qrqCK77WFgGnytj+CrUY0uFwa1t0rjiMFRo1x0VIWcrz7L6fh3uxeHawYDRaQ
         pz56WqD45VRi3cPSZrS693lfJbwHCAaxUAGBuEf61Lb+Je8HLEgo1gMymquk8eSzGsbC
         ovS/fUm/RDwASKiWAK3qRBaoSq6y3Af0NNm6qTUhNOsHKGDJTORGKjmxWeEVt1bG7fWO
         fB7pIC2mJ2H9ISdqp0viUSfC8Ib0W+ACLclo+DLNepwN6QZgw5ybyCWA1mx1QYljyb9+
         VkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HPK8k4gKJZ+wQWjBYJ1REf4HNNl/uXfLF+28+th4jm8=;
        b=kVAhYrrj5ReqLpLuUi3i/IN4T1j8HYC7EEMJHyW97N9IlURciiyjrZMGGAjUcBS7ED
         zuZ8yYZp0hLH5tvhM6HNPm+EjXmXwixnqk0zbsaV23SilCNTWqXXNitiD8rD8wHnXGih
         4u2BkKzDE8eHBwtOKtwflY08dmp64Nv2JcfnIv5Mk0Krn7qEIZ4pF4XEgo+wQFmQ3z6G
         MQ+yG1fP8m23xAGTcgsBkS3uGaKq4Z8sTk7aQ68rkAcNyqT6v9SYx1IJON5BL1VmtzbL
         /xnDk8qVyZVGcriabLhJTyHcAdpUon42p+AjE8sFh+vvk+5hwlijnVk/xytOF5XjlF/b
         F3Fg==
X-Gm-Message-State: AOAM533FGrKn8yJSQDY6lDI1zYJ4KFAYbSmxcZI1SznrDRhQeTRd1BWu
        DCpfYwrgUX7OpbbT4qm+W7XuVA==
X-Google-Smtp-Source: ABdhPJxVD+6uveEwgGG0ZXNpTkwYft114nVu3ghAlq26nsiNc/IJ06GFHoNEAPTGysm8ECJzB0DhxA==
X-Received: by 2002:a05:600c:3d07:b0:39c:80a8:db07 with SMTP id bh7-20020a05600c3d0700b0039c80a8db07mr10727828wmb.168.1655063879180;
        Sun, 12 Jun 2022 12:57:59 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id r16-20020a056000015000b0021108003596sm6402404wrx.10.2022.06.12.12.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:57:58 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, conor.dooley@microchip.com, palmer@dabbelt.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        paul.walmsley@sifive.com, zong.li@sifive.com, palmer@rivosinc.com,
        daire.mcnamara@microchip.com, aou@eecs.berkeley.edu
Subject: Re: [PATCH] riscv: dts: microchip: re-add pdma to mpfs device tree
Date:   Sun, 12 Jun 2022 20:57:35 +0100
Message-Id: <165506374015.3753145.322560637772164805.b4-ty@microchip.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220603083825.1910300-1-conor.dooley@microchip.com>
References: <20220603083825.1910300-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Fri, 3 Jun 2022 09:38:26 +0100, Conor Dooley wrote:
> PolarFire SoC /does/ have a SiFive pdma, despite what I suggested as a
> conflict resolution to Zong. Somehow the entry fell through the cracks
> between versions of my dt patches, so re-add it with Zong's updated
> compatible & dma-channels property.
> 
> 

Applied to dt-fixes, thanks!

[1/1] riscv: dts: microchip: re-add pdma to mpfs device tree
      https://git.kernel.org/conor/c/5e757deddd91

Thanks,
Conor.
