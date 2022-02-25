Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A11A04C4AB1
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 17:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238232AbiBYQ2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 11:28:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235397AbiBYQ2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 11:28:12 -0500
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A7A1DEA7
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 08:27:38 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id p15so7988767oip.3
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 08:27:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=b6mqfRniL+r9ZpfUJSShReJE7UNxaIRMnvl0KB1bI/8=;
        b=HXueraECKjcW+6LmzrbiNEwp0mCSONauddY4b/0vemlZ13GklvQlB+EWvWfWqNGix/
         NAw2PHkv0wEV+myMUxlD2EStVYzPYZKqkxDdeA/9NIrwE0d2ldwMdXAdsw0tPU1eBUP0
         m49zHGpHPCzXid3wm5H3l1XghPlaq9M/7K9svl4PQEIjx7ogTVO0wMfb6qKOJ3AUh0ib
         Lp1AcvEVLZMpP5PjkSSWSNUCXvz1paZ0yL6Rfsnl/AIsQ6XKPwDvRdhyI3RpHLWtNrSr
         K6d7WBG7ksWDbYlZyDLSyauM2wp9GFxtjeCYbkatK5m+dLRGAqfmEM4lLS6FD5xj47ej
         LDzQ==
X-Gm-Message-State: AOAM532T3ZBVT6LR2gd9EP+abPrOcbvyo0C3eORQfoxqmGBKf6vVkUNa
        7f6l4tzcrj2FGXr4MNfeYg==
X-Google-Smtp-Source: ABdhPJxYB88wiXpqrYy/re0vBGeWP38Ml9w47xUbbgBDbaP3bcnxEAiC4IXzF8XzZuh29hI+Zbp2wg==
X-Received: by 2002:a05:6808:202a:b0:2d4:df36:68a4 with SMTP id q42-20020a056808202a00b002d4df3668a4mr2012574oiw.16.1645806457796;
        Fri, 25 Feb 2022 08:27:37 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x12-20020a056830244c00b005ad233e0ba3sm1304298otr.48.2022.02.25.08.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 08:27:37 -0800 (PST)
Received: (nullmailer pid 1040968 invoked by uid 1000);
        Fri, 25 Feb 2022 16:27:35 -0000
Date:   Fri, 25 Feb 2022 10:27:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Richard Weinberger <richard@nod.at>,
        devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        linux-mtd@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mtd: partitions: convert BCM47xx to the
 json-schema
Message-ID: <YhkDd2CF3VhTkn9W@robh.at.kernel.org>
References: <20220216104135.31307-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216104135.31307-1-zajec5@gmail.com>
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

On Wed, 16 Feb 2022 11:41:35 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../brcm,bcm947xx-cfe-partitions.txt          | 42 ----------------
>  .../brcm,bcm947xx-cfe-partitions.yaml         | 48 +++++++++++++++++++
>  2 files changed, 48 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
