Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B0B8EA0598
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:05:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726475AbfH1PFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:05:10 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36306 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726394AbfH1PFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 11:05:10 -0400
Received: by mail-pg1-f196.google.com with SMTP id l21so1632533pgm.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 08:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=bT8YwM8lVQY3Bq3jN8kP+13N5ePTqKFep5cdRAHRBlc=;
        b=XTMO2HGgu5TOWpIq2y/FGjSLIfekGl3M7vrFDWmmXrc3l7yTlbf9kzmw+6UgrRxdYf
         EUbuRzFeta2W/L+B3PZpY2qEZ/y7tzJ2F9OBVzaEfG4xsqk7cFhMoHP6Gqtqhoxfu0Qy
         gYPyPibTk1uvvsWLxnTDR1dWnS3h8m7lFWrTbJ45gr/cTJs2QW8ToY49DvtGetqBEYyv
         oyRJy0DZaBt5PB7jWV5PBWBzEGr01umcF/KgPXrcn29lDdPIOqrqGKLcrdvzpZjJ/6Nn
         mM9gdu1u/oEj8ogKNPKG2C1347dDMjGgsOFsW+F9OG5wvKz9ixqPyBLNi0DCc87HstDR
         Ep1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=bT8YwM8lVQY3Bq3jN8kP+13N5ePTqKFep5cdRAHRBlc=;
        b=Lf5QB/lZeTtmSTchW1NiCZwkJpdQc3BbE1ec320rXHeyAepD6lR1L9NXtggQ7ki/i2
         4aWqFQdZBSyhD5hIWPgK9KiI0crsxcCcuu7uLhJLDNUIroKGkdxGTSVV333eWJdbAG+j
         WzMO/8E4EsBaxynSFjcIPMqNTOfbL/0DI6ck9mk2WE90Q+WTStkC6L+ivspLrGKUMpSk
         GTHGoKjXlunOa/OBiyeOtr+30ITaNAi7QK/k6AkaewxyGne+fej75RiqelXaezINA4Cx
         3fsduuvtTWGbnDeqIVF/vXQiPVMQh/2eoDCU7Ut7xvPUrOsOSefX940u5L1SohcMo0ff
         MIqA==
X-Gm-Message-State: APjAAAXRkHKFOiThwzuKg0unTnnbG5APAadef4Ym1Nq3hq2BYZgP8gSZ
        Utk7xZhlGf4XOCQsIwtuXtEhFA==
X-Google-Smtp-Source: APXvYqzkvG1I1NPAFfC7H9Dk+LVN7x+xUAvV2mJTqg57N1F2qNKzHUY0aH5d1aHxD8OQH2RdhhU8aQ==
X-Received: by 2002:aa7:8705:: with SMTP id b5mr5275834pfo.205.1567004709374;
        Wed, 28 Aug 2019 08:05:09 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
        by smtp.gmail.com with ESMTPSA id b126sm6598437pfa.177.2019.08.28.08.05.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 28 Aug 2019 08:05:08 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: g12a: add tdm resets
In-Reply-To: <1j4l217m4h.fsf@starbuckisacylon.baylibre.com>
References: <20190820121551.18398-1-jbrunet@baylibre.com> <7hh862tbt2.fsf@baylibre.com> <1j4l217m4h.fsf@starbuckisacylon.baylibre.com>
Date:   Wed, 28 Aug 2019 08:05:07 -0700
Message-ID: <7h36hltjoc.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On Tue 27 Aug 2019 at 16:42, Kevin Hilman <khilman@baylibre.com> wrote:
>
>> Jerome Brunet <jbrunet@baylibre.com> writes:
>>
>>> This patchset adds the dedicated reset of the tdm formatters which
>>> have been added on the g12a SoC family. Using these help with the channel
>>> mapping when the formatter uses more than 1 i2s lane.
>>
>> Because I forgot^W waited on this, we did the meson-g12a-common split,
>> so this no longer applies cleanly.  Could you rebase this on current v5.4/dt64
>> and I'll queue it for v5.4/dt64.
>
> Acutally it was already not applying when I sent this v1 ...
> .. which is why I sent a v2 [0] ;)
>
> [0]: https://lkml.kernel.org/r/20190823154432.16268-1-jbrunet@baylibre.com

Oops, I saw there was a v2, but I missed that in my `git pw` because v2
of the series had an "ASoC:" prefix in the cover letter, not an "arm64:
dts" one, so I skimmed past it.

Kevin
