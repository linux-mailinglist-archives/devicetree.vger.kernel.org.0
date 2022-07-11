Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30E7456D2B3
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 03:46:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbiGKBqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 21:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbiGKBql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 21:46:41 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12DEC13D26
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 18:46:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 6FA92CE0956
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1DEC3411E;
        Mon, 11 Jul 2022 01:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657503997;
        bh=YoUg0o50+huqkznP9rGrrXLb4xjZbkBXwgANBaa2GOM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rr1+13o1X6LLzR7/NPFSxOSkg4QFqMd16Bh4l383rNoZw8Ckb24TsFGGBeIFnFoZV
         ms+3PJcjWj9zkjrusfF1RECjQ4Kmw4K3v47DhAqvKjlaQOpN6YxtpMW9qveG9sRkN6
         wwWyy+IL6OULC+8HavST+Q/UGOvVnCQHzLBD9i4fz3KgaEleRzuA0DjDyzENnpdh4L
         6FsQU004itQGtRHiHwhqNrmk6/ETM1AKZZLpwzIFBGk1zC4tt83nv72/zCXia6E2mw
         t3jxqATnTVfnslTnj9EuZhKLyOIWVkEtlmluwE3xYYeuyi1W3s02MR/QSRb7IEHFYc
         gn/8YK+6LjJrg==
Date:   Mon, 11 Jul 2022 09:46:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
Subject: Re: [PATCH v2 0/3] TQMa8MPxL + MBa8MPxL support
Message-ID: <20220711014622.GA4711@dragon>
References: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
 <15466736.O9o76ZdvQC@steina-w>
 <420f9ff1-da37-3d1d-d913-29888ade21bb@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <420f9ff1-da37-3d1d-d913-29888ade21bb@linaro.org>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 10, 2022 at 04:49:56PM +0200, Krzysztof Kozlowski wrote:
> On 08/07/2022 16:39, Alexander Stein wrote:
> > Ping,
> > 
> > I would like to get patch 1 & 2 into v5.20.
> 
> Sure, happy to help but whom are you exactly pinging? What do you need
> from me or Rob?

Sorry, forgot to reply the thread, but I had applied the two patches.

Shawn
