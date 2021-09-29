Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D562C41C808
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 17:11:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345136AbhI2PNT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 11:13:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345135AbhI2PNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 11:13:12 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABCF1C06161C
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 08:11:30 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id r9so3209520ile.5
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 08:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i8yIlNe1wteWFB7lp9PoXm9bRdu16IElht81lO++2aM=;
        b=Y49oozr3mkIPyTvRc+zx4f6Oq3JfSFzuGoKqU5eJszrBT58SW2xZBdmA0vn8dzZgaX
         soKRG8eLnTsuy2M944uVoxGtEJpgZTHU1Jez+9TKBDP8+ILHfoWnOdQVpPC/wsCbv0Am
         KPJu/6jRnbTO3MEw5fq/wp6gUFSEmTvKBrQkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i8yIlNe1wteWFB7lp9PoXm9bRdu16IElht81lO++2aM=;
        b=fJXB8mp99ZTfcMxGbWXe/cIIaEhvwLXJFL79zpjx0QeSDPP67PfMRF5lzbnSImbyKl
         WJDmRZ8x/vm2jNUcAWdUU5X4ywl7zmP+FQNCq0jHeyE0hZxa4YSwZsJ+JCd5z2dLjVNr
         Hl3tHESKZ6+VU3kwqY5OBE1uykagTzh1KlQf02d7MewLGeRJ1JsOftAmAJP1QBkHEO8q
         oN1kb+i4idOXtLYD8weHA+LBqKk3IPdfBixE1d6khuy0Qx6EfcqHqKehhdic6exfOtO+
         xQ50doQEMMQeSQfTiL54rSf74IfdODnRIbkLd1ELYF547NuA10Jhrd6wecy0Aj8vnwRb
         LY4w==
X-Gm-Message-State: AOAM531DxIEEBC5bOiFQ670AwI2LnQUZs0EYBJDxQg0TV5yB6zWwdn6o
        uA10j/UuTSsVC57Jq0Oxj/CLEkUzl6maxQ==
X-Google-Smtp-Source: ABdhPJyV8IYt+0sCXwypBAlNXFxQvbl9f481MUjsUOADbqOUqcr6/ZvA0zUMNEqy/dU7SYPJ4p9EeA==
X-Received: by 2002:a05:6e02:bc3:: with SMTP id c3mr147158ilu.178.1632928289895;
        Wed, 29 Sep 2021 08:11:29 -0700 (PDT)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com. [209.85.166.181])
        by smtp.gmail.com with ESMTPSA id a14sm35158iol.24.2021.09.29.08.11.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 08:11:29 -0700 (PDT)
Received: by mail-il1-f181.google.com with SMTP id a11so3187280ilk.9
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 08:11:28 -0700 (PDT)
X-Received: by 2002:a05:6e02:19cb:: with SMTP id r11mr151712ill.120.1632928288363;
 Wed, 29 Sep 2021 08:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <1632892123-11006-1-git-send-email-rajpat@codeaurora.org>
In-Reply-To: <1632892123-11006-1-git-send-email-rajpat@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 29 Sep 2021 08:11:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XHaf-EQ9Uonr=B6QYp+wXcdasmdu=v-bdwWniveN-Asw@mail.gmail.com>
Message-ID: <CAD=FV=XHaf-EQ9Uonr=B6QYp+wXcdasmdu=v-bdwWniveN-Asw@mail.gmail.com>
Subject: Re: [PATCH V1] arm64: dts: qcom: sc7280: Add 200MHz in qspi_opp_table
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Sep 28, 2021 at 10:10 PM Rajesh Patil <rajpat@codeaurora.org> wrote:
>
> Add 200MHz OPP in qspi_opp_table
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)

Looks fine to me, thanks!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
