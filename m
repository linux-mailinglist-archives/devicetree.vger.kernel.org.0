Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 080B972F567
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:05:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231878AbjFNHFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243290AbjFNHEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:04:30 -0400
Received: from mail.3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10FE21BF6
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:04:28 -0700 (PDT)
Received: from 3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.3ffe.de (Postfix) with ESMTPSA id A274C278;
        Wed, 14 Jun 2023 09:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
        t=1686726264;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KkSAV2ncVhxCJv4CMTi3Wwyuw9i5L6FUuP/MaNcbLZA=;
        b=PaIpzLgk8L6gg1Kkl+YIGpAQqfnF1uzvch8eK1b3guVeVBORfn9ZO5NexbK22KDbr+R6jW
        kwDmeeAmlb2pMy8EOgHZIByQ3TtGs59hGroCFsWQSkmSdbFWFH8iXeJAaiBu8wq9kDHS90
        2p6sp1F9dwLfR7Vc0ym84DM7ErBBRwmIopzuJmFYzPLyD1vOuMyYNMK38EW9P0zKYAOxRK
        M1bxBtLbtt2F1zBETFftUu1nk/ehtCeoZpf/yGjCXQMWyh0NMOGRh/8O3Yr/U2oLVs+gUm
        N5QYHhdIoMEJUkDS06RHNOxXpWWVy8/DMHA4gI6P2wOAxAA42/D/ZiwHBibePQ==
MIME-Version: 1.0
Date:   Wed, 14 Jun 2023 09:04:24 +0200
From:   Michael Walle <michael@walle.cc>
To:     Tudor Ambarus <tudor.ambarus@linaro.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 2/2] mtd: spi-nor: Add support for sst26vf032b flash
In-Reply-To: <9cc52c0a-c765-2cb1-93f2-6f406e676604@linaro.org>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
 <20230609144324.850617-3-miquel.raynal@bootlin.com>
 <b3267c392523277bf15fe8d24679add3@walle.cc>
 <9cc52c0a-c765-2cb1-93f2-6f406e676604@linaro.org>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <6bc68bc829f171dee260d1646ba58c50@walle.cc>
X-Sender: michael@walle.cc
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 2023-06-14 08:56, schrieb Tudor Ambarus:
> Hi, Michael,
> 
> On 6/13/23 14:34, Michael Walle wrote:
>>> +    { "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
>> 
>> Please try with INFO(0xbf2642, 0, 0, 0). You can also have a look
> 
> Oh, yes, I forgot about this. Will you send a new version of
> https://patchwork.ozlabs.org/project/linux-mtd/patch/20220510140232.3519184-2-michael@walle.cc/
> or you'd like someone else to take over?

Now that I'm back from vacation, I'll get back to it soon :)

-michael
