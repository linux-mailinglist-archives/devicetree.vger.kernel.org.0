Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC96522A0F5
	for <lists+devicetree@lfdr.de>; Wed, 22 Jul 2020 22:53:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732921AbgGVUxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jul 2020 16:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726525AbgGVUxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jul 2020 16:53:42 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDCF0C0619E1
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 13:53:41 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id r4so212717wrx.9
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 13:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wW1DnZUWsofUTsgq+SLIFFLK+QTi/i/SCIuuZe0zTuE=;
        b=xBqxvNtRAbVNzKi8m6DikHLFc+9OXAfODM07PrW7ZXGcgFqaAShTK9ZevI6rC/50Vx
         T3LkAPx0np+GKaOINKHbRYRSBaaInIq3+Na8JEddD9+p51gpUs4Shc9ekXmnxQxPUFh1
         x4Cqpy36Gwqgm6a51V2ZzJ6d8SoRj+G9spBvTlJLVc+myruCAYjg+s+RmSs9rDwgTpTR
         095Hp9uOoVN+0UW8SrjTmGmTBL8+8cnnKdJ/6TRKNwfqC/T4x9LTN46qcQuMAgcSr6hp
         8zORA/TICAtwoG4KKEs+NtwGYgHzBoK//7zBN4OJU0fb7lakXJ9qsOvB8BlZMziamx1r
         yH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wW1DnZUWsofUTsgq+SLIFFLK+QTi/i/SCIuuZe0zTuE=;
        b=ackE+zuL5hN5HuXNNtkoJp2HhR6FaakoU17CuFE7uWmSuGgVb58I9a861CQlrkKiTb
         blfKdRVbjBkK0isVCqdXVYWWp6CDwriiZPfdv8Bze1XZApF+wX/X2bY/b556Nj7vU4/+
         H3bFLDyUo9h6pavx/+P/AMqmWNwTk5N+txi8h2whtrDQ7MzGnNinSdXbIAt9xLl+AFQK
         il0VzubXXi51fagcxF03uo9wPcoi5NZxuXC1nEhFy+hJGP6VxgdZsA0wS+YIS++PL9SI
         B7XDvihqvowleTF323cbO21BwIo+Z7qGOR8f3PZJJq23LE3153iY6Cn8t/QqsMv+gwPg
         102A==
X-Gm-Message-State: AOAM530x+LKdwNrydgfxORxE8CQwaAljEOi3rvpFZvODndZHjrzyV8Z/
        tV5fCB6Htwrkr2WrjGEzM0sXeg==
X-Google-Smtp-Source: ABdhPJykdASjtyMzlCtVwepVTUMPp3k0tgyzj7RZ/FooIEL5CK7t55xKRjy3K92F2davzXSbL6sREA==
X-Received: by 2002:a5d:5151:: with SMTP id u17mr1163528wrt.154.1595451220103;
        Wed, 22 Jul 2020 13:53:40 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:dca7:8d30:33fa:daac? ([2a01:e34:ed2f:f020:dca7:8d30:33fa:daac])
        by smtp.googlemail.com with ESMTPSA id y189sm1092416wmd.27.2020.07.22.13.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 13:53:39 -0700 (PDT)
Subject: Re: [PATCH v11 0/2] Add support for the OST in Ingenic X1000.
To:     =?UTF-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= 
        <zhouyanjie@wanyeetech.com>, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        tglx@linutronix.de, dongsheng.qiu@ingenic.com,
        aric.pzqi@ingenic.com, rick.tyliu@ingenic.com,
        yanfei.li@ingenic.com, sernia.zhou@foxmail.com,
        zhenwenjin@gmail.com, paul@crapouillou.net
References: <20200722171804.97559-1-zhouyanjie@wanyeetech.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <eb817f3d-3be5-76d8-90f7-09309fecfcff@linaro.org>
Date:   Wed, 22 Jul 2020 22:53:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200722171804.97559-1-zhouyanjie@wanyeetech.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2020 19:18, 周琰杰 (Zhou Yanjie) wrote:
> v10->v11:
> Fix typos.
> 
> 周琰杰 (Zhou Yanjie) (2):
>   dt-bindings: timer: Add Ingenic X1000 OST bindings.
>   clocksource: Ingenic: Add support for the Ingenic X1000 OST.
> 
>  .../devicetree/bindings/timer/ingenic,sysost.yaml  |  63 +++
>  drivers/clocksource/Kconfig                        |  12 +-
>  drivers/clocksource/Makefile                       |   1 +
>  drivers/clocksource/ingenic-sysost.c               | 539 +++++++++++++++++++++
>  include/dt-bindings/clock/ingenic,sysost.h         |  12 +
>  5 files changed, 626 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/timer/ingenic,sysost.yaml
>  create mode 100644 drivers/clocksource/ingenic-sysost.c
>  create mode 100644 include/dt-bindings/clock/ingenic,sysost.h

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
