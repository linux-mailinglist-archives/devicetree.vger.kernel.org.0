Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97C0543F342
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 01:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231513AbhJ1XDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 19:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231508AbhJ1XDB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 19:03:01 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C255C061745
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 16:00:34 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id bm39so124314oib.0
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 16:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=65adDYZK+vJThwwhpee2/9MrxFuS8APYICngTX1DB0s=;
        b=oae5dTKtxGu2NToR+ozf+x63DzWhTgCYSjaT8t75vHruG8iqdS97M5yJsuwkrTQav2
         gJG3hZJACb5/R2h4Uu5MqKHUdyI+77qO3b4Kbdl5bzZLo8VXve3XhwHNzOjCd2uz/rG4
         52GFzHK+hDwYaQqLefCuonC/yNG8PuBJgCDQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=65adDYZK+vJThwwhpee2/9MrxFuS8APYICngTX1DB0s=;
        b=5wU/24yVa43FCevr85fc9knN/eIi+cV/RQKP6qxy5J3d6rN1fAnC/tcaBEb9C49AS/
         gLRRcz3HBuqeol+8hzplsB6xDPzbU+xwP2uLKiW/d3xwyDJJfZlHZiXyaxiPYdhAi9Du
         XjJsiUJQkg1Zg7h8WzEnf8Z095QTDVFX0cJEq62S6lJTQhvF+aDpsf9TF2p+WXf2iKc8
         tEwgWK3K4LkaKr1eDNkZWF+eKbZ/xGiOBFqAHNbOIQYaux/5KGf51j1NefbxqShcMu+Q
         vD42xkg1GqWw9YWKvrgWjGrFmqsVYb03WiVkjrTcZclN7PgAJseKL22V/2GdS90k6Cux
         VcGg==
X-Gm-Message-State: AOAM531drd4ci0SIdmFzuWeFwiBlnX0opUseOTBes2AMhjEhGZTkWqNY
        ZLLf38bm4i/rxFmJ1N1CfW/cnthxvndnFCLnQqYabQ==
X-Google-Smtp-Source: ABdhPJz171p5Os7DrFgYldIZYVeYxanaYEOB+mBpsSG31OWLUFDDFkXoCtzg6VJyLnG1h/+IJIDczYxp+lYyreZs/eE=
X-Received: by 2002:a05:6808:23c2:: with SMTP id bq2mr11188025oib.32.1635462033433;
 Thu, 28 Oct 2021 16:00:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 16:00:32 -0700
MIME-Version: 1.0
In-Reply-To: <20211028151022.1.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
References: <20211028151022.1.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 16:00:32 -0700
Message-ID: <CAE-0n50XwcLBmOBaRiF-qW=R-HfanjviteEzmMDbDuPJruX65g@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: sc7180: Support Lazor/Limozeen rev9
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

Quoting Philip Chen (2021-10-28 15:11:31)
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> index 8b79fbb75756..69666f92176a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> @@ -5,13 +5,10 @@
>   * Copyright 2020 Google LLC.
>   */
>
> -#include "sc7180.dtsi"
> -
>  ap_ec_spi: &spi6 {};
>  ap_h1_spi: &spi0 {};

Can we get rid of this node swap now? I think it is only around because
early on we swapped the EC and H1 spi interfaces and then we had to swap
it every time we made a new board.

$ git grep ap_ec_spi
arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi:ap_ec_spi: &spi6 {};
arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi:ap_ec_spi: &spi6 {};
arch/arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi:ap_ec_spi: &spi6 {};
arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts:ap_ec_spi: &spi6 {};

It feels like we'd be better off leaving that quirk in trogdor-r0, which
conveniently isn't upstream, and then relabel the spi nodes in
sc7180-trogdor.dtsi now. Otherwise I look at this and have to remember
that whenever this dtsi file is included, we've already included the
sc7180.dtsi file before it, so that the relabel actually works.

>
>  #include "sc7180-trogdor.dtsi"
> -#include "sc7180-trogdor-ti-sn65dsi86.dtsi"
>
>  &ap_sar_sensor {
>         semtech,cs0-ground;
