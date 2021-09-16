Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAC040DDF2
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:26:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238901AbhIPP2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:28:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230190AbhIPP2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:28:06 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D93C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:26:45 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id h29so7045865ila.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xxG3dbZgPARu0xvQnjbpkCvQJvDZ73qgLTLb513Zo/4=;
        b=b0nQLKsmhRBdwAOVP7WfPx0gukN36TpAywM9O7OxxgmVkDWF7QIHgckba/ROBSlDup
         f5wzigGcYhRa2LTTtj4Ah76HGXjG3oUOx8yp1qO9kL7GtlOdruAt+V4fCeah5R7s6HDV
         A7Ol1K21yqh8t0fVtK3zz5kOOx/LFJJEtDWao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xxG3dbZgPARu0xvQnjbpkCvQJvDZ73qgLTLb513Zo/4=;
        b=gruYurcHPYUKJGVyBOybzjldr67m4FQScXcatnHOKtF8GrP3PRaTshXm+2tv2NKGT0
         6jvUunveE5gyDsK4HzF3PWdj4ndVHHeeQd3y5avMRoH+KEwkXhcvKGqs+XD5rU2iOIuh
         eTW6osErFTlfMdWyc7fc1RVCBZ9oAVmlCsAhKYJfP2Awz/gesV0K3W3FpoMvlTnodh3c
         lIt3AtWzwGzw/xHUioJBxB/MCiiY/kwcJx2W/10lJDfAPwfRt3jgb5n377DjV0VSTSfJ
         Qo6TCIPeWCDCCdlKMMV5Sjv45lUZgugG6x5mWGDCQIfQ4YbZcTPRMPEVrM6iQPpz9bsN
         BUUw==
X-Gm-Message-State: AOAM531CfIvjY7YH6FT3jyYwbaYwEFd7aswPk88JdfBVEP0crs/8uSsI
        DPOrh/RRYvEr3HtTezxz0WHgDNMnET4Y9A==
X-Google-Smtp-Source: ABdhPJz571lPxPXJklVihGgknDDVN/TKp2iEPcjQrPEz1lvS4SrozOIJMTZw0wJje184D32O9riPzQ==
X-Received: by 2002:a92:de0e:: with SMTP id x14mr4448362ilm.259.1631806005141;
        Thu, 16 Sep 2021 08:26:45 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id f3sm1961524iow.3.2021.09.16.08.26.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:26:44 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id z6so1640133iof.5
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:26:44 -0700 (PDT)
X-Received: by 2002:a05:6638:dc8:: with SMTP id m8mr4934839jaj.93.1631806004132;
 Thu, 16 Sep 2021 08:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <1629887818-28489-1-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1629887818-28489-1-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 Sep 2021 08:26:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WXC_GJFk0SAnwVas2YpWT=GFt0rHGqoFD8-a3fo6efEg@mail.gmail.com>
Message-ID: <CAD=FV=WXC_GJFk0SAnwVas2YpWT=GFt0rHGqoFD8-a3fo6efEg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Define CPU topology
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 25, 2021 at 3:37 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> sc7280 has 8 big.LITTLE CPUs setup with DynamIQ, so all cores are
> within the same CPU cluster. Add cpu-map to define the CPU topology.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)

Matches how things look with sc7180 and is correct to the best of my
knowledge. I think this is ready to land.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
