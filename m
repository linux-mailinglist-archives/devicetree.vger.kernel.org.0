Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16B7A678383
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 18:45:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbjAWRpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 12:45:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230489AbjAWRph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 12:45:37 -0500
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 914B57ED7
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:45:36 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-4c24993965eso182502507b3.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d01zSTfGwrlLeoMTvhp7fTs/JenLOvU/1msLaleXMQQ=;
        b=RQFR5laQW/95zTnrVDFLNbt4F2okD98YOCaKDt9M5Fy8B4k+UBnVpviU83NyfYyiXl
         P0ziLLc4tDftsJbJS10OdOSLeqK8EDMh/OSCAKJV43PMrBteRPbCA7TzFFxotpeT+Qce
         7AjEBxUm94Kubw+Bz8yAffEW3Q5EqrQdX5Mk03F53e7HRKTHLRP9sUuWd1U8RjDvd17s
         jJsVEzbcHsB309If22D059exzNDf6GHPQmVbGH3KJtLChJDlRHOPLB+mhvsKocGpD09R
         Nj4nD4nR3Nd88daDHLWzfmWfTnZ0t4vVYnMDl5dHIaDhS0jrjAMi0XAiF4zuusoOxQ1Y
         OPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d01zSTfGwrlLeoMTvhp7fTs/JenLOvU/1msLaleXMQQ=;
        b=lK0gDywFijmhyyqlgZBss35YmX4Lzqkq6wR5JrhywHDcF0ICOyzMZoQxb9joBu93O6
         HthBebaPtYRZrjT66Cru3LY8psWjFPyv1jWmkZKziHH78XFRbmZ2kU7DlenFCf57yNqI
         Pu57vmVZ4XXBzIhHRMSVf8x/laGqTlD2nW1mOtX+f0rFe0e8YUwDgwjX9hnHApKeOtja
         BcgMQ2rlWorNl9iivnY7SdI4THAP3rJuL1t7TH4U+eLXd67ZPxl5neRUQjOatQjRonln
         hweOAhsOKLc262acMrv/xDX+oPKCZch5q+Pc22NIdY+3/ZvMLxxnlz3iyC0Zwb8iS27c
         jt8g==
X-Gm-Message-State: AFqh2koXHhlLKrp+dAE/152B1DFXMd7/PYQdi9evo/fw87dtn/eJWEwg
        EMIopsbnGgPGeb26Tn1FzsyLJePyDXRPVw1xpTt20g==
X-Google-Smtp-Source: AMrXdXt5IObiQj67C6S85jBL24ByAnHR7lXdpVBWRz8FNgT3v9kaaI4HgA+mDKA2qzz73vgg4qS0HOkIMztpBLnTn08=
X-Received: by 2002:a81:6145:0:b0:4db:fa5d:c681 with SMTP id
 v66-20020a816145000000b004dbfa5dc681mr2845868ywb.48.1674495935743; Mon, 23
 Jan 2023 09:45:35 -0800 (PST)
MIME-Version: 1.0
References: <20230123164018.403037-1-jagan@edgeble.ai> <ae50541f-7456-6088-b310-c67f653176ee@linaro.org>
In-Reply-To: <ae50541f-7456-6088-b310-c67f653176ee@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Mon, 23 Jan 2023 23:15:24 +0530
Message-ID: <CA+VMnFyfK-eZhneJuf54EngcS8XmhnOPXXzdjzBsiChpJV-7rg@mail.gmail.com>
Subject: Re: [PATCH 1/4] drm: panel: jadard-jd9365da-h3: Fix panel vendor and model
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Tom Cubie <tom@radxa.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Jan 2023 at 22:52, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 23/01/2023 17:40, Jagan Teki wrote:
> > The initial datasheet claimed that chouzhong designed this 10"
> > DSI panel on top of JD9365DA IC, but later Radxa mentioned that
> > chouzhong is the manufacturer.
> >
> > So the actual design of the panel, gsensor, and customized FPC
> > is done by Radxa. The panel model named is Radxa Display 10HD
> > with AD001 is the part number.
> >
> > Fix the binding and panel driver with the proper panel vendor
> > and model.
> >
> > Fixes: <6b818c533dd8> ("drm: panel: Add Jadard JD9365DA-H3 DSI panel")
> > Fixes: <bb3098eead99> ("dt-bindings: display: Document Jadard
>
> Does not look like correct syntax. Did you run checkpatch?

Yes. I did check with --strict as well.

>
> > JD9365DA-H3 DSI panel")
> > Reported-by: Tom Cubie <tom@radxa.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> >  .../bindings/display/panel/jadard,jd9365da-h3.yaml  |  4 ++--
> >  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c    | 13 ++++++++-----
>
> Bindings are always separate.

Correct, but separation here triggers a warning for compatible not found.

>
> >  2 files changed, 10 insertions(+), 7 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> > index c06902e4fe70..10ba1b813304 100644
> > --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> > @@ -16,7 +16,7 @@ properties:
> >    compatible:
> >      items:
> >        - enum:
> > -          - chongzhou,cz101b4001
> > +          - radxa,display-10hd-ad001
> >        - const: jadard,jd9365da-h3
> >
> >    reg: true
> > @@ -52,7 +52,7 @@ examples:
> >          #size-cells = <0>;
> >
> >          panel@0 {
> > -            compatible = "chongzhou,cz101b4001", "jadard,jd9365da-h3";
> > +            compatible = "radxa,display-10hd-ad001", "jadard,jd9365da-h3";
> >              reg = <0>;
> >              vdd-supply = <&lcd_3v3>;
> >              vccio-supply = <&vcca_1v8>;
> > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > index 48c1702a863b..ea89cecad0cf 100644
> > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > @@ -167,7 +167,7 @@ static const struct drm_panel_funcs jadard_funcs = {
> >       .get_modes = jadard_get_modes,
> >  };
> >
> > -static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
> > +static const struct jadard_init_cmd radxa_display_10hd_ad001_init_cmds[] = {
> >       { .data = { 0xE0, 0x00 } },
> >       { .data = { 0xE1, 0x93 } },
> >       { .data = { 0xE2, 0x65 } },
> > @@ -364,7 +364,7 @@ static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
> >       { .data = { 0xE7, 0x0C } },
> >  };
> >
> > -static const struct jadard_panel_desc cz101b4001_desc = {
> > +static const struct jadard_panel_desc radxa_display_10hd_ad001_desc = {
> >       .mode = {
> >               .clock          = 70000,
> >
> > @@ -384,8 +384,8 @@ static const struct jadard_panel_desc cz101b4001_desc = {
> >       },
> >       .lanes = 4,
> >       .format = MIPI_DSI_FMT_RGB888,
> > -     .init_cmds = cz101b4001_init_cmds,
> > -     .num_init_cmds = ARRAY_SIZE(cz101b4001_init_cmds),
> > +     .init_cmds = radxa_display_10hd_ad001_init_cmds,
> > +     .num_init_cmds = ARRAY_SIZE(radxa_display_10hd_ad001_init_cmds),
> >  };
> >
> >  static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
> > @@ -452,7 +452,10 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
> >  }
> >
> >  static const struct of_device_id jadard_of_match[] = {
> > -     { .compatible = "chongzhou,cz101b4001", .data = &cz101b4001_desc },
>
> This breaks ABI. When was support for it merged?

It was merged last year, in September

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=6b818c533dd8615a803a72733eace58fd06e5a3c

Jagan.
