Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3E5D62C468
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 17:30:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239127AbiKPQaG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 11:30:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233475AbiKPQ3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 11:29:50 -0500
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E79C35EF96
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:24:06 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id n205so19071202oib.1
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 08:24:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nf9WQg2FkfIb1IV76Hu2KxdCX8Rw6eiA2sNg43ap2ik=;
        b=moI+wnrvcoNSnli8hpS8X83tzzQCEEn1+t24jmHux3ozuo2xO02oxfwh/RjD0N3CKT
         IMXe9ZU3EzF5p/8olc5NPR5OqF4Y75vNabdEeeZgBg7+E1gO/15UWhT/L2SwvSddNpN8
         9jar1MxGSfJu8LzaMqASrcrFwH/5BMLZLy5uH6Uv8I+B9NARDVZlfWZMOCe966iTnl6l
         n6xMKqJeVOQUWVsFQ9DpM3yTDuCYLujeUevS0PuJwdG4aLou5YnMaOKY0efC73b5eSLx
         b5NM+/9GreYMDCuX6e0uLiy8q+vPhRcgPL07tCcjS188vJ6h01xB4qS/VcW/uiKktH5w
         jQNg==
X-Gm-Message-State: ANoB5pk3+lHvDY5/q1vsZGZb+519lJSO8hyL7KVhP43rb0BFE5INQCAT
        XxBduAdgUAzJPCwSUmZ1og==
X-Google-Smtp-Source: AA0mqf63F8fJfNFaCeq//Z+5DQukbsqhZ1K2yR/pTOP8NP0eL3/E7c3SIt1g0qkbgVYaDx0ITpquyA==
X-Received: by 2002:aca:b4c5:0:b0:35a:cf84:d834 with SMTP id d188-20020acab4c5000000b0035acf84d834mr2071107oif.41.1668615845549;
        Wed, 16 Nov 2022 08:24:05 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s17-20020a056830439100b006619533d1ddsm6717938otv.76.2022.11.16.08.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 08:24:05 -0800 (PST)
Received: (nullmailer pid 193065 invoked by uid 1000);
        Wed, 16 Nov 2022 16:24:07 -0000
Date:   Wed, 16 Nov 2022 10:24:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        devicetree@vger.kernel.org, linux-mtd@lists.infradead.org
Subject: Re: [PATCH mtd/next] dt-bindings: mtd: partitions: allow SafeLoader
 dynamic subpartitions
Message-ID: <166861584651.193009.6897512029403663195.robh@kernel.org>
References: <20221108093102.8360-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221108093102.8360-1-zajec5@gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 08 Nov 2022 10:31:02 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> TP-Link SafeLoader partitioning means flash contains multiple partitions
> defined in the on-flash table. Some of those partitions may have a
> special meaning and may require describing additionally. Allow that.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../mtd/partitions/tplink,safeloader-partitions.yaml      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
