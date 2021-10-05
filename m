Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93BC1422F5D
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 19:49:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234511AbhJERuw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 13:50:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234217AbhJERut (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 13:50:49 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AFAC061749
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 10:48:56 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id k26so189700pfi.5
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 10:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=aktO3MIuhcJHP+k3LRfRQCfAEj4yjVMHakhMwYPxUyc=;
        b=QvpDANPwTPG+RBR5Junq7lmP/VUC9TNjvFK3MNeIhkmx9v8aYVfLg+0EEdidHyjGjm
         CA29v46yb/d+Z0/WuM7d/qKnz9yKR/xHkvBt84vcdWoKCvYT9Et6z595FQ5OVP7fdn3X
         wQ9f7tjd75wn7N56/74i3RM0KkDl9wD2Do/eAgprwIjXAYqx3cUx5Tp5MzMnrrvvZv2d
         dR8eJ67Fub4aRUj/exIb18X2WOln+UEUUDm37uyYYTRe+uvxqKoOKtFFLUuqc90L7Amo
         +wL42QktO/JISeCqEbZcZWF8mnydqUKDuhGU3Gxy9PHI3t/m+v7D8CXHBYZ7vldCyrBh
         WyOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=aktO3MIuhcJHP+k3LRfRQCfAEj4yjVMHakhMwYPxUyc=;
        b=sJ/7D5aAGHdd0aTg7pKqPfPpy3UR/ygHdJBhovunbVKRPVlbnQmgu3aQZHcYqo4Dsy
         k+FUuKluPbDgfEuzeT8ThskcHjc0/T/vTCSPdX4vUADHMLKlL3dZOBBU0t+7teUdldFs
         mNha3PChVmSQEsRKhXkyTu7Q3MK6UqgvrFPRgNDAjf4xM8VxOFdfqcxMXoJwpMEhwCaY
         FqQmWwotlJsBVod3+xkDaWURIfLq6HvPGvGG7p2zfYPfIu+l9gNXNtOpm+8Z+h6y63WA
         gau0n1LYYMuISqLgc+9+GRqTFUkSo9x7m5YwufQHJc7LPbPzqxq4b9r1EdxDvq2MnUQR
         8EDg==
X-Gm-Message-State: AOAM531HG+UC8bQv8+bxjxCZ7kzN+WiZVdMim2KnCUKaHZWDqrv/AfQi
        qXWEwN1aWN4D8dWepuQ/ysKIRg==
X-Google-Smtp-Source: ABdhPJz14fGlL05m3Fy56TnqEoOeVrCd12a7yJvSfZr0dfQS9I2/IAbCln5+fu3/sysX6iIiPHGIGw==
X-Received: by 2002:a65:6251:: with SMTP id q17mr16983553pgv.416.1633456136220;
        Tue, 05 Oct 2021 10:48:56 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id 12sm2150475pfz.133.2021.10.05.10.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 10:48:55 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH RESEND v3 0/4] input: MT6358 PMIC button support
In-Reply-To: <7h4kan7ytq.fsf@baylibre.com>
References: <20210816100013.100412-1-mkorpershoek@baylibre.com>
 <7h4kan7ytq.fsf@baylibre.com>
Date:   Tue, 05 Oct 2021 10:48:55 -0700
Message-ID: <7hbl43fjlk.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dmitry,

Kevin Hilman <khilman@baylibre.com> writes:

> Hi Dmitry,
>
> Mattijs Korpershoek <mkorpershoek@baylibre.com> writes:
>
>> The MediaTek MT6358 PMIC has support for two buttons: PWR and HOME.
>>
>> The interrupt logic is a little different than other PMICs from the
>> same family:
>> for MT6323 and MT6397, we have one interrupt source per button
>> * for MT6358, we have two interrupts lines per button: the press and
>> * release interrupts are distinct sources.
>>
>> Changes since original v2 at [1]:
>> * added 4th patch with device tree enable
>> * cover letter title prefixed with 'input'
>>
>> This has been tested with evtest on mt8183-pumpkin on 5.14-rc6
>
> Any feedback on this series?
>
> The related MFD patches were merged already, so there are no out-of-tree
> dependencies.

Gentle reminder ping.

Thanks,

Kevin

