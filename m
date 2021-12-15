Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C5FA475055
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:13:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233214AbhLOBLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:11:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbhLOBLZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:11:25 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BCF7C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:11:25 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso22945598ots.6
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=J2/jpFAFq+zp1XvtVKdzp9u5pu7YLtNmnWWfWKVtpOM=;
        b=KbqEK5dH0vaoevg9a/6utCzsyOhU/wzvoLH9F7KudUoRUjxE1uPHa/NpoFDUMcpYLO
         2CRsMUT/Ncjq3evv3D3qyI3V5Wgo7NINwbXwLGYdU/rTfBH3RwZEBjulO+fsXaA+h4On
         iqFhhPvMZrqIV7YwrBeMBj1lOB4UxjkI0R0KU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=J2/jpFAFq+zp1XvtVKdzp9u5pu7YLtNmnWWfWKVtpOM=;
        b=8E5tc9312+6i/iqILcenG4elaiiW5gPmiQLmVP2aMmLMirAs0Fa1gVbxKMXZ+B3IyA
         sBfuZZTT8UzkNyibymFDFcoUFS8QR+OyMcVmmfCeLU1/DCBiRb+Lzwtc6xRufKWWHyxI
         fxpelYH4jpfIBE8CV83XhiJTlwJGYW/9OET+7UXjY9quwvpKv0QcAQwnie0nmSg1LFX1
         LBpVXRddsyu8yItqBssMGpjQ9G0/dSeVKfrbVfs9Niv8zqqST2BLIBJRErvb36hdaHvI
         8efDx4AkEuE8BtB/7V5oKm8x+AiG8rDj6Fg3sxewddDyp/ADYtCChERV2XLSg7M8k58b
         aW8Q==
X-Gm-Message-State: AOAM532YZtCmLd78PGD9JKCyHAuDSv7UF2y/fT2baHINWX32lmxbMoni
        vV94b78AkcNXxt5k8c53n1zh53jD+b/Hl81b0VIs0w==
X-Google-Smtp-Source: ABdhPJwW9mamvRgfz13v5yZf+E+C5sPxtOmoh2c3oOM1wx2D1nwlfSoC7Rx32myHhqK98WkcVsWGdW+HvzFmbExzHj8=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr6833618otj.77.1639530684507;
 Tue, 14 Dec 2021 17:11:24 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:11:24 +0100
MIME-Version: 1.0
In-Reply-To: <20211210192328.2844060-4-gwendal@chromium.org>
References: <20211210192328.2844060-1-gwendal@chromium.org> <20211210192328.2844060-4-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:11:24 +0100
Message-ID: <CAE-0n53n0Omwk3-0_d75DQZxc-WL2BaoWAfaP4e0F=sFccXc6w@mail.gmail.com>
Subject: Re: [PATCH v7 3/5] iio: proximity: Add SX9324 support
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-10 11:23:26)
> Semtech SAR sensor SX9324 is an evolution of the SX9310:
> It has 4 phases that can be configure to capture and process data
> from any of 3 CS pins and provide independent detection:
> proximity, table proximity or body proximity.
>
> Gather antenna data:
> echo sx9324-dev3 > trigger/current_trigger
> echo 1 > scan_elements/in_proximity0_en
> echo 1 > buffer/enable
> od -v -An --endian=big -t d2 -w2 /dev/iio\:device3
> (at 10Hz, the default).
>
> Trigger events:
> Setting:
> thresh_falling_period: 2 (events)
> thresh_rising_period: 2 (events)
> in_proximity0_thresh_either_value: 300
> in_proximity0_thresh_either_hysteresis: 72
>
> using iio_event_monitor /dev/iio\:deviceX, approaching my hand to the
> antenna pad, I see:
> ...
> Event: time: 1634763907532035297, type: proximity, channel: 0, evtype:
> thresh, direction: falling
> Event: time: 1634763910138104640, type: proximity, channel: 0, evtype:
> thresh, direction: rising
> ...
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
