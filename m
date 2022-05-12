Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D23E5258AE
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 01:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359639AbiELXqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 19:46:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359586AbiELXqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 19:46:24 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83E5885655
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:46:23 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-e656032735so8711453fac.0
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 16:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=CCXk4aGiQyCTAljD0WBKOYV+IYE8EXr1rYTSu6VFgtI=;
        b=FFyemYPiqGMWq2J42zvVIy56OVbEqIuNlxuncSVPaNxNIIJ5ZycERdzKRulHFGsJEr
         oumADnP6plIx6csRjg0toODmGtxNF15v1tIvtE34hTfIWKIZI4lQPYRCfz+j1TgnixOx
         LQc4iQyXWPoOM+4Sw9q+M3yt1yefAvrCDz8Gs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=CCXk4aGiQyCTAljD0WBKOYV+IYE8EXr1rYTSu6VFgtI=;
        b=sp4IjcjrES21ZG2suS355nJ5v2mpZcS5nFLYrChLmRR1XgXR94DiFajfFH/aWIFd8u
         xdzvLIo+b604nwGJPx6w3P+1sJqq+uuhyfHBwkpeZctB71hgff9+3zraQDRpodXlzhbt
         S56JZ7UJMsiJ9VNfchPlP9pWkrOFLR2q0kT5dFwlqSXZAIJTvjkSDmiU2Y4lb8KZw0mR
         i57OCo9MaQ/7P3j1G7ve0Wj+q2SIYYjXLgI6drAu71Lzd/e5n+YyVWv/e8hscBeGCApP
         rytk70hPNqb2k8zpuy1pwjexKMnBwsESmr7MrIyW7B//xLrblnp8dp48aeI8zgwfBuEu
         qQIA==
X-Gm-Message-State: AOAM531dr/9BbzrxX1uLTw9O/PO7iQTUoeLWi/+NCkqBvxZCrQBtp6FA
        T2dkSkNfGwiNS+K6yqs+B4y3RGHhz+LaRa3i9E3nZw==
X-Google-Smtp-Source: ABdhPJx6v0KgMb/jRnx6/Krbb322vnBPBMhicMUGbwrtS2/aRy1hFLrReMk71FzK8VJf5Kfd6+nfPastJffMlxFFYcA=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr1255109oao.63.1652399182819; Thu, 12
 May 2022 16:46:22 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 12 May 2022 16:46:22 -0700
MIME-Version: 1.0
In-Reply-To: <Yn2YvIFNhaz5GmfI@google.com>
References: <20220429233112.2851665-1-swboyd@chromium.org> <20220429233112.2851665-2-swboyd@chromium.org>
 <CAD=FV=VX8EEgkeLgKwyKvjztcjbA8UhKOUpTr-sS1_Ec=QcWbA@mail.gmail.com>
 <CAKdAkRSOtAD6u_cwKhHeMLgz5dC2hfPvVvqmj+17b4i-nspfgg@mail.gmail.com>
 <CAE-0n50Y8tZD9Djn9TVaAiHxehFJ2cZKZ1Z09piDk47uw3nK+Q@mail.gmail.com>
 <Ynzf5jEIECLmELK7@google.com> <CAE-0n50+obQ5qgPNPtUY=OmTgU9bZQ3hNw+MaG9Wi3SQSc-i4A@mail.gmail.com>
 <CAE-0n52WVNru5fnyaB_7wcBOk4twL0Q92YpRbd40-o6ZBmbXWQ@mail.gmail.com> <Yn2YvIFNhaz5GmfI@google.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 12 May 2022 16:46:22 -0700
Message-ID: <CAE-0n52ofANUWOY5h=Jjy5SYv=bnxO3xyN4cm3qGVRYmDtkNBQ@mail.gmail.com>
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

Quoting Dmitry Torokhov (2022-05-12 16:31:08)
> On Thu, May 12, 2022 at 01:11:39PM -0700, Stephen Boyd wrote:
> > Quoting Stephen Boyd (2022-05-12 11:58:02)
> > > Quoting Dmitry Torokhov (2022-05-12 03:22:30)
> > > >
> > > > Have we solved module loading in the presence of multiple compatibles?
> > > > IIRC we only ever try to load module on the first compatible, so you'd
> > > > be breaking autoloading cros-ec-keyb on these older kernels. I think the
> > > > cure that is being proposed is worse than the disease.
> > > >
> > >
> > > The first compatible is still cros-ec-keyb in the driver though? Or you
> > > mean the first compatible in the node? I'm not aware of this problem at
> > > all but I can certainly test out a fake node and module and see if it
> > > gets autoloaded.
> >
> > I can't get this test module to fail to load no matter what I do. I
> > commented out the second match table entry, and kept it there and
> > removed 'vendor,switch-compat' from the DTS. Module still autoloads.
> >
>
> Ah, indeed, if the module contains both compatibles we will load it. It
> is broken when we have 2 or more modules and DT lists several
> compatibles for a device.
>
> OK, it looks like you feel very strongly regarding having a dedicated
> compatible. In this case please make sure that the compatible's behavior
> is properly documented (i.e. google,cros-ec-keyb compatible does not
> imply that there are *NO* switches, and users having buttons and
> switches in addition to matrix keys can also use google,cros-ec-keyb as
> a compatible for their device). We also need to mention that with the
> 2nd compatible the device still can report key/button events, it is
> simply that there is no matrix component. Should we call the other
> compatible google,cros-ec-bs?

;)

I think I covered that in v3 of this series[1].

>
> We should also abort binding the device if it specifies the new
> compatible, but EC does not report any buttons or switches.

Sure. I don't have that done in v3 so I can respin the patch series to
fail probe if there aren't any switches and the cros-ec-keyb-switches
compatible is present. Can you take a quick glance at v3 and let me know
if anything else is needed?


[1] https://lore.kernel.org/all/20220503042242.3597561-1-swboyd@chromium.org/
