Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D0A42FFE7
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 18:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726469AbfE3QI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 12:08:27 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:43942 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726320AbfE3QI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 12:08:27 -0400
Received: by mail-pl1-f194.google.com with SMTP id gn7so2739583plb.10
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 09:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
        b=cVdkU0UsiubYEXpbBQbS7cvSuFjQe08Adw6e346iSTE5OsA/QADaLcgAVFLBakmg6z
         2Q2O38L63Bn80R60xkrnN8k4evgFKp+1SBFNsoKvL2F2vTQOA/WqzUnFi3fuWiBpjCnh
         bf2mpR9Tm+9Kh9qyWRGBinlrH9NFfRCKnnjE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
        b=KRjQdaMwbJgrtRZXIijv3q7GeQknPh5bvmtjciJrfoSESk+HIEdYlIpKII7sH0Yz5v
         tMZhsXSiexKu+mo51TJNEgZBwmh7A5xiv1D4Mcpx3L21rsvVnK6UA1xg+cLOSf2gC3C1
         abkC1Z3Vqi09oMRJNCJJRFIwR8SMfckODsCvQXItDV9zveivb8Ys+KE9Ufpmpgq7m6DG
         DKxLNEA9EBwUOK9glosbttHhzuTfokIft3KjVEgGh5voBKM+tzC9gRo0n7BPuC5hqBJl
         GSVcIZdT2LAbY9cijeOF/V5s0cxV5wYORZBlpjFN2VqirHfRmTaCQNCY8QpLp/j/Mq2j
         98Og==
X-Gm-Message-State: APjAAAUl24BFJhViYL7lZLog+sWNTv8nNuQCBD91n4ZqW4nUvzqRh5qH
        9szZBiV+sEfZqZXjoC2hKUiO5w==
X-Google-Smtp-Source: APXvYqwTufU4ReY8GoGuWrjOS8pyLhEFpYHGf/dPgPB2mg1+d5otdc1js0QS6kCxqXlGXEcw9FpdAA==
X-Received: by 2002:a17:902:690b:: with SMTP id j11mr4416976plk.149.1559232506416;
        Thu, 30 May 2019 09:08:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id a69sm4045967pfa.81.2019.05.30.09.08.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 May 2019 09:08:25 -0700 (PDT)
Date:   Thu, 30 May 2019 09:08:25 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     "michael.kao" <michael.kao@mediatek.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Eduardo Valentin <edubezval@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
Message-ID: <20190530160825.GM40515@google.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 02:27:28PM +0800, Hsin-Yi Wang wrote:
> On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:
> 
> > +
> > +                       tzts1: tzts1 {
> > +                               polling-delay-passive = <0>;
> > +                               polling-delay = <0>;
> > +                               thermal-sensors = <&thermal 1>;
> > +                               sustainable-power = <0>;
> > +                               trips {};
> > +                               cooling-maps {};
> > +                       };
> > +
> Is 0 a valid initial sustainable-power setting? Since we'll still get
> warning[1] about this, though it might not be harmful.
> 
> If 0 is a valid setting, maybe we should consider showing the warning
> of not setting this property in [2]?
> 
> [1] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/power_allocator.c#L570
> [2] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/of-thermal.c#L1049

IIUC a value of 0 is pointless, the thermal framework will still use
an estimated value:

https://elixir.bootlin.com/linux/v5.1.5/source/drivers/thermal/power_allocator.c#L203

As commented on v1 (https://patchwork.kernel.org/patch/10926519/#22620905)
the value of the property may depend on the thermal characteristics of
the device, there is not one correct value per SoC/core. If it is
specified at SoC level device makers should be aware that they might
have to override it for 'optimal' behavior on their device.
