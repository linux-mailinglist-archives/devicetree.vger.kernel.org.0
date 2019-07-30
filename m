Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2DBD7A424
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729211AbfG3J3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:29:09 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43457 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727247AbfG3J3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:29:09 -0400
Received: by mail-wr1-f65.google.com with SMTP id p13so64931745wru.10
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UmQHozqmoGA+uJhmvpcriqzT5s1toP44XHjvDTiLyKs=;
        b=DIxPinmnjAMczFCQWHoJQzmDZAzd08ESNxxV8hlwQh4GOZNlXwdWnz2/RVJ4GI71qM
         Mx3d+B082zk3iVOm915XlYVI0Xi3Xow6TOUy5zVsnGex4tq+Ng3B2eOidnmt+UA2g0Vl
         2cC5yuUsY4akIbir0tgfir8xROfBbuxYQb2DUtYYYteu0/uMIGWwJrhHXRX+ucK2BxOe
         bIsKijGD/O5VVjp3SIOKBvxUzS1yO8QXb4zGjhFfD5rTypu05vRIVgspvL4Uw3eL3THf
         dH5NtsMVpO+bhM5khhwn8e4TzMH5vl0OtBZ8qkk5PCMz7UGk/RQBDTSkKeG6tGgAHiBj
         cqow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UmQHozqmoGA+uJhmvpcriqzT5s1toP44XHjvDTiLyKs=;
        b=dU1GpTLFyJGhqpyq7YNC2Y0m3MJCHRXgdW4TiBZpqGyurL4wizKObF+b+O5+By0usU
         J8k553V/K3c5LetY4S6k6IMywqaZIA8Fdl0YYVn8KYllgZzJcsvLHswvQy2EcFLUsWFF
         z67EIrQT+REKJ3yeM/mfYyYgSkZAXPR/S6166yHo9ZQj4mBWvGwjRyTxQxge/MF/8PjX
         WPQIpC/kxeZFM7/98ugBdNOCbyV6RWN+fGu7SAGTii7dyw1cuLP3BpAogLBU+nW0MghU
         1rXqzcNvaWmZE46pFdeEDIBhlA7pqfA2zoewbhWWL10R3ZIc60GWqom+IEqesBwbhzD0
         osxg==
X-Gm-Message-State: APjAAAVPTcjM1Gu3K/8HpwdanJqRtXY/gZWCypMbmRHdM2R+fZ18JA/L
        xAWTu/9nwxXz4yvB7/mZQT+E4nyrjPM=
X-Google-Smtp-Source: APXvYqzObPqZtjGj+O64oCgvOTtRaaQliiCCg3j7iOoEJrUTUSi6lKuRd/cBNOAgtnVG9INnbmKUgA==
X-Received: by 2002:adf:ce05:: with SMTP id p5mr89483972wrn.197.1564478947785;
        Tue, 30 Jul 2019 02:29:07 -0700 (PDT)
Received: from ?IPv6:2a00:23c4:f78c:d00:1570:f96d:dab8:76ae? ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g131sm46129472wmf.37.2019.07.30.02.29.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 02:29:07 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvmem: meson-efuse: Move data to a container struct
To:     Jerome Brunet <jbrunet@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-2-ccaione@baylibre.com>
 <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
From:   Carlo Caione <ccaione@baylibre.com>
Cc:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Message-ID: <5b6825f9-22dc-1656-b5f8-4f785103f827@baylibre.com>
Date:   Tue, 30 Jul 2019 10:29:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1jy30f28rr.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2019 10:04, Jerome Brunet wrote:
> On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

/cut
>> +struct meson_efuse {
>> +	struct nvmem_device *nvmem;
>> +	struct nvmem_config config;
>> +	struct clk *clk;
> 
> since this driver uses devm_add_action_or_reset, I don't think you need
> to keep the clk pointer around, unless you plan to do something with it
> later on ?

Good point about the clk pointer.

> It is kind of the same the other structure members, do we need to keep
> them around ? We could just let devm deal with it ?
> 
> If you have a plan, could you share it ?

No plan. In the PATCH 4/5 I was going to add struct meson_sm_firmware to 
the bundle and to me it's a bit more elegant to have all the auxiliary 
structs together in a single container.

For the sake of keeping the diff size low I'm going to rework this in V2.

--
Carlo Caione

