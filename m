Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4971F281E40
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 00:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725601AbgJBWYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 18:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgJBWYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 18:24:46 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD997C0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 15:24:46 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id p11so1226937vsg.3
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 15:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Is9HMQBaKKpXSbhbkh1D21fxGJNsnpUrasuh/KfwOMs=;
        b=LrkwPd555VbQlCZQ4xerSYMa0Gu7RuBh/yiOpWcQkbL6/qFkXomFafvaB+/MIVXo56
         UBGC2w9Y3SA86our4/801mlePd7aZjptVYZ+lOa/4nPJgC584tBwqYnAiKaDqGMjAjZ1
         Xy4f19llRVO3lAHvjLjmxxgQxtl1Chl4/sZRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Is9HMQBaKKpXSbhbkh1D21fxGJNsnpUrasuh/KfwOMs=;
        b=oXLLne7lSwd+h0O/8Umq5F2usVVx+6zKWmfhVCtDzoUtgv7dy3UnUsDFRUjAY2dOdx
         UbR6ZOc4S52vtpYo0iA00wWbUQ730KrKvQRCAIz75NpH2pdgUomldp6oXZDOllO7Ld/+
         TD0O50RfWFXZvu9Z4FB7ODWzibzlBardnZgzwiXM6AcDDWnWndoFITXXeLzb9OZk8eYy
         xvlUAWKCo4nIYR8EkGQeST3Heh1eCvQSzReAnmOt5d7lMX2cG7rbzJDf/i32yt8IuS1m
         S8Ce0bY+LPTz1b4vwcUQ26SqtT+A8pjWJeWpC1vC4PBTf3WCBoROnc5sab2CUKJzMYdd
         Pmcg==
X-Gm-Message-State: AOAM531vP50RtBYirBTlGq9QBzzqfvtx0RNsAGqtP/zXRFX44sxk+Lu6
        Fq59EjPt4N8gaWQ36BoC8+aRUsMSSuMD5w==
X-Google-Smtp-Source: ABdhPJxKRsO02Z2VXr/HH35G5yhA4+JHXZYPNsi9aTHJumbETfSMEK22Pj+yA+JFAY1Bw207BzkzEQ==
X-Received: by 2002:a67:6816:: with SMTP id d22mr390874vsc.0.1601677485762;
        Fri, 02 Oct 2020 15:24:45 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id q2sm476066uap.12.2020.10.02.15.24.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:24:45 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id z19so796419uap.2
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 15:24:45 -0700 (PDT)
X-Received: by 2002:ab0:4542:: with SMTP id r60mr2618461uar.90.1601677484614;
 Fri, 02 Oct 2020 15:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200929205807.2360405-1-evgreen@chromium.org> <20200929135741.2.Ia3b68ac843df93c692627a3a92b947b3a5785863@changeid>
In-Reply-To: <20200929135741.2.Ia3b68ac843df93c692627a3a92b947b3a5785863@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Oct 2020 15:24:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XDYS_QdwM-O_m0Pw6efkbTX+6UZSjqhjuJ8xDwMpZy6A@mail.gmail.com>
Message-ID: <CAD=FV=XDYS_QdwM-O_m0Pw6efkbTX+6UZSjqhjuJ8xDwMpZy6A@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7180: Add soc-specific qfprom
 compat string
To:     Evan Green <evgreen@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Sep 29, 2020 at 1:58 PM Evan Green <evgreen@chromium.org> wrote:
>
> Add the soc-specific compatible string so that it can be matched
> more specifically now that the driver cares which SoC it's on.
>
> Signed-off-by: Evan Green <evgreen@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
