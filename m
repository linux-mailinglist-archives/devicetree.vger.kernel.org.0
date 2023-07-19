Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7526758B13
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 03:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbjGSB6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 21:58:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjGSB6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 21:58:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21ACD1BE2
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 18:58:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A89E261681
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 01:57:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CC42C433CA;
        Wed, 19 Jul 2023 01:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689731879;
        bh=xV4j/eBSUiPaOF7DNsEID37wgewGDwpgj3ghPv/Zm/U=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=g0VPnIN4OQMOP/yQfplfNBA0rJg6b8htqfMDtdUBF09MYsRYcPn04mN6eXxVjuNXO
         VBHpAi48n/HmTodyw/klN1lxdXcwZDF1IWiPVDbLj0SU4jClz3oSeVpS8ayhPLUljz
         PoVkRACbH2xPYyaaCKlY8OzIrS8ptIoypne1yrAV/Shh5OfFGisblITgSY3n5lwuqE
         4zRT0LOzXjzSXMrxV+d9uNX/8MBlTTjo9fPwdrzhPnFPZcE5qbO3DWOEZM7k9+3BDo
         BT5yBHPHJOfKKwGlOJO0F6nudsW2OBjnGY/TQxPKRQk4XYWufsV9pGvLAoRhNZgUgG
         U6ctsq6HATZjA==
Date:   Tue, 18 Jul 2023 18:57:57 -0700
From:   Jakub Kicinski <kuba@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, Jeremy Kerr <jk@codeconstruct.com.au>,
        "David S. Miller" <davem@davemloft.net>,
        Paolo Abeni <pabeni@redhat.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v2 2/3] i3c: Add support for bus enumeration &
 notification
Message-ID: <20230718185757.54ae1e2e@kernel.org>
In-Reply-To: <20230717040638.1292536-3-matt@codeconstruct.com.au>
References: <20230717040638.1292536-1-matt@codeconstruct.com.au>
        <20230717040638.1292536-3-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jul 2023 12:06:37 +0800 Matt Johnston wrote:
> From: Jeremy Kerr <jk@codeconstruct.com.au>
> 
> This allows other drivers to be notified when new i3c busses are
> attached, referring to a whole i3c bus as opposed to individual
> devices.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>

We need one of:
 - sign-off from Alexandre that he's okay with this code going via
   netdev; or
 - stable branch from Alexandre based on an upstream -rc tag which 
   we can pull into net-next; or
 - wait until 6.6 merge window for the change to propagate.
Until then we can't do much on our end, so I'll mark the patches as
deferred from netdev perspective.
-- 
pw-bot: defer
