Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAD0A976AD
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 12:08:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726217AbfHUKI4 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 21 Aug 2019 06:08:56 -0400
Received: from mx1.redhat.com ([209.132.183.28]:59942 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725268AbfHUKIz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 06:08:55 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 68B9F4E925
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 10:08:55 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id i10so1094675edv.14
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 03:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:content-transfer-encoding;
        bh=umZ1aaOBeJjkeJ1S0Jm8f7ll4VqlupnyjFqoji04PLs=;
        b=dtZVK15m3duuFicRn9sDjA+mEgWzpxiYuhT4aqAGJ6xKWI1Tz61avrQNieQMg4SEck
         57zBk924lzJpC1bY27nJ97F6nCAAQbM5FXZPmDZvraaVXVxxTXeoAS+CParcB9KWFBl/
         6lN17PfT2ejLGR9gpJ+Rg/czNqbW5YwNJMXqqKt6NIc+ASkkfMjSiA2Es9ZsYUEigtLF
         L+l+DeW7VPjGN51mK1fmdEup/OnvsTZTRMEkQyTM8BVL+5rdcLMXDwkTODT+PkwNrxoB
         Q01zSKtmjttVbv18HwocSI6VkxSsWGXx/zDEmNn1McyrIZnGQ8gneJv8TZ0rNOdpmKJS
         t17Q==
X-Gm-Message-State: APjAAAVLe6f+HXQs8YGcV6rJpl97az56sH8NnTNXZfcHdJ5XaKPkC5SC
        y752zTWkG6kt27BqPTS5qBiFywUYspKEVhC0IF5ueX7w6UkSVp52KQfaNbwv/Ji2lWdb1FQPYPX
        TiYUKmuJOMD8Vm5e+BOsLYA==
X-Received: by 2002:a50:f10d:: with SMTP id w13mr35413404edl.222.1566382134249;
        Wed, 21 Aug 2019 03:08:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjtqsPfVaOVcGj4bIlvdZRLCMANdsMw6mmT1TMubKmHil2CT5/yEMGNW9mzQ6x4eSTUcPRVQ==
X-Received: by 2002:a50:f10d:: with SMTP id w13mr35413397edl.222.1566382134121;
        Wed, 21 Aug 2019 03:08:54 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
        by smtp.gmail.com with ESMTPSA id x42sm4028988ede.24.2019.08.21.03.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 03:08:53 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
        id D5D07181CEF; Wed, 21 Aug 2019 12:08:52 +0200 (CEST)
From:   Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To:     Vasanthakumar Thiagarajan <vthiagar@codeaurora.org>
Cc:     Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        linux-wireless-owner@vger.kernel.org
Subject: Re: [PATCH 31/49] ath11k: add mac.c
In-Reply-To: <ac6e7dbbd53e7ba9e82e49baca22b73c@codeaurora.org>
References: <1566316095-27507-1-git-send-email-kvalo@codeaurora.org> <1566316095-27507-32-git-send-email-kvalo@codeaurora.org> <8736hvu6e6.fsf@toke.dk> <ac6e7dbbd53e7ba9e82e49baca22b73c@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date:   Wed, 21 Aug 2019 12:08:52 +0200
Message-ID: <875zmqsudn.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vasanthakumar Thiagarajan <vthiagar@codeaurora.org> writes:

> On 2019-08-20 22:21, Toke Høiland-Jørgensen wrote:
>> [... snip ... ]
>> 
>>> +static const struct ieee80211_ops ath11k_ops = {
>>> +	.tx				= ath11k_mac_op_tx,
>> 
>> No wake_tx_queue? :(
>
> Yes, packet queueing is handled in firmware. This makes sense
> especially when we enable 802.11 encap offload support where most of
> the data path processing in mac80211 will be skipped and packet is
> given to driver/firmware in 802.3 format itself. Then firmware would
> take care of all the classification, queueing and encapsulation
> operations.

Well, so does ath10k, and yet we still saw a significant improvement by
moving queueing back into the host where it can be handled by the
FQ-CoDel-enabled queueing structure.

So, *how* does the firmware handle the queueing? Does it have
per-stations queues? Per-flow queues? What's the latency under load
figures for the firmware queues?

-Toke
