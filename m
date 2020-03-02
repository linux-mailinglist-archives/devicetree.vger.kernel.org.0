Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C42401767A5
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 23:46:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726773AbgCBWqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Mar 2020 17:46:23 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:33505 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726728AbgCBWqW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Mar 2020 17:46:22 -0500
Received: by mail-lf1-f67.google.com with SMTP id c20so1002554lfb.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2020 14:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yLlRHbktFbOxtzNl8Vihg7v3kIKc6TMAjjHUPUH1szE=;
        b=M8mL4WkqqPiqVdS4845vC4Zpdwppdn9R8gd4H0FXSSRr52BVwtl8Mra38019iqK2cs
         +91u+CUb1uRSjJxp0d04WJBwO2/piAaXNeX32RQCf8mVP/G92k5qj4hqrERMd142LMie
         NL3JUr2NPXvOjObXSaW1GG53HlzikBruZB8pW0SjA4tGQAOBD1YB/UoKgDPa5Pg9N3qX
         gSB1bFR8KIaWCwB7u1XkmHLdMXNc1hZn07FDAUHZxjv1sY7owLJu92TVWG60Q5KqpwCw
         0ApzdsuhSTmRrgb42SLu9FQjQQPBFc6QO05ePhcNg53P5Og6bFJBEU7UebSu0VspWVCl
         PLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yLlRHbktFbOxtzNl8Vihg7v3kIKc6TMAjjHUPUH1szE=;
        b=mVkABLMuxCrOJiH9ckuEEQJOnf7ODmvrBX8AO2j0UA2q1nFpLTCOKLFDyv2cqV/EjC
         dBdGGk89geAYgFxTw1OPeiUbGJOn+Oru8wIyZukXQ3IfaTZDM4+jPVBq83m3dBWYMmSs
         kWYFNtvQgzSyUen6txJfw2125IOAP/7sVT8B5hyma0/umvsvsxVifyh9mbGCDaAzyGR3
         sU1RhkpW3Q0rJntJ/WJyjQANeoQcHFSIKReEL1rgLjdXDXDy+FlPne5FB/kdnx+EI7i4
         opLG2PNJaNnw5JkeNcKhaA9R8ps6h3ILfy4h8m3kcxdPrfJi67blolfvXc4nir3Gc7/C
         12Aw==
X-Gm-Message-State: ANhLgQ32wr4BuirgwtVJZHfWyp044xyHaeOlcfaXH2NoPqiU3YXOFWho
        wlXLf23WMrfuaI9u+Bcrf60h4Z5sSQqG4dvHYao=
X-Google-Smtp-Source: ADFU+vukK/ZdZyY9pLzllMfUz93sWGqAKVB4wD5ScH7PQHTGtStfvT6fbGnEJPtU+8VaCDyESKT0/8pJMiZdPi/+V6Q=
X-Received: by 2002:a19:ed08:: with SMTP id y8mr803334lfy.56.1583189179625;
 Mon, 02 Mar 2020 14:46:19 -0800 (PST)
MIME-Version: 1.0
References: <20200302213557.11128-1-vitor@massaru.org>
In-Reply-To: <20200302213557.11128-1-vitor@massaru.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 2 Mar 2020 19:46:08 -0300
Message-ID: <CAOMZO5BqvmRpTbq-gGgnKC2gFTRxS0mK0=W3tBSfZKQ-MUXMzA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
To:     Vitor Massaru Iha <vitor@massaru.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marco Franchi <marco.franchi@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        lkcamp@lists.libreplanetbr.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vitor,

On Mon, Mar 2, 2020 at 6:36 PM Vitor Massaru Iha <vitor@massaru.org> wrote:

> +&cpu_thermal {

You missed to place cpu_thermal prior to i2c1 to keep the nodes sorted.
