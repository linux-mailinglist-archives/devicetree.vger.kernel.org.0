Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C327751557A
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 22:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380296AbiD2UZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 16:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380396AbiD2UZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 16:25:39 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44F7B60AAC;
        Fri, 29 Apr 2022 13:22:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id EC174B8377B;
        Fri, 29 Apr 2022 20:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95511C385A7;
        Fri, 29 Apr 2022 20:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651263737;
        bh=73DcXxthbc3tJUDPBm6OksBQbW6aVm3NrO5PyrEDct4=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=Veq91XyCySNZq1euUXQiua0TNpmFeoc8/c+cbrR74bmVBUhCBjiQzI2RqeUi8F0XO
         Ief0jPNcPbi6lqs8E8OIXgpXZEZ+XqmapX3yz08INGcqmVGAkmPlR1eCC+TmZLhanl
         zyaoIoMOJoiqia6lPB+9XJsByZEn9LYm5iX4w9fvSLv8FC6tdvp65oEjO6aRxgJLF2
         YYeidzsuyVla4+GLBCq9WSohs2t8h77eVT1qDlTTDt8lzx+Qup4H/shTGWegJo3foW
         oO2GAy4RdVzfqBiITrlIqPB072sZ+QMymgmq8Ph+dbSyGbUJnvclErZKapJgFihTqE
         UhUJS3+KTwttw==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220428152633.2261979-1-robh@kernel.org>
References: <20220428152633.2261979-1-robh@kernel.org>
Subject: Re: [PATCH] schemas: clock: Add assigned-clocks description
From:   Stephen Boyd <sboyd@kernel.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>
To:     Rob Herring <robh@kernel.org>, devicetree-spec@vger.kernel.org,
        devicetree@vger.kernel.org
Date:   Fri, 29 Apr 2022 13:22:15 -0700
User-Agent: alot/0.10
Message-Id: <20220429202217.95511C385A7@smtp.kernel.org>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rob Herring (2022-04-28 08:26:33)
> Add description for assigned-clocks properties from clock-binding.txt in
> the Linux kernel.
>=20
> This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
> are the original authors.
>=20
> Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
