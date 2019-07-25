Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9944075496
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387591AbfGYQsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:48:54 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:34886 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729555AbfGYQsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 12:48:54 -0400
Received: by mail-io1-f65.google.com with SMTP id m24so98718110ioo.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
        b=Oq3bWQYZfePc311A34AbLZpfdLSyWQ9zAmOxY8w/LT5D3Z7amPYgg7slXVnLbaYT5s
         dApXuC+dvlXm4a7wKv0nZdbyayoNVDZ4t5PoK8tbVG3OE7LmMafdc1Ctd/dWKEzxKHln
         xwxF9Q7T9eZPyvnh7tT9vMxAjquvbNlDsV/PY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y98fApz06JAWtv7lUwUx5g2Y+VKbfux7cYr11jtX85M=;
        b=I1sR3MbyvzBJg9yhrQ4wy8AndIntgb0tXhjOyN2FqCnx7aF0RI3aDCESzebimQNCLY
         94rEWWQismj0BiA961KRAM5IPnBwekn3O4MT7XG1M33JfOF7uhZ/JIc9/Gi10iTdolj4
         emSfQj5DcmjmsccBfBoGWppP1iXCJ0enI2UAlipK7AJY9MnfCXKMLGZQ+x8OXkKqrPEz
         vcgBiPoA5G/GXrTHgm2+ZJej79DtxLU+T/QfzN2ff95DltQxBomJzdQ1Yy7E03813RiN
         sbZR8ZxrJIzR840S5boGHkTc3bgkhNTC4Z/jFWXI0brCT7FRm3djAUwGS85AptVxgGB1
         1A1A==
X-Gm-Message-State: APjAAAWxN3eQnv1TlObthDV+fWPRPf/BUI5h9QEg+BY2xpmDJojcnCPl
        7IkBMXjVN2z53j5KzGYfmALHluOhFqc=
X-Google-Smtp-Source: APXvYqxBDxzg/++8sLyUXc8Sty/wFZtEtA04dEVAGSq4eZ+MxeRjOM3fAaLZnDN5dJ5fS1CQE0/B5w==
X-Received: by 2002:a02:230a:: with SMTP id u10mr9830211jau.117.1564073333548;
        Thu, 25 Jul 2019 09:48:53 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id z17sm69816715iol.73.2019.07.25.09.48.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id k8so98718108iot.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
X-Received: by 2002:a02:ac03:: with SMTP id a3mr94891125jao.132.1564073332377;
 Thu, 25 Jul 2019 09:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org> <20190725162642.250709-2-mka@chromium.org>
In-Reply-To: <20190725162642.250709-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Jul 2019 09:48:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Message-ID: <CAD=FV=X85ACbN79foy_f4qQ=9a+8XFf0a3cE7S4BMn6pWvMmPA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 25, 2019 at 9:26 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
>
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - allow MIT license
> - move pinctrl section to the bottom
>
> Changes in v2:
> - rebased on v5.4-armsoc/dts32 (0d19541e3b45)
> ---
>  .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +---------------
>  arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 124 ++++++++++++++++++
>  2 files changed, 125 insertions(+), 114 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
