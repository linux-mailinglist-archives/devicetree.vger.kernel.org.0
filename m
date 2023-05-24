Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8429070FFB7
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 23:12:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbjEXVMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 17:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjEXVMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 17:12:54 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCE7E9
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 14:12:51 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id e9e14a558f8ab-338458a9304so17165ab.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 14:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684962771; x=1687554771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zT/HDg/gBVolXCcggpB7iSC/DWvpNoZ2VGMNWSuR74=;
        b=RkcFmnM0HLWQuKc8UgAw0e9xvrWfxkZ18UU71V/+md6GlosqEs5GzDY/a4UJxCkNm2
         yFek/5dSOlr36tQAQYPyVVOkLm7ZbOBjzFKZuVQbE7WLKT82ane7Hpz3IMu0xgVecZwN
         SmofscwdIr2/0IZ+GlSvXW+QSbErcSYt2ufNNnYqWJ78AnD/90rAY35gMrSkatVwJz1R
         Lr4hfQl+f+9jQ/xnercKbKQ0tlv8BIuAId9wXR5DsBdh6R2bYqLw8izC58h2uNHZrE5W
         JGUKVXqmKPeS2SQ7bBgM95TiTju8NigM2h5+wC00qaOy/ICoPS+GZGVW6wAPMuevuqmY
         jgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684962771; x=1687554771;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zT/HDg/gBVolXCcggpB7iSC/DWvpNoZ2VGMNWSuR74=;
        b=Mrq5KoABkZXVFQjOD63NUn4hX+Gj/UQmTK7FwAeKj+UTKZZjElnbkkx6u/ikAVZfvO
         v7Ls3NHtg1v1xFWXI5fOXn2G7fPGAQht2ttTU5QcfdjEGbQ0t4umAS9BUe2HpgGwqES8
         +n9AGhVUOuOASD/zq5nRqiRL597++h4PCgm3UEVsp/g8ppC1uXE+svZIeZx1Xe//IJh+
         Dyq5BcXzEvOeMnXmxeBmq4rHUsdbBGzIvZkYo7ZwD1+A8rIYfPLuRKcyJQHrJ5uaNv4e
         Y9b9+nAEJUh1AfUWPwMdYX0D/8jEIr/7r+Y6pqyhQW42xng2Sq+SgJTnea8yv8W/9CTf
         jdRg==
X-Gm-Message-State: AC+VfDwfXT0oZ4BTyC4HiKLBSJ24POeCiSKNXhjO8wFQ9oFrQLYO/oah
        vfb2V01KsTDeNTN0tqCFbUu0M9lkfsX6BqwhqyNIJg==
X-Google-Smtp-Source: ACHHUZ5PVlgmDkUaggheQ9kq1zpCNNG/WvpI/zFjM6+9rZiEuRcJv3dN4QRqcRItX2BQQ3VJJ7rOlQJYb3u3SyZXEqE=
X-Received: by 2002:a05:6e02:2196:b0:337:8a1b:b9ee with SMTP id
 j22-20020a056e02219600b003378a1bb9eemr66790ila.14.1684962770819; Wed, 24 May
 2023 14:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WRecTWsFM96k81YAx1=jJT0vpS4EPP0ZfWFUGHNFx9Tw@mail.gmail.com>
 <20230524072816.1131039-1-yangcong5@huaqin.corp-partner.google.com> <20230524072816.1131039-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230524072816.1131039-2-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Wed, 24 May 2023 14:12:36 -0700
Message-ID: <CAD=FV=UXD7EKkfghpGWp9ziB8DX-RbUzs+zOex9trRT4J-f+Yg@mail.gmail.com>
Subject: Re: [v2 1/4] drm/panel: Support for Starry-himax83102-j02 TDDI
 MIPI-DSI panel
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc:     daniel@ffwll.ch, neil.armstrong@linaro.org, sam@ravnborg.org,
        airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi,

On Wed, May 24, 2023 at 12:28=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The Starry-himax83102-j02 is a 10.51" WUXGA TFT panel. which fits in nice=
ly
> with the existing panel-boe-tv101wum-nl6 driver. From the datasheet[1], M=
IPI
> needs to keep the LP11 state before the lcm_reset pin is pulled high, so
> increase lp11_before_reset flag.
>
> [1]: https://github.com/HimaxSoftware/Doc/tree/main/Himax_Chipset_Power_S=
equence
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c b/drivers/gpu=
/drm/panel/panel-boe-tv101wum-nl6.c
> index f5a6046f1d19..5c8ec263e11f 100644
> --- a/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> +++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c
> @@ -76,6 +76,75 @@ struct panel_init_cmd {
>         .len =3D sizeof((char[]){__VA_ARGS__}), \
>         .data =3D (char[]){__VA_ARGS__} }
>
> +static const struct panel_init_cmd starry_himax83102_j02_init_cmd[] =3D =
{

nit: Please have the order of the tables match the order they're
referenced. That means this should come _after_
"starry_qfh032011_53g_init_cmd", not at the start of the tables.


-Doug
