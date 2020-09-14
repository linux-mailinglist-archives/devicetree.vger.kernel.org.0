Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 721E926979E
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 23:21:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726057AbgINVVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 17:21:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726034AbgINVVC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 17:21:02 -0400
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com [IPv6:2607:f8b0:4864:20::a44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC26C06178A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:21:01 -0700 (PDT)
Received: by mail-vk1-xa44.google.com with SMTP id e5so318324vkm.2
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h40Mkmyzjmx1oaGV6NYYOclBhWIiyDBMii4EWAbUUYU=;
        b=EPnLS1RhlA0wyyP1OC7VacOLKiJxMMjRQpvYSkhipIR0qf9WC8RK564fIcvVVeFKbz
         fC8LFeojctt1+gVlRo9X5MbmDgK1ToWp8Y9sHgCHcIzjscTuyvmbWS+p1l6qjzJAWhYZ
         9Qu2jHMXie6FHKJSZDUVVMKxmHVG0KLRa2AC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h40Mkmyzjmx1oaGV6NYYOclBhWIiyDBMii4EWAbUUYU=;
        b=JPcNOycMwI7Qm8/ql3hXWqRRlEm22buq2sLErMwlg/YjtsWQwrgle+xQAL37QMZSVg
         nrlfFtO3bIMFWXMsnwV5DgrWRaaXeRY0Purg43Awuuoe9C3YvHLTk5+M+CIJFpQOyIOs
         M45jibEf392qwgJKC5OggV2QKUgvCxfcjcbZf2BCrHZmqNxZD+zNzlYgQAn9CjTzDPx2
         rkpd/Lm4ftKWluwjgess/+jSqaFyZ1enXsuF+SSbCHigjy5OAfWYwKonDTzBBIkdavKe
         cMazAli47SlZDkTaamYwxAOknvDSeqMCdKNwLVBfyYL/rZyYpbquWA+VFOz2H/ubDHUN
         DHZQ==
X-Gm-Message-State: AOAM533riLMQztE+HYWleiQTKOF2JCmrrj25ApYkLKmDqM4zlQGIHcYH
        yqm6QBrtKOsD7+Uxh4vtZ8BjdjRYAc41Kg==
X-Google-Smtp-Source: ABdhPJyhfZqB9r+Ld8qSr9JlbFKU769l3WU4tr2xJSoTHzIpDCVAGCiE42Y1drSsuc016I8wztcVyg==
X-Received: by 2002:a1f:ab4d:: with SMTP id u74mr8501434vke.6.1600118459754;
        Mon, 14 Sep 2020 14:20:59 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id s8sm1988373vke.48.2020.09.14.14.20.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 14:20:59 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id j185so738328vsc.3
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 14:20:58 -0700 (PDT)
X-Received: by 2002:a67:ff97:: with SMTP id v23mr8916922vsq.11.1600118458295;
 Mon, 14 Sep 2020 14:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <1600091917-7464-1-git-send-email-skakit@codeaurora.org> <1600091917-7464-3-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1600091917-7464-3-git-send-email-skakit@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 14 Sep 2020 14:20:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WsU87ZWvhsPAWAnrQmK60SvZoxrefZDdW4y4i1MAEmwg@mail.gmail.com>
Message-ID: <CAD=FV=WsU87ZWvhsPAWAnrQmK60SvZoxrefZDdW4y4i1MAEmwg@mail.gmail.com>
Subject: Re: [PATCH V6 2/4] arm64: dts: qcom: sc7180: Add wakeup support for
 BT UART on sc7180-idp
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        msavaliy@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 14, 2020 at 6:59 AM satya priya <skakit@codeaurora.org> wrote:
>
> Add the necessary pinctrl, interrupt property and a suitable sleep config
> to support Bluetooth wakeup feature.
>
> GPIO mode is configured in sleep state to drive the RTS/RFR line low.
> If QUP function is selected in sleep state, UART RTS/RFR is pulled high
> during suspend and BT SoC not able to send wakeup bytes.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
> Changes in V2:
>  - This patch adds sleep state for BT UART. Newly added in V2.
>
> Changes in V3:
>  - Remove "output-high" for TX from both sleep and default states
>    as it is not required. Configure pull-up for TX in sleep state.
>
> Changes in V4:
>  - As per Matthias's comment, removed drive-strength for sleep state
>    and fixed nit-pick.
>
> Changes in V5:
>  - As per Matthias's comments, moved pinmux change for sleep state,
>    pinctrl and interrupt config to the board specific file.
>
> Changes in V6:
>  - As per Doug's comments changed subject, deleted interrupts property.
>  - As per Bjorn's comments changed commit text and rationale for RTS,
>    TX and RX.
>
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 55 +++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
