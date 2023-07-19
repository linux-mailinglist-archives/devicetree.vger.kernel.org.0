Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38EC8758B0E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 03:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjGSByn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 21:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjGSByn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 21:54:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227AFFC
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 18:54:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B106860C89
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 01:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFAA9C433C9;
        Wed, 19 Jul 2023 01:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689731681;
        bh=8sE14OUhtH4JOmQnCC2xfg2OxZeca1/kLCPdJ09/ejU=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=ggTEOfCOol+PJCMwddN+Ggr/ke8bz3Gr5H/6HfDliS4zQXi3QgKRAtqtRl+XmmEPq
         HsGpj0wMzoEoN1rfR2Z352UgOwRmM/mwM2QD2OPk7FJ0MOoBMzEFDv7cOvtBEpkRr/
         Ar733fq1bL6FAEUfDqGvlRlh+msgjqMjzpKmeZhx0u0/ehaen9IDv0k0r0kcAFBMuV
         CuMnDcsRnjsl6QRS+2x7ZI0eDLgom3NVVbOciRQ907WA+Prmkw39BIJI3RXHx/b5LD
         s8CNKiFM2uaHXpB/SbxrrO5YWjunPkq8t3oE3N+nAnmNlRt6YAUGJF+83JbcdgLx0Z
         V5wKeEb1iYg0w==
Date:   Tue, 18 Jul 2023 18:54:39 -0700
From:   Jakub Kicinski <kuba@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        Paolo Abeni <pabeni@redhat.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH net-next v2 3/3] mctp i3c: MCTP I3C driver
Message-ID: <20230718185439.05304395@kernel.org>
In-Reply-To: <20230717040638.1292536-4-matt@codeconstruct.com.au>
References: <20230717040638.1292536-1-matt@codeconstruct.com.au>
        <20230717040638.1292536-4-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jul 2023 12:06:38 +0800 Matt Johnston wrote:
> +	dev_net_set(ndev, current->nsproxy->net_ns);

This is a bit odd, we may have missed similar code in earlier mctp
drivers. Are you actually making use of auto-assigning netns?

> +	mbus->tx_thread = kthread_create(mctp_i3c_tx_thread, mbus,
> +					 "%s/tx", ndev->name);
> +	if (IS_ERR(mbus->tx_thread)) {
> +		dev_warn(&ndev->dev, "Error creating thread: %pe\n",
> +			mbus->tx_thread);
> +		rc = PTR_ERR(mbus->tx_thread);
> +		mbus->tx_thread = NULL;
> +		goto err;
> +	}
> +	wake_up_process(mbus->tx_thread);

kthread_run()
