Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 030CB22804E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 14:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726919AbgGUMxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 08:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726677AbgGUMxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 08:53:36 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B361C0619D9
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 05:53:36 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id f18so2756257wml.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 05:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AGWVlCbvUr0eIufY2rS/elykwxV4Zim+632lJgyVEn4=;
        b=qWkMe3M18JlSQlCm+UcsVVDxBxDCG9VMdtRRUhKpUjMNsVQR54huS28ETPgdc3Fi+o
         woL+tlVY9AXbU15V8K+A+TbiSlY06iDk++KE+lP4yG5RSJ7eueo1g/W4kHZEK86QF7aD
         qf6bHzl3wUYi/FQiEHKvmL94TNcXOjcaRxKSqlnftHHG/jGSlH9zOnDGuV0/5pqHtEvK
         Op3CBfk3zdabXmuxfhQ7E3rxR11rQ3FV7IIuZyQMQSSqEnZeGu69Su6XZo7otKsObpR0
         z85d14lsshn7Bk81CA0OXWw9TTDoFcnxKQVVpP5b3BZnC2PNXwyH8t4EC12CKtWlCRY2
         H83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AGWVlCbvUr0eIufY2rS/elykwxV4Zim+632lJgyVEn4=;
        b=aLxdsZGJCwXZuyf+e5cFCoGewkC++f5cWWVK7eCa9RjrHyLzpz9/WdeHzeKZozvJSJ
         WWw42Gf2XZYZWus7QJajnIkTWnA4XByMlmXr8nwMHAkIM1/zYT0hBSmrwjJCbQEE4zAe
         asd4Vke1X+ldbx1CSYtl8UWR95cnaLzmqpaAZlCNqMQyfI8C7Q478+viBf4hfLyLhUGz
         ZDWpw78lbMi3ZGue+/w/Mx/SP3oE+EMIMwEyp+BRcvc2YUp8381RBKY0745rZaJQwOAX
         +BiAHqAoh1nCjVu8xLzjbirdz4ybRBRMaHEylqsIw4nSt1favukFOUb220RCvNdTXJsp
         LZmg==
X-Gm-Message-State: AOAM5324LHOWJP0/NtpN6MtJcxGa5ZmBbr3Xve3NVg162qb2Iqn1+nWR
        F6WPsj0mLWaTFhjFnLEmv4XGgQ==
X-Google-Smtp-Source: ABdhPJxZoAWaXIC1JED/HvUyGEMlDHNNaHojI1cqxB1Q8x2XxnfiBwmkwYtashw6bU69S8/aIqGnLQ==
X-Received: by 2002:a1c:7d55:: with SMTP id y82mr3812152wmc.72.1595336014514;
        Tue, 21 Jul 2020 05:53:34 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:c144:5385:c824:85ce? ([2a01:e34:ed2f:f020:c144:5385:c824:85ce])
        by smtp.googlemail.com with ESMTPSA id c136sm3471685wmd.10.2020.07.21.05.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 05:53:33 -0700 (PDT)
Subject: Re: [PATCH v10 0/2] Add support for the OST in Ingenic X1000.
To:     =?UTF-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= 
        <zhouyanjie@wanyeetech.com>, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        tglx@linutronix.de, dongsheng.qiu@ingenic.com,
        aric.pzqi@ingenic.com, rick.tyliu@ingenic.com,
        yanfei.li@ingenic.com, sernia.zhou@foxmail.com,
        zhenwenjin@gmail.com, paul@crapouillou.net
References: <20200720173134.22826-1-zhouyanjie@wanyeetech.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6aca88ad-1e20-97da-effe-fa5a4cec789c@linaro.org>
Date:   Tue, 21 Jul 2020 14:53:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720173134.22826-1-zhouyanjie@wanyeetech.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2020 19:31, 周琰杰 (Zhou Yanjie) wrote:
> v9->v10:
> Fix errors which case "make dt_binding_check" failed.
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

  -- Daniel

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
