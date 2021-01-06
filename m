Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2832E2EC0C7
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 17:03:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726165AbhAFQCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 11:02:35 -0500
Received: from mail-vk1-f174.google.com ([209.85.221.174]:46627 "EHLO
        mail-vk1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725925AbhAFQCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 11:02:35 -0500
Received: by mail-vk1-f174.google.com with SMTP id d6so879237vkb.13
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:02:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3BYH7mTXp3bDNRdEqNabPGl/UPdludaZAvWSypPfgFI=;
        b=mONFrkIku6CgqOWZyAsF8dLzKvniIowE8CoiMbmA4T0nLqvGQW4C8ZFrnDv3UhMYZU
         3WFEYzeEa/tJ3fQx8j+AUD1L2W/c4AAKsAjAeVLUvFLZjwAr6Gw4uTCgZVQn6wPmCdY4
         P/9caHPijZ/DrUk/HASYQOliQKhNxrtrwy8RvnmLfbHMy+sdyrE+jtzYvtDu0C6BJXbY
         U7M4RNT06JFr0G4P2K/OB58qOz4unqX/HLSZ96iJSwxo1wYayGGP8ifoo8iQwdDg4Cwb
         7oJN1QZM6+24ZrD/8hW0m+hWVp3GloS8b0XaQfftI5OQV4x7UgNJA78UfFNJJA96FIcc
         LONA==
X-Gm-Message-State: AOAM530etd9dfFhrCyfyPLFh5EU7AiNTj0N+2hS6rFOWmN/gr7W5QRkJ
        A5jwxJWPIRf0Kd+pFJB2RYui4WmSRRSAPw==
X-Google-Smtp-Source: ABdhPJybJsnSlVLMF1G3570vBnwBY2sfsXUwg6nRQIed6bym5GLiU0tKycK6dyRNOdFu26vrqWFWag==
X-Received: by 2002:a1f:900f:: with SMTP id s15mr4157459vkd.5.1609948913567;
        Wed, 06 Jan 2021 08:01:53 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id q23sm398138vsm.27.2021.01.06.08.01.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 08:01:53 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id y21so1237447uag.2
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 08:01:52 -0800 (PST)
X-Received: by 2002:ab0:6512:: with SMTP id w18mr3942393uam.55.1609948912641;
 Wed, 06 Jan 2021 08:01:52 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-5-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-5-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Thu, 7 Jan 2021 00:01:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v64NM9iyYG1x1gvBZ8biwTG-=p1a=WPidyX17sjZTVjt6Q@mail.gmail.com>
Message-ID: <CAGb2v64NM9iyYG1x1gvBZ8biwTG-=p1a=WPidyX17sjZTVjt6Q@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 4/7] arm64: dts: allwinner: H6: Allow up to
 150 MHz MMC bus frequency
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 6, 2021 at 11:06 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The H6 manual explicitly lists a frequency limit of 150 MHz for the bus
> frequency of the MMC controllers. So far we had no explicit limits in the
> DT, which limited eMMC to a rather conservative 52 MHz.

I'd say this is implementation specific. FreeBSD might have other defaults?

> Put those maximum frequencies in the SoC .dtsi, to allow higher speed
> modes (which still would need to be explicitly enabled, per board).
>
> Tested with an eMMC using HS-200 on a Pine H64. Running at the spec'ed
> 200 MHz indeed fails with I/O errors, but 150 MHz seems to work stably.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Fixes tag?


Thanks
ChenYu
