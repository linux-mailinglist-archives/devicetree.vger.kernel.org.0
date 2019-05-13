Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8BFCD1BFA5
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 00:48:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726580AbfEMWsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 18:48:36 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:34567 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726286AbfEMWsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 18:48:36 -0400
Received: by mail-vs1-f68.google.com with SMTP id q64so9115326vsd.1
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 15:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6ZsjBt83vZW6+pdPdwVwbAfNO1Tv5TbEk4rycrbIYbM=;
        b=Tnz5OKHnLPR6l118hvL+HTgPPNlqas3wlnC3peejx+OqWX4dLD+cDrKseKtykoAH9e
         GLcRZfSqtv9xi3Ko60lAn/PLCJOfMAWSxymkyBglt2shWGuRu6sroABxXS9otN9gsBD4
         7yvl0lsv06bq8HtkrCD8e7D0l3meHeTy2Grn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6ZsjBt83vZW6+pdPdwVwbAfNO1Tv5TbEk4rycrbIYbM=;
        b=DO1nYg6OXCkAYcRbmdxLVBagy29z2vq3r0pIaDRzPzLT5rKAFZKY//JHsvg6Be0KMo
         5fO5Rak/5Hb2t+EqcRPMT+A/9lBaV+p4vc/FZmB0hTDVvgGBlRvwz+SIVhMjWx74nPxp
         MCC9GKJLULZKMKS7rhl7zJB/yZhX7jXlhFg4jsk2y2C0xwrdqBbQFablMJMY+s6WE326
         psnxaKPwNPeK1hZo1sRCQ5JzfEkAxqRJvd86KesO25lyNVOG5kmJZFs7MwzoUKhobVvK
         I0rC+sp/Xxjb2wn5oJjPFowOe+G/H8OSvGJA9oa5zyQvuBOimHama+IoDmU3B8+C8ioJ
         DaQA==
X-Gm-Message-State: APjAAAVWWylV+VZVJGtPiW3zW3iDPDcK22F9dsiiPjEFsO5H6Hex3YNm
        DIrfNmsqJIMbuD6byUfrbNHwtKpuZ88=
X-Google-Smtp-Source: APXvYqzgAYQhzkxr3RM4L49im6vfcxmt4rMocRjDi9kefTFCo7ExpcNay4W6Bn1Oz51vWQLZQAAC0g==
X-Received: by 2002:a67:ed11:: with SMTP id l17mr15704787vsp.154.1557787714707;
        Mon, 13 May 2019 15:48:34 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id u83sm3635105vke.33.2019.05.13.15.48.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 May 2019 15:48:34 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id m1so1944830vsr.6
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 15:48:33 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr7122321vsm.144.1557787713606;
 Mon, 13 May 2019 15:48:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190509184415.11592-1-robdclark@gmail.com> <20190509184415.11592-3-robdclark@gmail.com>
In-Reply-To: <20190509184415.11592-3-robdclark@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 May 2019 15:48:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WXW3aApS=c7baxhtfr1Nf-UnBN2s=rEBBkjj4=TCdT+g@mail.gmail.com>
Message-ID: <CAD=FV=WXW3aApS=c7baxhtfr1Nf-UnBN2s=rEBBkjj4=TCdT+g@mail.gmail.com>
Subject: Re: [RFC 2/3] arm64: dts: qcom: sdm845-cheza: Re-add reserved memory
To:     Rob Clark <robdclark@gmail.com>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 9, 2019 at 11:44 AM Rob Clark <robdclark@gmail.com> wrote:

> From: Douglas Anderson <dianders@chromium.org>
>
> Let's fixup the reserved memory to re-add the things we deleted in
> ("CHROMIUM: arm64: dts: qcom: sdm845-cheza: Temporarily delete
> reserved-mem changes") in a way that plays nicely with the new
> upstream definitions.

The message above makes no sense since that commit you reference isn't
in upstream.

...but in any case, why not squash this in with the previous commit?


> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Rob Clark <robdclark@chromium.org>

Remove Stephen's Reviewed-by.  In general reviews that happen in the
Chrome OS gerrit shouldn't be carried over when things are posted
upstream.


> +/* Increase the size from 2MB to 8MB */
> +&rmtfs_mem {
> +       reg = <0 0x88f00000 0 0x800000>;
> +};
> +
> +/ {
> +       reserved-memory {
> +               venus_mem: memory@96000000 {
> +                       reg = <0 0x96000000 0 0x500000>;
> +                       no-map;
> +               };
> +       };
> +};

nit: blank line?

-Doug
