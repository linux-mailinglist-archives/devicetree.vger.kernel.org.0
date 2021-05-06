Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A092F3754F7
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 15:41:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234160AbhEFNmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 09:42:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233973AbhEFNmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 09:42:17 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3216C061761
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 06:41:17 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso3234916wmn.3
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 06:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:content-transfer-encoding:date:message-id:from:to:cc
         :subject:references:in-reply-to;
        bh=r2Kim3GZ1Iw1ycIDuEI+kUKntKTEtiLw6rPRvxCDVCs=;
        b=GeXTsvZ83T5rP4CfHlyBfkJJWKrMAgbuH108qtV2YJ7uCtJ8tndQGjNkMdNKZ44V2x
         ycia27rFg6P9Q2UO6uMTnTqoVzWVZn7NojTFMCfQ7R6uR1lVFJEs9XGjXZrXnP4nKyAO
         41V5jhtUxR0Mjhi+As5U8ZzP4orjiqBMyfPMAbLImOeaPEsAoXNdhRsSJbIux1sVBDdN
         f4m3zYLbxiOvOcnRG6xTsBVps4bkl8+BuF5rTXQr7pqHWhWkuBLa2boJUHk1mj2hOV4I
         fhPiZ57vojMm27+Y6HmkyDbNRTdqJw/9faRQet2dXYDB5Qm/AL6IZLmRugzwKCQf0/g3
         e9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding:date
         :message-id:from:to:cc:subject:references:in-reply-to;
        bh=r2Kim3GZ1Iw1ycIDuEI+kUKntKTEtiLw6rPRvxCDVCs=;
        b=koEuMwYRD9Ud/6X2UyxrELakBXx5q6Ig/5q0+7EZy6YCvUIhk0jgKCL+RF7tjET8IN
         IpRh/c36KdkpWTuqxy5qXxS7puZz7b/XIeodo5HFB6C8O9M+L9IJ1wiosIOteDkw3SkS
         4/doqCY2kAkfCWXQ/NX9Agc4mS1DMfaQ7Ra7PhLTjWfY6ZKtEiLIaqn63FV1Ef1W51lH
         su3lg9RtoUIG/PI/NR7GvazjfVjMZymTEGjJ/DqT4cQlIMGLAOAcTNx1OXyLCqIoXi/l
         q5R9xFVYd2jGAITpIfDNvX8Qei0MfP9RumriSH5a88Nl5uz7C6wEJktAOS/EOjvhQd3V
         B0tw==
X-Gm-Message-State: AOAM531gSzzH0NPFgS+wXdFReKcTKw/p82rXis/vBxTUU1CQcj0pp/DS
        cm80cY5Lrya33GQ4O/EfGDx9NDJbQeV6cA==
X-Google-Smtp-Source: ABdhPJxH/Lon6SZvqBZHUdVJktsVueaKhpv8JSaCrfI72NZpsidPyix4quyqXRg/P5gIV7HMAxAtzw==
X-Received: by 2002:a05:600c:414d:: with SMTP id h13mr4087604wmm.62.1620308476363;
        Thu, 06 May 2021 06:41:16 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id c2sm3459060wmr.22.2021.05.06.06.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 06:41:15 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 06 May 2021 14:41:14 +0100
Message-Id: <CB67F1ESC5PY.3UAAKCJRWDQ3N@arch-thunder>
From:   "Rui Miguel Silva" <rui.silva@linaro.org>
To:     "Laurent Pinchart" <laurent.pinchart@ideasonboard.com>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc:     "Sebastian Siewior" <bigeasy@linutronix.de>,
        "Rob Herring" <robh+dt@kernel.org>, <linux-usb@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/7] usb: isp1760: extend support for isp1763
References: <20210504101910.18619-1-rui.silva@linaro.org>
 <YJPJ3aKf9BdQ8UKx@kroah.com> <YJPgO6TPyuY0w0EH@pendragon.ideasonboard.com>
In-Reply-To: <YJPgO6TPyuY0w0EH@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Greg,
On Thu May 6, 2021 at 1:25 PM WEST, Laurent Pinchart wrote:
> Hi Greg,
>
> On Thu, May 06, 2021 at 12:50:05PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, May 04, 2021 at 11:19:03AM +0100, Rui Miguel Silva wrote:
> > > The Arm MPS3 FPGA prototyping board [0] have an isp1763 [1] as USB co=
ntroller.
> > > There is already support for the isp1760 and isp1761 in tree, this se=
ries extend
> > > the support also for the isp1763.
> > >=20
> > > Move register access using regmap, remove some platform data and code=
, refactor
> > > the mempool, use dr_mode to align to existing bindings, then add the =
support for
> > > isp1763 host mode, add bindings files that did not existed and at the=
 end
> > > add also support for peripheral mode for isp1763.
> > >=20
> > > @Laurent and @Sebastian, I add both of you in the bindings files as m=
aintainers
> > > (it is a mandatory field)since you were the ones which contributed wi=
th the
> > > initial code and peripheral code, let me know if you are ok with it.
> > > If yes I may send a follow up to add also entries in MAINTAINERS file=
 that it is
> > > also missing.
> >=20
> > First 3 patches now applied, feel free to rebase and resend the rest
> > based on the review comments.
>
> That's a bit fast, I've just review 1/7.

Let me know if you will drop the patches from your queue, or do you
want me to send some follow up, since Laurent comments are not very
large?

------
Cheers,
     Rui
>
> --=20
> Regards,
>
> Laurent Pinchart



