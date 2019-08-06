Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 304D282DA6
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 10:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728975AbfHFIZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 04:25:15 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38319 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728918AbfHFIZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 04:25:15 -0400
Received: by mail-wm1-f66.google.com with SMTP id s15so54175640wmj.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 01:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e0Gkgck1Aj/JyMBL/DHI4HjqwY2jjps7Dj7PaylKjl4=;
        b=C+m5UExv1CLnNHUBzP0qDiHXGCt7r6FUO7gLxM8L+ovk6fspDimTFSn3ypylAA5NLn
         /XrjtuQktAhoqPMMPm0vey/6MzjIFy31yC+e6MXl4O0E2ga5WBOgrf2y/Q2PcyDe1M0v
         g1uGB22YG7sN7Bg2eFBFGgidjfZT5lyIWRPB3EG1ZoHUHUEH4KEF83qH6Iqvi2LvBMiU
         XepIKra7DJZZc8qsdN4jJMtg6i+PQGzzWEEBLOtN8GpoRubPoJvIuv1WeoR/DAXEmOCG
         bHHty2a6e3j0nrRKm0vMjf55hzZT1Uf+TBgj1+8lTZU10ptSLW+Cx4o5OBlVjqxWGsPb
         IzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e0Gkgck1Aj/JyMBL/DHI4HjqwY2jjps7Dj7PaylKjl4=;
        b=iTXLJ+UgdWPgWlzd75ttvLcZFd7N5z1YyN5bzT7QuHP3dI1hQFNyjZWOJdT56FbPhu
         lp9cFQzfIPwKMgivOfLWjhKjoFd0N0SuugcHTyeI4V6H5Txrv/1n9F5dse3vW/aMm5ki
         d+SbH6C14eRp6lcsQTKRodOVPCivfQnA2EvcWzGWulAsaFUM+7yA2kDxpMQ9AvtnBJsi
         MIJRo0vj1Nuq6GAkgwHQ/znh9F08Pvw/QyhLt8gijkyqlGJWQcCINtLpatPoJ3aW365J
         YY26RTvltp5wml0aODaYrdjGnMegkO2b8NxsfIvHIgLEwnNAcpSivm5qufYRR4Txh7QR
         v5lw==
X-Gm-Message-State: APjAAAXfOHZALXlW4klyrdjaSXpifqgmTopZbvCb59axZZLIh86hoKOw
        FHxaPVVvfX7aiyngw9dDp2PFsuTZdCY=
X-Google-Smtp-Source: APXvYqwPj+fveR4n29sCPaWg0zpl+3hL2IDWGiQDPBv6JliRWfgpQmQuSZ1OgfJKQfn7jY1pRriV6g==
X-Received: by 2002:a1c:cb0a:: with SMTP id b10mr3242533wmg.41.1565079912619;
        Tue, 06 Aug 2019 01:25:12 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id f192sm88903896wmg.30.2019.08.06.01.25.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 01:25:11 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] Rework secure-monitor driver
To:     Kevin Hilman <khilman@baylibre.com>,
        Carlo Caione <ccaione@baylibre.com>
Cc:     narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <7hftmfguug.fsf@baylibre.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <12d38512-605c-3544-a525-2c3599559391@linaro.org>
Date:   Tue, 6 Aug 2019 09:25:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7hftmfguug.fsf@baylibre.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kevin,

On 05/08/2019 22:34, Kevin Hilman wrote:
> Srinivas,
> 
> Carlo Caione <ccaione@baylibre.com> writes:
> 
>> The secure-monitor driver is currently in really bad shape, not my
>> proudest piece of code (thanks Jerome for pointing that out ;). I tried
>> to rework it a bit to make it a bit more tolerable.
>>
>> I needed to change a bit the APIs and consequently adapt the only user
>> we have, that is the nvmem/efuses driver. To not break bisectability I
>> added one single commit to change both the drivers.
> 
> With your ack on the nvmem bindings and nvmem part of patch 4/4, I can
> take the series take the rest of this series through my tree for Amlogic
> SoCs.
Sounds good for me!

I have Acked the driver changes, bindings need ack from DT guys.

Thanks,
srini
> 
> Kevin
> 
