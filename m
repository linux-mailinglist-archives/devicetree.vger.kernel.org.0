Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 891834E6A0A
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 21:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347285AbiCXUzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 16:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353759AbiCXUzF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 16:55:05 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4AB525EB0
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 13:53:31 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id yy13so11616358ejb.2
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 13:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aFSr1woZwQXcWxiIeXMBTdkSmylSGPSvw4l7QhCcJdk=;
        b=UWOwijb6tG4M9q5CzVe8FLlKtNmcdWmo3x+k5WAD0Lt4E7cx8AILpBG8mEMI+DnmqR
         WL38ld57I7KlKmg/69QrQdqARexREhJnmXWz1eZsisBYV0TJxrVX+c7li7f8/tBXOD7O
         y54nz6+M26mmk6N5pwX7PTdnHSVcUN2rsLmQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aFSr1woZwQXcWxiIeXMBTdkSmylSGPSvw4l7QhCcJdk=;
        b=6c9tmmM5KW9OkGj8tPmgH6AJOxSGcNXevZBA7VaeZckreJWtrg0TMlP+8UVXg+aW3R
         scyYrT8t8GIBgoBQ74OX9fxOrhhMPDJtq9jlXofiaIIYA20qODxpvAQS2eoKkhImRt7k
         WLRZYMzPpLPemuub21L961qvRYEGVsOA9lyigSgLru3fchvxGFA8AObtqcnhqzbR/FV/
         UvYcy1tCKG5ALxrBI3hy7PphQGpFa6tpCs9ovUfaVPJxEm//sLaqFCr1sltHzZm73BN6
         97DOwD3/znRYv16ZiRnVnlFievsn7BMf0v+Yb+Xx5cHqI/0pL1RgxmNOQkY9qyexjmWh
         37Fg==
X-Gm-Message-State: AOAM531VHnDXvd4idqFHdO8df3/JbuMr+sjQ0DsfYE3+woy4JjP2KRyD
        S7ExCAOfSBVGu+6ZbR4aAxbH/OSYoJuZy0Ku
X-Google-Smtp-Source: ABdhPJwD7hDacuBm3gvUO7POsTF1vp185Pxn0RK/hrnnbOXNO+QbDNdcspeT3jJn/xCKPh0Rx8OB1A==
X-Received: by 2002:a17:906:3cea:b0:6da:ea45:ea9e with SMTP id d10-20020a1709063cea00b006daea45ea9emr7695869ejh.574.1648155209463;
        Thu, 24 Mar 2022 13:53:29 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id do8-20020a170906c10800b006dfe680dbfcsm1574964ejc.43.2022.03.24.13.53.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Mar 2022 13:53:28 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so3309616wme.0
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 13:53:28 -0700 (PDT)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr15649886wmc.29.1648155208026; Thu, 24
 Mar 2022 13:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220324111335.1.I1131d63cbefbfa9ff107a284e2e51f880c5bf7c8@changeid>
In-Reply-To: <20220324111335.1.I1131d63cbefbfa9ff107a284e2e51f880c5bf7c8@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 24 Mar 2022 13:53:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XG-JqqjcoAUoLWHjOyOSQMxD2vyXi9WVJNSaUawtvthg@mail.gmail.com>
Message-ID: <CAD=FV=XG-JqqjcoAUoLWHjOyOSQMxD2vyXi9WVJNSaUawtvthg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add AUO B133UAN01 panel
To:     Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        LKML <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
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

Hi,

On Thu, Mar 24, 2022 at 11:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add binding for the AUO B133UAN01 panel. It is 13.3" TFT LCD panel
> with WUXGA (1920x1200) resolution.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1eb9dd4f8f58..e5cd45c81d02 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -49,6 +49,8 @@ properties:
>        - auo,b133han05
>          # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
>        - auo,b133htn01
> +        # AU Optronics Corporation 13.3" WUXGA (1920x1200) color TFT-LCD panel
> +      - auo,b133uan01

Breadcrumbs to save Rob Herring from responding is that we're moving
to do this using the eDP autodetect feature instead of adding a new
compatible. v2 is at:

https://lore.kernel.org/r/20220324134819.v2.1.I816014b6c62da5a33af5021f3cc35cea66552c00@changeid/

-Doug
