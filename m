Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5CF63A05C9
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbfH1PMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:12:06 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:39210 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726440AbfH1PMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 11:12:06 -0400
Received: by mail-wr1-f67.google.com with SMTP id t16so177553wra.6
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 08:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=P0hG9q4LB7iGekm1JhwQRUtYrz5muvxkyOofP3RfFhA=;
        b=rH7Gn3AjKHZbFLaxdTydl+21XtDp/c3XOzAXQeUr7/glUovX6NNiTZr6F09ghOMISm
         N6EGUzPcQ+j22h6uCr+YjcOxfPKeSEV6y7X7Cr+oJ/cXz6Nu+lerCI1Jl6V9w9BOFwA/
         bCLk2BxHpVQExy2rq6Lhx6ZvhF0GRXs/nU5nV8zaxcriyblTbRAfiN+4jqNng2LaPPBP
         9OBJ5qMhKXkQNJzA+GN9qnja/4Od162cn/7fhcCya1WIrBB9BXD7vx7YRZmgHEJFEhKY
         fm8zZoVZWW3qXG1qljLtob6+3JshgCTIv8sYXm7jcxhurVTbysO4LyTyId6dmXHZpmZL
         W9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=P0hG9q4LB7iGekm1JhwQRUtYrz5muvxkyOofP3RfFhA=;
        b=aa8lrRGm1l9vZ3kqNN9sdk8PFQ+ztJpOKRoy4nQNpNUtSrfV0hAGX8awOGu1IB+70m
         80XBNUVxzofQDbueFxxt2uKAu0L6KK8DZJicZL6NUzwowxa3AtrlNNDC7bN5owKiAmts
         29OouKY/PMz8BPucfzQZU4qXI28hQSRl0rNfyxmT+gL61+/1Baj17WlYIXfhevG6Zbwn
         hAfyjwMxudQuDpcEy0zLpbAK+JfoAMHfEuCdX0oR5itUcRhaAbWwlUJoT9pSTgakXzb0
         6IR5KCKtZLULuM3eeU5U89/Pz30R5Ne9H5cBooAGiKobNREhXUV8QzKX2BERqRzNx1+V
         Wt3Q==
X-Gm-Message-State: APjAAAUTvFm/AN31mRDtEuqR4Eoo7Kk1dZGdKkuFQa573K+G2OOiEpOH
        PADkQiuMWdwi6YX8q9k+UMp87g==
X-Google-Smtp-Source: APXvYqz4/oPu11MT6odSjP8m1t6PJbsEBeAeOhlbcfVkXq2dmrdFzJWmAdZ/CRF08N4B8WACk/3F6w==
X-Received: by 2002:adf:cd84:: with SMTP id q4mr5148814wrj.232.1567005124161;
        Wed, 28 Aug 2019 08:12:04 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id d17sm2549897wrm.52.2019.08.28.08.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 08:12:03 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: g12a: add tdm resets
In-Reply-To: <7h36hltjoc.fsf@baylibre.com>
References: <20190820121551.18398-1-jbrunet@baylibre.com> <7hh862tbt2.fsf@baylibre.com> <1j4l217m4h.fsf@starbuckisacylon.baylibre.com> <7h36hltjoc.fsf@baylibre.com>
Date:   Wed, 28 Aug 2019 17:12:02 +0200
Message-ID: <1jlfvdnx31.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 28 Aug 2019 at 08:05, Kevin Hilman <khilman@baylibre.com> wrote:

> Jerome Brunet <jbrunet@baylibre.com> writes:
>
>> On Tue 27 Aug 2019 at 16:42, Kevin Hilman <khilman@baylibre.com> wrote:
>>
>>> Jerome Brunet <jbrunet@baylibre.com> writes:
>>>
>>>> This patchset adds the dedicated reset of the tdm formatters which
>>>> have been added on the g12a SoC family. Using these help with the channel
>>>> mapping when the formatter uses more than 1 i2s lane.
>>>
>>> Because I forgot^W waited on this, we did the meson-g12a-common split,
>>> so this no longer applies cleanly.  Could you rebase this on current v5.4/dt64
>>> and I'll queue it for v5.4/dt64.
>>
>> Acutally it was already not applying when I sent this v1 ...
>> .. which is why I sent a v2 [0] ;)
>>
>> [0]: https://lkml.kernel.org/r/20190823154432.16268-1-jbrunet@baylibre.com
>
> Oops, I saw there was a v2, but I missed that in my `git pw` because v2
> of the series had an "ASoC:" prefix in the cover letter, not an "arm64:
> dts" one, so I skimmed past it.

Oh ! indeed and this prefix makes no sense. Sorry about that

>
> Kevin
