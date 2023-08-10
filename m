Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE083778384
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 00:15:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjHJWPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 18:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjHJWPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 18:15:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8652E2717
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 15:15:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 22CA463ACA
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 22:15:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2947BC433C8;
        Thu, 10 Aug 2023 22:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691705746;
        bh=sNiuq58w/afqnKYuniF/wZ1u3RIkBMwmBMx1abxGOxM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uQRGVNfXSeMT7iyeTHaf7FFhYnxAzWDRyHyyGaGV90C0YHhgBkJ5iLHVOszBJcGVV
         sok6s/Da6x1RlF5ydSKSY8cToW8PQhDNbL2i/vVt7MT2ZCxojoeDRnZjIv+UX7T3jd
         CuLTnPpFeOqWepFcPBdCRabnfDgO0hxJjfQ2odn2soinmsPyGDWo2PDrlPOggteRqy
         9gLMN3Wzxg6xERao4VKlpBJIjryYzmV1fQ6J5vj5Uv3zqxlldJ41UPu9iD5+cozgwY
         Z+JSwcFWAA4L+EzJJaPZVl7ukoc1eU9SUK1ZHsjVMF6DH1gW+OUQopRZwNz1u3b2Gb
         XFpP1uUqxed7A==
Received: (nullmailer pid 1433850 invoked by uid 1000);
        Thu, 10 Aug 2023 22:15:45 -0000
Date:   Thu, 10 Aug 2023 16:15:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ruan Jinjie <ruanjinjie@huawei.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH -next] of: unittest: Remove redundant of_match_ptr()
Message-ID: <169170574224.1433744.15892664705938110621.robh@kernel.org>
References: <20230808094043.2732158-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230808094043.2732158-1-ruanjinjie@huawei.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 08 Aug 2023 17:40:43 +0800, Ruan Jinjie wrote:
> The driver depends on CONFIG_OF, it is not necessary to use
> of_match_ptr() here.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---
>  drivers/of/unittest.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!

