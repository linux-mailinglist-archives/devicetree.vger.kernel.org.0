Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B434C49B288
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 12:04:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380005AbiAYLCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 06:02:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380018AbiAYK7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 05:59:45 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6083C061748
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 02:59:42 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id d10so29826110eje.10
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 02:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Re4Kt8UdHR9tc5DUu0b8pnv9cr4HyCvhga+Jk9wN3Gs=;
        b=VLiTyqH073ZaBhBP7VfnwJDtvlUMDpZ8nCbT1/NNz32Pm1vxtLxYTp4LubGAYJPYUh
         BOFQkLiztdYDDB6yc4nPouMCv9jQtOhMyUx3GzDfN+k1672akZTSuOtBxu3mzjgQ9YZW
         jx/FHnq8rXAcEgaF7T/7JM0/PoIvxJlfdWFBLcn9z/R0LXB9gy4McM1j+82C9QTAH54b
         RyFJPOn6Bj5jqvz2+uAV0tm0zB5RTgcrUAtYOzjQFrjwINLpKnqwQXHbQ1l1llHicYmN
         sdUEluM0G0Dg60ZHLzp/I+4n7ffH3qzLSYkvn+9io5awMSzCW8CrigCuYgl1WLKGcHzJ
         9DYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Re4Kt8UdHR9tc5DUu0b8pnv9cr4HyCvhga+Jk9wN3Gs=;
        b=aV6ZkRUGimzpCTAbhVRIZ+NLDK4L6zJJYu/LgysGYNY47KzeDmIQQes1jJDvgbgXiy
         XwqkzcKiAaoGqVnFxFoUj1HpOs4ic9ujESqkwWU7IOFFLkRk/PUcDyvOuWcdxANiLtT7
         UFodFMch0D1hv5GVtbnoCMDXtasXXM5Pe91l4hG21zLcr6hx4SV3U4lxm5Xk5IOwFbUV
         re9KDjQXSa2fvIZZsT/rMWfuV69zPcnQ9pssqSF+foRup71fhPNJw/b+CUi4Y/+kX0FV
         4e0JZvb0ETR8lQ6Yd6DAIrHUXFnXkDwzc35Zv526MK456K2IOXM0n4YWhM6z9utbKApP
         7PIA==
X-Gm-Message-State: AOAM530NMwRDb0R4f/ge0vx5RuFMXl5hKMFQNIztvdaJrNp1yN8x2j3a
        yQn471uLlxi94R5Bw4PB+dI0jBU5AYAqlD6SIXbg20ilQqQ=
X-Google-Smtp-Source: ABdhPJyxskhqBxgi2L7ArTvWrsqgW1ne39QLGpIuV+nTzSE2gG0ImQwib9LydqTrlh7MmPGUqOCd4zOCE3Gy3fhqYm4=
X-Received: by 2002:a17:906:314f:: with SMTP id e15mr15902105eje.658.1643108381307;
 Tue, 25 Jan 2022 02:59:41 -0800 (PST)
MIME-Version: 1.0
References: <20220125091646.2845111-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220125091646.2845111-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 25 Jan 2022 07:59:29 -0300
Message-ID: <CAOMZO5CmNDPAMqx5wwtSd20BXmAwi23hvo5uadSL8Jan2kw1Vg@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq: fix lcdif port node
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On Tue, Jan 25, 2022 at 6:16 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> The port node does not have a unit-address, remove it.
> This fixes the warnings:
> lcd-controller@30320000: 'port' is a required property
> lcd-controller@30320000: 'port@0' does not match any of the regexes:
> 'pinctrl-[0-9]+'
>
> Fixes: commit d0081bd02a03 ("arm64: dts: imx8mq: Add NWL MIPI DSI controller")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
