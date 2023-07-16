Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD305754FE3
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 18:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjGPQxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 12:53:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjGPQxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 12:53:40 -0400
X-Greylist: delayed 106078 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 16 Jul 2023 09:53:39 PDT
Received: from out-34.mta1.migadu.com (out-34.mta1.migadu.com [IPv6:2001:41d0:203:375::22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB365E57
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 09:53:39 -0700 (PDT)
Date:   Mon, 17 Jul 2023 02:52:54 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
        t=1689526417;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=VdPWSeimVxVz91xQpsqP4Z46tm2ZX8etDGiqC5eAjnY=;
        b=yiYIdBSpp3Qlc5Nvg8wlFK23YkICxlgjlCAvrd8CIgCqv6CfsXiwb3hjS5aITUSvSCP+t3
        dYOjilmV/3oCefCfMuCmDtkgINtnZ2uzOKaeixeM5GHFDDf8X+j6OqmED1P6L2LTwp5rJo
        Mp8cdvHwhcxzZDZ13AZtKaNLisy/CTeM45sR1j1XlzTN+bdbXllMC1ksVda53ykY/aDZGN
        Www0zvg7+ihmzePP9aGKrqkJkQ/IHRDc6o5JfaihmKDQmNBuVF3SlQIrPF1HjiLGBzm0FE
        gZpGnlDhX7rJRISWrshJSZgx/0R40tdB6bm0UZA1I4kyeZmjHHplBwSaF61xBw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   John Watts <contact@jookia.org>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        linux-can@vger.kernel.org, linux-riscv@lists.infradead.org,
        Fabien Poussin <fabien.poussin@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 4/4] can: sun4i_can: Correctly set acceptance registers
 on the D1
Message-ID: <ZLQgZvipHOFTlnnO@titan>
References: <20230715112523.2533742-1-contact@jookia.org>
 <20230715112523.2533742-5-contact@jookia.org>
 <4844353.31r3eYUQgx@jernej-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4844353.31r3eYUQgx@jernej-laptop>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 16, 2023 at 06:45:25PM +0200, Jernej Škrabec wrote:
> This patch should precede patch 3, so in next patch you add full D1 support.
> 
> Best regards,
> Jernej

That makes sense, thank you. Will change in v2.

John.
