Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D18758B17
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 04:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbjGSCAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 22:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGSCAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 22:00:25 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72FD410B
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 19:00:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0725960C89
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0248AC433C7;
        Wed, 19 Jul 2023 02:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689732023;
        bh=YJwEPUJUXPlvFsSXH2e3p2Mw9pqwhdhxV4QFcastR9g=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=fgan/RFxYujq4+DYr8RrKxbXGaI5zPyPE9U8OR8/uSsGVIEQNSqq4XBxKdXzNiwGn
         56OlXgaFreH172ua/f2A1iJQxo0e4lrquYY78ceHZ0/qgDz14pmn9yqcUBj5uud2WZ
         QPhVb7HBWN9QphAXDZdmx2NxDFD9ebKUFMl5v6rx5RSzG4U7cyOeq/hLBGR+qETajH
         Gum+sqxdr6yStAgrnVe7hBF4fhX6+aMycDby6DAmXT3LXpWrsqUmAvP5ayhOLT1+8W
         plK75tKEyf5NVx879BhFcfwbnrfpKXcohEAp6/4I+HEImplJl40XOa3YbKKZ0ohyjj
         4FWNVJzADbdgw==
Date:   Tue, 18 Jul 2023 19:00:22 -0700
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
Message-ID: <20230718190022.66268d21@kernel.org>
In-Reply-To: <20230717040638.1292536-4-matt@codeconstruct.com.au>
References: <20230717040638.1292536-1-matt@codeconstruct.com.au>
        <20230717040638.1292536-4-matt@codeconstruct.com.au>
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

On Mon, 17 Jul 2023 12:06:38 +0800 Matt Johnston wrote:
> +/* Returns the 48 bit Provisioned Id from an i3c_device_info.pid */
> +static void pid_to_addr(u64 pid, u8 addr[PID_SIZE])
> +{
> +	pid = cpu_to_be64(pid);
> +	memcpy(addr, ((u8 *)&pid) + 2, PID_SIZE);
> +}

put_unaligned_be48() ? That or you need a local variable or something,
because otherwise sparse is not happy (build test with C=1).

