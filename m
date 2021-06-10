Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6EBD3A357D
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 23:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbhFJVLk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 17:11:40 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:35856 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230281AbhFJVLj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 17:11:39 -0400
Received: from mail-wr1-f70.google.com ([209.85.221.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lrRvp-00061o-Nt
        for devicetree@vger.kernel.org; Thu, 10 Jun 2021 21:09:41 +0000
Received: by mail-wr1-f70.google.com with SMTP id g14-20020a5d698e0000b0290117735bd4d3so1525053wru.13
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 14:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R7dHhHk/1VSEHnHckunpoSrx9SQZwojTmGD0AVXpAUY=;
        b=eDalQ2o+kHoQLFSJqkKobuacU6qE6KiMzDeDa0hc4g6bh1VYNvGqCNdU5QYMBk7HGy
         BGBg8ChD3QeezF8FyzLiRoDI3b8MgFp5UsL6Jwz5vkM18rrCniHO71Jspy6QuRBq91hb
         GBYDcZ0LLLLawVXhC3SZTizZ3ZSmh56VglbYIWPZfVViThzh4v9lbTsAl+4/WqMcv71L
         8XPR3k+Z4EUWX2A14rqdKOkWN2suFjTxYv5ccJYianFGHlIqx2hyYdCbyiFDmiKOzS0X
         G2oo4L/Ai9fJtqRM72rk7yjAkdbQzy7cC87DLpYMPM6HitZNPOlX/HohQnjkYWIzulZj
         ab+w==
X-Gm-Message-State: AOAM532hB7bIIO14jTHJosQBSmLzYBBHnglKokLotkdMbAty1/tup7NE
        jy7J0ogmuHfTJZ7woEiG/FbbffyhxWfNHsEI685g1T9ZKu2v/YQCCy5B8t9WWUnPZ7HhJfjK9qp
        P7UmAs50YUnjvxIs+yQpYoNrkUk9m8N1JVYtuMNA=
X-Received: by 2002:a7b:c24a:: with SMTP id b10mr16882065wmj.25.1623359381493;
        Thu, 10 Jun 2021 14:09:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwuBYl5ka+FTgmYctjFQ69Ays85JexobkPCaXjfZdlopIM7Ho2aBDPnhA9G0ICv+aj0gxbTQ==
X-Received: by 2002:a7b:c24a:: with SMTP id b10mr16882058wmj.25.1623359381310;
        Thu, 10 Jun 2021 14:09:41 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id q5sm4914800wrm.15.2021.06.10.14.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 14:09:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Richard Weinberger <richard@nod.at>,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Michal Simek <monstr@monstr.eu>,
        Srinivas Goud <sgoud@xilinx.com>,
        linux-arm-kernel@lists.infradead.org,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        helmut.grohne@intenta.de,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v23 00/18] ARM Primecell PL35x support
Date:   Thu, 10 Jun 2021 23:09:38 +0200
Message-Id: <162335936799.3768.17631711223949577836.b4-ty@canonical.com>
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

[09/18] dt-binding: memory: pl353-smc: Convert to yaml
        commit: d3d0e1e857110a2f8147b1aa3a045b1fccc1e7c3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
