Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67FD84658F6
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 23:16:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353465AbhLAWUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 17:20:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353526AbhLAWT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 17:19:56 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBEC0C06175B
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 14:16:33 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id fv9-20020a17090b0e8900b001a6a5ab1392so2944144pjb.1
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 14:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HQuYumB8/bJEvmu3jjyCcx1HSt5teTsP9wJzylD90kc=;
        b=Yq6h3VB5RHQdU5gPJ8iGKqw4jcvgaNXbGBUIUD24fDwVp7TBS8Uflep/Qr/Jtaw6oA
         Q4/WgIqIJWx033FiJdtL3UMQV5ZUWW7rH4x/ZT59Hj/Hnf8ZL24He5/z7t6Iq9S8AMLq
         tP17mG2Aymyjrd5j/m9vGtY1mJjEaQ0DLo+6+Sev/mWPSOff9OLKc01ygTfDw8YkZGaI
         WEEerVLk0e2Gtw09scrYErXCIdAaJpct+qOvYJ48TRde/pk1S78E48Bj2J9I4RY4j1Rl
         hLBUCg8Lqz4hdwPM5d+zsIIqRrUTr+R/aZRF1g36qHm1LMfDXeVUGiMafVJEkb2Pm0Md
         lv7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HQuYumB8/bJEvmu3jjyCcx1HSt5teTsP9wJzylD90kc=;
        b=eBSu1T7uo0BDSDmbHTo7xn0NTetHoxutm7r+wApL3MKJekcTpJtOLJt076TH+y4TTb
         DP2/Kr7vLOcVasmG1yVQ1KBUYu4+AIxp6CxyG1GVQr5OX+5/YUPj4DzRmsR7EymMHDSO
         uTeCMtiIqkac5IxZcqOdath64BEhOG43sz9TEOJei9iBCb7IaA6GvxNGk05saM+Kw+q6
         sHetXNkb29IoRLHnbKICzzWb70buRrJHt/jo7nMQTv4r6WSowdq3xDZihQW3sPW3roVX
         s8tvua4jZGtqdyWGDO1P7qAoM+Vv+z7TTU0uHHzgic+RrL9ixo19+4ciSeJAoR+/N3zp
         9bOg==
X-Gm-Message-State: AOAM533K3lIIJ2B8zQnZ2pd8MJ01vXIdiOGU08D4bi4TgXOUsQtS+8g8
        176MI74oHsUps4UdGQBp7gP9wTb3gdo=
X-Google-Smtp-Source: ABdhPJwezF5V55nOEDpjRFfCJYqjru22MdOrveOfv+WcOoXF/bO8LXIdfGG01m/7zmaOGkVse8oWeA==
X-Received: by 2002:a17:902:6b07:b0:142:852a:9e1f with SMTP id o7-20020a1709026b0700b00142852a9e1fmr10613497plk.29.1638396993215;
        Wed, 01 Dec 2021 14:16:33 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id fw21sm270770pjb.25.2021.12.01.14.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 14:16:32 -0800 (PST)
Subject: Re: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name array
To:     nicolas saenz julienne <nsaenz@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
 <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <bc412de6-1f77-b8ba-fdff-af27c47c8e30@gmail.com>
Date:   Wed, 1 Dec 2021 14:16:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/1/21 3:40 AM, nicolas saenz julienne wrote:
> On Tue, 2021-11-30 at 17:11 +0100, Uwe Kleine-König wrote:
>> this helps human readers considerably to determine the line name for a
>> given offset or vice versa.
>>
>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>> ---
> 
> Applied for next.

Subject should be:

ARM: dts: bcm2711-rpi-4-b: Add gpio offsets to line name array

Can you fix that up before sending this to me as a pull request? Thanks
-- 
Florian
