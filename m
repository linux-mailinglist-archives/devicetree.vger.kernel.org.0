Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92EB243F339
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 01:01:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhJ1W5v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 18:57:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230455AbhJ1W5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 18:57:50 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7905C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:55:22 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id v65so10247877ioe.5
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YIO8z6g5pnThmN6nY1IAWvuZN7+8+z/gyR0WIdP+6Nw=;
        b=hmXjgoKYJzjjMMBsX9LnJxl/pAFVPf56QIHmBYftUTr7StooYQW7HSDt+rjq9ozQzr
         70MTu3sgwn/pm/25Y62tLpZQqgbVWMArRKLBzlMXfYeuEBjp26SRu6Qv24ngPs/hn49F
         JYTj3L2leuBCEPLbPSB7xfi4CTSY3fnmRMwUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YIO8z6g5pnThmN6nY1IAWvuZN7+8+z/gyR0WIdP+6Nw=;
        b=0B1Np0wHp4ScbAbMnGhYg6HquWoLVczYpCswtj6SvkAEhjUkLNYtAMF8DBGj8gtZyD
         GZVywY8CYElgCFafyuF5xtcy8s7cngNkCj8ifPXfIpbPPCeZKj9il96wU4ppdSwC8+Oy
         7zs0dJHQyDLaQfCnWjNzu9EXRo7i9YBXBIF5eFzdxr/w2pvdFO3umBDfxiS7ib660f5B
         tJudXdVcPCjUhoT/xjC+QPvqp6JEQD32BrUMDL6jT5S+DLPjMsqsphCM/iUnr6c+I+wV
         bbtE20u3p4Iie44o3kTYR/fT52HZMKGGc5eIe/EtmAygvytFoUypvkR2qTRS2/d44CB3
         ACUQ==
X-Gm-Message-State: AOAM532GZYnUfDv2sK7vTmlVoETIY7gRBOmr18ah7s1ONEC9G4wxuyrY
        teDeoMZ6D3C70vTol1ywK6FdoKQRJiOVfw==
X-Google-Smtp-Source: ABdhPJyWILYLtGwL5XB03bLzCOpLTJ0r774RbAy/bnUWEtRaT7Umt4meOw/h8a8LTPpb0X6ikbaLuA==
X-Received: by 2002:a02:7154:: with SMTP id n20mr5315878jaf.77.1635461721960;
        Thu, 28 Oct 2021 15:55:21 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id j2sm2602408iow.29.2021.10.28.15.55.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 15:55:21 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id l13so8695367ilh.3
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:55:21 -0700 (PDT)
X-Received: by 2002:a05:6e02:1c21:: with SMTP id m1mr4940355ilh.165.1635461721219;
 Thu, 28 Oct 2021 15:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <20211028151022.1.Ie56f55924f5c7706fe3194e710bbef6fdb8b5bc6@changeid>
 <20211028151022.2.Ib9070172c8173d8e44c10352f68f2f507a151782@changeid>
In-Reply-To: <20211028151022.2.Ib9070172c8173d8e44c10352f68f2f507a151782@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 28 Oct 2021 15:55:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UK0KABr5NchZgrjSFa+7G7Ez_JPcgCVnsN0K1q++O-AA@mail.gmail.com>
Message-ID: <CAD=FV=UK0KABr5NchZgrjSFa+7G7Ez_JPcgCVnsN0K1q++O-AA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: sc7180: Support Homestar rev4
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

On Thu, Oct 28, 2021 at 3:11 PM Philip Chen <philipchen@chromium.org> wrote:
>
> Support Homestar rev4 board where Parade ps8640 is added as the
> second source edp bridge.

Similar suggestion about mentioning why the include of "sc7180.dtsi"
moved around, but otherwise looks good.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
