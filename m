Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CADD543FFD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 01:40:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233809AbiFHXkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 19:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233869AbiFHXj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 19:39:59 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A59168353
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 16:39:35 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id c83so4231320qke.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 16:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=kc8hDtKnDcjkjtnpKv99miwrNZ1mscnVCOSjHJGhRR0=;
        b=TGdTe8ftgW2E2QSXLDATWBAXq3sauk3KYSj6BMlJLGO6AIyIfhb5n1gjvAikC5sfj1
         pnF2q+aa3J49SlWeHoe8utIJbft2tfdvJWfSA/DWdGmQ81xwpFbbShsO99rjEfX37VOJ
         O7nf0OOCHhgW59XOZB2AYutoUpxS75uohsXNuBYCQ74OZWV0IkfqStkyQpIXIgp5Yu/X
         /b47CaBvS9tF2RvKGzD2OXWMoCKHHF/JqW3mtCMGdzWVyYoNxEJonBGyxomdCDOnzKP5
         Wm0OipG0BCiWNN5Q3OyAx5VK7fAStBf4WuoirjR9Gnpdd0r+CJ+NosZexvzLXB8JwqtT
         YXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kc8hDtKnDcjkjtnpKv99miwrNZ1mscnVCOSjHJGhRR0=;
        b=WmwtzblL/6kxXFeJ0/kBrBaFXcRDbpzB/f+h/bexF+HExiqcz7X06OhHjo3cnp0ATM
         8mnc/CV12wXOtpzwmEEQuC2nchn53UHbc7nLslkO83OGTG8Ft3DKa+ECNDZS0UIMKLdI
         UkPcg9a2nbnyvCgLEc4ovBEHcVSQpoBP0NMDknO2mYuo/kMDKlQIcDGbbtKi+LUOr2Pc
         FzV6+OAmPhLi8Te9seuyCoZEfvf9tudl+/EXVOh/FjvvqNraM92RfEez1Dm+6ijjI1Du
         Cd+2PNWJ2zAMJfRdqaLBw27HtObzxFhw2LCL4qshVoJGEBoKrJW185l5ku+h7Ib2Eof7
         DiGQ==
X-Gm-Message-State: AOAM533AzWpDagLr6DxHrtKPjl5bszxwBiD9AuWpEkcj88bmHec1bq7i
        IcahI/ggGYkUgqK84S5clKcFmnqR0QiY9qUneEKszA==
X-Google-Smtp-Source: ABdhPJwwoi0drQjkYJ1j2Qdt6XiU3x2RVVqapgseeDGRMrMmyQCzzXLwavj3DbqQ68d+IFyAWbxsz4ReHsk+ofIZ0q4=
X-Received: by 2002:a05:620a:1911:b0:6a6:e8e9:70cd with SMTP id
 bj17-20020a05620a191100b006a6e8e970cdmr6816152qkb.627.1654731574196; Wed, 08
 Jun 2022 16:39:34 -0700 (PDT)
MIME-Version: 1.0
From:   Atul Khare <atulkhare@rivosinc.com>
Date:   Wed, 8 Jun 2022 16:39:23 -0700
Message-ID: <CABMhjYp3xUyQ9q6nXHvEA2zuzhYi0ETn6UETeH1apWf2n2eP7A@mail.gmail.com>
Subject: [PATCH v2 0/2] dt-bindings: sifive: fix dt-schema errors
To:     Palmer Dabbelt <palmer@rivosinc.com>,
        Atul Khare <atulkhare@rivosinc.com>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch series fixes dt-schema validation errors that can be reproduced
using the following: make ARCH=riscv defconfig; make ARCH=riscv
dt_binding_check dtbs_check

This is a rebased version of https://tinyurl.com/yvdvmsjd, and excludes
two patches that are now redundant.

Atul Khare (2):
  dt-bindings: sifive: add cache-set value of 2048
  dt-bindings: sifive: add gpio-line-names

 Documentation/devicetree/bindings/gpio/sifive,gpio.yaml      | 3 +++
 Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

--
2.34.1
