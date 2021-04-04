Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F37E3539C5
	for <lists+devicetree@lfdr.de>; Sun,  4 Apr 2021 22:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231478AbhDDUdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Apr 2021 16:33:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231532AbhDDUdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Apr 2021 16:33:40 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E11C061794
        for <devicetree@vger.kernel.org>; Sun,  4 Apr 2021 13:33:31 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id f6so3183732wrv.12
        for <devicetree@vger.kernel.org>; Sun, 04 Apr 2021 13:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qLAy95bvS1zAnYuhC/w4xxxlm+O0tzNR1N2BJpqbw5w=;
        b=Uj0Y5h5dAclSEpTTchKZoN6d6/X2/jxuIIdiY2TiTyk3Va6KgXWEIR7nXrbx2G6DmG
         DEj8NTV0WHUfrymtdaelg8IdCSbFubY9BkAoUgH6qQf8EqAg7oNdPZikt1hBXz6v20zs
         A8AaPWXWp0Z2jemWr2KvX3VEPPGU3IlyIZPwCyiC+SenicBH6/PCmHtanTK6GQ1U+Ifg
         VY2SBWvWpq0G2yymbRGsBY5fsQ3VQ4aGS/FzsLk9krR6A4W7hb8uudpCoMiP1AUhW51x
         KAc2oi6Fi2BSvj3YthT1WKevVUyAKnRg3u5L4ySofPzK4gqEB2ss/pH/Whz46Pfeo62Z
         VcVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qLAy95bvS1zAnYuhC/w4xxxlm+O0tzNR1N2BJpqbw5w=;
        b=QNb4nhl2kOPy4V5P/TrJnhaiKNtp8F1L+0z27F6rn6WVa4M5vszEMqFqYR3jSrsGZK
         z3dMVV7n917+Fo8bEaEZdsGL+OZiw0AXPBDh6xFaXwuQt8DbuAdymbYSk8z7aYdOsxJg
         TN2xu7ooyTQG5Ph1YlXN/odduGDL8BWFcEKa+ZgtYXgMGsmPc/VwQDtFXqYmNLFFtvrR
         fDLG7rfl0jY6ccadJUaUDVSML644UX5V1ZR+czlLrt03snw6INIqub8Q6VUz989FR6w3
         1rrnFfEnKMj1xEEDiFdznXTKStOu/1Ok42NNqUTrOUMgEEnK0NAzexjLvve8tKHEqEOJ
         zqag==
X-Gm-Message-State: AOAM532g2on7jWG9uCMP5cX7RD69nwQTNDx8KTWcTCvol37qRtWzGwF5
        amcTDKD1zClBVhZI/ucS0MRDzA==
X-Google-Smtp-Source: ABdhPJyhT6Ya2IgUD2RMKPgOE6BwHgGaUQpbUoSsELec3O9UxvF/KjbQKc6zYs03mvxBXK/bekFFsg==
X-Received: by 2002:a05:6000:10c4:: with SMTP id b4mr8456271wrx.386.1617568410016;
        Sun, 04 Apr 2021 13:33:30 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:6d68:6b9a:7a3c:4a9f? ([2a01:e34:ed2f:f020:6d68:6b9a:7a3c:4a9f])
        by smtp.googlemail.com with ESMTPSA id u19sm8383785wml.28.2021.04.04.13.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:33:29 -0700 (PDT)
Subject: Re: [PATCH v2 1/8] dt-bindings: timer: Add compatible for Mediatek
 MT8195
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fabien Parent <fparent@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
        linux-watchdog@vger.kernel.org, srv_heupstream@mediatek.com
References: <20210319023427.16711-1-seiya.wang@mediatek.com>
 <20210319023427.16711-3-seiya.wang@mediatek.com>
 <bf7ad31e-974a-3e0a-12bd-32973c7c3cbd@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <11bf6761-8902-bfa5-8577-d397846e7638@linaro.org>
Date:   Sun, 4 Apr 2021 22:33:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <bf7ad31e-974a-3e0a-12bd-32973c7c3cbd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2021 13:52, Matthias Brugger wrote:
> 
> 
> On 19/03/2021 03:34, Seiya Wang wrote:
>> This commit adds dt-binding documentation of timer for Mediatek MT8195 SoC
>> Platform.
>>
>> Signed-off-by: Seiya Wang <seiya.wang@mediatek.com>
> 
> Applied to v5.12-next/dts64

Usually bindings go through the subsystem maintainer.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
