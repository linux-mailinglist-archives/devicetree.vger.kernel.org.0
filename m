Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BDCF590762
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 22:33:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235753AbiHKUdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 16:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235691AbiHKUdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 16:33:21 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB93F9F0F6
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:16 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id p10so22524151wru.8
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 13:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=AwFBVj1AIkQyEl3QVxY28aKxC3QzGWm0tn96deLuoJc=;
        b=DDAumPpJY84i7nT0pApYxKlneVwIQgt8vwqQLvGy7c1HkGrjDhyjVbLAgYdm+/lOxX
         0Eln2KNyeTSS0j337Z33jMYW2t55/hWIJqx/P2eBD6awcIm+qd6jpN/2TbXsgn5465LS
         K/NFS6v5DRYTLaHWTQJswJ2prE9V8jQASH+7MlIbRmyFTPq6hqZ6wqwZQLox6KDWj2Nr
         eWxkMHdghkr2hqnb5M4qTYYtyNlZ6CGhIlNQBh3j6zvjBjGQ67wCWdWM5iFowTFVr213
         z65+QfnI2AIe1Oo2BJfA3MWSR6ObPpva+iHHYT6p8QIi0T/IIgC871KLuRzBiEdiP5uC
         Ay/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=AwFBVj1AIkQyEl3QVxY28aKxC3QzGWm0tn96deLuoJc=;
        b=S3ltCfw/d5P+M2DBh3lWBZ316YsS1YwtSYhsQzS8C1bQ2SyAHVdqv4Q2Y41KecldDn
         C493nZf4Rz7t9U8Ud/0vsG0RRi1a5tyI8jhJD4MXe4o9z9fKVH6i6u8SRAmaV+89jrPm
         mGO23xQf4jOreTcq8JA6I7AwkhWsuLuySPsrJDOuymMqGTXpFZLwNLeXnzSjfrJcqb8B
         sbjX96HKFwCrYrL6Px1crC93+J+tjX2AqMkrGjjmYptv7zqrzXB+OTNg9IWXIDnG6Uw8
         /0Bkt3/2G1wWEehK11PWXurNVDmXrVY5bAj/BMltkFo7GEkHGCmXqVUaruXA5I6YZLjb
         ZK/g==
X-Gm-Message-State: ACgBeo2cjf1WvU3xDedZBryIg/HubKP2chEbv31JZosi3Gr4x6Sv309I
        sWzg8SPt+WV3ogaoK1EasOUHUw==
X-Google-Smtp-Source: AA6agR68hkWCKjlUq85a1gs2nnFog6KxB4PwaFgsSg26Klq7zC8ViNF/vNhirDqTKghN1ubO4rzS3Q==
X-Received: by 2002:a5d:6d85:0:b0:220:7084:35e9 with SMTP id l5-20020a5d6d85000000b00220708435e9mr345264wrs.11.1660249995412;
        Thu, 11 Aug 2022 13:33:15 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id i12-20020adfefcc000000b0021f1ec8776fsm86643wrp.61.2022.08.11.13.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 13:33:14 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Daire McNamara <daire.mcnamara@microchip.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 0/4] Fix RISC-V/PCI dt-schema issues with dt-schema v2022.08
Date:   Thu, 11 Aug 2022 21:33:03 +0100
Message-Id: <20220811203306.179744-1-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
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

Hey all,

Got a few fixes for PCI dt-bindings that I noticed after upgrading my dt-schema
to v2022.08. I am unsure if some of these patches are the right fixes, which I
noted in the patches themselves, especially the address translation property.

Thanks,
Conor.

Conor Dooley (4):
  dt-bindings: PCI: fu740-pci: fix missing clock-names
  dt-bindings: PCI: microchip,pcie-host: fix missing clocks properties
  dt-bindings: PCI: microchip,pcie-host: fix incorrect child node name
  dt-bindings: PCI: microchip,pcie-host: fix missing address translation
    property

 .../bindings/pci/microchip,pcie-host.yaml     | 40 ++++++++++++++++++-
 .../bindings/pci/sifive,fu740-pcie.yaml       |  6 +++
 2 files changed, 44 insertions(+), 2 deletions(-)

-- 
2.37.1

