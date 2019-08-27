Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C286F9F18E
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 19:27:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfH0R1V convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 27 Aug 2019 13:27:21 -0400
Received: from mx1.redhat.com ([209.132.183.28]:59826 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727306AbfH0R1V (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Aug 2019 13:27:21 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 932A5882EA
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 17:27:20 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id a7so12038103edm.23
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 10:27:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:content-transfer-encoding;
        bh=YmLb+EgtCjKbjsP72nDuR7gCcltdq6dvJWkJFscEBhU=;
        b=fePKPN8g4fQliEBOR4uuSFuj1hXbcK6+IcIaIXeVAppmeg5eER1+TwDJI+xeusAOcs
         GL2J+M9qslo1ovwCItnSt0WY/Do+ksnGGuFqVqqM2MTFcEleH/VEqjUwS9HpKkLsAqsh
         3rwD77ZyTkQBwsiuKoIzF8BYvuTicdnvvyxrB/o5hwqnoY8brO92xhe15fR6UQgYteH8
         CrPNQtTPQHGCfgi1rrTscmw28B6WPmA8q6EeM5ezlG+6leYC1GI7UBgTRipQtGdlOCr6
         /mfK5ebkPbZMkuMKBx148TfD1huUHxDE1zGMESMivSgdXs7GINWRHe65AQjsygOJm+00
         MdKw==
X-Gm-Message-State: APjAAAVO6N29LDSrFmqmynrByuk2aH3yf0gj/BPh9Hte+6R+rr2vfWF6
        cI3CxA0shMUWuCHlNCa3O9ZVjM2eK2wXICxEZAFqgeHp6tvuP/3spxfk245Z5fKwhglsrln2LQK
        Ox1+xK7PCpcX7rQ1RyqDYgA==
X-Received: by 2002:a17:906:1c8b:: with SMTP id g11mr22158478ejh.81.1566926839371;
        Tue, 27 Aug 2019 10:27:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6kCL8ylCKmKPBNZRv3ewOAXE4EniTndu2nFf4f+l/TLjIHR7W9o9lCRgQGf97PKW1WW6WNA==
X-Received: by 2002:a17:906:1c8b:: with SMTP id g11mr22158469ejh.81.1566926839187;
        Tue, 27 Aug 2019 10:27:19 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk. [85.204.121.218])
        by smtp.gmail.com with ESMTPSA id d20sm3448191ejb.75.2019.08.27.10.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 10:27:18 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
        id A2E07181C2E; Tue, 27 Aug 2019 19:27:17 +0200 (CEST)
From:   Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To:     Vasanthakumar Thiagarajan <vthiagar@codeaurora.org>
Cc:     Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        linux-wireless-owner@vger.kernel.org
Subject: Re: [PATCH 31/49] ath11k: add mac.c
In-Reply-To: <14737343f1925a771ddd8dadf0f2b5a3@codeaurora.org>
References: <1566316095-27507-1-git-send-email-kvalo@codeaurora.org> <1566316095-27507-32-git-send-email-kvalo@codeaurora.org> <8736hvu6e6.fsf@toke.dk> <ac6e7dbbd53e7ba9e82e49baca22b73c@codeaurora.org> <875zmqsudn.fsf@toke.dk> <14737343f1925a771ddd8dadf0f2b5a3@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date:   Tue, 27 Aug 2019 19:27:17 +0200
Message-ID: <87sgpmikne.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vasanthakumar Thiagarajan <vthiagar@codeaurora.org> writes:

> On 2019-08-21 15:38, Toke Høiland-Jørgensen wrote:
>> Vasanthakumar Thiagarajan <vthiagar@codeaurora.org> writes:
>> 
>>> On 2019-08-20 22:21, Toke Høiland-Jørgensen wrote:
>>>> [... snip ... ]
>>>> 
>>>>> +static const struct ieee80211_ops ath11k_ops = {
>>>>> +	.tx				= ath11k_mac_op_tx,
>>>> 
>>>> No wake_tx_queue? :(
>>> 
>>> Yes, packet queueing is handled in firmware. This makes sense
>>> especially when we enable 802.11 encap offload support where most of
>>> the data path processing in mac80211 will be skipped and packet is
>>> given to driver/firmware in 802.3 format itself. Then firmware would
>>> take care of all the classification, queueing and encapsulation
>>> operations.
>> 
>> Well, so does ath10k, and yet we still saw a significant improvement by
>> moving queueing back into the host where it can be handled by the
>> FQ-CoDel-enabled queueing structure.
>> 
>
> Sure, we could probably try that with ath11k as well at some point when 
> we have a baseline with HE support.

Well, rather than retrofit change things later, why not start out with a
wake_tx_queue-based driver?

-Toke
