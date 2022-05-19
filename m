Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B840552E06E
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 01:17:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343511AbiESXR3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 19:17:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237386AbiESXR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 19:17:28 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D244E8BA0;
        Thu, 19 May 2022 16:17:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6844CB828CC;
        Thu, 19 May 2022 23:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BEB3C385AA;
        Thu, 19 May 2022 23:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1653002245;
        bh=u3LSNocOTwuPd9KtxemKZdkfKzpqcbGjvJH7pyNSGXE=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=qq15Itd3+U+Id1OdlSaz5bB1NKH5f0V1En2jcJEP5yEvCkwaOh+qYXFmIKcMagt+7
         Yott4qAL+1/WC9ISKm8TAgp9sfWRx2by99tx0B+G+97trzTLImodCUT2UN303IfaLZ
         LkM/gUWCP9Vikl7nU3YjRIZtBnFuQ5qf8rvZR8qTIWzVfJ9yY/Xj53LhHm4WwvtTjD
         wM9Ty2p0hxN3qfqnpgHEsf8YsTLJXx9okehAMPTu4NZ+FlcPvZE8EVybwCKrG9Ff8y
         qmD1Hr+AovKko1sE8yLz9tDHUwr8LcmIvxVkva6+7eO5+ZS2Bn1GVNU40zrfxZkUBL
         L4NnB3OzkNdRw==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220428152719.2263164-1-robh@kernel.org>
References: <20220428152719.2263164-1-robh@kernel.org>
Subject: Re: [dtschema PATCH] schemas: clock: Add example for 'clock-indices'
From:   Stephen Boyd <sboyd@kernel.org>
Cc:     Stephen Boyd <sboyd@codeaurora.org>,
        Ben Dooks <ben.dooks@codethink.co.uk>
To:     Rob Herring <robh@kernel.org>, devicetree-spec@vger.kernel.org,
        devicetree@vger.kernel.org
Date:   Thu, 19 May 2022 16:17:23 -0700
User-Agent: alot/0.10
Message-Id: <20220519231725.2BEB3C385AA@smtp.kernel.org>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2022-04-28 08:27:19)
> Add description for assigned-clocks properties from clock-binding.txt in
> the Linux kernel.
>=20
> This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
> are the original authors.
>=20
> Cc: Ben Dooks <ben.dooks@codethink.co.uk>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>
