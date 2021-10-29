Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 448EE43F754
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 08:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230222AbhJ2GlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 02:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbhJ2GlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 02:41:09 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24B23C061714
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 23:38:39 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id m37-20020a4a9528000000b002b83955f771so3009502ooi.7
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 23:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=lrxWSlaHCqYhum8bENEW5/SnCy2jiR0p2i+4IT353FU=;
        b=B+yUMrtmEan6908TWx8hiXU3bHm3jisSeFvHInIf1B1n5Q7J9IgleyQi90tMSUezsD
         38/8lBlsGCgXYFwIezakVmbBo5KDmDkmoqYGvruwfTDcnwyCkNfs4YES73cpt514c1V0
         kNrtOrWAn8tqnzTmogu03qpWuacbQJDCN/aUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=lrxWSlaHCqYhum8bENEW5/SnCy2jiR0p2i+4IT353FU=;
        b=b21TzdIuyZHdcYWgqZ7kt9VqltKcncqx7/bhr5ItUuPuTBOSmtxv7GvpasqsPF1Ihz
         +G7xO4QFT3IFzRe3oH5t/wsutVcqpDzBJJZz1oKheQ9iLVD37I90TVXqeUnZmam19nDo
         VcojLYHC3Uqg07n3dB4gI9mThML1Ads2Ou+IqGAdgBe/qJIPK/aQ3tccVe03ca+2R+NH
         lJmeVaOK0fPHKoasKwhczIHB5y9xg63ISSikjZ/gcNrFrhOqMsxbzR/MD2Y0dnjsH4e0
         tQ5DDQvRWsef/uzdvNi2Tctrfr3XItz9CkDtLbzNwXkHrBYXmQhDj962Qhc6J29p2SnL
         1EXg==
X-Gm-Message-State: AOAM531IgUuqRd48B8YbimwewM5XqB93MUpxoW+WT+CDz8SyBXhreB/R
        mTxpw8M7VleW/6vTitieWUBD1vJiXG+tkIeGb6iMtg==
X-Google-Smtp-Source: ABdhPJytZQJN2ROOkPDTOyLMxax9ZDVghJLsWYJT0LYebDjaXf9Qn9W3wLTZ0I74Q3HnH7U6p/sFSXC9b3ZuCQJikwk=
X-Received: by 2002:a4a:4c90:: with SMTP id a138mr6349006oob.8.1635489518497;
 Thu, 28 Oct 2021 23:38:38 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 23:38:38 -0700
MIME-Version: 1.0
In-Reply-To: <20211028174015.v2.2.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
References: <20211028174015.v2.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
 <20211028174015.v2.2.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 23:38:38 -0700
Message-ID: <CAE-0n51hyTyCxwoSfGZCZmRGVbdYBmyBPdkjqPgZ+4gn6T9WmQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: sc7180: Support Lazor/Limozeen rev9
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     dianders@chromium.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-10-28 17:41:16)
> Support Lazor/Limozeen rev9 board where Parade ps8640 is added as the
> second source edp bridge.
>
> To support different edp bridge chips in different board revisions,
> now we move the #incldue line of the edp bridge dts fragment (e.g.
> sc7180-trogdor-ti-sn65dsi86.dtsi) from "sc7180-trogdor-lazor.dtsi" to
> per-board-rev dts files.
>
> Since the edp bridge dts fragment overrides 'dsi0_out', which is
> defined in "sc7180.dtsi", move the #incldue line of "sc7180.dtsi" from
> "sc7180-trogdor-lazor.dtsi" to per-board-rev dts files too, before
> the #include line of the edp bridge dts fragment.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
