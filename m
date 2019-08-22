Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4BDA997D6
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 17:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389471AbfHVPPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 11:15:20 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:34981 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389427AbfHVPPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 11:15:20 -0400
Received: by mail-lj1-f195.google.com with SMTP id l14so5940893lje.2
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4a8L/ifsv/lZTfpUfBFAkIET01IdPIonks0J31fpcrs=;
        b=kaNukhpRiKzO7wg6+4YwXjw+GBU9aEaxl+aRpkf/TylSbqgfiWU4SvBMz6B2d7rOWZ
         Z1qAW9Qf6758HOrFNtrxIBp2Z43wRatr677G+cW4YbvI4Ti4N1oShBTYqZ2sJMIx5BlY
         CtYm0WzQv6pcm3tO/CclwiTA0ip1w6PXO1CEVFq9fhYcxBMt4IW0En2dpLVTKbqnsJdp
         hl1bsS+GnYNQZytg1fYtQeQIZ4DEba9G4Qpv4Tzlk2PGvuP5CLQ6NCQyiR2QEQnU7SrH
         dHOhXJrfniK7tJQMuA+ME9TlvTJoe3xcWH6Q4YKg+YE3Lc48h2xJRd2pSeIzEfeXlUTr
         b83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4a8L/ifsv/lZTfpUfBFAkIET01IdPIonks0J31fpcrs=;
        b=KcTSPQEk4oqq86/bU7WiDmQr2jgUEEmwttA8zdgyRldhaE2KWzil2gJyBoJIL0NJf6
         wCKZUd1L/bX3hA4jc3Vb88rFYB6pMxIRBJfvh5PgLHAec30kBF4cMEUnICHZRlviKDcm
         FnEJTpfFE94xF0RhPWLfpJJkOgoKmdmWVbFcovorFoOy6IUUyiIgDaRVj+p8gOZp8XEb
         6wzwmIklkdPLCpkUCx/JJBH4ld8Foq9ETLqVAk0FZncksxBLBUhofnN1KMJo3U8aB7WJ
         OlNB+CMqs+sQFfThqBLUopJnUY0FebaOAhxMInQCzOEMu5ct+KmP6ErnYKHSb+UQPwV9
         u7PQ==
X-Gm-Message-State: APjAAAVVRn/MhqXmAMtEp/UkwrRS3Na0eSgz2oS6aHIFa1d8VSAKdFQh
        NeRAu8ggpOyYUtkpbv09VUMEV5IHb7n6YfXxwlBJKQ==
X-Google-Smtp-Source: APXvYqw8H6TI7yoIexQ01YSmkjtsLfwiXufW96szSrkvxjsFx069jHk2VVDMZF+LiT2ojXyCZlvCkfh2Z8ulIljBS/A=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr22635098lja.180.1566486918684;
 Thu, 22 Aug 2019 08:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190822110720.118828-1-stephan@gerhold.net>
In-Reply-To: <20190822110720.118828-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 22 Aug 2019 17:15:06 +0200
Message-ID: <CACRpkdY=XS4RMufBy8GCB1wGU+hwa64sFMprE-94TcT06xAZgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: ux500: Move ab8500 nodes to ste-ab8500.dtsi
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 22, 2019 at 1:08 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Some Ux500 devices use the newer AB8505 PMIC instead of AB8500.
> Although they are very similar, there are subtle differences
> like the number of regulators or the available GPIO pins.
>
> At the moment, ste-dbx5x0.dtsi always configures the AB8500 PMIC.
> To support devices with AB8505, it is necessary to split the
> AB8500-specific parts into a separate .dtsi file. Boards can then
> select the PMIC by including either ste-ab8500.dtsi or ste-ab8505.dtsi.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied to the Ux500 tree!

Thanks!
Linus Walleij
