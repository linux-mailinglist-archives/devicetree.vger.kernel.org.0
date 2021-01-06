Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 896042EC0BA
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:58:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727115AbhAFP62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:58:28 -0500
Received: from mail-ua1-f44.google.com ([209.85.222.44]:33682 "EHLO
        mail-ua1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727037AbhAFP61 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:58:27 -0500
Received: by mail-ua1-f44.google.com with SMTP id i25so957350uat.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:58:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bUSf6pOsC/YleIcDQqMSZBYDrLo6dyvSNuKL3Ue42Ts=;
        b=floPMD1DLpqI7+d5LrR5aYxdfTRHa10yWwIsITCSRhV6fuEZz7j/GtGIuao963Ojwy
         N+NCP2dkQ1Vt00YZ/uVxitXgFf1sNVa2sxGfH7VgB7bJeCgQtgPNfY6er1+bDXpTDEM+
         sK7XTq5p1HvTuc0sOw2o+f2iFA8akJfOLao27c9M/o6m4PmmxfBpCMl4o5joVQsX8hQc
         9truAxCxfPinlocnYSVa2rwrXdM7YbgF5ctNX3fYdMHZKuiOWgRdSRhsuvuMS+/hnM6h
         v2h46YT/0X+V4C1PhU/75IMlQwn8UzN6zsyIX8q7uxUQ4QgGZNpHR0pvdhTCX3OUs8L7
         eLdg==
X-Gm-Message-State: AOAM530PpW3BKOctrLCeRlLMQTUupcktaGtf6Qm7+Y7Y6jZnwkKX4niV
        dKl5rRVX78kyxZWCOO0uX+L8dWz61d80lA==
X-Google-Smtp-Source: ABdhPJwxiEYP1zcxB25Jd4kZUEZe4q96RYUDJNUCxl27i0mI2xye4IBCg6K87gzIdmgsH9uWdRSq/w==
X-Received: by 2002:ab0:2b13:: with SMTP id e19mr3955602uar.107.1609948666012;
        Wed, 06 Jan 2021 07:57:46 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id s4sm387978vsp.10.2021.01.06.07.57.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 07:57:45 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id s85so2007290vsc.3
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 07:57:45 -0800 (PST)
X-Received: by 2002:a67:ca84:: with SMTP id a4mr3718123vsl.2.1609948665254;
 Wed, 06 Jan 2021 07:57:45 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com> <20210106150525.15403-4-andre.przywara@arm.com>
In-Reply-To: <20210106150525.15403-4-andre.przywara@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 6 Jan 2021 23:57:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v66LA8X8Ym7o2B4L_QhkGeMxRm1L6=oAwSD_oyzGYZx4Zg@mail.gmail.com>
Message-ID: <CAGb2v66LA8X8Ym7o2B4L_QhkGeMxRm1L6=oAwSD_oyzGYZx4Zg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/7] arm64: dts: allwinner: Drop
 non-removable from SoPine/LTS SD card
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

On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> The SD card on the SoPine SoM module is somewhat concealed, so was
> originally defined as "non-removable".
> However there is a working card-detect pin, and in certain SoM base
> boards it might be actually accessible at runtime.
> Also the Pine64-LTS shares the SoPine base .dtsi, so inherited the
> non-removable flag, even though the SD card slot is perfectly accessible
> and usable there. (It turns out that just *my* board has a broken card
> detect switch, so I originally thought CD wouldn't work on the LTS.)
>
> Drop the "non-removable" flag to describe the SD card slot properly.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Please add a fixes tag. This helps with finding the original commit
that introduced the issue and backporting.

ChenYu
