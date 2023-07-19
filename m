Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2350759DE5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 20:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjGSSvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 14:51:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjGSSvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 14:51:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7947B6
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 11:51:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 64F4E617DF
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 18:51:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60CA1C433C8;
        Wed, 19 Jul 2023 18:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689792702;
        bh=+OZed+IjOzf0Wi3VThwUpHXgJPb5ImrP1ricp+hKzmM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=luKcnlGS/XngXHbkZFgcDQs53+cZlqN51R2uhuka1j/aBELjm/DNBZfHI0xDrUTpp
         4WD4G4TDLL/hsFK8IR98VKT2bzBMq40cwOc+J39zg9CGyHtR4x0F/Q9fyXQIl6gchj
         QrcXOrybmBHdHSDHcoa0WJs+fJ2AIk/xYmgl19/apIrmPQ6RvIhA1KfoOJRmt2g05l
         N1uXe0p4hNV2Ch33w8Y0MZHb7syoOVuCFIe+A2dVl7KFkFhRrqhTw7008EJGEOu4CM
         qHLHYtil1jXHc8ZbY5ZKrKwd8IYC+ms4lZur9ZencXfGm4A/ijl0KzOLg/5xU39Bzz
         3+voNtTqXV/vQ==
Received: (nullmailer pid 574281 invoked by uid 1000);
        Wed, 19 Jul 2023 18:51:41 -0000
Date:   Wed, 19 Jul 2023 12:51:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     devicetree@vger.kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCHv2] dt-bindings: reset: altr,modrst-offset is not required
 for arm64 SoCFPGA
Message-ID: <168979269977.574207.16348431254129585094.robh@kernel.org>
References: <20230719132749.661914-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719132749.661914-1-dinguyen@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 19 Jul 2023 08:27:49 -0500, Dinh Nguyen wrote:
> The property "altr,modrst-offset" is only applicable to arm32 SoCFPGA
> platforms, thus it not required for all platforms.
> 
> While at it, update my email address.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v2: remove the need for else statement since "altr,modrst-offset" is
>     already allowed
> ---
>  .../devicetree/bindings/reset/altr,rst-mgr.yaml      | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 

Applied, thanks!

