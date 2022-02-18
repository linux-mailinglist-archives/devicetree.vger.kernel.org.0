Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E71D24BB4D0
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 10:02:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233000AbiBRJCD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 04:02:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233011AbiBRJCB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 04:02:01 -0500
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3221D532ED
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 01:01:45 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id c18so4227511ioc.6
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 01:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U8AEdmITUIDJSI02jf8n1UdQu5Z2kTq1rYcS4yrbyjQ=;
        b=g10Pv4nLzUwZQKqmdv9zn0DbJnh7QDler3SfEmWHSCPPNMePstfRf6EIz8T9g1k3q5
         Y2fDM52ypuGLRKkJmSK8e8XuD77uA4DFttbqXAc/496wXFtVCXCxiWmyT03EMukXyZBS
         3Bz6lISNM4D11i14X4GbTJlF6wTstAeoWVTls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U8AEdmITUIDJSI02jf8n1UdQu5Z2kTq1rYcS4yrbyjQ=;
        b=zwQuytkU8978LgC6iWu2UhaCEqxPNRN/9mjXcKgWOhV10S+hUhaTZ+uNXb9aHWSOKY
         oKw34kN8pULyq6RyOOrCdJZcbQMJO6v0jZfvOG/y+ItrWdJB4guycjKplXA8cxNv3a26
         3LR71shoYv8VtN45zGdnTAYzQ2EJWaMUiApwcTpIL3fq1Y8e1GNweqWaKZJKh9YcaW2G
         Kv/N5PcMHMq/4ZbjPCuxk39gfdKuBdq0UyxFFOBaQxnpB6vBL2Hy9UtJL88ikt4x2ExY
         gsRcyjDQ21O9JDOf8xW5n1Cf6XbwNst1v6pv5DzCdWpQ+aGEuNrKn2jQnOYYaUKJ8D/d
         d4yg==
X-Gm-Message-State: AOAM531bkB3IANLNfX/Kjgv0b5KQsh2lQfa5Wi+FlND+8NDauVpaKmb8
        mhqB/adAE/OAGBkaufqPw31cLDiRN6E5vvOL6oV4MQ==
X-Google-Smtp-Source: ABdhPJwkHQMn7rS7t8JjEUIDpKt6F6hXh8261rU+mdXf4Nr0q63mzDPdxRNHBcKlGfW12wJ7ty3/ZQUDZVuxWVb6Ol8=
X-Received: by 2002:a05:6602:29cb:b0:638:d53c:d212 with SMTP id
 z11-20020a05660229cb00b00638d53cd212mr4869652ioq.167.1645174903774; Fri, 18
 Feb 2022 01:01:43 -0800 (PST)
MIME-Version: 1.0
References: <20220218063610.1530630-1-rexnie3@gmail.com>
In-Reply-To: <20220218063610.1530630-1-rexnie3@gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 18 Feb 2022 17:01:17 +0800
Message-ID: <CAJMQK-gz5ha232M22+wEY8Bid4oHOESJPk3vRXDU_dzAeiaEQA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Add panel-edp: add lcd innolux,n140hca-eac
To:     Rex Nie <rexnie3@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, spanda@codeaurora.org, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 18, 2022 at 2:36 PM Rex Nie <rexnie3@gmail.com> wrote:
>
> innolux,n140hca-eac is a eDP-based LCD panel. This panel has 1920x1080
> resolution in 14-inch TFT panel.
>
> Signed-off-by: Rex Nie <rexnie3@gmail.com>
> ---
>  .../display/panel/innolux,n140hca-eac.yaml    | 43 +++++++++++++++++++
>  drivers/gpu/drm/panel/panel-edp.c             | 26 +++++++++++
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/innolux,n140hca-eac.yaml
>
Hi Rex,

Please split yaml and driver into different patches.
You don't need to create a new binding for innolux,n140hca-eac.yaml.
You can add the compatible into panel-simple.yaml. Check
innolux,n125hce-gn1 for example.

> diff --git a/Documentation/devicetree/bindings/display/panel/innolux,n140hca-eac.yaml b/Documentation/devicetree/bindings/display/panel/innolux,n140hca-eac.yaml
> new file mode 100644
> index 000000000000..5493e383c97c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/innolux,n140hca-eac.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/innolux,n140hca-eac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Innolux N140HCA-EAC 14 inch eDP 1080p display panel
> +
> +maintainers:
> +  - Sandeep Panda <spanda@codeaurora.org>
> +  - Douglas Anderson <dianders@chromium.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: innolux,n140hca-eac
> +
> +  enable-gpios: true
> +  power-supply: true
> +  backlight: true
> +  no-hpd: true
> +
> +required:
> +  - compatible
> +  - power-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    panel_edp: panel-edp {
> +        compatible = "innolux,n140hca-eac";
> +        enable-gpios = <&pio 96 GPIO_ACTIVE_HIGH>;
> +        power-supply = <&pp3300_disp_x>;
> +        backlight = <&backlight_lcd0>;
> +        no-hpd;
> +    };
> +
> +...
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
> index f7bfcf63d48e..f5f9c9cb26ba 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1330,6 +1330,29 @@ static const struct panel_desc innolux_n125hce_gn1 = {
>         },
>  };
>
> +static const struct display_timing innolux_n140hca_eac_timing = {
> +       .pixelclock = { 72600000, 76420000, 80240000 },
> +       .hactive = { 1920, 1920, 1920 },
> +       .hfront_porch = { 80, 80, 80 },
> +       .hback_porch = { 190, 190, 190 },
> +       .hsync_len = { 60, 60, 60 },
> +       .vactive = { 1080, 1080, 1080 },
> +       .vfront_porch = { 6, 6, 6 },
> +       .vback_porch = { 38, 38, 38 },
> +       .vsync_len = { 8, 8, 8 },
> +       .flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW,
> +};
> +
> +static const struct panel_desc innolux_n140hca_eac = {
> +       .timings = &innolux_n140hca_eac_timing,
> +       .num_timings = 1,
> +       .bpc = 6,
> +       .size = {
> +               .width = 309,
> +               .height = 174,
> +       },
> +};
> +
>  static const struct drm_display_mode innolux_p120zdg_bf1_mode = {
>         .clock = 206016,
>         .hdisplay = 2160,
> @@ -1750,6 +1773,9 @@ static const struct of_device_id platform_of_match[] = {
>         }, {
>                 .compatible = "innolux,n125hce-gn1",
>                 .data = &innolux_n125hce_gn1,
> +       }, {
> +               .compatible = "innolux,n140hca-eac",
> +               .data = &innolux_n140hca_eac,
>         }, {
>                 .compatible = "innolux,p120zdg-bf1",
>                 .data = &innolux_p120zdg_bf1,
> --
> 2.25.1
>
