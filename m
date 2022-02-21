Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A57B94BD5B2
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 07:00:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344787AbiBUFxk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 00:53:40 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344786AbiBUFxi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 00:53:38 -0500
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D39403C4B1
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 21:53:15 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id e11so9245189ils.3
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 21:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tu5+ZumlPrWZWUHsiI2Qy64iwmLnXHPFMBECCxnAn1Q=;
        b=eNH4LlOm7E19BUvV8/YUg4na+pugGL0GQtGPyd4F0sskxsfwUbBSISYkazJdvs/PoP
         TCUuJ7V7E5q05LnFlzsaF6puEW9DPWepHDebomaIkIAB1deViIk2fnuBFkUBKQaOz4Wi
         r4T2B57aJdhZf+gNbMORQrt6rYCVmxRrpXl+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tu5+ZumlPrWZWUHsiI2Qy64iwmLnXHPFMBECCxnAn1Q=;
        b=PrkE/z2F96t1RJQVv9ez5KDFJE8WN9tmiLLfjrtN1goUOhJvEzA1Ve5LDvq2BTcqO3
         uzgiFoDyJCEJh1W8xf3JhgXZ9n/KyjlziY5Sv8aLVM5lU+3qLnRD+5uQpkaBi8PfCbLg
         oxKyJxoQ4F1jXHbRp9hulmIE3zQD6+Edd4GMCpUvvlsWICiK9yNrmZWqXxAANVkgaTHN
         oqQUFe7/3jg4ZYVgcA0KOAiSzFuzLy4b1pHATIQT3Vi431xO3T48vTCLUCkjkc0iEB8C
         jLODymOspBmZxxZ8Ra+O531uOdjFhGmDEJ40TkCMBuZaI1YJReNCS4/97DKnHNfs5wgC
         Cd7w==
X-Gm-Message-State: AOAM533njqEp0gjyCq4lwkQL9V5ZHVhyJzWDUzDyHUEZDi+hmD5x2GoF
        fYEczaCK43QMqs85F+X6mliE5wK/9QhahqY6z3QHog==
X-Google-Smtp-Source: ABdhPJy+ADYxxlDzmssOlbjH+urLluUHRb2DC7LoPstB1CTvBPMG2Vu8sbsrVI+mxW56/GIh/EIENpAVCZE2xANFsiE=
X-Received: by 2002:a92:b05:0:b0:2b7:ee19:ee15 with SMTP id
 b5-20020a920b05000000b002b7ee19ee15mr14838488ilf.10.1645422794893; Sun, 20
 Feb 2022 21:53:14 -0800 (PST)
MIME-Version: 1.0
References: <20220218094417.1631559-1-rexnie3@gmail.com> <CAG+K-_+txzJ2F9LONj_i3icqXFmn9byhUjJtu7N-xeY-5UKizQ@mail.gmail.com>
In-Reply-To: <CAG+K-_+txzJ2F9LONj_i3icqXFmn9byhUjJtu7N-xeY-5UKizQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 21 Feb 2022 13:52:49 +0800
Message-ID: <CAJMQK-ibOOdofUVso=RvLz5OiCzH0kaQ16VMgXY7Qpxm5NEEYA@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel-edp: Add eDP innolux panel support
To:     Rex Nie <rexnie3@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Daocai Nie <niedaocai@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 18, 2022 at 5:59 PM Rex Nie <rexnie3@gmail.com> wrote:
>
> Add hsinyi@chromium.org to cc list
>
> On Fri, 18 Feb 2022 at 17:44, Rex Nie <rexnie3@gmail.com> wrote:
>>
>> From: Daocai Nie <niedaocai@huaqin.corp-partner.google.com>
>>
>> Add support for the 14" innolux,n140hca-eac eDP panel.
>>
>> Signed-off-by: Daocai Nie <niedaocai@huaqin.corp-partner.google.com>

Acked-by: Hsin-Yi Wang <hsinyi@chromium.org>
>> ---
>>  drivers/gpu/drm/panel/panel-edp.c | 26 ++++++++++++++++++++++++++
>>  1 file changed, 26 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
>> index f7bfcf63d48e..f5f9c9cb26ba 100644
>> --- a/drivers/gpu/drm/panel/panel-edp.c
>> +++ b/drivers/gpu/drm/panel/panel-edp.c
>> @@ -1330,6 +1330,29 @@ static const struct panel_desc innolux_n125hce_gn1 = {
>>         },
>>  };
>>
>> +static const struct display_timing innolux_n140hca_eac_timing = {
>> +       .pixelclock = { 72600000, 76420000, 80240000 },
>> +       .hactive = { 1920, 1920, 1920 },
>> +       .hfront_porch = { 80, 80, 80 },
>> +       .hback_porch = { 190, 190, 190 },
>> +       .hsync_len = { 60, 60, 60 },
>> +       .vactive = { 1080, 1080, 1080 },
>> +       .vfront_porch = { 6, 6, 6 },
>> +       .vback_porch = { 38, 38, 38 },
>> +       .vsync_len = { 8, 8, 8 },
>> +       .flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW,
>> +};
>> +
>> +static const struct panel_desc innolux_n140hca_eac = {
>> +       .timings = &innolux_n140hca_eac_timing,
>> +       .num_timings = 1,
>> +       .bpc = 6,
>> +       .size = {
>> +               .width = 309,
>> +               .height = 174,
>> +       },
>> +};
>> +
>>  static const struct drm_display_mode innolux_p120zdg_bf1_mode = {
>>         .clock = 206016,
>>         .hdisplay = 2160,
>> @@ -1750,6 +1773,9 @@ static const struct of_device_id platform_of_match[] = {
>>         }, {
>>                 .compatible = "innolux,n125hce-gn1",
>>                 .data = &innolux_n125hce_gn1,
>> +       }, {
>> +               .compatible = "innolux,n140hca-eac",
>> +               .data = &innolux_n140hca_eac,
>>         }, {
>>                 .compatible = "innolux,p120zdg-bf1",
>>                 .data = &innolux_p120zdg_bf1,
>> --
>> 2.25.1
>>
