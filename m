Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37F606B5FB4
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 19:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbjCKSW3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 13:22:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbjCKSW0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 13:22:26 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3103B39287
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:21:42 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id bi9so10766729lfb.2
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678558877;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+fW/DwA4q8yKtERRs9xU/rZtvMzehwEtMWVT+wwuBm4=;
        b=I2YYwn0wSP8ZTTSS5sjcZpV771MVavwGL6lN42wMQPvfPzJaD6EiT8aidyHP7A2HYo
         7WzhFwvsK9eo9XfKRzgOiMXIFu1kQWEVS3PLv/GD2oZVXtoh55xzjEvPw80x6sIxoTz6
         DxFnfqIHhDNKr6JvP4zlHJN5NGOjIygFHyQmBY/bjXIcwMzvZYCcnaWfYfF08qttBCC8
         iyZ52FpPMR8d+B5YxT3a6Y3JizgiU1PusuNLUUVTcFNLjEevFry6+6f0pKohxydLdE/I
         ds6HIrooUEj9StKCnqTe+zIpDxE0a7oB+u1uRkojzFMhM1iF3W3RBij750wcG5k4ytmc
         MMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678558877;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+fW/DwA4q8yKtERRs9xU/rZtvMzehwEtMWVT+wwuBm4=;
        b=Zr2seigFRpVidfU2ayqNq0V7QVwhihNIwyRl5HdxF7tw1bBGLuIcrwfysYkvpyiCmU
         53wUWJV6rLQ8498cRLRWMwTBPO/Hh8l8rn4eMHDN6Sb+VHDOQtXmjLk3v/+UAgpL7PXZ
         W2VV/nCCSgWFlB0joUV9mQBPSVvzDki/Z8N1Ay1Te1u6zkR+qM2xySjz75cF8bO8PsD/
         dQvqjQkOwvr7GFSPzSgs831zwK8jfFQhKx6O26HmRGC8pbVYdew3lcoUhs/b7PV4/IGF
         YekVJX9yliHHWcjCGCMhgh3TYednpLEJCo+eABr9KOphV3OZCZht5JBaGcNf2zxA8ec2
         zgxA==
X-Gm-Message-State: AO0yUKWhCW2hXKA06g2c18XraEf8rCrMWx2NS7GViRUOfgpSRzGFUbTO
        +0L1IP1jGXdSuj2dHMwsoZjx6cJEUQUaVww7RJs=
X-Google-Smtp-Source: AK7set9nA9iJo6waP3/5FTsiQaDPz9UCGyZze0xou+BV6wVxidje6FD9I/742cPRtJR2IraMTJOjMw==
X-Received: by 2002:ac2:5973:0:b0:4b6:e494:a98d with SMTP id h19-20020ac25973000000b004b6e494a98dmr7846187lfp.44.1678558877708;
        Sat, 11 Mar 2023 10:21:17 -0800 (PST)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id y7-20020ac24467000000b004cb10c151fasm391347lfl.88.2023.03.11.10.21.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 10:21:17 -0800 (PST)
Message-Id: <1678558770.495747-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 21:15:38 +0300
Subject: [PATCH v2 0/2] mmc: dw_mmc: fix DW MMC cores with 32-bit bus on 64-bit Linux systems
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DesignWare MMC cores have a configurable data bus width of either 16, 32,
or 64 bytes. It is possible, and some vendors actually do it, to ship a
DW MMC core configured for 32-bit data bus within a 64-bit SoC. In this
case the kernel will attempt 64-bit (readq) accesses to certain 64-bit MMIO
registers, while the core will expect pairs of 32-bit accesses.

It seems that currently the only register for which the kernel performs
64-bit accesses is the FIFO. The symptom is that the DW MMC core never
receives a read on the second half of the register, does not register the
datum as being read, and thus not advancing its internal FIFO pointer,
breaking further reads. It also seems that this FIFO is only used for small
(less than 16 bytes) transfers, which probably means that only some SDIO
cards are affected.

Sergey Lisov (2):
  dt-bindings: synopsys-dw-mshc-common: add "fifo-access-32bit" property
  mmc: dw_mmc: add an option to force 32-bit access to 64-bit FIFO

 .../bindings/mmc/synopsys-dw-mshc-common.yaml |   7 +
 drivers/mmc/host/dw_mmc.c                     | 125 +++++++++++++++++-
 drivers/mmc/host/dw_mmc.h                     |   2 +
 3 files changed, 132 insertions(+), 2 deletions(-)

-- 
2.38.3


