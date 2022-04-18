Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E637A505E80
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 21:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347699AbiDRT0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 15:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347694AbiDRT0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 15:26:03 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D06435A94
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 12:23:21 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id b188so15761875oia.13
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 12:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=J5VKMl1cvAIwPg4fAVg1Q4A/RxUGJ8H51zsx9Q2lBt4=;
        b=WvYEgGnk/sJhDgLo0lWOK645qv0z6oTqW7lO9b85Aa4kLxrM4WDKMHjNWKY22ovEWw
         qRsUP2qeTaE09k+PHrnNhdGI47SMhAPEYDGKnBQ4pcs+uEzw5oTojVyWtzHQVpcXAEbc
         CW/JWVpykMgPdX5WP1hxxdceSxAju+PjvudqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=J5VKMl1cvAIwPg4fAVg1Q4A/RxUGJ8H51zsx9Q2lBt4=;
        b=GsNCXhrazL9ZiLmlxyjaXDPsWQm6xCrAPU1bfHn0KzjEeD+5FdlDMEat1cZzf0WZ8t
         B43DC285ZZ+FtznZIjGIwBdj23xUllDjN+3CAvO1d9ZWTiY5wbC0NYVnEDUac46dZwu4
         GTpjQGAJa+UTLjXrJfouyiNqDQr99B8p56ekP3YSommkdEkIYH7/LjQkvOo4FnKUfl+j
         +SwEe5nWtyC++iPnRaPye3xT6ImpCX9yihj8nuS4L0OysmvpBw4hM1/1+YnCC4pohJ9b
         9hY19xDe0S9hlpXtkJdwZ1MTZnxh1cWvSEZrz/OfWe5hDVLZn9ttzI/zWama19Dg3IVI
         LLnQ==
X-Gm-Message-State: AOAM530Z3VBRIVFRhlzc1fjql8N9svnR4TZLRTRzNIPzIUSouK74EYwP
        gusntl+fQDqeLxe7e+gPrKBUxeKChr01lk4aPGNQUw==
X-Google-Smtp-Source: ABdhPJyGuqdNWZRtu63elfPPUCwDxiBGQ+puRr4s0Q7l2qESZCwmFeVCxznChn10xHJIJ2ssqNLJ0xHQhrSeu3T+SOk=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr5806846oif.63.1650309800928; Mon, 18
 Apr 2022 12:23:20 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 18 Apr 2022 12:23:20 -0700
MIME-Version: 1.0
In-Reply-To: <9d8543e1-4aa8-f430-322a-83d110586152@quicinc.com>
References: <1649939418-19861-1-git-send-email-quic_c_skakit@quicinc.com>
 <1649939418-19861-6-git-send-email-quic_c_skakit@quicinc.com>
 <CAE-0n531GVMuuR6HM2ezjOPJCg7S-rD3eaEKWzrYsnM-jwQHKw@mail.gmail.com> <9d8543e1-4aa8-f430-322a-83d110586152@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 18 Apr 2022 12:23:20 -0700
Message-ID: <CAE-0n51Bs=87+LpDFHBJXqM7VwR4nBtBkG5iasnCKKw4CRdRZg@mail.gmail.com>
Subject: Re: [PATCH V10 5/9] mfd: pm8008: Use i2c_new_dummy_device() API
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya Kakitapalli <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya Kakitapalli (Temp) (2022-04-18 08:08:33)
>
> On 4/15/2022 5:51 AM, Stephen Boyd wrote:
> > Quoting Satya Priya (2022-04-14 05:30:14)
> >> Use i2c_new_dummy_device() to register clients along with
> >> the main mfd device.
> > Why?
>
>
> As discussed on V9 of this series, I've done these changes.
>
> By using this API we can register other clients at different address
> space without having separate DT node.
>
> This avoids calling the probe twice for the same chip, once for each
> address space 0x8 and 0x9. I'll add this description in commit text.
>

Perfect, thanks.

>
> >> @@ -221,19 +236,38 @@ static int pm8008_probe_irq_peripherals(struct p=
m8008_data *chip,
> >>
> >>   static int pm8008_probe(struct i2c_client *client)
> >>   {
> >> -       int rc;
> >> +       int rc, i;
> >>          struct pm8008_data *chip;
> >> +       struct device_node *node =3D client->dev.of_node;
> >>
> >>          chip =3D devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL=
);
> >>          if (!chip)
> >>                  return -ENOMEM;
> >>
> >>          chip->dev =3D &client->dev;
> >> -       chip->regmap =3D devm_regmap_init_i2c(client, &qcom_mfd_regmap=
_cfg);
> >> -       if (!chip->regmap)
> >> -               return -ENODEV;
> >>
> >> -       i2c_set_clientdata(client, chip);
> >> +       for (i =3D 0; i < PM8008_NUM_CLIENTS; i++) {
> > This is 2. Why do we have a loop? Just register the i2c client for
> > pm8008_infra first and then make a dummy for the second address without
> > the loop and the indentation. Are there going to be more i2c clients?
>
>
> There wont be more than 2 clients, I can remove the loop, but then we
> will have repetitive code.. something like below

Repetitive code can be refactored into a subroutine.

>
>  =C2=A0=C2=A0=C2=A0=C2=A0 chip->dev =3D &client->dev;
>  =C2=A0=C2=A0=C2=A0=C2=A0 i2c_set_clientdata(client, chip);
>
>  =C2=A0=C2=A0=C2=A0=C2=A0 regmap =3D devm_regmap_init_i2c(client, &qcom_m=
fd_regmap_cfg[0]);
>  =C2=A0=C2=A0=C2=A0=C2=A0 if (!regmap)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENODEV;
>
>
>  =C2=A0=C2=A0=C2=A0=C2=A0 pm8008_client =3D i2c_new_dummy_device(client->=
adapter,
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 client->addr + 1);
>  =C2=A0=C2=A0=C2=A0=C2=A0 if (IS_ERR(pm8008_client)) {
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(&pm8008_client-=
>dev, "can't attach client\n");
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR(pm8008_c=
lient);
>  =C2=A0=C2=A0=C2=A0=C2=A0 }
>  =C2=A0=C2=A0=C2=A0=C2=A0 pm8008_client->dev.of_node =3D of_node_get(clie=
nt->dev.of_node);
>  =C2=A0=C2=A0=C2=A0=C2=A0 i2c_set_clientdata(pm8008_client, chip);
>
>  =C2=A0=C2=A0=C2=A0=C2=A0 regulators_regmap =3D devm_regmap_init_i2c(pm80=
08_client,
> &qcom_mfd_regmap_cfg[1]);
>  =C2=A0=C2=A0=C2=A0=C2=A0 if (!regmap)
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENODEV;
>
> >> diff --git a/include/linux/mfd/qcom_pm8008.h b/include/linux/mfd/qcom_=
pm8008.h
> >> new file mode 100644
> >> index 0000000..bc64f01
> >> --- /dev/null
> >> +++ b/include/linux/mfd/qcom_pm8008.h
> >> @@ -0,0 +1,13 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __QCOM_PM8008_H__
> >> +#define __QCOM_PM8008_H__
> >> +
> >> +#define PM8008_INFRA_SID       0
> >> +#define PM8008_REGULATORS_SID  1
> >> +
> >> +#define PM8008_NUM_CLIENTS     2
> >> +
> >> +struct pm8008_data;
> >> +struct regmap *pm8008_get_regmap(struct pm8008_data *chip, u8 sid);
> > Could this be avoided if the regulator driver used
> > dev_get_regmap(&pdev->dev.parent, "regulator") to find the regmap named
> > "regulator" of the parent device, i.e. pm8008-infra.
>
> I gave it a try, it didn't work. I could not get the regmap for
> regulators using pm8008-infra i.e., 0x8 device pointer.

Did it not work because the regmap config for the regulator config
didn't have a name?
