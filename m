Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 006596A5F46
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 20:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbjB1TIU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 14:08:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjB1TIT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 14:08:19 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FE5032524
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 11:07:47 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id ky4so11564068plb.3
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 11:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7OV3AYRBIB1t1Z9Nky6/7NnAlz8NP9EXT/b/YN8neM=;
        b=hTifPVqdB1THPSY4IH4slbrdPXne5zBIMcd+kxMlPONjrDAF22CIlxfCSkLa8MrKji
         r29vzWWF8ERdDt3zxVFSlAtSE0aXCaJwvIO1KYPuuGYzWBnUMdoUZ3Gsgzg11ChfR46M
         es2vngqn0WLCTQKGSzxOTa+ehhQLMohj677Vm0TyNFJD46IN2Az/IC39K6UjkNU06v2G
         X0pioyQYtpekdl4fCrUihUrS3+jyTKaB4xA949YgNt4P3hjA+QNh2pAuAZjlFijpn1oK
         TbtBEFhlUQ3B7JoBwsUneNrzIwoODxQrCHJSpuxDTn121sYSKVu0roAsYTv0fT08TVzA
         U3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7OV3AYRBIB1t1Z9Nky6/7NnAlz8NP9EXT/b/YN8neM=;
        b=brDXKWa0k0f8UYnUOSttFU8dtbcJZulF8sStbRwbb/cMPJyEwLzTKKRQf1c44z41mt
         P6D+NDLaMy3GXqI7F9G3ZSWq9/05AQnIGlA6E5JS1NTasausPjYkip6Sqa7to7wFVWwh
         sW/PDW1l4Cg3v8m84FYFO5ya/TVcXdmHFnnKrMUseyOJ00QRc9nk74ly1vguIoAXvbFc
         IWxEH/HWewViVOmLxfEVEW/pyoSs5Mciiunp4sZ6VpCif9qdCahBEpyxqyqib//T3GE4
         89GWgZxhvc4XXL3EdTVsqgD+Zay+EJ/qy0AQ78/KDqO4eKH97vyetvPC8RLZLjN6psBu
         XnvQ==
X-Gm-Message-State: AO0yUKWNfaq56IxY+doAXZcpP6OacuggF0/4du1kaRQjPc9V6ogaF5zG
        Tm/RZ/3zJXW8iAfnoGDVOssGh58u2RNHn4F3iZF/Ew==
X-Google-Smtp-Source: AK7set/SMUDNkeAqXsvNP+HnejDwXVGW1IrxOKOPLSH/mkg2nTMEmYmVoZ0yw+oIdhpAZEuL8imom39f92Dmq+94euw=
X-Received: by 2002:a17:90a:728a:b0:237:29b1:188f with SMTP id
 e10-20020a17090a728a00b0023729b1188fmr1574936pjg.8.1677611260538; Tue, 28 Feb
 2023 11:07:40 -0800 (PST)
MIME-Version: 1.0
References: <20230228174019.4004581-1-jjhiblot@traphandler.com>
In-Reply-To: <20230228174019.4004581-1-jjhiblot@traphandler.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 28 Feb 2023 11:07:04 -0800
Message-ID: <CAGETcx-w4A3fz_DPqJG+9P6ETGAPv547DcnsO52gqTO1_vijsw@mail.gmail.com>
Subject: Re: [PATCH] of: property: Add missing of_node_get() in parse_interrupt()
To:     jjhiblot@traphandler.com
Cc:     robh+dt@kernel.org, frowand.list@gmail.com,
        gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 9:40=E2=80=AFAM Jean-Jacques Hiblot
<jjhiblot@traphandler.com> wrote:
>
> From: Jean Jacques Hiblot <jjhiblot@traphandler.com>
>
> As all the other parsers do, parse_interrupt() must increase the refcount
> of the device_node. Otherwise the refcount is decremented every time
> parse_interrupt() is called on this node, leading to a potential
> use-after-free.
>
> This is a regression introduced by commit f265f06af194 ("of: property:
> Fix fw_devlink handling of interrupts/interrupts-extended"). The reason i=
s
> that of_irq_parse_one() does not increase the refcount while the previous=
ly
> used of_irq_find_parent() does.

Thanks for catching the issue Jean!

This feels like a bug in of_irq_parse_one() to me. It's returning a
reference to a node without doing a of_node_get() on it.

Rob, Marc, Do you agree?

Jean,

If they agree, can you please fix of_irq_parse_one() and add a
of_node_put() to existing callers (if they aren't already doing a
put()).

Thanks,
Saravana

>
> Fixes: f265f06af194 ("of: property: Fix fw_devlink handling of interrupts=
/interrupts-extended")
> Signed-off-by: Jean Jacques Hiblot <jjhiblot@traphandler.com>
> ---
>  drivers/of/property.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 134cfc980b70b..1f23bcb765c4e 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1380,7 +1380,10 @@ static struct device_node *parse_interrupts(struct=
 device_node *np,
>             strcmp(prop_name, "interrupts-extended"))
>                 return NULL;
>
> -       return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.n=
p;
> +       if (of_irq_parse_one(np, index, &sup_args))
> +               return NULL;
> +
> +       return of_node_get(sup_args.np);
>  }
>
>  static const struct supplier_bindings of_supplier_bindings[] =3D {
> --
> 2.25.1
>
