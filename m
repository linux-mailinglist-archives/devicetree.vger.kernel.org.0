Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D29A771A364
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233876AbjFAPzb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233770AbjFAPza (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:55:30 -0400
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D9B913E
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:55:28 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id e9e14a558f8ab-33b7f217dd0so156995ab.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685634927; x=1688226927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsHsbgqQuvkE13E+e8VjItpscwfgrZGQXzD0CfoYBYQ=;
        b=G1Wi4/3LTV4HkdQGEsyUF5UfKmkEUEpM0w+7QAXsaouVozADnYTYfu1VYvOe6qvRd8
         ymjIaWsNr+VM93P4sY2VnvegUpR6ftJIlOkssGvKNV1CMIyscSYZtjxGCYjJH6fAwXcK
         x1lGr6ZVRVMm0OViB6uJ88jThpxBZHPt85QTHXDPlIbGBb5nIxAMVMYsoOn5w2qOAeMR
         0tGUljSQRIdefLooiETFwftKjPtQIEavSY1P0s9gM+TdEK7TO5VByhvzV3b+1XNIb1P8
         jRiLC+DiJ0rfO9EvLNKP+Ods7YySavaf6X7UOvlarv/iQ/fsvsNzw5UZ69DYMLsMZmnV
         LeMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685634927; x=1688226927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsHsbgqQuvkE13E+e8VjItpscwfgrZGQXzD0CfoYBYQ=;
        b=dw5camTE9iApv02TAWAU/JM4hle0JjYP6h1dj1KyKd2N+ifT6ngnQjl5KJ5MuohdLV
         /QROwzN9VvtiCls6j5WB/hndvcohZO3wo50ftiRLfsjXgpPuuMBVkOrsp3rEbr6JYWBs
         cTfqDD2GD8jsWjlhG6EdCV+1VNnWtt79+eUXVhmgr9OalGizBtYsr/c+XDaVYiW5GxRR
         uCrTHnV+t07A2sfXiNfSMxXXiKUed8gYzQhVVSyfETSZFxLpluoW5WqRngrVg6N16daq
         lVXjEV8knOyC2rPwDNDiJNbQXcE4IhlgJDamaceJf1NdgspG7rlyU7yUUVhGkSKlNBFE
         CffA==
X-Gm-Message-State: AC+VfDzo65N2Vhe40ETQxNYQ4ruvqJepkteqZEfkLP9mr5tPFi9lfjZH
        qgDJE6qUfc5dybttVYYZkHIdTxcVT0/BCMdT5sIlDA==
X-Google-Smtp-Source: ACHHUZ4ihBDDV8KMBS8t5HnIs334oF8TNSFTWesIFt5YLcc6oyApAaXJeZp4DmW2lzbgpaPp7XxzYhInyVCMqlBTNz8=
X-Received: by 2002:a05:6e02:20c6:b0:338:3b6a:4719 with SMTP id
 6-20020a056e0220c600b003383b6a4719mr170365ilq.17.1685634927132; Thu, 01 Jun
 2023 08:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com> <20230525093151.2338370-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20230525093151.2338370-3-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 1 Jun 2023 08:55:15 -0700
Message-ID: <CAD=FV=XpHJVEpG5HcKroyGX7XMj1RwpNWQ1hbdDgnfBeAxECzg@mail.gmail.com>
Subject: Re: [v4 2/4] drm/panel: Support for Starry-himax83102-j02 TDDI
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
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 25, 2023 at 2:32=E2=80=AFAM Cong Yang
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
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)

Applied to drm-misc-next:

1bc2ef065f13 drm/panel: Support for Starry-himax83102-j02 TDDI MIPI-DSI pan=
el
