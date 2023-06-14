Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DA7F72F636
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234114AbjFNH0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:26:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243605AbjFNHZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:25:15 -0400
X-Greylist: delayed 1244 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 14 Jun 2023 00:25:10 PDT
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED93B1BF5
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:25:10 -0700 (PDT)
Received: from 3ffe.de (0001.3ffe.de [IPv6:2a01:4f8:c0c:9d57::1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.3ffe.de (Postfix) with ESMTPSA id 30DA8278;
        Wed, 14 Jun 2023 09:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2022082101;
        t=1686727509;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jiH6wprVs/+N/MIOFx00ao2v7qFJy7tX3qyDxyA0/bk=;
        b=YBqFMdJcr8CYR9Cb0ckLFxkrwtJI8KcItmmeo92QluiinItjGqaNJ1ul3R1kSVBPRCY7+m
        pcsPHWG4B8mYT8oMzplLeLBgZG7UgQBJoeD7FMOcaYHxpA/iAChBK7KpIhzIgZ8WcMUPAT
        1/wbV6a4SJQp9hsniWlPOtbwvUq5aWJjCOo1PSFt1b+auoSDwFk+JXf70Tfi5lbuGzVKHD
        OvrQr1HjkBW1IlBeAv8i9Trmt9aJffdImeJF6KhonD+6637yX0M65Jzxv01hXBGEfezSlo
        l5ML5KMwFw1tL2FNC9mdM0jzdZQI2+kpARVQ6FOIJIw4p8vsKLx8Nbi1zol2tw==
MIME-Version: 1.0
Date:   Wed, 14 Jun 2023 09:25:09 +0200
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
In-Reply-To: <5a3b770b-45af-5d66-2596-c7d2ef8d70b1@linaro.org>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
 <20230609144324.850617-3-miquel.raynal@bootlin.com>
 <b3267c392523277bf15fe8d24679add3@walle.cc>
 <9cc52c0a-c765-2cb1-93f2-6f406e676604@linaro.org>
 <6bc68bc829f171dee260d1646ba58c50@walle.cc>
 <5a3b770b-45af-5d66-2596-c7d2ef8d70b1@linaro.org>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <504066732cbcda957ddefd746151d108@walle.cc>
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

>>>>> +    { "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
>>>> 
>>>> Please try with INFO(0xbf2642, 0, 0, 0). You can also have a look
>>> 
>>> Oh, yes, I forgot about this. Will you send a new version of
>>> https://patchwork.ozlabs.org/project/linux-mtd/patch/20220510140232.3519184-2-michael@walle.cc/
>>> or you'd like someone else to take over?
>> 
>> Now that I'm back from vacation, I'll get back to it soon :)
>> 
> 
> Welcome back! Ok, thanks, we will all benefit of it. Specifying zeroes
> is a non-sense, but it helps us when we transition to SFDP_ID macro
> (or whatever it will be called).

Sure, that was always the plan. I just want to make sure, no new flashes
are added with this unneeded information and thus it would require
retesting when moving to the new macro.

-michael
