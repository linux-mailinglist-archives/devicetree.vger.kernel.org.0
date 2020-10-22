Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D1E42962C7
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 18:36:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2901864AbgJVQgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 12:36:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2901863AbgJVQgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 12:36:25 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51D0C0613CE
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 09:36:24 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id j30so3063990lfp.4
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 09:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SO5wvZ4fxYjooiqb/eYAQ8Wh/XEVxLeo6rSTbgv9hm0=;
        b=f2N+8BkiEK9G8G7pzUdpvAN3N4w6fD/ngMy5SKE0I7sFw5Z2BjafveZmPN4c9U9tEz
         LCpkFFyelbr989oHrwnR7B/k4Y3icQmVq8JD78jhtQWBMLk7jZ1eTHvav6faRAqkNyIA
         WMobCyC/0eEUDL63n/Vv0SR5WDF88FwfrCJcmjToHKq8OZDO8rv63kMFsKJfVwuhzElK
         /UboNTIcpGYj71MLAP6LyAZUMmydXAhd90jowUGaoEYEd0NPMCnwAeJhUhzFTeqHW0oK
         EvkAkl1+C9R2BdIlu/qBftZvPHIVbAVUl8PKNcjxY9h7+zIFQt2bp/8Owhm0zgzZ+myY
         1dgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SO5wvZ4fxYjooiqb/eYAQ8Wh/XEVxLeo6rSTbgv9hm0=;
        b=VRwMf7FDQhUUa4hUXRYwbAOtjQdqbR5a/USGEvRBN9bICsBywWfVP+N+EspeXbKqz0
         tPAjlTt1e2Shx4MUnMHiGXAPBNC0+uRbWhcSqWbH+CrSQY4b8VGU4k+7ThHO+ZVfq3JT
         8wrKIbCOJU9hD0G78Cso5XnL5ZG4SQp/8qwjvxNQOrsGdQlGlqa7odAfrKJZ0HHwu03+
         7zr9gUa5UZbYEPvE+WBp/5/XH/Wb9DkrfBLPd6PoA4TvUjIcqqAFkW7yhPkxcKyMYaJ7
         q1zF9tw0op9/ZxYxKTN10EpbjN5E0KcsgGtdab5H+oudi0ldzAs/RWFbKo89UnEbIG+s
         Xz2g==
X-Gm-Message-State: AOAM530WgJUojaiiL0qaJuM33ZBXQf+93EiHnQIaxyoN7cvMuGZi1vin
        AULkxeTcmG7+AKC2hUki8anA9rf6DDGSVO+z4n8=
X-Google-Smtp-Source: ABdhPJwMIZV/S/JZe1Or3EEzVDQnIVdSHOtAJN+aamfWtgt/w1RfFI0f7Iw0BEMP4UxPv+tbpApqkKtYx4yYjjF6dTE=
X-Received: by 2002:ac2:4e90:: with SMTP id o16mr1241464lfr.251.1603384583121;
 Thu, 22 Oct 2020 09:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
 <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <18c98a86aaac86a5742d6f8c4c671ae522751dda.camel@pengutronix.de>
 <DB6PR0402MB27604614CB067AB6594221ED88050@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de>
In-Reply-To: <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 22 Oct 2020 13:36:12 -0300
Message-ID: <CAOMZO5ABaiAEEnkUZU9qDrkzsxOxfZgGiwGONGC_8y2z=DMeUg@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        Adam Ford <aford173@gmail.com>,
        Tim Harvey <tharvey@gateworks.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 22, 2020 at 5:24 AM Lucas Stach <l.stach@pengutronix.de> wrote:

> What I'm strongly opposed to is having a custom TF-A interface and all
> the added complexity for little to no gain in actual system security.

I agree with Lucas.

I would also prefer this series to be applied so that i.MX8MM upstream
progress does not get stalled any longer.

Thanks
