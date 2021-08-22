Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2729F3F3EFE
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 12:34:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233335AbhHVKfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 06:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233001AbhHVKfG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 06:35:06 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C89C061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 03:34:26 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so11710801pje.0
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 03:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=p6T5NwhoaU5Nl0UiPoYz3qYw3l2tL6Ut8glFQveZ/hw=;
        b=cjpW7mZ0gGcWRgsAmV1YJDiPw+64CjQqvVpLDoTs7V3v6ntNGO39K6HgYL2reaJpUW
         +PXo8adRK9YTVc6Krw/ACbOqdDof8LZPf801KZI1SGsdaGwocS+O8RvbBW7GSb9mvF+k
         TSlUEi5HTudzl8vd1nOcp9aRt5LNSBDBfG8naQvNc7DAp8WEJdf9djgfWmj0FvWElOAM
         xg8xVse0e4r2I9ZqvoFlJtzP1B/9zaM7Mv4EgrDGlahy1of5g+N3EUa/XmjmZM4uDm2j
         PN4bruoJlWFNtYF2VNbuDozpjFTuXUtylZzRml6L+VEyzdQ/4thtN+vVFuM3lStjRl/i
         XdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=p6T5NwhoaU5Nl0UiPoYz3qYw3l2tL6Ut8glFQveZ/hw=;
        b=mw45APlwXKwwa6vn+2UqLC+ZZW/Ij9v7XTx6bktqRY+qkkufem1TSXVkuMQQSwGLTP
         NsSJ7J/gbP/ultLYKq3vBWxeGKCHxGvekf0Mf3pX2zF/QR4aBO7Mg98ikTPwHr72vEri
         ewVnbvknZ6Mr3whSXPyk6Ygda6lUmvGBhyKATX1g4RwQFbq4vKr0OYBwdv8VA5fVv8MB
         CdECZdlKPZ72jy/CLB/ph+uIg+mX3qrb2f/O8YDAQQiMPJ3Q+n/DTkr3LYNOQL33vkXA
         6WJ5O5jCoOGrSlJEulLb8afpsV6SeBlOHl08VdNTPnGFVTdICZ1XMOML1E1FZLQJ0y+t
         Mddw==
X-Gm-Message-State: AOAM531R1VNoTWzN30gt1ob0mKmGna3yKVRK0qB9ZNLaL2QlJeQKChZ3
        ZE/Hv/JCP+yqiHPNNg4TkR4=
X-Google-Smtp-Source: ABdhPJzLluZXbRA0LttAg8AdwJYAOrynHiE+7k6CwdbEwaItqspVXbk8tBu9KcxYjKVD3o9ie8Fa1g==
X-Received: by 2002:a17:90a:6fe2:: with SMTP id e89mr14151140pjk.188.1629628465844;
        Sun, 22 Aug 2021 03:34:25 -0700 (PDT)
Received: from [192.168.1.22] (amarseille-551-1-7-65.w92-145.abo.wanadoo.fr. [92.145.152.65])
        by smtp.gmail.com with ESMTPSA id z9sm12462264pfa.2.2021.08.22.03.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 03:34:25 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: mfd: add Broadcom's MISC block
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210819152552.23784-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b4647c69-6727-79c4-7881-938ec19841ce@gmail.com>
Date:   Sun, 22 Aug 2021 12:34:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210819152552.23784-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/19/2021 5:25 PM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's MISC is an MFD hardware block used on some of their SoCs like
> bcm63xx and bcm4908. At this point only PCIe reset is fully understood
> and documented. More functions may be added later.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
