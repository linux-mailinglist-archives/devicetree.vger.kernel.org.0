Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EE4A3DCB8C
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:15:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbhHAMPp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:15:45 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:42629 "EHLO
        mail-lj1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbhHAMPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:15:45 -0400
Received: by mail-lj1-f178.google.com with SMTP id n6so20148935ljp.9
        for <devicetree@vger.kernel.org>; Sun, 01 Aug 2021 05:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=RnnOJDG1zMKfexnEQ6zb9Z+5JiBIRqrFV5GDHp+pQKE=;
        b=Gis+r9HhPzY2cN2Kg/i4vhdMfU6vIKhqaHffWSEWT8EHwP0qeWx6Ryyg8vxfo+67cn
         tzIZ0/bE7oz0tshwx6c8of4Dt1Ayv0X8T0HwaRSCccXY+44JJmsGadlEme83RKPnK2EL
         +4zKEAwTR2O1jHdHju5sQcPpFwIj3zwwCWv+h9BAyh0nts5VWrVAijl6jmDox97usmwK
         82wVbAOBYeZNfzdaPdaoKCyxXEeVxC523YcsLfUQjZxu04m/50jCvkpjKPBR9O3oEYBk
         sZJpXJq7nsrI7t9aSoHyNQEw3AGYWwxy3o6g9ujhHo0FmBOqGIwpuGtD8zGUVMBGusxs
         N69Q==
X-Gm-Message-State: AOAM531QM0nfiDODVoFvR4VrtiTI5oRilwi0uLj+ZsS4tl/oltcCUpKd
        /EXOZtIPuZl1uJOu4PNPgEppRHBZX7gZpA==
X-Google-Smtp-Source: ABdhPJwZaPXCGEvNkJ1p8bStyD7k4Sf2dryr1Ee2+G5TQnzzuJAwtixNg8NIOAMOgE2tMW8lCRAFAQ==
X-Received: by 2002:a2e:8e26:: with SMTP id r6mr8318410ljk.159.1627820136103;
        Sun, 01 Aug 2021 05:15:36 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id br5sm402064lfb.37.2021.08.01.05.15.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 05:15:35 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id z2so28463096lft.1
        for <devicetree@vger.kernel.org>; Sun, 01 Aug 2021 05:15:35 -0700 (PDT)
X-Received: by 2002:a05:6512:33c4:: with SMTP id d4mr2651681lfg.618.1627820135011;
 Sun, 01 Aug 2021 05:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-24-maxime@cerno.tech>
 <20210723215426.GA2656991@robh.at.kernel.org>
In-Reply-To: <20210723215426.GA2656991@robh.at.kernel.org>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sun, 1 Aug 2021 20:15:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v64Fd2orpWpUdmmBGrRp+ExP5RVvosU89pEB_pzQ7UJ24A@mail.gmail.com>
Message-ID: <CAGb2v64Fd2orpWpUdmmBGrRp+ExP5RVvosU89pEB_pzQ7UJ24A@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 23/54] dt-bindings: mfd: Convert
 X-Powers AC100 binding to a schema
To:     Rob Herring <robh@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 24, 2021 at 5:54 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jul 21, 2021 at 04:03:53PM +0200, Maxime Ripard wrote:
> > The X-Powers AC100 hybrid devices are supported by Linux thanks to its
> > device tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device
> > tree bindings for that driver over to a YAML schema.
> >
> > Cc: Chen-Yu Tsai <wens@csie.org>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

once Rob's suggestions are added.
