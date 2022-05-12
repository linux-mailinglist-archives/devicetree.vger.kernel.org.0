Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4D3E5258C0
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 01:53:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359634AbiELXxQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 19:53:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348536AbiELXxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 19:53:15 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B54289BE0
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:53:14 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-edf9ddb312so8644867fac.8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=3Mucfvbm1V3fRO+SKrXZyQ232nLZLnjitHwpAR/NYAE=;
        b=knoF6NchK/QDemm3cpAqgru1YYu+JGMGJvh+a+STmaxzwFiGPkJjtdfVuIV1b4nFSi
         1ev6IRB8rk5lo9OVZx/KYM6rmnwhbItGoBy8s4z0530OrYdzWmDOi3FWFuFMmxFuykz7
         m/YkvvDI+jA08LrluR3vUEvS/5K/gBKmRMzwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=3Mucfvbm1V3fRO+SKrXZyQ232nLZLnjitHwpAR/NYAE=;
        b=uqy7L1zFyLILNqeNdg8J7btsViWYlvotX2SNqak7yv9wjwXe1mRNK4V+wOdE22S3jj
         NsnVCd1FSCSG6WNF/7Ioq3V/uJ2p3xO9v71ciwWeTtpoLqukHPp8mxFt5fur0/qEONMZ
         RHkMC0xwhjSCiAvjgXHS07gU2Zirm+AEWfxP0fHUQCRXvSOJri01uYfWkXNkUlN7YRmu
         hTSaqdQRpwS/0tIa/0NDrhBV53JDHhcMQi/KEOCG3+oY2nfW7+7xczMSWuJrrt9zI0G5
         KpmqUjOgTpJQW0ZKkyYQ0TQNwFRB0AYOzavR0BNPxsVv785W/jsliI9KE4LNQBBoKoIr
         YzbQ==
X-Gm-Message-State: AOAM532K9GpL1h8/u0Zoypb65BpOAK46q4Zrhpivy54AcqU1+SKSuOpg
        a/mI8tPppHmesSu5Sjbk1056LL9qxqrG5yZl2+BSXQ==
X-Google-Smtp-Source: ABdhPJzTg8GVf5QngZ6Zz4JABMcWUgh0cOJ/BWALzUdo1IIWvQ7IqsBmZ1A5SSCGK3vFGZxr/06n/9No2ow8oyH1Ka0=
X-Received: by 2002:a05:6870:40c1:b0:ed:9a12:3f95 with SMTP id
 l1-20020a05687040c100b000ed9a123f95mr1216198oal.193.1652399593631; Thu, 12
 May 2022 16:53:13 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 12 May 2022 16:53:13 -0700
MIME-Version: 1.0
In-Reply-To: <CAE-0n52ofANUWOY5h=Jjy5SYv=bnxO3xyN4cm3qGVRYmDtkNBQ@mail.gmail.com>
References: <20220429233112.2851665-1-swboyd@chromium.org> <20220429233112.2851665-2-swboyd@chromium.org>
 <CAD=FV=VX8EEgkeLgKwyKvjztcjbA8UhKOUpTr-sS1_Ec=QcWbA@mail.gmail.com>
 <CAKdAkRSOtAD6u_cwKhHeMLgz5dC2hfPvVvqmj+17b4i-nspfgg@mail.gmail.com>
 <CAE-0n50Y8tZD9Djn9TVaAiHxehFJ2cZKZ1Z09piDk47uw3nK+Q@mail.gmail.com>
 <Ynzf5jEIECLmELK7@google.com> <CAE-0n50+obQ5qgPNPtUY=OmTgU9bZQ3hNw+MaG9Wi3SQSc-i4A@mail.gmail.com>
 <CAE-0n52WVNru5fnyaB_7wcBOk4twL0Q92YpRbd40-o6ZBmbXWQ@mail.gmail.com>
 <Yn2YvIFNhaz5GmfI@google.com> <CAE-0n52ofANUWOY5h=Jjy5SYv=bnxO3xyN4cm3qGVRYmDtkNBQ@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 12 May 2022 16:53:13 -0700
Message-ID: <CAE-0n53VqYBP1Pq14ju5GWZ6VcKNS-DwLnM-1J_4Z3HExpMU1g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Doug Anderson <dianders@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
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

Quoting Stephen Boyd (2022-05-12 16:46:22)
>
> I think I covered that in v3 of this series[1].

Even better, see v4

https://lore.kernel.org/all/20220503204212.3907925-1-swboyd@chromium.org/
