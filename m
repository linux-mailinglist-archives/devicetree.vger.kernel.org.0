Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 595B273C1C1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 23:05:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbjFWVFU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 17:05:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232146AbjFWVFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 17:05:18 -0400
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5AE42711
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 14:05:11 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3422aacdcceso4067995ab.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 14:05:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687554311; x=1690146311;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3SiArTIqkTQiivMX6twZ1Y95R//RLGOPceqIb86Vytg=;
        b=TGe74fbymFeiteJIk99quLqiKXfBBIIIVXmcmBerrDsI/zlaiGv8gOIgzACPdrqrw8
         Kh3DhQYtWtEPIdzjiZEPmMf3Oa0tLKpN/Mt6R4PQcRTdqj3B3DkRc9cFvoEodPCiFT+G
         nbyEaHc+az2bpihNv8wO90Sr66xltfB9FdNCz5mAYyNnDP0Vz5PY9LmupeqbQsr2Vy8D
         f9I6X0TSO4sOvrq0D5Tgu62xQr7YERBLp4kKxiQdyDvx9BVCQstbGSyMEEfF4f1+1O6B
         XwZhFSrzhlMzR/RWjGgkLePPrDQbV5q9+fNEx7D0N1HMyPiXg2Ryj8eIher5vwweVyAM
         T/mw==
X-Gm-Message-State: AC+VfDz8uaNu6c/u8TOqdmXA8DW1Gzo/9EOJ2/4jJkWs9hjbDP1nKKcw
        8lPnf7BIzCd0NuSAnDCUmPJq6L8lZA==
X-Google-Smtp-Source: ACHHUZ6R2oZ6mgR8qPufCNhbjCc9hi4jOmCJ3fACUXeDEHKg6jtUn8RZjMENy+GV+m5hP+nC64EZ6A==
X-Received: by 2002:a6b:5913:0:b0:783:3943:581d with SMTP id n19-20020a6b5913000000b007833943581dmr449984iob.13.1687554310916;
        Fri, 23 Jun 2023 14:05:10 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id x22-20020a029716000000b004090c67f155sm4071jai.91.2023.06.23.14.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 14:05:10 -0700 (PDT)
Received: (nullmailer pid 1121568 invoked by uid 1000);
        Fri, 23 Jun 2023 21:05:08 -0000
Date:   Fri, 23 Jun 2023 15:05:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] dt-bindings: mtd: Fix nand-controller.yaml license
Message-ID: <20230623210508.GA1096125-robh@kernel.org>
References: <20230622212415.3583886-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622212415.3583886-1-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 22, 2023 at 11:24:15PM +0200, Miquel Raynal wrote:
> Binding files should be dual licensed, this file was writtent with the
> idea in mind of following the rules, but the SPDX tag did not reflect
> that correctly. Fix the tag so we are sure this file is licensed
> correctly.

Yes, we do want dual license, but things converted from txt bindings 
need those authors' permission as the txt bindings are all implicitly 
GPLv2. That didn't happen here, so we kept the default implicit license. 
Looks like this case is all Bootlin authors for significant parts of the 
original txt binding, so you should be good on that part (assuming your 
employer agrees). Maxime did the schema, so need his permission too.

Note I have blanket permission on dual licensing from several companies 
for DT files. It would be nice to get the same from Bootlin.

Rob
