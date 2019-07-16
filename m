Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E15036AFD2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728575AbfGPT3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:29:03 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:41148 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728340AbfGPT3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:29:03 -0400
Received: by mail-lj1-f193.google.com with SMTP id d24so21124132ljg.8
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g9jt108YxG0zZahiM7PXauKurvnXDCzSyOhgO9l7fF0=;
        b=R51Rgi2elzzYBllobXz6g7eNSHzAGoTlc8lKR1xKvDb1ZWESanLAo70TvIYdI9Yrzy
         ncv/h41uLjvsaOrJTJrqZzz3cBYheMh1jwt/JHk/XsX1QwkmHClPHLyKZoUTGn1L48yR
         5uhyjMXnDcBK2KFDVTXC3SNDoDxxzcL9Z8c/WDyQAX47tOMR/Igv5Xojbirm7sTGDP8v
         aKkSDhlEb19krHEEQS6Y/bs+OOUARHM8M9s42vLeEyQI/32b9OD5DOvZQDtICgo8hawi
         ntGq5hNHSXtRMNBj08lbobgX8WFfRdsNGl25siInmEurTNVCT17wqjLNA5fr7Gc4Qdpt
         N3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g9jt108YxG0zZahiM7PXauKurvnXDCzSyOhgO9l7fF0=;
        b=aCyhb5BzIQPd62DM3wNMVzfAFjFABlip0MW9BX0E1xZaxp3D5TNI4vmTVUdxlYSkvz
         BjHFX/Sx3vNEf4xtYSQb8YdGifpB/kbjbBUsXJpC5EXpp3OsVVcmTprVVwDHSDNxgaYo
         bhwWanY73t/UY6JA47/EXouNr91b0ZPTKUxf/JXJvDRooYUoS8/8ZsBLmp2FYosNf4aE
         LqQM3qFcP3gCEriSj3azeFlp9O8GAVIBWFM4l+MDKnUvITq3vipE3uZqnBToGCmPzlAw
         MG6QADIncNL55UdF0yy886+2tS/lrTHhT97G4YeOyK5Gc8R9W6fcn29SfsQ6c6GWt0u5
         XXpg==
X-Gm-Message-State: APjAAAUY5Jas7TdD7ZNfCd8dglDD3qYJ9tqi0mmLQN/7/5xNy/und5RN
        WllM+hsIDk3FPkH6L5aaJH17m2ZtM9MuoVyc1mydVw==
X-Google-Smtp-Source: APXvYqyxyQNBybkPd7T9t9OtLi1GMP8hRpnWKrTq5Q4MNJZXqbp5iQUMHO2uXraOYMEmEsF82KYvNEQbAv/54LAWsxc=
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr18683137ljf.10.1563305341050;
 Tue, 16 Jul 2019 12:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:28:58 -0300
Message-ID: <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] arm64: dts: imx8: switch to two cell scu clock binding
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> switch to two cell scu clock binding

Please explain why you are doing this.
