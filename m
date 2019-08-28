Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74CE39FC85
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 10:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726339AbfH1IDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 04:03:15 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40163 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726253AbfH1IDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 04:03:14 -0400
Received: by mail-wm1-f66.google.com with SMTP id t9so625536wmi.5
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 01:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=20Jn2+dCC+I8w6FtFfD0vbMvlgqMeEqx0r5JGNJSXvw=;
        b=BRdtncww57yR+oh9ioHww1AygNYE9lSkqU2mG//XHwzTsagVjR4YsA8HZLgV0wx8f7
         MGD8CF1vTBltWRC04ALXWMJqPiuhNcXA/dhIWF5i2SqNeYztB0T8jnz2K4A6VzLd+ddc
         YEpKr2fG5TixL2Xdu17BHvZgY600WF8v6JoftyobJhEdPNmnGwssFAydMClk+OSjNdH2
         /htwt76aoWHuRaxE0qDXMFOwIZwwxCT8fPe129GAv6C3axxfjNmENgSKz8MMSU5skxWO
         kFSMKYMxXvF+2P8J0wsa+XECHfZG9888WhVvnCG/iRlUy9lIbkqUYzBAiy/dd1pHDumy
         gjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=20Jn2+dCC+I8w6FtFfD0vbMvlgqMeEqx0r5JGNJSXvw=;
        b=gYfqGOgpz7w3u3JTmEKUNsJoZfDOmCLxXHldcNUjBKnyTd5EUkjDP9kon+7OpPYE2P
         2V5pLLi9j61QZCgDSwNPxYNkab/tK7zwiJNKLAQ3R0aIUeKsZa+yEQqpfJ09waXNHPJC
         Vfcq3zujqbsK42SzaejNhlyY4qxsp+OYdorJaEJJbDxgScApkqciJYpTFBeqgVS9ESaq
         STckxjxvX12xUT9UFNgK4fkXFO0CvDLK1OgZVsgrzKeHQ9KSUOPsqrW3Q7vnOMcFQMKY
         iTQKwXqZNpiKTN39bVWxnQ9vzBRDDY9BwciPV4I+rDFIGZR5VkEimDIFDs01xdPvmUr1
         m/qQ==
X-Gm-Message-State: APjAAAWOwo5+RgKXUChRQ+OTLeqnxTJFYdVdlAWEU0ZoL8PdTnuSRxCk
        iDM9S9MDcOqBvvvpA4dvILw5uA==
X-Google-Smtp-Source: APXvYqxmqwViJF2WTLIOMiRFCef/fmmO9N41vOJh+ND/giymLdwj+196F+O+dvCn+JoNQAz/G4CsdA==
X-Received: by 2002:a05:600c:352:: with SMTP id u18mr3102630wmd.141.1566979392301;
        Wed, 28 Aug 2019 01:03:12 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a11sm1330229wrx.59.2019.08.28.01.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 01:03:11 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: g12a: add tdm resets
In-Reply-To: <7hh862tbt2.fsf@baylibre.com>
References: <20190820121551.18398-1-jbrunet@baylibre.com> <7hh862tbt2.fsf@baylibre.com>
Date:   Wed, 28 Aug 2019 10:03:10 +0200
Message-ID: <1j4l217m4h.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 27 Aug 2019 at 16:42, Kevin Hilman <khilman@baylibre.com> wrote:

> Jerome Brunet <jbrunet@baylibre.com> writes:
>
>> This patchset adds the dedicated reset of the tdm formatters which
>> have been added on the g12a SoC family. Using these help with the channel
>> mapping when the formatter uses more than 1 i2s lane.
>
> Because I forgot^W waited on this, we did the meson-g12a-common split,
> so this no longer applies cleanly.  Could you rebase this on current v5.4/dt64
> and I'll queue it for v5.4/dt64.

Acutally it was already not applying when I sent this v1 ...
.. which is why I sent a v2 [0] ;)

[0]: https://lkml.kernel.org/r/20190823154432.16268-1-jbrunet@baylibre.com

>
>> Kevin, please note that to build, this patchset depends on the new reset
>> bindings of the audio clock controller. I've prepared a tag for you [0]
>>
>> [0]: git://github.com/BayLibre/clk-meson.git - clk-meson-dt-v5.4-2
>
> Thanks for the tag.  This is now included in v5.4/dt64.
>
> Kevin
