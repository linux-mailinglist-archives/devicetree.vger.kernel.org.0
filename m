Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 653F242740D
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 01:15:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243772AbhJHXRF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 19:17:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243759AbhJHXRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 19:17:04 -0400
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C478C061755
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 16:15:09 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id k13so11506514ilo.7
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 16:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WAS0k1J77tuatYFLMV7U8Tkdl9mMVlFA7snHTtL6p8U=;
        b=MmwM1SqDAXxA/vQ1ZEzsWGMXuTE84d1Qz6t/Bf0MMnAa1i1nUXUW68awSO0P4jMhgP
         sHj+txdiaGApUIZUIzlG9Y3PktVMVw9hEy+hIGEpFezukfjzykt9hKLa9BCIf/xBmyev
         3uH1LcviAcNqDCRQlp/0WqIdRzdfqb4mVLhRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WAS0k1J77tuatYFLMV7U8Tkdl9mMVlFA7snHTtL6p8U=;
        b=An3995KkOPx0oAC+uhozBttBe4xFyk4Lpf3sv2hitXvlqapyDBF2YhnQxFKqDQel2T
         U3eB3O0vM5l32lbmheRjVi7lSalhoCe2mQfsrWPb8SSr0WSSeIN/oU6D9az6nAiQpYAZ
         +QsZxw/n/lM2fIj4wK2vXVYvbbsKcUmDonJRRT07odG/Xd0zUa6pJYxG1CrBH4ToT358
         6gNmaxKQRAge5ywPyJzAlnfiCbhARiRvDYgMFK7iJaMtBQZ7SrQIi1BGhN9li50SBsV2
         Q8v7If2eJDa+DuCXV70ehOqsB3k4MYcRP9h7zbFQmKdtF4JAanGmPEUTO+ci2zBK5H7q
         pfUQ==
X-Gm-Message-State: AOAM532PjoJQ+KLSWvJKw09tXd25dphdjB9k0wqOckSmILw9V2M5z/6q
        xgQ5oskfMIe/BRBUuKSrcIyGuY4E3ieygg==
X-Google-Smtp-Source: ABdhPJzQRvrNOQ1ruUT5+X975nIh+DNcTBoQXU2K9kZXpEBR8bXyZiz84MZnjtrMQFztZi9xYBAS3g==
X-Received: by 2002:a05:6e02:8a7:: with SMTP id a7mr10214045ilt.246.1633734907771;
        Fri, 08 Oct 2021 16:15:07 -0700 (PDT)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id 2sm159156iob.13.2021.10.08.16.15.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 16:15:07 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id w10so11477889ilc.13
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 16:15:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:1785:: with SMTP id y5mr9543722ilu.142.1633734906696;
 Fri, 08 Oct 2021 16:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
 <20211008113839.v3.2.I187502fa747bc01a1c624ccf20d985fdffe9c320@changeid>
In-Reply-To: <20211008113839.v3.2.I187502fa747bc01a1c624ccf20d985fdffe9c320@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 8 Oct 2021 16:14:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XsTb00Ax=AgrpAYurruiwZOVKZrYkphFfLLueSAio=rg@mail.gmail.com>
Message-ID: <CAD=FV=XsTb00Ax=AgrpAYurruiwZOVKZrYkphFfLLueSAio=rg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: sc7180: Support Parade ps8640 edp bridge
To:     Philip Chen <philipchen@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 8, 2021 at 11:39 AM Philip Chen <philipchen@chromium.org> wrote:
>
> Add a dts fragment file to support the sc7180 boards with the second
> source edp bridge, Parade ps8640.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>
> Changes in v3:
> - Set gpio32 active high
> - Rename edp-bridge to bridge to align with ti-sn65 dts
> - Remove the unused label 'aux_bus'
>
> Changes in v2:
> - Add the definition of edp_brij_i2c and some other properties to
>   ps8640 dts, making it match ti-sn65dsi86 dts better
>
>  .../qcom/sc7180-trogdor-parade-ps8640.dtsi    | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I think these two are good to go as long as Bjorn doesn't mind having
this dtsi file in the tree with no users yet. It looks nearly certain
that some trogdor devices will ship with it.

-Doug
