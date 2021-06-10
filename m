Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 864093A2F3C
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 17:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231545AbhFJP0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 11:26:40 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:56009 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230329AbhFJP0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 11:26:40 -0400
Received: from mail-wr1-f71.google.com ([209.85.221.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lrMXy-0007ef-UW
        for devicetree@vger.kernel.org; Thu, 10 Jun 2021 15:24:42 +0000
Received: by mail-wr1-f71.google.com with SMTP id v15-20020a5d4a4f0000b0290118dc518878so1042868wrs.6
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 08:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ukUXcmzHV6X8b0Xkgch2TG03nCCj+8pCGUVjUc6wzSA=;
        b=XMt2ZqllaE7kRzay5BJ2+3OMoV/fNMRCgYkWgVvmQZVWQUGCUBZgTHC0h+NnAhQ0Oh
         iayPJ65FS/W8iUPsRxt4ZSHlet6IPJwpDDhatk+CMnnmHJxOq5/bUjNqrEKvhvwakbl2
         D6na+pESC3e66MNlEayivYh6HCXXKgd+AIs9Z0XEMXj0y3Nk1ByHMzGlu8CgYhRpDFgF
         BKPiqy2FwewWGPqLoqhR7EZpcXBN4EKcc2ukxx51V88j293CaleBVOy8l1X/FQ5MBMTq
         YTQcaRqGlfXQIiR+J84q81EdVwymjAEiA+JXBSQ4eNftMrGlNFC2tn52+PC20+0sfJax
         zsKw==
X-Gm-Message-State: AOAM532ZAsrbh0TJ2gR6t4nwtm3gxY7fSz1CLlPD2mKZu918ZsG76jU5
        n1g+Fy0ZVpZGPullyhqX0GTlOAmrq2Ee2yUA7LMk2B7gMukChwnePk6XaHu/qbHPNDBS5gudruJ
        tYU6T5SY00BL7ox3HsCHd2wZVngh383XIoiVs1+w=
X-Received: by 2002:adf:ee82:: with SMTP id b2mr2209829wro.360.1623338681363;
        Thu, 10 Jun 2021 08:24:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOTv9fulnnwFGbr5bRzeYNUhZzzKxbm+dl148j35vdYWfC9AdIoXBPeqdl9MytPfXH6/lBxQ==
X-Received: by 2002:adf:ee82:: with SMTP id b2mr2209818wro.360.1623338681234;
        Thu, 10 Jun 2021 08:24:41 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id d15sm3717637wri.58.2021.06.10.08.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 08:24:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        linux-mtd@lists.infradead.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Richard Weinberger <richard@nod.at>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-kernel@vger.kernel.org,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        helmut.grohne@intenta.de, Michal Simek <monstr@monstr.eu>,
        Srinivas Goud <sgoud@xilinx.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v23 00/18] ARM Primecell PL35x support
Date:   Thu, 10 Jun 2021 17:24:31 +0200
Message-Id: <162333862777.77538.13169948771709140035.b4-ty@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210610082040.2075611-1-miquel.raynal@bootlin.com>
References: <20210610082040.2075611-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Jun 2021 10:20:22 +0200, Miquel Raynal wrote:
> I am taking over Naga's series, here are the major changes:
> * Cleaning of the SMC bus binding file (and yaml conversion)
> * Superficial cleaning and great simplification of the SMC bus driver
> * Addition of a yaml file describing the NAND controller
> * Full rework of the NAND controller driver. JFFS2 and UBIFS not tested
>   yet, only bare test tools have been used to proove basic correctness
>   of the helpers.
> * Addition of a couple of MAINTAINERS entries.
> 
> [...]

Applied, thanks!

[01/18] dt-binding: memory: pl353-smc: Rephrase the binding
        commit: a70eb9165e2a0f2867f0eb78f12665893d135ee1
[02/18] dt-binding: memory: pl353-smc: Document the range property
        commit: 386783ea6d9f21374cb11e0e8b8b4bd9770ef485
[03/18] dt-binding: memory: pl353-smc: Drop the partitioning section
        commit: f1d19f7400132b45cab4ee60e974150699fe28b5
[04/18] dt-binding: memory: pl353-smc: Describe the child reg property
        commit: 6c74a55e1d791be9758d9f23b1c5375854949188
[05/18] dt-binding: memory: pl353-smc: Fix the example syntax and style
        commit: 540148ce3455f0dc4fac9414ac12337ae0ab7cf2
[06/18] dt-binding: memory: pl353-smc: Drop unsupported nodes from the example
        commit: 29c6d09f39591eb3ea5e8e64ed42b28b9ae31f99
[07/18] dt-binding: memory: pl353-smc: Fix the NAND controller node in the example
        commit: 9af22e1169dd6b0f498fa8f9bff7c44f721b1b20

8-9: still acks needed

[10/18] memory: pl353-smc: Fix style
        commit: 62584c870cba9c84f08dadc083c6359dc41df678
[11/18] memory: pl353-smc: Rename goto labels
        commit: edd84c4256e2a2c756a241728b8c31e14bbed2f7
[12/18] memory: pl353-smc: Let lower level controller drivers handle inits
        commit: 493db2b05d9217da5889840ee31121856627e3c6
[13/18] memory: pl353-smc: Avoid useless acronyms in descriptions
        commit: 9d7bb4493acfb7a131230e7785e7416de50b28b6
[14/18] memory: pl353-smc: Declare variables following a reverse christmas tree order
        commit: df6c2646d0e459ea6aa1d2caff683cc75df63b31
[15/18] MAINTAINERS: Add PL353 SMC entry
        commit: 813d52799ad28579da3ed5a88c1bacd8069dd172

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
