Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 717DA6ABFAA
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 13:37:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbjCFMh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 07:37:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjCFMhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 07:37:25 -0500
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCA3F27489
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 04:37:24 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-536b7ffdd34so181115237b3.6
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 04:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678106244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B1fqN+Osai6CCo/4uAM/DIM6+3uZVeAU3x7P6Nh+AL4=;
        b=kgXWRALfBwicLyIj2AHvNJ5gg1ibq5RRNApO/nCtrsRirMEDwTI5eh0fJAvmB/ndck
         HwNhtV3anhcNQD7++OC5LilGZx5ixD8Glg2v8x99OigvY9zxcftolFR22ghvZSq51nXP
         AnAJms+vpoaILeIY9Va4Bz8ba0ZgAKj8lkgtfdbX+3hcp6kJbXeR6LJlulkzZ+qj8xnT
         TvI52p1HkQ0EmO3dncEs0eR6HsvnOLN0qLgRZeBzztmea9TImX1bef/+VidIUmCxcGgZ
         2cFej9kS7yRFYwSC2/Pa4B/KJAszeeav8VcqOKl7UcF7ZQto/dlPsfU+tRrHrNB6Jmt7
         R1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678106244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B1fqN+Osai6CCo/4uAM/DIM6+3uZVeAU3x7P6Nh+AL4=;
        b=5MDqt3KcGNsBZpcDozE6g0HLAKMqXVRihcn9rdSh1a9aQV0SBwrCM0fO+36iRlvAan
         sWR9kp4Gg+igjnpzWqspw2ViUKLknxOvMQQXz/gIzMO/3X0Y+sn4WZZH7w/0ijDak0Yj
         Z2lwYEKpxRQhZY24XSSS5qNOYPUWkIY1dHUzlCjlhAHFqa6bFC4wbHOoRW8WmEr5LDna
         vl6+s8ktgGjkt4PYGPmwKyzTs71LH0pUCUPTjTQ1q0ILFjOzWKj5uFwJpFOpOJK+i6yA
         xLm5O8VqprAxaBhSMkH4smvVYrGd5xkI7NrK6GznT02n9d0ymeIVeoXvzcQ/yeiJMSCD
         0cYA==
X-Gm-Message-State: AO0yUKUw88y4dWzGMrL1v3ZCmwrIM20S1etXFGK69Tkq+ozD8oG57fZB
        n+h4K3MncTeMYhtOXJ0tFFT8anX44IL+2Dxv+ZUPGg==
X-Google-Smtp-Source: AK7set9JqmeLzn+ZpNjBjlBik7FoHGXFdpiI5Z4ulz0J2fN04dJzku/RxjI5AxZT8fYCWSsV9AXnTrQu1Y6OPL7lPX0=
X-Received: by 2002:a81:ad24:0:b0:52e:bb2d:2841 with SMTP id
 l36-20020a81ad24000000b0052ebb2d2841mr6245708ywh.10.1678106243865; Mon, 06
 Mar 2023 04:37:23 -0800 (PST)
MIME-Version: 1.0
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-10-sebastian.reichel@collabora.com>
 <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com> <ZADNS9dqqbBE9Ohb@google.com>
In-Reply-To: <ZADNS9dqqbBE9Ohb@google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 13:37:12 +0100
Message-ID: <CACRpkdbPHnzLBsg6RkFi7AA3ZfHMergXkdPhvx1DQKWRBJ1GUA@mail.gmail.com>
Subject: Re: [PATCHv6 09/11] pinctrl: rk805: add rk806 pinctrl support
To:     Lee Jones <lee@kernel.org>
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        shengfei Xu <xsf@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 2, 2023 at 5:22 PM Lee Jones <lee@kernel.org> wrote:
> On Mon, 30 Jan 2023, Linus Walleij wrote:
> > On Fri, Jan 27, 2023 at 7:13 PM Sebastian Reichel
> > <sebastian.reichel@collabora.com> wrote:
> >
> > > Add support for rk806 dvs pinctrl to the existing rk805
> > > driver.
> > >
> > > This has been implemented using shengfei Xu's rk806
> > > specific driver from the vendor tree as reference.
> > >
> > > Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> > > Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >
> > Is this something I can just apply? I haven't had Heiko's review
> > on it but it looks innocent enough.
>
> Ack please. :)

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
