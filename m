Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91A1E6A845D
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 15:46:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbjCBOqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 09:46:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjCBOqs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 09:46:48 -0500
Received: from out-34.mta1.migadu.com (out-34.mta1.migadu.com [IPv6:2001:41d0:203:375::22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D3311641
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 06:46:44 -0800 (PST)
Date:   Thu, 2 Mar 2023 15:46:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
        t=1677768403;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=iwol87XDWXqBL/XnmrtGtZtjABgKSyQA6ugkaogEFYY=;
        b=BhdP8+r9QSbtpRZiPRsN2Qey92rHcMc4bJCYEeGLYJZQ3XT/dwlU9qW6ZYJhiPwbbaJXfO
        Jy3AkKN9/IeAX8RxOw8b/c3vSHNpqIT7gJ7vdeTd/NEijOF0466e9JtYbN2bJMSX7CAD4S
        qenb0nX+9WkWKdFs3UDYU9onft5PhF0=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   Richard Leitner <richard.leitner@linux.dev>
To:     Claudiu.Beznea@microchip.com, robh+dt@kernel.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, ladis@linux-mips.org,
        tiwai@suse.com, benjamin.bara@skidata.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, richard.leitner@skidata.com,
        bbara93@gmail.com
Subject: Re: [PATCH 3/3] ASoC: maxim,max9867: add "mclk" support
Message-ID: <ZAC20AcKy/O+9DkV@g0hl1n.net>
References: <20230302-max9867-v1-0-aa9f7f25db5e@skidata.com>
 <20230302-max9867-v1-3-aa9f7f25db5e@skidata.com>
 <b0a5c0c2-dfbd-460a-af0d-c9d498607d72@sirena.org.uk>
 <61e4485b-9211-fa38-5061-f5861292ddd1@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61e4485b-9211-fa38-5061-f5861292ddd1@microchip.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Claudiu,

On Thu, Mar 02, 2023 at 12:45:50PM +0000, Claudiu.Beznea@microchip.com wrote:
> On 02.03.2023 14:20, Mark Brown wrote:
> >> +	max9867->mclk = devm_clk_get(&i2c->dev, "mclk");
> >> +	if (IS_ERR(max9867->mclk))
> >> +		return PTR_ERR(max9867->mclk);
> >> +	ret = clk_prepare_enable(max9867->mclk);
> >> +	if (ret < 0)
> >> +		dev_err(&i2c->dev, "Failed to enable MCLK: %d\n", ret);
> >> +
> > Nothing ever disables the clock - we need a disable in the remove path
> > at least.
> 
> I don't have the full context of this patch but this diff seems a good
> candidate for devm_clk_get_enabled().

Thanks for that pointer, but currently we are thinking of prepare_enable
the clock in SND_SOC_BIAS_ON and disable_unprepare it in SND_SOC_BIAS_OFF
(similar to wm8731.c).
Therefore probe() will only do a devm_clk_get().

Claudiu, Rob: Will this be an acceptable solution?

regards;rl
