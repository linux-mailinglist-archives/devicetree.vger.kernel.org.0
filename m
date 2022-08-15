Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D37E0593984
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 21:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242570AbiHOSjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 14:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242021AbiHOSid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 14:38:33 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A673CBC9
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:23:47 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-3321c2a8d4cso40475477b3.5
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Db07G664QdLJL7hbwp7/beOMmf/kBhPqwkUaOy2LwyA=;
        b=Di5ahuQuUij88dNg/KRUmAKM+aFc4DdrWzvkGo1ivcBnErb9f9it3ced1tX8E1HOnW
         rLig4vd67w+IDyEGKnA/hiBFKa9SIJo5ovpK9oXEVP3+LRX4wdHl8OBPIMq1rc/4kQNy
         rLg4IV9NvfkwSDqTHNxE49YD7M/s3X5ncxvBEWc9+/vl3EoxqEMe1PMLKgVLDHqstm4G
         joJwp2cMBAozP1CUx+KJTNs7dLtt12cRxqdp9lmed/H3XsNHEmXKmwhjuo5TeIJHjYNH
         eTAkc55YhPGHXbscGy9mPpSlEynn8yRw1Pw5EJDngyR94hoEJzRHIGRMOuHmABb4er0F
         FE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Db07G664QdLJL7hbwp7/beOMmf/kBhPqwkUaOy2LwyA=;
        b=Gcaw1vxkNaDLuvTttNxSYWuVtMA5EmIJdB/28dmKnVq73vpMDzYUTh8K9e1Ruh3a6N
         h8uuDmtAY+LG78kZfKGC0SlbVzzVA6XO8WRXlZsXfgNMqqFhMGNwMJoV8IrfZGJ/aZ44
         S7V/6ANgv2/1ifZO7jkt688QRuRSDNKOM4lBwI4mb6Q24nG05IjNjZtQcy4oTZq1SMhm
         aEzlVzct9+Z1xuiF1ffkzO5pF2gT83RVp7aLLjk9g0uKknqLTFM07lUYV9HcLc+kHEdh
         Nd6KMJ1Hr2rDJ3riTpCw9utU5NIdkJDA855AJU8L9o9aeJN96JqEN+aIzUuce7FShRtz
         uGvg==
X-Gm-Message-State: ACgBeo3/basflMnY/um47R00DbL3JksA/CKt2ELdGZ0Vgcy8BaAlUgeQ
        HyOOuuxCsZmixeBXuBTRp5zzQgglBzf+NOceWFR7SA==
X-Google-Smtp-Source: AA6agR4wzhsMjeR70OWMz+XaTgfrMhs+/iH3OP2Hd6MDBv3+PPxfDZUE0dnmuD2HQ3WDLtnmiP5GDkAha3prRqse7F4=
X-Received: by 2002:a25:d353:0:b0:67b:7758:b051 with SMTP id
 e80-20020a25d353000000b0067b7758b051mr11716143ybf.563.1660587826134; Mon, 15
 Aug 2022 11:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220810060040.321697-1-saravanak@google.com> <YvYiF36M09dX9ASm@atomide.com>
 <CAGETcx-t0O0B+5i0FWwm5w2=ccOD5zVAaUvgQoP8PT9SOT_btw@mail.gmail.com> <Yvog4K0barAvvVeb@atomide.com>
In-Reply-To: <Yvog4K0barAvvVeb@atomide.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 15 Aug 2022 11:23:09 -0700
Message-ID: <CAGETcx-k+ca5uG42XvW5yiK8RWDYfeRs9va5boqnp33s45AGRg@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] fw_devlink improvements
To:     Tony Lindgren <tony@atomide.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Len Brown <lenb@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        John Stultz <jstultz@google.com>,
        Doug Anderson <dianders@chromium.org>,
        Guenter Roeck <linux@roeck-us.net>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 15, 2022 at 3:33 AM Tony Lindgren <tony@atomide.com> wrote:
>
> * Saravana Kannan <saravanak@google.com> [220813 00:45]:
> > On Fri, Aug 12, 2022 at 2:49 AM Tony Lindgren <tony@atomide.com> wrote:
> > >
> > > * Saravana Kannan <saravanak@google.com> [220810 05:54]:
> > > > Tony,
> > > >
> > > > This should handle the odd case of the child being the supplier of the
> > > > parent. Can you please give this a shot? I want to make sure the cycle
> > > > detection code handles this properly and treats it like it's NOT a cycle.
> > >
> > > Yup, this series works for me, so feel free to add:
> > >
> > > Tested-by: Tony Lindgren <tony@atomide.com>
> >
> > Thanks for testing!
> >
> > Btw, out of curiosity, how many different boards did you test this on?
> > IIRC you had an issue only in one board, right? Not to say I didn't
> > break anything else, I'm just trying to see how much confidence we
> > have on this series so far. I'm hoping the rest of the folks I listed
> > in the email will get around to testing this series.
>
> Sorry if I was not clear earlier. The issue affects several generations
> of TI 32-bit SoCs at least, not just one board.

But this series fixes the issues for all of them or are you still
seeing some broken boot with this series?

-Saravana

>
> > > I have some concerns though on how do we get a working -rc1 with the
> > > earlier series applied? See the comments in the last patch of this
> > > series.
> >
> > I tried to reply, but not sure if it helps. We'll continue the discussion there.
>
> Ack.
>
> Tony
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
