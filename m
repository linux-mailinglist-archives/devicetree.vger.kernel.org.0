Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB1A43B4BE
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 16:48:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236970AbhJZOuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 10:50:44 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53448
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236978AbhJZOuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 10:50:40 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EB5143F175
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 14:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635259695;
        bh=fsVkyjuPYlvrvC5KH9851YDRNpooqzcn8kiRcv7IL+0=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=UNm0fXBAxGXOpyLPiRk/MOPFs5tyagZ1DBIGrrPgbCzutPW5qWIVHT0n5oPGGsqxG
         vkyK0HUFKz/xMxiijBXJuvgiHzb+C9ifry+2K1fvKnoJhEYZ74eyrzErjK3nImP8v8
         EITUQAY5lEtQy9Mzle7eFx5COP74vSKwV/IZ9qm5wxbE4gFMF6SwVl4GySlD+6Q5l/
         LoOHb0cYWFsYJBVN9QGpNNV0Ta5s85k+P31x10fOnnLb/rTdMqnbGCtQ1W1LAYRgbq
         o5Skf14TWwskNm6hVyHQagdKJFG49nB6kyiSU0wI6t6SYFFKTLxdO2v3k/gY0BeqHh
         uc9sDOPWUyaAw==
Received: by mail-lf1-f72.google.com with SMTP id k15-20020a05651239cf00b003fe1ba9c94cso6305738lfu.6
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 07:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fsVkyjuPYlvrvC5KH9851YDRNpooqzcn8kiRcv7IL+0=;
        b=woKstJKtZI3QOaRVqRxsk/aeZG2wdZtJ5/43z5bNdjqGYVyNiQmy850Rc/P8/wHRCW
         3BiLSXKNLz7tB5b7sTa0xXYvjAN57qpjQX81hyvleHZdIr3REgJYIMcUJL6WuZkv8ypf
         3Lkv2CmpDgpqPJhYqCHqP6Kb+NpT1y7r/NI6Hz3C/3mpjYMChAR7fHznVJJOwZ5vDazk
         vh0HS4lLN6vVhzOiC8noKb383KWTTk8WFuDqp7ZAOtVid9wxKRjeQVAyBfIqfEivJgf8
         qwekRy8xM1o0HsjsTJcmpS0lXnRd1qchvNA/unf2CtWQOY04dy9ZekTG1OHfpCTDbCap
         w6PA==
X-Gm-Message-State: AOAM532mAezXGtXjyKPOkEq9jGnxo63fHm+GfX6+gHUwz56i+Z1MogN+
        CNewSsyBVzjEAOjub5IqEehbM3eN3nRCPrfxFZ2CvITDaALHjWgnnSrjj7wwjyNScortqG8+sHP
        I7fE5ouriRr59IoCQX4yJ5h1wi2mUpDHr2FhxPz4=
X-Received: by 2002:a2e:9243:: with SMTP id v3mr27320373ljg.260.1635259695402;
        Tue, 26 Oct 2021 07:48:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2KIUw3dMiASKOb3ipaEef5iAQjyB+RBgmFcPme73HkXcK5y3WPmCpFx0YHsoHJhTU83ZWAg==
X-Received: by 2002:a2e:9243:: with SMTP id v3mr27320346ljg.260.1635259695206;
        Tue, 26 Oct 2021 07:48:15 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id r13sm483731lff.213.2021.10.26.07.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 07:48:14 -0700 (PDT)
Subject: Re: [PATCH v2 0/7] Add SPI Multi I/O Bus Controller support for
 RZ/G2L
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Mark Brown <broonie@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-spi@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20211025205631.21151-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <02123905-675a-0fda-086e-c2401c202fce@canonical.com>
Date:   Tue, 26 Oct 2021 16:48:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025205631.21151-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/10/2021 22:56, Lad Prabhakar wrote:
> Hi All,
> 
> This patch series adds a couple of fixes for rpc-if driver and
> adds support for RZ/G2L SoC, where the SPI Multi I/O Bus Controller
> is identical to the RPC-IF block found on R-Car Gen3 SoC's.
> 
> Cheers,
> Prabhakar
> 
> Changes for v2:
> * Rebased the patches on linux-next
> * Split patch 5 from v1
> * Included RB tags
> * Fixed review comments pointed by Wolfram
> 
> v1:
> https://patchwork.kernel.org/project/linux-renesas-soc/cover/
> 20210928140721.8805-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
> 

Patches look good but you sent them too late for this cycle. I'll take
the memory controller parts after the merge window.


Best regards,
Krzysztof
