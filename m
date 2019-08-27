Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32DB99F610
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 00:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbfH0WYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 18:24:12 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40002 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfH0WYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 18:24:12 -0400
Received: by mail-pf1-f194.google.com with SMTP id w16so299307pfn.7
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 15:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=vCX5b31iY8wVKWn4s0MiMbZnH0WhFm1gAfks1OXyHmA=;
        b=F+EjFb8mnDRedjegmCbjOeCNiw919VuMRS1FKW3wGCXia8C4iKHKjDFThdV6YyAepH
         IVxQKZBtOjFgT0DVcbfw0yvET5QE2z4FPf5b0EiriI4ohsgDMXB2xXfkaS6dZOtviPRl
         ewk7TlBPUAIOYOsGvyzenlF2UoYhChVGU9EW4i6+Hw8fLjfKoD9kqtw+D4z9J3w/9iaX
         AyM/gejkEBTGy+AGHf1SALhYnvs44Gnc/RDa1yQkKXX3ON/LH+VILy/+3PPo+HigkX2q
         Wf12xyWgkf6oNs7VoBquCPVKLz1lH7XgGxdvcq2f/rQLw4WqoajzaCI/hgjcY8AeBJLg
         V4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=vCX5b31iY8wVKWn4s0MiMbZnH0WhFm1gAfks1OXyHmA=;
        b=Ltgr0O6yRIYl3YudDN3uYbLXIPKAngi1jSzOcbw+4P4gPnerUu2cuuDnAUwh6yiBkM
         rk4et0VJZ0Nsx8kbBJa5HV2Itr2xfzFoHbZFFyiFJNVSONi3nupX20IqclZlKZFlNczY
         7HQ4wyOrcoVUaDGHvvZvfkvLJRUtQtU3RElzUUElaq41hZWZQya4ntRyUnBbquhRI7w1
         Md8VI0dynkp07A/CFQP0vq50clNUyxk+1B8Stvn1eV2iZd2aVOluSnNqcJHhkOhE8br3
         LZ3db3hnwM23CW1XwD90OFuedAPSEfSLs7yyPuP+QfJn9PoOS5/eQzFpBYaYRmbnhRXE
         aY4g==
X-Gm-Message-State: APjAAAUxY+Rk6o4J1ECSisHzwfxEN73O8EJMMFw81aovOI+uCRqS92TY
        fBBKjCiSlJTy3bP3/oMVy7qziw==
X-Google-Smtp-Source: APXvYqxx1tZzErI7XJVc/UYjGuLNFMxrAtv5a6h2jHs+k/r7nNepgGtzkViHmUpx9AdKzhbPP5zTnA==
X-Received: by 2002:aa7:9edc:: with SMTP id r28mr860234pfq.219.1566944651789;
        Tue, 27 Aug 2019 15:24:11 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
        by smtp.gmail.com with ESMTPSA id e21sm327759pfi.13.2019.08.27.15.24.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Aug 2019 15:24:11 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] arm64: dts: meson: ir keymap updates
In-Reply-To: <CAFBinCD0uhE9Fj1we2MkaTbk7RwtmKh7Fn1C-2nn9wiWqCoNfg@mail.gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com> <CAFBinCD0uhE9Fj1we2MkaTbk7RwtmKh7Fn1C-2nn9wiWqCoNfg@mail.gmail.com>
Date:   Tue, 27 Aug 2019 15:24:10 -0700
Message-ID: <7h7e6yuu0l.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Sun, Aug 25, 2019 at 6:03 AM Christian Hewitt
> <christianshewitt@gmail.com> wrote:
>>
>> This series adds keymaps for several box/board vendor IR remote devices
>> to respective device-tree files. The keymaps were submitted in [0] and
>> have been queued for inclusion in Linux 5.4.
>>
>> The Khadas remote change swaps the rc-geekbox keymap for rc-khadas. The
>> Geekbox branded remote was only sold for a brief period when VIM(1) was
>> a new device. The Khadas branded remote that replaced it exchanged the
>> Geekbox full-screen key for an Android mouse button using a different IR
>> keycode. The rc-khadas keymap supports the mouse button keycode and maps
>> it to KEY_MUTE.
>>
>> [0] https://patchwork.kernel.org/project/linux-media/list/?series=160309
>>
>> Christian Hewitt (7):
>>   arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
>>   arm64: dts: meson-g12a-x96-max: add rc-x96max keymap
>>   arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
>>   arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2 keymap
>>   arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas keymap
>>   arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini keymap
>>   arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap
>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.4 w/Martin's tag,

Thanks,

Kevin
