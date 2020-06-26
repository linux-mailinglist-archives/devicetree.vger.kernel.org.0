Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A68A220BBE0
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2020 23:52:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725906AbgFZVwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jun 2020 17:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgFZVwD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jun 2020 17:52:03 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D215C03E97A
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2020 14:52:03 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id f24so6278199vsg.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2020 14:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=riZ5KZW8CnykJm5xJns3L+VFLhknSVFyzPeTPn61H9E=;
        b=c4KyRcxKQ8HHOw9yC6I3ScWIYuHciIrlf0+XT0VzOXz6siBITRjttc97VYU4pGtrcW
         QpZj0LQbq2BKoMXRc5i/2YcGBxHA9sydrxQMLbqm6/eU15jtxLRkteDj9x6Bi1nlvOrK
         YApd5NYLX10WeZu/BvqXLcywGJnEOZovFjXMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=riZ5KZW8CnykJm5xJns3L+VFLhknSVFyzPeTPn61H9E=;
        b=QBnLYbj2FhTE+qh9B+9vQDCE0zyvW4QShqmYIrsqkFLIYT/m3MB8gHVnvQM2mZViop
         BeD+Us7UHZjrdLR6ilNeoOCA7U4BoqJi+GWdnEI+1pvSDsyFbeJMgsE+8JCHYIeZlsLy
         eloJRjKYo4QjJZIa3oSTm1fMgg7OThHTQuVBWjt4QwgIRjAhdGOgFRSCdwE/6UPmFImx
         JU18EUxUXHVPEJHQtdUrCkjT1CQhixaRXf7blYSQv3UXeT6TTAKcwx0tYqcRldStAeo0
         iH+xlTPEybyu7SLks+GjDgwD+nQbS90oovVZy+HZrH9LUDWwj60xsFgrl2raSYRofDFP
         eXkg==
X-Gm-Message-State: AOAM530OzpzsIUrnElISegRwYSBW18qXdWADU7nh4XJQnQtFOxnAi2z9
        XMdKQia4l2nRfucBs26kN0TBdQIJlpQ=
X-Google-Smtp-Source: ABdhPJzzxzfnyPEy66wmLGTziiNvM6J5ln+NHliMtQg4eeUV0AAJyHb12xc7usvF5VvLsCdZZdd+XQ==
X-Received: by 2002:a05:6102:38c:: with SMTP id m12mr4024848vsq.31.1593208322026;
        Fri, 26 Jun 2020 14:52:02 -0700 (PDT)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by smtp.gmail.com with ESMTPSA id d20sm4277530vkf.25.2020.06.26.14.52.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 14:52:01 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id s192so2534011vkh.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2020 14:52:00 -0700 (PDT)
X-Received: by 2002:a1f:eec1:: with SMTP id m184mr3812706vkh.34.1593208320514;
 Fri, 26 Jun 2020 14:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <1593194502-13164-1-git-send-email-pillair@codeaurora.org> <1593194502-13164-3-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1593194502-13164-3-git-send-email-pillair@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 26 Jun 2020 14:51:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V1C2Lu31n8xQ8HPf21fNo_Da2SLtZAeStFBEou9+geEA@mail.gmail.com>
Message-ID: <CAD=FV=V1C2Lu31n8xQ8HPf21fNo_Da2SLtZAeStFBEou9+geEA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ath10k: Add support for chain1 regulator supply voting
To:     Rakesh Pillai <pillair@codeaurora.org>,
        Kalle Valo <kvalo@codeaurora.org>
Cc:     ath10k@lists.infradead.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-wireless <linux-wireless@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 26, 2020 at 11:02 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> Add support to vote for chain-1 voltage regulator
> in WCN3990.
>
> Tested-on: WCN3990 hw1.0 SNOC WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/snoc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
> index 645ed5f..407a074 100644
> --- a/drivers/net/wireless/ath/ath10k/snoc.c
> +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> @@ -45,6 +45,7 @@ static const char * const ath10k_regulators[] = {
>         "vdd-1.8-xo",
>         "vdd-1.3-rfa",
>         "vdd-3.3-ch0",
> +       "vdd-3.3-ch1",

Reviewed-by: Douglas Anderson <dianders@chromium.org>

...with the slight nit that ${SUBJECT} and description should probably
call it "chan1" and not "chain1".  Presumably the maintainer can fix
when applying.

-Doug
