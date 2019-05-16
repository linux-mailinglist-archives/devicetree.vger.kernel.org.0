Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAEF420D82
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:57:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726610AbfEPQ5a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:57:30 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:46722 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726317AbfEPQ53 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:57:29 -0400
Received: by mail-vs1-f66.google.com with SMTP id e2so2747336vsc.13
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
        b=nmkNcSzFh5OLOVDoIP1Pa1b3QlFQ9XUYxSji0qAe4uJ8qe8/ySQ0B315ClUKfCMxCI
         QreA9gJduIu2vRUzTpTojdUotl5e6fJq+SceMidLHwj0AeQMK7NwYdEyur30qezJkGB1
         6P6pUygJV9C+M4itjNtSHxbE6pyY55gvxIt8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XhVy4fV27jq2t1U3j4yj5LOX3kolPCtSSv2ORXGfHzE=;
        b=GILQ+2vFOuq9MEutB8WHLQM9mSDbd2DP637Y+0Y2fJbK/orouNvD2VE9oaY9kOgDE8
         R+Y+Q2mubHetIT/GJfFaC6WqVaFdPjXq3svAQa9Iv627PLYpq1eKc/rMCAFp2fp9rSry
         72PjUkv007+/LBycLZxnwc4to/q+zhtL72+jxRXSYpSE8snmwTaY9vUFpqYT7oVpVp/s
         QZ2lXtaF+cEW5HgKjWxr3z7sgtEmvBcpO+QDdZKDci9MqcAt07zDH9WhCVE6/QkhgGQ+
         YWVBLfI+/kToZBzbx/eu3PuoE4t4QVmh8IKylO+zN8O0Jaud8Zr961Kcxh5vdsXbMYFr
         btWQ==
X-Gm-Message-State: APjAAAXpFxqc97wusjDTuwa7QGOJbKcvDV8KtTy8vNFuI9JPUt/V6DwW
        tNsRtQO3ohTaTZftqLK23Fy8bsyDDak=
X-Google-Smtp-Source: APXvYqwkEFKV70FLxNL05HkNbXdisdHWWvhJf7O05EJv/OCAXHnlsxcht9RR/fpCgLhKdrnoHf0K8Q==
X-Received: by 2002:a67:7587:: with SMTP id q129mr23196700vsc.40.1558025848060;
        Thu, 16 May 2019 09:57:28 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id g3sm5223878vkb.9.2019.05.16.09.57.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 09:57:27 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a95so1535715uaa.13
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:57:26 -0700 (PDT)
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr1792277uar.109.1558025846288;
 Thu, 16 May 2019 09:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 May 2019 09:57:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Message-ID: <CAD=FV=XtAMJcNCkV=wm1iNcMo3UenmrCDKJkmS6wtxvtpvLrag@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: raise CPU trip point
 temperature for veyron to 100 degC
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 16, 2019 at 9:29 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> This value matches what is used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices. Keep the temperature
> for 'speedy' at 90=C2=B0C, as in the downstream kernel.
>
> Increase the temperature for a hardware shutdown to 125=C2=B0C, which
> matches the downstream configuration and gives the system a chance
> to shut down orderly at the criticial trip point.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
>  arch/arm/boot/dts/rk3288-veyron.dtsi       | 5 +++++
>  2 files changed, 9 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
