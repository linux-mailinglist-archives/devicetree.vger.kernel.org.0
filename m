Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29EC640877F
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 10:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238217AbhIMIvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 04:51:09 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52324
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238021AbhIMIvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 04:51:09 -0400
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 64F3940269
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 08:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631522986;
        bh=cvsTaNvz2UiyUHxrP1qTmkazHzyp2+ewfPl4qysKyqw=;
        h=To:Cc:References:From:Subject:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=iX/ddOI0soVCVBJLKnppgpNxk3hwgSXOy1uv0upheDnJzNFHuaHhAGsbNY4MSWM2e
         ciO8V+YI4aaR+Qp713fZx24OqZc3SO9DwTUHc+AT6JEZdEsawjMTpS3lpfCOUe7sku
         HW0Yp/WAkW6dhf3IAwaaQgKvZwCJYt9Zne310MIfPq/a9n/j7blngyRl/Q0k5EIc+v
         A6IiqapNts/Q0aA0t9nMBhfRif62g2KtO/W3agtGHHZlCkdD8qmZp9B6BXs2Rx9WCZ
         1KCOpsYOZqtQMlsqFRriSrHweafledt0gE4kYLYMT5d0Cz0q5wLBhWUk+x4rQc6NO/
         7J8f8Ebp0NS+w==
Received: by mail-wm1-f72.google.com with SMTP id w25-20020a1cf6190000b0290252505ddd56so4616077wmc.3
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:49:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cvsTaNvz2UiyUHxrP1qTmkazHzyp2+ewfPl4qysKyqw=;
        b=WnC6udDCVHpZ7zSdKjU1POHOzSe28rqC3kl6M6D/udxYByPEWHlqHZa4N+ULpkIu5X
         k09yYJ+dNT60BLo0WFZQf2Opailgn+eUtKJAcgw15XFegU5qALvtesTuEz4++/BdMFI+
         TgcDb9h7xuyhs2OL7uuYyrlZelvdECIcNegLUce8bnCtJYfI/YhjInQAOTlUGt8NS+eQ
         Vps2a3PkCgcnZ1kWpvnVNqzS4xPaiLcXFlVC8DtN//j1yjlL+ls6sxsjPYo1CyqRqkUc
         p6n61oVStrfaNndCN2btWVP6ThyuagwSaG1J+nbfyQJ3I/V+2c72TF6UYDe+X1NriPVs
         yfSA==
X-Gm-Message-State: AOAM530/Q1ERNiVI5A2RQpn9wgu0GG19bfVVPgHw+2kwj+mxEAl4SwPd
        eeodzhaWItV9UTldsCkne/j4KSitl6lukQ10nWrVHmjKydRePIXOhi5w54RRrvMBD4JdP2Y+vrW
        GumWkLkhlfxqBAkESV+Y8vDN/1rHbqDs/plk61vY=
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr9834709wmc.6.1631522985977;
        Mon, 13 Sep 2021 01:49:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysUCxDbnakViIKz96HPA6XtGKkx8YI+rcAhRkRtTaIgEYJRWHQ/TSjMn35PEYSgfejgWgdmQ==
X-Received: by 2002:a1c:7dc8:: with SMTP id y191mr9834698wmc.6.1631522985838;
        Mon, 13 Sep 2021 01:49:45 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id j4sm6969822wrt.23.2021.09.13.01.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 01:49:45 -0700 (PDT)
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, bartosz.dudziak@snejp.pl,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Max Merchel <Max.Merchel@tq-group.com>,
        Hao Fang <fanghao11@huawei.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210911232707.259615-1-luca@z3ntu.xyz>
 <20210911232707.259615-7-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH 6/8] dt-bindings: vendor-prefixes: add LG Electronics
Message-ID: <9942f964-442e-e782-3926-6d7d1123418a@canonical.com>
Date:   Mon, 13 Sep 2021 10:49:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210911232707.259615-7-luca@z3ntu.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2021 01:27, Luca Weiss wrote:
> LG Electronics is a part of the LG Corporation and produces, amongst
> other things, consumer electronics such as phones and smartwatches.

Hi,

Thanks for the patches.

I think "lge" it's the same prefix as "lg". There is no sense in having
multiple vendor prefixes just because company splits inside business
units or subsidiaries. The same as with other conglomerates, e.g.
Samsung - if we wanted to be specific, there will be 4-5 Samsung
vendors... Not mentioning that company organisation is not always
disclosed and can change.

We already have lg for several components, also made by LG Electronics.
What about these?

There is only one device with "lge", added back in 2016 without adding
vendor prefix. I would propose to fix that one, instead of keeping
duplicated "lg".

Best regards,
Krzysztof
