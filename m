Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D63A9D79EB
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 17:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727639AbfJOPh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 11:37:27 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:34105 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726231AbfJOPh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 11:37:26 -0400
Received: by mail-ot1-f66.google.com with SMTP id m19so17331997otp.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 08:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cgNM0n5gGfcK7ckXF49wd8P15GFoQ8+bReW9zILWg9Q=;
        b=XgpucEunT3K6pX5ErPI6Wn+W0xlCbsc7WiKcxyEvdXZKAwGdGprhSgYi2SFRsIzoZY
         S9yz5o6ITvJawDH4K4rU5vXRK9KwEay/uKmLzPuYGcX3ldv2jHavQm5wgfvbyXIZ/jMh
         +w5rpwQuyMbqnhHAHz02NJdZ76o8rQPJOK2dZ3x27deuED/Ey41iqCmBy+FZoxlVLr1L
         GYI5nw2WvBk5mHxGH4/pu1lDCWwHqNGYvMNeBKiv7yddiRXeWYixYQggIgo6KurmLGCK
         1AnVQlthnckQAokX3wYX9Wht5MHsd/LxEa6OpILGleosdgIDTA4YX/cgoaJ0toeAD4lj
         5URQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cgNM0n5gGfcK7ckXF49wd8P15GFoQ8+bReW9zILWg9Q=;
        b=kkqgHriZSbeLgv4jpepiLK/gY6r90rzlJFgTKkBtWbKlNBYo3/Pt32Tm3yz5WC7G9h
         vNHAwbVHIzkqax0lECK5rIvZvpYuUvtAjj1dNOMjVp+7ir54WpjCqQyRiTznJp3uWwpS
         3ImGurnWIghFTbbnJQ1AaddCptWTpaZw/wuJ4Im+pc4OFloJO8OcqAhEYPU7pEOAFXLb
         dEfjsvNnOphHTpfzshLwbNwWDvJ6C8xFpqJ1SIMIlZOch7qKdOVe05taaRsv4AvSBDu7
         I6hB6DSZ8DVkNdxDEBuCx0+2fiBajPeRBHNOuOJb7A82GHvmnm6cQ9iRcYEaoa7lxSu+
         yhgQ==
X-Gm-Message-State: APjAAAWvQf2H913HvhllpweutdClp/5qKZhHTLE2xmLoShuFP2UeZb/c
        lPU/OPc/mG660ac/NNzbAgIDOBJOFBuMdGImVOmbTQ==
X-Google-Smtp-Source: APXvYqyqTW0ikCL03cio+d+Gzmk4cTMFD83hv3qpHaLEzcsV2fmsdLrCaYZWZY0tNV/gtoVbZOAtyOnX7jjws/nqq2o=
X-Received: by 2002:a05:6830:14ca:: with SMTP id t10mr13652260otq.182.1571153843870;
 Tue, 15 Oct 2019 08:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com> <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
 <20191015114854.GB4030@sirena.co.uk>
In-Reply-To: <20191015114854.GB4030@sirena.co.uk>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Tue, 15 Oct 2019 23:37:12 +0800
Message-ID: <CA+Px+wXoLTdSYQLsg9oTXOW3r9=xqCU4evNcbDjoTcctrtVbPw@mail.gmail.com>
Subject: Re: [PATCH v3 01/10] platform/chrome: cros_ec: remove unused EC feature
To:     Mark Brown <broonie@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     ALSA development <alsa-devel@alsa-project.org>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Benson Leung <bleung@google.com>,
        Gwendal Grignou <gwendal@google.com>,
        Nicolas Boichat <drinkcat@google.com>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Dylan Reid <dgreid@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 15, 2019 at 7:49 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Oct 14, 2019 at 06:20:13PM +0800, Tzung-Bi Shih wrote:
> > Remove unused EC_FEATURE_AUDIO_CODEC.
>
> What's the route to getting these platform/chrome changes reviewed?
> They don't seem to have got any attention thus far and this one is right
> at the start of the series.

Enric, could you help to review the "platform/chrome" changes in this
series?  All changes have merged in the EC firmware code
(https://chromium.googlesource.com/chromiumos/platform/ec/+/refs/heads/master/include/ec_commands.h).
