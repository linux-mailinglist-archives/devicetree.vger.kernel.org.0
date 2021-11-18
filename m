Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CCB3455270
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 02:57:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233128AbhKRCAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 21:00:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242397AbhKRCAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 21:00:38 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEC42C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 17:57:38 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id r26so10701405oiw.5
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 17:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4GgIJU0V+ih5Gpji1Pi6wi66j+iNTVRk7nYTxCGKEII=;
        b=R3NdEUcgp/SALb49E79HIfh/H9l6vgFtcPngo8gtuOL4QeM6wSmOrH2fKAMtc11F1O
         uR8rQJ/5+9tqYbKiRXHMtALAW/b2OMnExwVlQqBRrIP/VPUDixGZpKtA5yjqESqc7shX
         qanJvyIVLUlP7LtyYMPUttshh1V065F/X0ieYn89NahGTGvMh54DNL2wBAQvQ1+ql8nB
         PbkTlM8rPIKD3eY9ZzcOgrAeEYImePXBTpjIkPVrc5eMnYQctQe3u89f9sVQQdvPCo3U
         nnhhDXlOCxmUtF97Z7kIJaXu77l3Oh0Fd8DnW3JBmEEB/cHHTVWdpl57ofXo9ENm685C
         VGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4GgIJU0V+ih5Gpji1Pi6wi66j+iNTVRk7nYTxCGKEII=;
        b=bf7POM1PwnLtARv+OjjsJnvSx9YIQAd/POT17eopadTx3WBTEfj/9ergu9tOodLvYL
         Zq2/eblHZo5Uzn0wuWrbNhAOU64ZVJFGxEgTdWhDSn8VqZsrp3BzMJZuttvdRmcjz87T
         ccbEEoS+/dqJVHECVbY/KshXdwawitiwtRcxhcjX0LO5BKuuwJgBXsdUhH2PTDIfj/hs
         0rIHm62RAxksfC2clbKic4P729bTRDMheLOLK+2hCMOeWfm8IbgPP+CNmwnNZteDaaPR
         YZc58UdF9MWmTI7WQxFguAzEc12hmfSb1tJ0t1/94ITgCbHBABWV+IoVdTGHUHjrcqsm
         WVIw==
X-Gm-Message-State: AOAM530uSCQKW8MCwq15SbGRzxkUtSXrCPclopblSr3N070AoyqxoEcX
        jramemkbQ4IxMByko79NUZtHh9plrahzz6nu4YnSsQ==
X-Google-Smtp-Source: ABdhPJwUZxZy+oDrVbVf3E8Uxu6BnHQNyTmrLqFBNwedah57MWTES9fU07YwFkjK4DKiKLrVOUn5MDF0Qc6cHwyKKO4=
X-Received: by 2002:a54:4791:: with SMTP id o17mr4452519oic.114.1637200658149;
 Wed, 17 Nov 2021 17:57:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1637061794.git.matti.vaittinen@fi.rohmeurope.com> <740503b6b6439e01959016223f1ae464e82824c3.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <740503b6b6439e01959016223f1ae464e82824c3.1637061794.git.matti.vaittinen@fi.rohmeurope.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 18 Nov 2021 02:57:23 +0100
Message-ID: <CACRpkdYE1r6mYAJsaMB9XyZjjAK-bGw3-9jhOpUFASWgkXaQBQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 1/9] dt-bindings: battery: Add temperature-capacity
 degradation table
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, rostokus@gmail.com,
        fan.chen@mediatek.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 1:24 PM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

> Some charger/battery vendors describe the temperature impact to
> battery capacity by providing tables with capacity change at
> given temperature. Support providing this temperature - capacity
> dependency using the simple-battery DT nodes.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>

Since we already support providing the capacity at different
temperatures using ocv-capacity-celsius and the array of
arrays ocv-capacity-table-0, 1, 2... you are introducing a
second parallel method of describing how capacity changes
in accordance with temperature, right?

What do you expect to happen if someone specifies both?

If this is an either/or situation then the schema has to
guarantee the exclusiveness for each.

(I would probably just use the formula you have to calculate
a few tables using the existing method but that's just me.)

Yours,
Linus Walleij
