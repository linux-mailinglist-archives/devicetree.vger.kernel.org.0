Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D934B526BBC
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 22:44:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244459AbiEMUo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 16:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241188AbiEMUoy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 16:44:54 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773FD245C5C
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:44:53 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ks9so18400512ejb.2
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=55dffKzUURo3SfiqA/BEE8o52UNGk7nPiNJj9q1EvHo=;
        b=CkwOTBQa/6gpAvG7tg13PNADiJwjora+sLhHNmoDE5nuiBQ9yLYCkJyKH570Geq6zw
         4ayQB+4KtUdQOc7XprcGjHYoxqC2GIaCbnwloQ/SAKoCUo5gIvwmb+FljxCzfaZ1do3M
         fN40nTvQPGJixSvk/XOSsiVBi6lhuyEMXsIkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=55dffKzUURo3SfiqA/BEE8o52UNGk7nPiNJj9q1EvHo=;
        b=8N0Pi+g0df1irwUiIqG4UIHefWsDVSnhtQtTnpjLEZXTMRKfWxgv+dq0JubBYE1JKh
         extNVLWqASzZE/BB9L5S8EWwI4ZH3XSRgh+zsmJxOa22GklBc0sNElLUnXC0h5Ad0ZFE
         Vx221uuOBMflR/hn6Kc+rkyIFr7nzlHco9S2/IFkEdw1V+f6quXra5RypAq9pqTXG7cl
         wQtP246ksufSOHfEwWzHRlh00RIlgK75C1VVQh3Yd1w73Cknnc6dJLvqJZF3eX+jIsIP
         2u+D69JRrGRu4mWatKo1GUpC8sHt4S+c6BD/xbZydNPIfXtJb4IKXho+5JQyB8m21ofq
         2osQ==
X-Gm-Message-State: AOAM5313C1CqPdRDd7U+vZfhpWabNEwK5RiX+AtNpKIfH494bWJ0Dt9b
        LaCJodinUU72u9wCS6XqV1stxRpvmsOl3impX+Q=
X-Google-Smtp-Source: ABdhPJxQn71cuOHMtx8JodoMM+rPiA+mAQFoiwk94PjkuiOIkcwrL4obv2eoMxCOUKIWnarr73h0xA==
X-Received: by 2002:a17:907:728c:b0:6f4:57e5:9ac6 with SMTP id dt12-20020a170907728c00b006f457e59ac6mr5707209ejc.22.1652474691758;
        Fri, 13 May 2022 13:44:51 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id eb22-20020a170907281600b006f3ef214e51sm1085140ejc.183.2022.05.13.13.44.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 13:44:51 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id i5so12811724wrc.13
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:44:50 -0700 (PDT)
X-Received: by 2002:a05:6000:2c1:b0:20c:5e37:3ed1 with SMTP id
 o1-20020a05600002c100b0020c5e373ed1mr5333219wry.342.1652474690235; Fri, 13
 May 2022 13:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <20220513095722.v2.4.Ie8713bc0377672ed8dd71189e66fc0b77226fb85@changeid> <Yn7BbNeVXV1aGCsi@google.com>
In-Reply-To: <Yn7BbNeVXV1aGCsi@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 13 May 2022 13:44:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VpdfrkKJg8bgtTEACxH5VP+rXG0MTXPARi3S1htuqbSg@mail.gmail.com>
Message-ID: <CAD=FV=VpdfrkKJg8bgtTEACxH5VP+rXG0MTXPARi3S1htuqbSg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: qcom: Add more sc7180 Chromebook
 board bindings
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 13, 2022 at 1:37 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Fri, May 13, 2022 at 09:59:20AM -0700, Douglas Anderson wrote:
> > This adds board bindings for boards that are downstream but not quite
> > upstream yet.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I didn't follow the discussion about the odd sku ids (-sku1537,
> -sku1536, -sku1024, ...), but they match what is in the
> downstream tree, so it seems alright :)

It makes more sense in hex. hex(1536) = 0x600. Basically on these
boards there are two sets of GPIO strappings, the normal SKU
strappings and the panel strappings. Depthcharge combines them. You
end up with an ugly decimal number, but it's not the end of the world.

-Doug
