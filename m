Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5FCC414A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 21:46:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726888AbfJATqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 15:46:50 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:36495 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726216AbfJATqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 15:46:49 -0400
Received: by mail-io1-f66.google.com with SMTP id b136so51161658iof.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 12:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ezIl2rVOYhRKOvRq4MrUQe29fvd7yUyJUEWRFAhpnt0=;
        b=e2mpUCC48bvayHuosTQRwn76fYaJRvUOiMdLE//GZ8dT7W3TjunXwZ1bpGJGcg4Nki
         5Le+Sqq6KSofb/nxGerlQWa7OxXcinIBxu+woGTI5ta92J0n/h3BcIeJsVXb26h8VHNb
         d6MjUtVvxfat6NPoDde1GqoEmX6dhSvd3ZArM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ezIl2rVOYhRKOvRq4MrUQe29fvd7yUyJUEWRFAhpnt0=;
        b=X9yjQfEc725UF/FUWd4EmsIYwgKREK2kP+BqbnquK+NLcZzICQzU48Z6KuEb5GabKS
         hvO5whSsqhysr8TUyDuSuOyPbmbciUeJft8mqKX0BHQXHj1VKmlZ0a5BgY34PUyQsSP0
         lYJx5Y8s/ZJD6nPh6kbJDoFfHE/gqEy8qVS1TKeSAUIGFSn2/VsyC053n160BcYh5xYO
         cV3861b7DnKeXH0eElxkB0Aj6/mPO9D/FZx4bVsgl5OJMXfrC3xto46XnZesryvSG1OR
         qO73Y2jc7N4ZRCjsZOfhTfCT5His2WLuo1F1N8xjTbUI53Jr/TtJXXccFk2FHF2CWmG7
         yVYA==
X-Gm-Message-State: APjAAAWjpMpd/ulRMgP6tuboxmocp7Hy3w5SoZaLihVTM2+0wnZ6wdp5
        b7WCaJJ0MaOLyC5/49QeSAC3u3UdTRM=
X-Google-Smtp-Source: APXvYqxMUYfkSUuHoIPcGZ5uMRh0Z/+WdTKJ7WqgM49y0mu8/d2QZEkJf5E+x9MWZJ+pQpN1aRR4AQ==
X-Received: by 2002:a92:b752:: with SMTP id c18mr28375635ilm.42.1569959208793;
        Tue, 01 Oct 2019 12:46:48 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id t4sm6448047iln.82.2019.10.01.12.46.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 12:46:47 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id a1so51208823ioc.6
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 12:46:47 -0700 (PDT)
X-Received: by 2002:a6b:b213:: with SMTP id b19mr6360479iof.58.1569959207391;
 Tue, 01 Oct 2019 12:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190926124115.1.Ice34ad5970a375c3c03cb15c3859b3ee501561bf@changeid>
 <20191001174104.GD4786@sirena.co.uk>
In-Reply-To: <20191001174104.GD4786@sirena.co.uk>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 1 Oct 2019 12:46:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UE4K8Oj99KA5HNBxX0pXu11bkHjdwcmwwW3Z-+_nDiLA@mail.gmail.com>
Message-ID: <CAD=FV=UE4K8Oj99KA5HNBxX0pXu11bkHjdwcmwwW3Z-+_nDiLA@mail.gmail.com>
Subject: Re: [PATCH] regulator: Document "regulator-boot-on" binding more thoroughly
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Marco Felsch <m.felsch@pengutronix.de>,
        ckeepax@opensource.cirrus.com,
        Chunyan Zhang <zhang.chunyan@linaro.org>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 1, 2019 at 10:41 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Sep 26, 2019 at 12:41:18PM -0700, Douglas Anderson wrote:
>
> > -    description: bootloader/firmware enabled regulator
> > +    description: bootloader/firmware enabled regulator.
> > +      It's expected that this regulator was left on by the bootloader.
> > +      If the bootloader didn't leave it on then OS should turn it on
> > +      at boot but shouldn't prevent it from being turned off later.
>
> This is good...
>
> > +      This property is intended to only be used for regulators where
> > +      Linux cannot read the state of the regulator at bootup.
>
> ...but we shouldn't say "Linux" here since the DT binding is for all
> OSs, not just Linux.  I'd say "software" instead.  Really the
> expectation is that things wouldn't support readback at all, though it's
> possible there's some weird hardware out there that will support
> readback some of the time I guess.

Argh.  I knew not to mention "Linux" and kept it in mind to write the
first part.  ...but then I must have just spaced.  I also removed the
"at bootup" part since it seemed better.

-Doug
