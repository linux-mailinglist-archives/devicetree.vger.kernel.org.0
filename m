Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10CDD754FC0
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 18:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjGPQbr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 12:31:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjGPQbq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 12:31:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAC1D1AD
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 09:31:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4EA7A60C81
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 16:31:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA1A6C433C7;
        Sun, 16 Jul 2023 16:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689525104;
        bh=kC4csqxmW1jvloLCeA6zpyDElD3cBi7w8mE6pfrd01Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UfQ3RXkoRmoxVV5I/e8e7G4PQC9oRJ2T3UPcntehsT+ueRjn3ixZpRVa1uQBhDANL
         ryi7oNwNhaNjPqU3z1ENjFFpge+DfNMQ3ny7nOBZWQHm9DtDjE4cxN0RK4H3vGZ64Q
         +gGPJFHL0bFM3P3/xKUQxR1DKzgbZEtJ0gtvjnX6lLYdIpQyVIV6pO8hOhPf6P4eVQ
         WKSZzoKil9Fmm03yyezOj6v7cCENc3FiYdp3C3D5VYIkNLydzCOR3RTvGPXBXwOErw
         hETi/usbsOqPnLrUL6K2cBKU9+e2cTQC2sO0mJXExgF80hZJH4AGjwAg18zprfXNIF
         ZTiwwkvLSDmmw==
Message-ID: <08ae1b98-5bf8-d165-47b5-f9e7cdca8898@kernel.org>
Date:   Sun, 16 Jul 2023 18:31:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: add device tree bindings for mxl-8611x PHY
Content-Language: en-US
To:     Nate Drude <nate.d@variscite.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Eran Matityahu <eran.m@variscite.com>
References: <322ede0d-7cc5-6878-4aed-af4c120b4de9@variscite.com>
 <6e9346b2-e241-a5c5-c74d-36ff98d20258@variscite.com>
 <83d4d054-fa17-2d3e-e6bd-bf7416702dbf@kernel.org>
 <94e84ae4-f8e3-2bd1-b876-9301a1d6cc78@variscite.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <94e84ae4-f8e3-2bd1-b876-9301a1d6cc78@variscite.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 14:53, Nate Drude wrote:
> 
> Once again, thanks for your review. Hopefully when the driver patches 
> are sent for Linux this will have been helpful.


Driver patches are not really necessary here and I would say are
independent. So as I said - submit bindings to the Linux kernel, so they
will get proper review. Otherwise it does not matter what I say here. It
does not guarantee absolutely any stable bindings because whatever
someone submits to Linux kernel will later overrule it. Therefore I do
not see any benefit of your approach - you will not be able to create
Linux kernel ABI (bindings) by sending binding patch to U-Boot. It does
not work like that.

Best regards,
Krzysztof

