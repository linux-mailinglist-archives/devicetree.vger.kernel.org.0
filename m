Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 209B950BCA3
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 18:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354533AbiDVQNs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 12:13:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiDVQNr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 12:13:47 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51EA057142
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:10:53 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id g18so17268715ejc.10
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TO6k5Eg+5Nqe4CCIAN4ROGKgZysMxXNX64mWMEm2504=;
        b=oY3R9eMENeA4yFgfxxAh0CIL63NfU/4cQZy0VBfnWqdkaQCrjP1OSsrzairEuqTc8h
         dCnx5NBV16wwOh8IExGkxkRthS5yV1+uEB61rOzpqQGfyzUlUPRRrILpKog4hvbptgGe
         HyH8ZzQX9V8+aRsclZdqqy2LK9aUqTNtjPWfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TO6k5Eg+5Nqe4CCIAN4ROGKgZysMxXNX64mWMEm2504=;
        b=nB0zIOI83ahO/oCGCVpagT3C9EC0/0ur2elYNyyD061/98EiRdhwjYLuWATlskYsao
         jOA3dFZi+rTayl22OAquQk3wfq8PjH0THdhA8N5dKkIe3W4CVPc1qCXgf37IX5wN+Bj/
         YPD73nrz0NWOIjHbEaUnHue/M3aQX7iO71k2b9IhHG0kF20M61z+9aztkpyOEozUSq5Q
         jneIuGPnB724V+IKxGklO41I80Y6kdOTlIoDDbiLYsaRD21new837rePXs9QgdovWGbt
         nQPfPjF37fvjNV8rRlKhZOaQTDHOx+maEZch/kin8mIwauLhUFcOW04Sv98ywsoQnynI
         oxOg==
X-Gm-Message-State: AOAM531FRyVjQ3usKt5xV3Ly8B2oMEN00KwMjcEwZfiprggKbTnmS5m/
        M4SjzsorI8muH6km5mrsja78JcyQvK8bxvlIsOA=
X-Google-Smtp-Source: ABdhPJyc4SNKucaCShSoYLn53avzKVVpVzt4XdK7PE3Ie8CUhA8Vo32u4Jcs5C5JcKSrFFQbzweE0w==
X-Received: by 2002:a17:907:72cb:b0:6ef:aecf:1bd7 with SMTP id du11-20020a17090772cb00b006efaecf1bd7mr4840317ejc.515.1650643851866;
        Fri, 22 Apr 2022 09:10:51 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id eq7-20020a056402298700b00419d8d46a8asm985559edb.39.2022.04.22.09.10.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 09:10:51 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id t6so8312573wra.4
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 09:10:51 -0700 (PDT)
X-Received: by 2002:adf:a29c:0:b0:20a:a246:a826 with SMTP id
 s28-20020adfa29c000000b0020aa246a826mr4418755wra.422.1650643850709; Fri, 22
 Apr 2022 09:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com>
 <1650618666-15342-3-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=WWa8n0MJB8ks7bgrSj1Qop1Z5hvfEAOWtFcmsz38eR_w@mail.gmail.com> <83129bad-44a9-bec7-f931-8067ef1b9d4d@quicinc.com>
In-Reply-To: <83129bad-44a9-bec7-f931-8067ef1b9d4d@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 22 Apr 2022 09:10:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vu_0vxb_D+8n3qhNZ66nRXBp5vxshChmOM-ToPJxk=aA@mail.gmail.com>
Message-ID: <CAD=FV=Vu_0vxb_D+8n3qhNZ66nRXBp5vxshChmOM-ToPJxk=aA@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] drm/msm/dp: Support only IRQ_HPD and REPLUG
 interrupts for eDP
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        David Airlie <airlied@linux.ie>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Sean Paul <sean@poorly.run>, Sean Paul <seanpaul@chromium.org>,
        Steev Klimaszewski <steev@kali.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 22, 2022 at 9:05 AM Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
> Hi Doug
>
> For the lockdep error, the splat looks similar to what kuogee fixed
> recently.
>
> Can you please check if below patch is present in your tree?
>
> https://patchwork.freedesktop.org/patch/481396/

Indeed I did have that in my tree already, but the lockdep splat is
still there. I think the problem is that we're now calling
dp_hpd_plug_handle() directly in dp_bridge_enable()

-Doug
