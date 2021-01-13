Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F5AF2F5511
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 00:03:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbhAMXBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 18:01:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729425AbhAMWlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 17:41:31 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDD08C0617A7
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:39:33 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id j13so2089247pjz.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=y7C3/EfXvdxRAVOgUDZ2takH8wh+8RemM6yt45ykHTQ=;
        b=jWSBWM1f90GuQfdAn+ekbGqXI+T0+VG/9nhPvsH1YoEX0Pvlfp9NhlP+CUsLnUIpLn
         GgUD1oB5wjrbYTXq6iDD9SeAwphAWRSHYvbG+V4zISpPuOfKL200sYaK3jk6EkpaHLjc
         yukqMmvIXUuYkPubvdOMQifXSIZjy/zD0I/eI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=y7C3/EfXvdxRAVOgUDZ2takH8wh+8RemM6yt45ykHTQ=;
        b=nlNeWUBuWC0Tl15ZyQCcQMd2t326ZfoReRg8uxWylpqmhz2n1uiDosty1CLSBtjiB2
         X9xsHlqwQuPedWMMFYzoBlfNW2xFlVRFREHZBzAT9Q4tmcAEnJithUuh03tMC03u6ERy
         OpMvfUKWEHCNT+QR+bImmWaYPXeZItXKB0oiTUmlcHySuSDUZu+0tkGBdlUVehN5tXqB
         Q97kw3aDgoQzeD7tTgc3ObJrZA0YO1UhjvbwawEfaDmpK/ireRj4/APdjqBhQVWX8Y7C
         f6K5yneRhFl1PUdfOfCmL24x3pyg5SfNaTG9HdLHtVz9tcPq34CaSy2c0LJXNq0PGWNh
         MEig==
X-Gm-Message-State: AOAM531XQifBZULqR382X5uIPJcTqZ27mXh+JBqei9RgP4BlNJ0OLQSF
        ifkR22jYJK/mLPFlh+9mygGLyQ==
X-Google-Smtp-Source: ABdhPJwz2R3vXycnrhYnCDSxIhOU0EaGilNeDT6WYkSXYHv8P/0F1Hguaw/OHB9jk73aGRNAJkADaw==
X-Received: by 2002:a17:902:b282:b029:da:fd05:7766 with SMTP id u2-20020a170902b282b02900dafd057766mr4478015plr.52.1610577573388;
        Wed, 13 Jan 2021 14:39:33 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id 101sm3142739pjo.38.2021.01.13.14.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 14:39:32 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210113141426.v5.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
References: <20210113141426.v5.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid> <20210113141426.v5.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
Subject: Re: [PATCH v5 2/2] ARM: dts: cros-ec-keyboard: Use keymap macros
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Wed, 13 Jan 2021 14:39:31 -0800
Message-ID: <161057757147.3661239.1732471144881622262@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-13 14:15:02)
> The common cros-ec keymap has been defined as macros. This patch uses
> the macros to simply linux,keymap in cros-ec-keyboard.dtsi file.
>=20
> This patch also creates an alias for keyboard-controller to make it
> easier to override the keymap in board-specific dts later.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
