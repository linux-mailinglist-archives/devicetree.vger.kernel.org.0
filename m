Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC89DB1B0
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 18:00:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394068AbfJQQA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 12:00:28 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36386 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436715AbfJQQA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 12:00:27 -0400
Received: by mail-wm1-f68.google.com with SMTP id m18so3121867wmc.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 09:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version;
        bh=K92xI+/RkXkPNl+cGfvbqFzqM/p/1yJ006GVWjx3IVs=;
        b=CggdjClIWcSoRXgef5gv0ShuIOG24Za8FzwWf9E4ClyF7n+mPqXeJ+FYEV/bIW1lnx
         nAc/I/Iq4ZR73NYNSACNxdqyFO39HgzTtoQT/r5XTknAPVFalD3lDMOvpaxTbAQJTp+w
         us20Uh8RDWgTOgAD0JxhShJoOFBAidBAO5YK6k3Y0ynId+jEVP9jeQgHk+FBqiuPezbE
         SQfo1I0Q2muik78pHRAXWiFsoKyGUMi9pg/ZCDOgNOiBeF2Awq/HcccVeXQKOtlbWCvO
         oxPi6LgaOFvLUEmQdOOuqwqw806kCTizmxPdN53ELPDSOdUt3b7sh5t2h33BzZoGGYj5
         t3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version;
        bh=K92xI+/RkXkPNl+cGfvbqFzqM/p/1yJ006GVWjx3IVs=;
        b=onlbdY90CH7SS0Ecnt/XVYBO0umzBJPp5B6Glx9GRCZD0oIm6w+vg6mPzN6mnd7XjU
         CYBrfTWMmOR52+4fzXnZUez/vOwiA6H/HxVzfgonrK5Vf6Hzfi3TopxQ1xRvfI5sU+wr
         ZFYUdlaSg4oG9uV4K9WVMIhzZh7m5cWgYJjhWxofMSeC22Itp6gintFufP5iIN6RT8wJ
         O6G388Q7OsgeHvei16sDAL5fIFWZFCw0V9q+k4ufRcLkSgt/oufOQFi3OnSlkTU8WZE3
         ERglV9/djQshtj/X7HxXKUaxfZdhV0BH26ANLy7hBureoqgpZUgDdM79AdWTd5Fybb1z
         Ls8g==
X-Gm-Message-State: APjAAAXfv9l8V/XEIm5ip+ZUqQg0ZcriyPBY/+NtBUCgVDCzfMbKznzZ
        0PBnG0GJJ7ab1AxtEyijlaQYIw==
X-Google-Smtp-Source: APXvYqxU9x5KGD/Ua0mSg1w0b4PXk+F6jDtTrWq3r+9vIpk0bZLy8thz/z4qpoSUhgJ4QRtxB4X/Jw==
X-Received: by 2002:a1c:20d8:: with SMTP id g207mr3538145wmg.79.1571328023876;
        Thu, 17 Oct 2019 09:00:23 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z13sm2538882wrq.51.2019.10.17.09.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 09:00:22 -0700 (PDT)
References: <20191009082708.6337-1-jbrunet@baylibre.com> <7h7e54hdif.fsf@baylibre.com> <7ho8ygfxo7.fsf@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sm1: add audio support
In-reply-to: <7ho8ygfxo7.fsf@baylibre.com>
Date:   Thu, 17 Oct 2019 18:00:21 +0200
Message-ID: <1j1rvb2wh6.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed 16 Oct 2019 at 18:43, Kevin Hilman <khilman@baylibre.com> wrote:

> Kevin Hilman <khilman@baylibre.com> writes:
>
>> Jerome Brunet <jbrunet@baylibre.com> writes:
>>
>>> This patchset adds audio support on the sm1 SoC family and the
>>> sei610 platform
>>
>> Queued for v5.5.
>>
>>> Kevin, The patchset depends on:
>>>  - The ARB binding merged by Philipp [0]
>>>  - The audio clock controller bindings I just applied. A tag is
>>>    available for you here [1]
>>
>> I've pulled both of those into v5.5/dt64 so that branch is buildable
>> standlone.
>>
>> Thanks for details on the dependencies.
>
> Just noticed that all of these had "meson" in the subject instead of
> "amlogic".  Fixed up when applying.

From what I can see in the git history I have always used
"arm64: dts: meson:" in the subject.

Did we decide to that change this recently ?

If so
 * Sorry I missed that discussion
 * Should MAINTAINERS be updated to grep on "amlogic" as well as "meson" ?

>
> Thanks,
>
> Kevin

