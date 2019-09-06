Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7EC3AB20F
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2019 07:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392371AbfIFFdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Sep 2019 01:33:10 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41807 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392367AbfIFFdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Sep 2019 01:33:10 -0400
Received: by mail-pf1-f193.google.com with SMTP id b13so3564909pfo.8
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 22:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:to:from:cc:subject:user-agent:date;
        bh=5+G97x95VsYZSadXiadu11K19KSd1vhWtTb1ePX0lzM=;
        b=OS6SswxuhI/SDmD8+h+fLbECCdzbaGkeYADsXMcq4p4riUqq8XNVNt/4JLWc368IWh
         4hJn+AwKTYRxfm2Ozkhh2fx1NWVSnUoOgK0bU93FGqqT6v4GbFLFCsav7edFHRhQZkk7
         CMiTl8WQcdO4/1kptupfFYLt3GzvJWm2M26Ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:to:from:cc:subject
         :user-agent:date;
        bh=5+G97x95VsYZSadXiadu11K19KSd1vhWtTb1ePX0lzM=;
        b=uDU72N50rIgwVcAipbcM4s+pGvBUSwy+hJRW6/NFpqQ2CoWeUEYPgyd2iTXx2Q8t6w
         nYRciFzGPlbSSXKgXWeOVLtkxZAj//EM+ziA4qXS3kPA5G3xPnZv5SUdZ797TcK5at6V
         gZ559d38Ns7LH1+Td9Q/eg7KgBrMVQWvFMYmUGA5FY33PLPJLDreCoAJ+gdurujpO3BT
         CfyPCLtqOVU7A+xhLKw9oyoxbZbg2sZvopJKRPN0R+fkd04UEeEcNiF22BxWizx4JnpM
         JYK+q11Tqez7bTpFxC96Z82a/h/x0K3bh+0Y3c454Tgfe+JmkZ9BTpSUqUSndo19k13p
         Ld1Q==
X-Gm-Message-State: APjAAAU8uGSh+QVoLYTzkK4f0C7S+0TASDzLnRQYA3t6Mwa3GesFV3Mo
        awFSXd4u5JGu6pQM0PLRUW0S7g==
X-Google-Smtp-Source: APXvYqy+vnzYxKNOFFCwqU42J6BMf/HU16v3B829Ilw1s/h+vQQoK0J7FfApNWg/i23CJ31VDSIWHw==
X-Received: by 2002:a65:5c4b:: with SMTP id v11mr6565504pgr.62.1567747989817;
        Thu, 05 Sep 2019 22:33:09 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l31sm7205611pgm.63.2019.09.05.22.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 22:33:09 -0700 (PDT)
Message-ID: <5d71ef95.1c69fb81.6d090.085d@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190905192412.23116-1-lee.jones@linaro.org>
References: <20190905192412.23116-1-lee.jones@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>, agross@kernel.org,
        alokc@codeaurora.org, bjorn.andersson@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org, vkoul@kernel.org,
        wsa@the-dreams.de
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: [RESEND v3 1/1] i2c: qcom-geni: Disable DMA processing on the Lenovo Yoga C630
User-Agent: alot/0.8.1
Date:   Thu, 05 Sep 2019 22:33:08 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Lee Jones (2019-09-05 12:24:12)
> We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
> a rather horrific bug.  When I2C HID devices are being scanned for at
> boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
> When it does, the laptop reboots and the user never sees the OS.
>=20
> Attempts are being made to debug the reason for the spontaneous reboot.
> No luck so far, hence the requirement for this hot-fix.  This workaround
> will be removed once we have a viable fix.
>=20
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/i2c/busses/i2c-qcom-geni.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-=
qcom-geni.c
> index a89bfce5388e..17abf60c94ae 100644
> --- a/drivers/i2c/busses/i2c-qcom-geni.c
> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> @@ -355,11 +355,13 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev =
*gi2c, struct i2c_msg *msg,
>  {
>         dma_addr_t rx_dma;
>         unsigned long time_left;
> -       void *dma_buf;
> +       void *dma_buf =3D NULL;
>         struct geni_se *se =3D &gi2c->se;
>         size_t len =3D msg->len;
> =20
> -       dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +       if (!of_machine_is_compatible("lenovo,yoga-c630"))

This compatible isn't in the 5.3 rc series nor is it in linux-next yet.
Is this "hot-fix" for the next merge window? Or is this compatible
string being generated by firmware somewhere and thus isn't part of the
kernel?

> +               dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> +
>         if (dma_buf)
>                 geni_se_select_mode(se, GENI_SE_DMA);
>         else
