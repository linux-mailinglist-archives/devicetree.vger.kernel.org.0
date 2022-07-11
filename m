Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57142570A13
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 20:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbiGKSoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 14:44:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiGKSoO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 14:44:14 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 059011F2EB
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 11:44:10 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d16so8139201wrv.10
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 11:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Faba1IAeoFPLJV2hWR4qx2pHr6WFp+URpSyXW9hD/sw=;
        b=EnKbvDK3bChx+ZOchcvV42N2sV91Y4yRRlv8gQYXMV5YZwSb4p4phAYGN2arUTkd1U
         9V/94GurexAHB62cHXmX+NUAm0MzT0A9K05Mp8BmavqOut87xxXt9lXLVLfM0JWRLhC3
         XzHjlOskracRxd3jY8q3Z9h7YfH7Xj0jmi6JTUwwqtB8KhV47qU21mFL+KaCjf1OUtBH
         fdkmCs+vDWudLzSm070UBLxH6KMnAicJv11Gubqd3bfVb541VC007JULyGU4vy24hJZv
         FsuAhASoDzEgHAI9vt4eWUl1dIGDFJuXi/1VF1JD2xhN345jAwYgiCB2SUgXmybObRuN
         hrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Faba1IAeoFPLJV2hWR4qx2pHr6WFp+URpSyXW9hD/sw=;
        b=ON9JUrxmQMdH/rLAji93jdq02Bu8XIQBK/3qvJbFHPYwWzgG2dlkhMrsQzyD67R49v
         JqUlKNR3I2JdZQY7NuRqIbDDG52Y+l/fNMWaZiRyKNkLtnFF9leWzp2/VbD8qWB7iGf8
         Dv/eGnAS2V2yUUnVxjAKeeJLk1gPdVhfbOf3VQ1dGdkzofk43NHR0ZJK4pJ/CZOgljv+
         INmU14+BS7CQGF8khaAjNplX8Dr/TbPQ9+AOZ4Z+KmvVj7FM1XXxLOo0WHAP5jOnFWIQ
         DTbF2Vl6u9DxCVv8wMWGMGequEwz0Nzb+O423KsZmRRhAOHlhzE3Ru/ekWoE+q8eSU/F
         gh9g==
X-Gm-Message-State: AJIora9WrRikAGGM/jrG1MgUuAl1n0hk2T7K1lcO6xvSflZVMj6VLuMo
        EiYDl6HBt3U/Oyxz8jz64LP4lw==
X-Google-Smtp-Source: AGRyM1sqEmRYcTGeiTRRmrfP00jXcrV10B5+0GrH64Vg9kxTeAJXcFnx94KqZ4MPYAQZ6yfHVrhfaA==
X-Received: by 2002:adf:eb0f:0:b0:21d:2f1d:8e40 with SMTP id s15-20020adfeb0f000000b0021d2f1d8e40mr17664845wrn.207.1657565048244;
        Mon, 11 Jul 2022 11:44:08 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c410900b003a02cbf862esm7330892wmi.13.2022.07.11.11.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 11:44:07 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Add the JH7100's Monitor Core
Date:   Mon, 11 Jul 2022 19:43:24 +0100
Message-Id: <20220711184325.1367393-1-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Hey Emil,

Following on from my RFC [0], here's the real patches adding the
monitor core for the JH7100 w/ the ordering changed as requested.

I had a look in the SiFive E24 docs [1] & in [2] which said "16KB
I-cache with 32 Byte cache line". Didn't have anything else to go on,
so I kept the same ratio between lines/sets/size as other SiFive
monitor cores, but since they're not 32 bit I dunno if that's correct
(IOW it is a wild guess).

The dts patch depends on adding the series adding the cpu-map [3]:

Thanks,
Conor.

0: https://lore.kernel.org/linux-riscv/20220710111330.3920699-1-mail@conchuod.ie/
1: https://sifive.cdn.prismic.io/sifive/dc408861-94ce-4d82-a704-caddec98609d_e24_core_complex_manual_21G3.pdf
2: https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Data%20Sheet%20V01.01.04-EN%20(4-21-2021).pdf
3: https://lore.kernel.org/linux-riscv/20220705190435.1790466-1-mail@conchuod.ie/

Conor Dooley (2):
  dt-bindings: riscv: document the sifive e24
  riscv: dts: starfive: add the missing monitor core

 .../devicetree/bindings/riscv/cpus.yaml       |  2 ++
 arch/riscv/boot/dts/starfive/jh7100.dtsi      | 21 +++++++++++++++++++
 2 files changed, 23 insertions(+)


base-commit: b6f1f2fa2bddd69ff46a190b8120bd440fd50563
prerequisite-patch-id: 946df827e9dad8ca6e9751fe4ba01fd5fe9d18cc
prerequisite-patch-id: 59626290ee7b1e725bd446a4b7170ee2d6ca9bc0
prerequisite-patch-id: e57a94cb7d69855a4e2d6044dcf86fbfe35cb696
prerequisite-patch-id: 0ba94fd09377953ec4e9692358de569a7932bfa3
prerequisite-patch-id: 398e9b178ce51c924bbd9115020d84b677f773bb
-- 
2.37.0

