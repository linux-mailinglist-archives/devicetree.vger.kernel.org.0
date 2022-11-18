Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7C1B62FE75
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 20:57:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231584AbiKRT5P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 14:57:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231388AbiKRT5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 14:57:14 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E347BC0512
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 11:57:12 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id o7so5409943pjj.1
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 11:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JQWsUxn8iwDG50vb73epK+aFJHJq3RHHQdvaYLtLc8M=;
        b=IhIDSHWHRA81XwNFxfXs+jo0NJ3lWJ8tuEBe+JujRGcXjrjswvxlmNznET4cKtE8an
         6KezJ3dOjrK5IkAW9lFUdIYD6oJ/XRjJJbojEa4utMg32tUa9JEbBfobHPeHa0EbQRFe
         l1D8tobow+LbkZxnaf/6WlYRSkTV2Uk9yu0yh0Texq6Rno2f1g+kobJKa/oR/5gQFEbV
         oGbltDDYy0pEySTtpHAqT8DQRYlI32qziiQtPWQfqmEafItXYO3X8SD5W9Yu3NucmZtX
         gzRtim1vu++2MCVW7OL0zWqigD7aw8rrBbNpNj67c5wdK/sS0R+aqnyyqBRRqdl+NfpS
         zuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQWsUxn8iwDG50vb73epK+aFJHJq3RHHQdvaYLtLc8M=;
        b=q1l086lfyFWSfm6fVDStbzpcEYaDVgtjBouOIHydifRvHSE6PPVi0Pw447sUgIDRMi
         FV1tRq6NR1d7Qux5nPyfVioW4YrUF8ghxu8u4JTS8TD6qaUOOu1JTupWAxZ7xFWwWX6p
         JIie2xQapKtmEqhls2lepKgmrOYPmqp18a4qnCkERWySzljFe+a04kFE7ynqVhmc4oZv
         CHJ217M/2xxFS7bjN685T1Fk+kvmfCE19np62pj+4zzUvSm3Bc6joSRg3SKiHGknpusV
         dsZjV5/BqbVl8r5k6lGGW5FjYJxCaGltBBORzzg6e6dEXl9OZoaTXXsSm7pe0kGM1mb6
         Da9A==
X-Gm-Message-State: ANoB5pmI1wfvdtTmbdmd+7PXge8Z7jYJyM9ba9x8eiSlWMgrSudFmiUa
        gu6AsmLeCTZOwmmS1d1kvo1DjIIoVj6grB/yIlc24Q==
X-Google-Smtp-Source: AA0mqf43YPBp3+KpbsgaAKdhmrBTJiXYpRzURkCyO4fCvPlmnwD0CRqnmlgwCmYN+Q/zK2V2FLZYEkZUnfUzBWkyJkY=
X-Received: by 2002:a17:902:a5cc:b0:186:de87:7ffd with SMTP id
 t12-20020a170902a5cc00b00186de877ffdmr949005plq.94.1668801432393; Fri, 18 Nov
 2022 11:57:12 -0800 (PST)
MIME-Version: 1.0
References: <20221118001548.635752-1-tharvey@gateworks.com>
 <Y3bRX1N0Rp7EDJkS@lunn.ch> <CAJ+vNU3P-t3Q1XZrNG=czvFBU7UsCOA_Ap47k9Ein_3VQy_tGw@mail.gmail.com>
 <Y3eEiyUn6DDeUZmg@lunn.ch>
In-Reply-To: <Y3eEiyUn6DDeUZmg@lunn.ch>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 18 Nov 2022 11:57:00 -0800
Message-ID: <CAJ+vNU2pAQh6KKiX5x7hFuVpN68NZjhnzwFLRAzS9YZ8bWm1KA@mail.gmail.com>
Subject: Re: [PATCH 0/3] add dt configuration for dp83867 led modes
To:     Andrew Lunn <andrew@lunn.ch>, Ansuel Smith <ansuelsmth@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 18, 2022 at 5:11 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Andrew,
> >
> > I completely agree with you but I haven't seen how that can be done
> > yet. What support exists for a PHY driver to expose their LED
> > configuration to be used that way? Can you point me to an example?
>
> Nobody has actually worked on this long enough to get code merged. e.g.
> https://lore.kernel.org/netdev/20201004095852.GB1104@bug/T/
> https://lists.archive.carbon60.com/linux/kernel/3396223
>
> This is probably the last attempt, which was not too far away from getting merged:
> https://patches.linaro.org/project/linux-leds/cover/20220503151633.18760-1-ansuelsmth@gmail.com/
>
> I seem to NACK a patch like yours every couple of months. If all that
> wasted time was actually spent on a common framework, this would of
> been solved years ago.
>
> How important is it to you to control these LEDs? Enough to finish
> this code and get it merged?
>

Andrew,

Thanks for the links - the most recent attempt does look promising.
For whatever reason I don't have that series in my mail history so
it's not clear how I can respond to it.

Ansuel, are you planning on posting a v7 of 'Adds support for PHY LEDs
with offload triggers' [1]?

I'm not all that familiar with netdev led triggers. Is there a way to
configure the default offload blink mode via dt with your series? I
didn't quite follow how the offload function/blink-mode gets set.

Best Regards,

Tim
[1] https://patches.linaro.org/project/linux-leds/list/?submitter=10040
