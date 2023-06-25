Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4131E73D53A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 01:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbjFYXSz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 19:18:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbjFYXSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 19:18:52 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B693E47
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 16:18:51 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-55adfa61199so320595a12.2
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 16:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1687735130; x=1690327130;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PMyidyx6c8j5MqA0hxypdhWidgaRdQYvwuhrsrEdDAU=;
        b=r1Kkob3K7eMRLpiJCBwt7BrIxDGHwLTSuYUVmbjdbsOi8X9tHT0HbkkGfxV3slmG8l
         EzwED/43arOsSoKB9nj4ESxua/Hbje/cjt5LMkLfWp46F53MUwdwbUJdyOWoDddl5478
         e727q3+cEBjKr0bUQ6/6hGDj4i9Prr3xElgEnq7TIGwWdwG6bQxv5uIecVqw9X9eBzzg
         7Zn56LTIEJ4brd+tSYnMn0r3au4gw+mPdgZVMN84x0b0bmmzd2MfN8sJNTn0SScdytLc
         LzfofWl5kLWv/pC18bq3c1nnfmK3aJp94VGDjlAYcKH8euJ6CAhdzjTICMV53FZ9OVfh
         KoLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687735130; x=1690327130;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PMyidyx6c8j5MqA0hxypdhWidgaRdQYvwuhrsrEdDAU=;
        b=HO5LshX59QJAhxlBQNLLXPgtfvgbxSKIZP637UY5Bbg7gfPL//l6Vw9IAIkkfG5sZ1
         gsnteNkfULxh2VwAw3xRiaBq4mRQYlXf7RE8AnGodVZV0J9sKLGP6tci2sMQ3BRbs4ya
         SSkGkPClVu2TlJd4eug85h3rpbT0XnYFH2PBG1MOX3iQwrlEBToeOFKRT+ZaQPz+ayEc
         ODmO3MaMNGFcKmn/S0Vm2wovbJ3E087KUydM5uxrOHiu/HP4C7pMyFgZ0j2FWChXzTar
         93e37huzpWmIr0Cj1T5d9dgZpru3apqdLT2xe4zNMxZab0lm7fTN2lfefB7w9Ek99Sr5
         S6vw==
X-Gm-Message-State: AC+VfDyRmTY9O+FmL7SlCC3j+ls8KxKSS0fxIsSdNW2tLEIx6KBpnTfv
        AjyiZHwA5MRbdHElK/4YsnEtUw==
X-Google-Smtp-Source: ACHHUZ7chlK+14uMjyxEuWPh5cyB+olLpZYJstcYOjERPpCE49wWN2rz8PEjV9wVJ6+bT43Q5ElOog==
X-Received: by 2002:a17:902:da8c:b0:1af:981b:eeff with SMTP id j12-20020a170902da8c00b001af981beeffmr6581208plx.64.1687735130591;
        Sun, 25 Jun 2023 16:18:50 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id y6-20020a1709029b8600b001b682336f66sm2873895plp.55.2023.06.25.16.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 16:18:50 -0700 (PDT)
In-Reply-To: <20230615-creamer-emu-ade0fa0bdb68@spud>
References: <20230615-creamer-emu-ade0fa0bdb68@spud>
Subject: Re: [PATCH v2 0/2] dt-bindings: riscv: cpus: switch to
 unevaluatedProperties: false
Message-Id: <168773507362.1389.2217273473354305328.b4-ty@rivosinc.com>
Date:   Sun, 25 Jun 2023 16:17:53 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-901c5
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Conor Dooley <conor@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu, 15 Jun 2023 23:50:13 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Do the various bits needed to drop the additionalProperties: true that
> we currently have in riscv/cpu.yaml, to permit actually enforcing what
> people put in cpus nodes.
> 
> Changes in v2:
> - drop patches 2 -> 5, they're now standard in dt-schema
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: riscv: cpus: add a ref the common cpu schema
      https://git.kernel.org/palmer/c/3c1b4758a954
[2/2] dt-bindings: riscv: cpus: switch to unevaluatedProperties: false
      https://git.kernel.org/palmer/c/1ffe6ddc5c64

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>

