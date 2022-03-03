Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB974CB88D
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 09:18:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231231AbiCCITf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 03:19:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231139AbiCCITf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 03:19:35 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A4F1712B4
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 00:18:50 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id w27so7086115lfa.5
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 00:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=on4cm3w97gy7RevnM2fAc8kCbBYemQ93B0MGug+f2Sw=;
        b=HbmOUBeULRAj4VjhmZVI3EKmNdxqiWcxb0dr+4Kpd3Uum3VcFHkK4pe8+KHgkMhEwG
         XEhHYFpvjPm4aiqP904xnKALwPNGd2RH8l59cDmlnI68h8iSOcWWegi1H5Ir8tSZAbFc
         m61+tI1InDj0JEM9IXyUtSFpJN7s4yoRuKDdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=on4cm3w97gy7RevnM2fAc8kCbBYemQ93B0MGug+f2Sw=;
        b=CYeaHvovqe+S9AMpWsyWvWV14+CS/ogb5iLEnaE5lCVG0zNpk2ZHLQi2JJ0/WCKMAd
         A1rxsmvNjVc2G73BmKKgvwAE5hNqIRio01uIAeX4RQaG/ScrN83n4SE3R//ojaGSpVVn
         axLHjTNrV6clqjdJSR59O7iQ5D/W1NZO90ph2Mw1dYLBa8+qcZvbvJsiRxMT2SY2yuJ1
         GsYp/hO6I8M2NU/PCqy3JO56HJ/MvxHM4uQICS+FaJuEBovObujLybT/4jtORyHV4TPA
         QQ9YKi2Ggt77bcsY2Vf9+uFmXD3GeJABATv8aN152G5ovrNrs1IXJXyH43pseEZKbRHL
         kQRQ==
X-Gm-Message-State: AOAM531jWpq5BapEvqL5gTpJRIJXsf3J4lvNSGpldNt1vtkYakdxVND0
        gvK6cIIBeImxug3w+aTkF8k6HTfKXJMfsGFCaU4fCQ==
X-Google-Smtp-Source: ABdhPJz7qOkcs9NrVpx+qNqlVj4sTQvZ7OlQDyiM5QuV1qHK2lks0edta7sb7odh4BSvah8kBcAyY+1/w97q+jW/l1Q=
X-Received: by 2002:ac2:5fc2:0:b0:443:82cf:9603 with SMTP id
 q2-20020ac25fc2000000b0044382cf9603mr20717684lfg.142.1646295528442; Thu, 03
 Mar 2022 00:18:48 -0800 (PST)
MIME-Version: 1.0
References: <20220106065407.16036-1-johnson.wang@mediatek.com>
 <20220106065407.16036-5-johnson.wang@mediatek.com> <Yd4yy2emxSSh80UW@robh.at.kernel.org>
In-Reply-To: <Yd4yy2emxSSh80UW@robh.at.kernel.org>
From:   Fei Shao <fshao@chromium.org>
Date:   Thu, 3 Mar 2022 16:18:12 +0800
Message-ID: <CAJ66y9F67VNRWE3JsCqnX4AFzd+R9Y9WJHoxnk_t7u2rHhuimg@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: regulator: Add MT6358 regulators
To:     Rob Herring <robh@kernel.org>
Cc:     Johnson Wang <johnson.wang@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        broonie@kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022 19:45:47 -0600, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, 06 Jan 2022 14:54:07 +0800, Johnson Wang wrote:
> > Add buck_vcore_sshub and ldo_vsram_others_sshub
> > regulators to binding document for MT6358 and MT6366.
> >
> > Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>
> > ---
> >  .../bindings/regulator/mt6358-regulator.txt   | 22 ++++++++++++++-----
> >  1 file changed, 17 insertions(+), 5 deletions(-)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Just a gentle ping on this - I assume there's no actionable item on
Johnson's end? (or better to rebase & resend?)
