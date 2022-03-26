Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27ECB4E7BDE
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbiCZAGe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:06:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbiCZAGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:06:08 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037A41C60CC
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:04:33 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id j83so9891717oih.6
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=jwFW8Oz6fBG29J9Ewie6Ji+0UnbjUoBUP9kpqKZDR4I=;
        b=gjx4ZwPJxPyxvuOxSi4BYLE3ybI8ea+9RghPRvTSYD1iysuG56ZeZFpTWw9OnYbnZ0
         pLQwkqlV5pVgDr3s/pnwz2CJw44uZd30AdfB3fj9ihWSNoPM69Iacz5lwHn4Q6sdEcA3
         IQFubKYD0S9J1GeEKpmZYSBRhpXZZB6CRqpKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=jwFW8Oz6fBG29J9Ewie6Ji+0UnbjUoBUP9kpqKZDR4I=;
        b=GQjHxGY5ptSCwUPrszqgM4biGTj84OolKUdZkI3g0hwqvUA+de95lyfTRNjLP8t6u1
         72pfpwC9ih/u8HKTotBEXe3a3HaJbsvEUAGyKZ4F6XaLjKW2Z1aOSB1/4EZJ4KCj+43p
         RBk0+Nah/yDyfYwTUPJpdU/fdEthhDiq0hUW4SzOOWmY3O2vi+iA57LhPUA+cPP6plo7
         BC9e6LMKnA/BGePVCI02okeNUjNFBmtOWjDJwsoQTPWbKJDB3C0BcKcHhundhWl2nTTQ
         +5LoYFLSC48n4bro4vkzy57wU+nozHo4OerLUsDLhTQskPhXd8WlaqXAFZ1arcPmPXpu
         b5Nw==
X-Gm-Message-State: AOAM533oaBnEvVlADZO8p5coKcfmI6PyAC1tNSP+q0UbSftWwdVnwN6T
        5jBrHTXLH4SRsTsvo6Rc863e/+waUjXMEYR5CIuqSZCKwuE=
X-Google-Smtp-Source: ABdhPJzCJJ13Ov8+p7erLu4bZlSmA1H/Yks/X1PPcYHmDu/rJIPL/H+awEx/3wT2GG1T/DjF7f5R0bvGdP5j4TWG2GI=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr6909143oif.63.1648253073349; Fri, 25
 Mar 2022 17:04:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 19:04:32 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-7-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-7-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 19:04:32 -0500
Message-ID: <CAE-0n50a+d+MV9MQ4phppBhkvdgGU4cqC-9ZN9GjbhbRi+pUnQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] iio: sx9324: Add Setting for internal compensation resistor
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:25)
> diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
> index 3f229dffd5380..38dfdc6dc86ad 100644
> --- a/drivers/iio/proximity/sx9324.c
> +++ b/drivers/iio/proximity/sx9324.c
> @@ -875,6 +881,22 @@ sx9324_get_default_reg(struct device *dev, int idx,
>                                SX9324_REG_AFE_PH0_PIN_MASK(pin);
>                 reg_def->def = raw;
>                 break;
> +       case SX9324_REG_AFE_CTRL0:
> +               ret = device_property_read_string(dev,
> +                               "semtech,int-comp-resistor", &res);
> +               if (ret)
> +                       break;
> +               reg_def->def &= ~SX9324_REG_AFE_CTRL0_RINT_MASK;
> +               if (!strcmp(res, "lowest"))
> +                       reg_def->def |= SX9324_REG_AFE_CTRL0_RINT_LOWEST;
> +               else if (!strcmp(res, "low"))
> +                       reg_def->def |= SX9324_REG_AFE_CTRL0_RINT_LOW;
> +               else if (!strcmp(res, "high"))

Should the order of arguments be swapped? I'm wondering if I can have
'hig' in the DT property and then it will match 'high' here? I suppose
the schema validator will find that and complain first.

> +                       reg_def->def |= SX9324_REG_AFE_CTRL0_RINT_HIGH;
> +               else if (!strcmp(res, "highest"))
> +                       reg_def->def |= SX9324_REG_AFE_CTRL0_RINT_HIGHEST;
> +
> +               break;
