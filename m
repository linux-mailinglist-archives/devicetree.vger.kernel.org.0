Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA8D55A6E50
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 22:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231366AbiH3USe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 16:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbiH3US1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 16:18:27 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD72E3F335
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 13:18:23 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id k22so12545108ljg.2
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 13:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=1yeP3DjVWaMGF9lHlaP/DrKMq/Tp9AtHGNc7ptmf5YA=;
        b=CVPzEkz5uPI8rDre+RUzmevOwuldj7MWQUhT749lZ0N2Tv8G+sg/fIPVM+Zs6FKpWa
         drrtDv3XsftxYHApfXVOwWowWUlQj3eVEY3Q6fepbpIKIV07GtgLdZgKcb6TRRL6auBu
         Rq9Gy61LL2U9VHkNyUjdNl160fz/KcwQY2Siw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=1yeP3DjVWaMGF9lHlaP/DrKMq/Tp9AtHGNc7ptmf5YA=;
        b=uWHj83Z+qJ68phJBkQ7WBGvLbVfzwwoduiYcdywEFuACOH6RoQACFZj+1oGif+DgD4
         JcHH2W5oD9RcbbfMkwmZn3JA7KIhrRBpnoWLFSaBHgDGIZeoLD5AGXIC8Pas2z4lXMbD
         aImV6NZU46SkLXgz0I78UcSNJIFwy3x2oNJi/WZ3y2jlImjw3ni/WH73dakdK5YwkP7W
         dTivS+6+Dj/0U2HaSHeLz0QIRvJuGmgyNx+ZDc0pPjNKZBG239r/fPm3jcZcDjVqidsa
         +CJvuPVsoNter0UMWpykmOY8zJ+vWDRh8o9je0EL8kaHmpf829pQi8NC313FOnqAfuol
         7I5A==
X-Gm-Message-State: ACgBeo1Bp9DABWvhIRHn0gj8H+Ezu7grk2rlveZkE7jTCCuoLOKIIpFo
        Dk7DQaGM5Y2SBsnaQdz68k3E++d/trp9tw==
X-Google-Smtp-Source: AA6agR6f60TuFWra7TWCIYzK6b35AmrRHblKapEcYr29wTWE9jY7/5LXW7JCbBjpeLvK0DPtMt6iWg==
X-Received: by 2002:a2e:910e:0:b0:265:4bd5:4d65 with SMTP id m14-20020a2e910e000000b002654bd54d65mr3370175ljg.34.1661890701887;
        Tue, 30 Aug 2022 13:18:21 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id y13-20020a2e828d000000b0025e4e7c016dsm1885669ljg.16.2022.08.30.13.18.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 13:18:21 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id s15so7418913ljp.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 13:18:21 -0700 (PDT)
X-Received: by 2002:a05:651c:241:b0:25e:65bd:3a8a with SMTP id
 x1-20020a05651c024100b0025e65bd3a8amr7863518ljn.206.1661890700872; Tue, 30
 Aug 2022 13:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
 <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
In-Reply-To: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
From:   Brian Norris <briannorris@chromium.org>
Date:   Tue, 30 Aug 2022 13:18:09 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO_iqH8pPmPPH2=3RWVVDKa2XYLNEp4P=1r+b4=VsxNHw@mail.gmail.com>
Message-ID: <CA+ASDXO_iqH8pPmPPH2=3RWVVDKa2XYLNEp4P=1r+b4=VsxNHw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
To:     Doug Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, zain wang <wzz@rock-chips.com>,
        Lin Huang <hl@rock-chips.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 30, 2022 at 12:51 PM Doug Anderson <dianders@chromium.org> wrote:
> nit: Sinze zain wang's SoB is first then I think either the patch
> needs to be "From" zain wang or you need some different tagging, like
> Co-Developed-by or something.

Urgh, I think I did a conflicting combination of --reedit-message= and
--reset-author when cherry-picking / rewriting. Fixed for v2.

> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!
