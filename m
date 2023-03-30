Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0006D120B
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 00:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbjC3WUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 18:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjC3WUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 18:20:31 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBDFB761
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 15:20:30 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id j7so25445831ybg.4
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 15:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680214829;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XHbYcIgrFHrYvAFgKxf4i1nvwZgCPxOVsUNf1NNENs=;
        b=XUlxAl8du6o4u/LV1RNVFNvw7n3F7NCnc5aU2soy13kDVY6OC2+6IadcPrBEv7pf3A
         ftrDS1KsftjQmiYSNS/rmQb5R3qIabtbFTOumMp0SkG3mhthWgvPEJ6Uh5e5bp8xVGIn
         vsLEhwwB3R8HrOvqHzm9upBbJGRYI0qZQ02XE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680214829;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1XHbYcIgrFHrYvAFgKxf4i1nvwZgCPxOVsUNf1NNENs=;
        b=yjhnhM7Wl3uOFO38Ivk3rYS9sPwYfNISWNbIFiWgbhbOb7XIohF2c+5Fg7meuSCoXx
         Jm3OArHTjrxLsqdo4S2bkxc8C7qHVZTC6t/We//Qx8mELbMm73IfUZhXhsg9exBEfoDl
         +LC/s+wOLdfbx/p/bOqi+AxP2eS5CifnVEHnZrmd4hSCNWwsz+ZCxVVBLrerNvV6ExaF
         z55twS5LbDTjzzX8BhJM00TAGPFfZ8v+3drXdDvF+4K+XSlRd79pG25+3y+aSPW3HYof
         i+Rwvqab5BMFi/3fHViKRA/8S2LSIULC500ZslvEc0LHzag9qSzRd9egnz2QdkNfrKXw
         72tw==
X-Gm-Message-State: AAQBX9cQJ99M92Hf97Fiq8Er5v6wb44lcQ4qmJrnmhXPHRWsVBdedQux
        gCtlRuJtjYIclcHRZU6nRj3hE0CoxJn8Befiu6M=
X-Google-Smtp-Source: AKy350Yo+cfkTc/HgdS4LevkHdvWexkq5gTFf4soBd05qGITlO5YfNxtSc5q73TIuPgu9DjPYeE19g==
X-Received: by 2002:a25:ae58:0:b0:b76:3e1:c42b with SMTP id g24-20020a25ae58000000b00b7603e1c42bmr26209676ybe.38.1680214829630;
        Thu, 30 Mar 2023 15:20:29 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id g84-20020a252057000000b00b7767ca7469sm169068ybg.6.2023.03.30.15.20.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 15:20:28 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id f188so6970586ybb.3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 15:20:28 -0700 (PDT)
X-Received: by 2002:a05:6902:1501:b0:b6d:80ab:8bb6 with SMTP id
 q1-20020a056902150100b00b6d80ab8bb6mr16743748ybu.1.1680214828159; Thu, 30 Mar
 2023 15:20:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230330220251.2388494-1-javierm@redhat.com>
In-Reply-To: <20230330220251.2388494-1-javierm@redhat.com>
From:   Brian Norris <briannorris@chromium.org>
Date:   Thu, 30 Mar 2023 15:20:16 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Message-ID: <CA+ASDXOtyBgr0o+bhjOScjs2h3oUKdouoAi4m+Z=R=Bho=iRFA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove non-existing pwm-delay-us DT property
To:     Javier Martinez Canillas <javierm@redhat.com>
Cc:     linux-kernel@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Enric Balletbo i Serra <eballetbo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lin Huang <hl@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, zain wang <wzz@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 30, 2023 at 3:03=E2=80=AFPM Javier Martinez Canillas
<javierm@redhat.com> wrote:
>
> There is no neither a driver that parses this nor a DT binding schema tha=
t
> documents it so let's remove it from the DTS files that make use of this.
>
> The properties that exist are post-pwm-on-delay-ms and pwm-off-delay-ms,
> defined in the pwm-backlight DT binding. So probably what these DTS want
> is something like following:
>
>         backlight: backlight {
>                 compatible =3D "pwm-backlight";
>                 enable-gpios =3D <&gpio4 21 GPIO_ACTIVE_HIGH>;
>                 pinctrl-names =3D "default";
>                 pinctrl-0 =3D <&bl_en>;
>                 pwms =3D <&pwm1 0 1000000 0>;
>                 post-pwm-on-delay-ms =3D <10>;
>                 pwm-off-delay-ms =3D <10>;
>         };
>
> But that should be follow-up change if that is the case. Because otherwis=
e
> it would be change in behaviour, since currently pwm-delay-us is a no-op.
>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>

pwm-delay-us seems to have been a downstream-only ("CHROMIUM", if
you're familiar with ChromiumOS kernel parlance) change that seems
like a combination of the two now-upstream properties you point at. I
looked through the first use of pwm-delay-us on RK3399 Gru systems,
and I can't find a spec reference that said it was needed; perhaps it
was needless copy/paste imitation?

So, simple deletion is probably fine:

Reviewed-by: Brian Norris <briannorris@chromium.org>
