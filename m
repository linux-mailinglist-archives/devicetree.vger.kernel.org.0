Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FBD868F3B1
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 17:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbjBHQqI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 11:46:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbjBHQqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 11:46:04 -0500
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 399D9C3
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 08:46:01 -0800 (PST)
Received: by mail-qv1-xf29.google.com with SMTP id q10so11769407qvt.10
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 08:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/P6FWoNqxOFtseaoi+Hi1lPYwv+sr9oFUr5P+Oe2Tw=;
        b=GS1RJKYtFWyiyjP8+MkLNPWDoKEvGcn4it6VbI1RUyAm9yP9MCx5cXBhYj0kEKNlZg
         qyNtK4F1bk4m9cHt2CY/xnoZJOGQxEtYl4S3tWxchkjoTNn++7I7H8PQSW6MSJ+NmQPp
         QTvpl94Ec49GbSIMKks1VGICipXVsknSKTcsKAbPwxRYS7KF3yJALHH/rn6WupUEUcgI
         vvqcrYwf6r3+DJykCpvCcOEeVqdvZ4X36JbtN7NDk2SQE/Stip+LtUsFa+ES2MnZfJWq
         xSn5cFOVuHVNqwuAcyLu92haBPNxzl+LnvlA7iN07eUnE+yECaJVzOXT14PTHFP1kxAh
         2bWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+/P6FWoNqxOFtseaoi+Hi1lPYwv+sr9oFUr5P+Oe2Tw=;
        b=NTeb51Zl7RyGwlbRJwYaq54mHn601YTIGKMqntlzDFpIbLvh4mq+uIuodamhTpbxHP
         oVjzFIpF3f32kWEBlVIRmX31M+x+hwyEpXOEIxsSa7SzdUbVKcu+z7NEi0brpFyvNd9S
         wrE7h9T+1umuGxfQL5mWR1sgME/P/YEIDW9haZfpC+DOm9k5KQfzsd0FuLJr0eFUnBeV
         Ta3XN6HOk6pI2UI+IGjMFELTHr8f5VXxUwMzrh0y+A3VuhXDN2Q0oXUQu6iGLqUY6fGw
         gKOB58+7RfR5YwjH/CNqa4bvP6F/u+fbT0xpZiIghK3E+phezlSUXyU7Q78yHWw9zhjY
         yiLA==
X-Gm-Message-State: AO0yUKV/Yhel7QzDG0Enj58jEyQQPJGBHePq6znaplACIItvCcW2rUek
        EImiJIc9MXK19c9HXrH81qnYCgTAtJY=
X-Google-Smtp-Source: AK7set+c3KZEPQZXEc5/Yynb3U0wI3DrkgWQaDcQTo6f2O3QlPFR295KNxu+NLAt3akjoYwlJEaNkw==
X-Received: by 2002:a05:6214:240b:b0:537:6a1e:d822 with SMTP id fv11-20020a056214240b00b005376a1ed822mr13954166qvb.14.1675874760342;
        Wed, 08 Feb 2023 08:46:00 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id j9-20020a05620a410900b00729b7d71ac7sm12083913qko.33.2023.02.08.08.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 08:45:59 -0800 (PST)
Date:   Wed, 8 Feb 2023 11:45:58 -0500
From:   Trevor Woerner <twoerner@gmail.com>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org
Subject: Re: gpio-line-names policy
Message-ID: <20230208164557.GA33531@localhost>
References: <20230207150742.GA36689@localhost>
 <CACRpkdYZ3C3a4x4HKr2-3+8-DM=PmObMAOdLDs4Wu5Cx1HWtsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CACRpkdYZ3C3a4x4HKr2-3+8-DM=PmObMAOdLDs4Wu5Cx1HWtsg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On Wed 2023-02-08 @ 04:01:05 PM, Linus Walleij wrote:
> On Tue, Feb 7, 2023 at 4:07 PM Trevor Woerner <twoerner@gmail.com> wrote:
> > But what about those lines that go out to general purpose headers such as
> > the 40 pins of the Raspberry Pi header? Most SBCs have some set of header
> > that's available to users to connect whatever devices they wish, many of
> > them have adopted the rpi's 40-pin layout.
> 
> I think using the names on the header is fine, what I didn't want to see
> is things like the name of the pin on the SoC package or names made
> up from kernel-internal software constructs. As long as it is something
> real, and preferably unique I'm fine with it.
> 
> One early example is the HiKey N96 board:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts

Thank you for the clarification. Thinking from the user's point of view, I
added the actual pin number, then the SoC name, then the pin's label.

https://lore.kernel.org/linux-riscv/20230208014504.18899-1-twoerner@gmail.com/T/#u

I'll send a v2 with just the pin's label. Would leaving the pin number, in
addition to the name, be okay?

Best regards,
	Trevor
