Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE99320D8E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727319AbfEPQ6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:58:48 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:34459 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727296AbfEPQ6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:58:45 -0400
Received: by mail-vs1-f66.google.com with SMTP id q64so2791076vsd.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
        b=KTu4I3iLkD6d25Qx/9ZfdJuiwwImY8tkog2XfJWMae7fnJz7hMQfsB3YluYGPWvkva
         W4oEQ+Mw86+nSDZlWZtIs7Vzh74xCnOKR7hFZCSSiAylCoIO5s+qZLGaqJKDS8QblmzJ
         7+AnU7kiJ3qf5MhmefdogpR3nFeT9Mrs0FqkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CIeWtimA7P9rrGuoEHFDb0M7OKtOA8ZV+AgbfX3hOsY=;
        b=dGpjtQGSkdoSzAQo6E3kK3MB4eYyk6Cns8avcK/Z2GSnhriLsfQMc+csGA1yAFqpD9
         5R+i9myt0vMjzxu39KTYHkND2UV7NHiVCKVPdGUfTX6EwpDZR4fHQsghmVGeLEbsbe02
         Qg0D1YDSPZCn8ZEkgVj8oe4Uva3J2SjtYG4lpDVjw8iuLwkNdxqxm+IPZhJ43HkrppY0
         pz/aKmQICcCfeB/xdD/SvaQV9S2udkI1DLl3yS3zRPGebkxWbQslVHuTjf/bacENIbtp
         Kc8TkAue0cKCDTkgjHkZlxP0tY5bgGNQV6mEV/DdJK6JE6kc9/Sr7dC/2liCPS0ozlE7
         oKAQ==
X-Gm-Message-State: APjAAAVNBdqk9W5uaCObBQtk5qI1DveU9PCZAqgKfUiV7q1S5JYsFaHL
        IwNz6EWzl/IYSHI8dK1R3uxkFdTPd3s=
X-Google-Smtp-Source: APXvYqzzL8gU1KraA8ZRfoJT6g9uEuYkgkbfhphyNzxVF24Tp/b+t9Ryxl0p8lW0nJk0xuWpV7Xx/w==
X-Received: by 2002:a67:ed0f:: with SMTP id l15mr24374270vsp.147.1558025923787;
        Thu, 16 May 2019 09:58:43 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id p185sm661423vkd.40.2019.05.16.09.58.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 09:58:42 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id d128so2760456vsc.10
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:58:42 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr17782417vsk.149.1558025921921;
 Thu, 16 May 2019 09:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org> <20190516162942.154823-3-mka@chromium.org>
In-Reply-To: <20190516162942.154823-3-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 May 2019 09:58:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Message-ID: <CAD=FV=WJrfAPMvK99QycHLuoTqXG8UWWojF+DpGZwB9ijckLig@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for
 speedy to 80 degC
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

> Raise the temperature of the GPU thermal trip point for speedy
> to 80=C2=B0C. This is the value used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for speedy.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - add entry at position in alphabetical order
> ---
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
