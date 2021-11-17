Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 818514543BF
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 10:29:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233943AbhKQJcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 04:32:01 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:52192
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231582AbhKQJcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 04:32:00 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8C7AC3F19A
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 09:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637141341;
        bh=g6sftRfYoS5K8kCTriz66+zQQzgvVb2wBfDCaV4eUgU=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=PF30djKa5SRkbsiPnkDAUCwJv28dAbT5S5h42BJ5MZbwHdSqyBOiuLQoyqx3WSqzw
         MApQe99mVQdZceBTsIj7ciJ2Ra8uUmTLZEf/4O3/R3X/MO140Nq4b8UoO1LWZ7+qa/
         I5pyuZ8GTKnRwC6inD8MDJL14QPI2mVbdl06o7mEa9zcV9nspZE9okAykRJ1Zt5Sqx
         AXlDtdIYcXOokmEnlXQTaDPv3ib8a8/gxfp7X1HWoaj4IxLkC/DsSUu9n4pPMX59kV
         U6Ebx9WS+elaq248VPQuD4kih+O7VCTJP8Av409KLvrJGqUL78DsVy0BGB5iEMxnqz
         6DXVFEkU5K60g==
Received: by mail-lf1-f71.google.com with SMTP id bp10-20020a056512158a00b0040376f60e35so1075177lfb.8
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 01:29:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=g6sftRfYoS5K8kCTriz66+zQQzgvVb2wBfDCaV4eUgU=;
        b=uAdnW41kybAVP7Apx3sUmFE34jOPaI6vh5Z0GO0q4Ahx3+o2OM8nryvmwkK8vwEaR7
         jq7dChcfft9mVw2UxuTppxrQ4Y6rdjpwFNaFdhpM/gUiQQ5FE+C+NI1EUNBlEXX6hV6P
         TwLgHiqbAJ8FTMurQB/P6z4gFW279rEDhmiMjoPg5X1a9ORK2MrN5XAo3gmh0AyywspZ
         IY9x59UaNh4Ku39PbmdVGhdf0sBO3oOQGTG7B+KNorzvOU98btvYPfFGdvVd+RIL+hC9
         FyhH/GnkCySqSIRCAgM1vmVSqE3KPDQBLLk6DlS7Ej0nqXy2eQ1kg1nVdc6C2PLM0BN2
         1sGA==
X-Gm-Message-State: AOAM532R/h3ShBNuh9t1Cvg9qGEG7G5rC/2LEGhFE1ptXNwBW5ueAMTX
        H3/sxQyUrcGNXzFOafOuPKsbX9vFzVAS8gb+k8FnGLrEbAnUFOjT9QDTU8gBtgX7+H+/Y2uUCMY
        1MfHa9r+Qsejo6ohC3Xb5Mu+OPYKMBi3A5x6K1Bc=
X-Received: by 2002:a2e:a591:: with SMTP id m17mr6124182ljp.511.1637141340605;
        Wed, 17 Nov 2021 01:29:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxk3rckhVD3o/KrVz7Fl+GIwyh2oCoLL4QcTE6BtGG9W8Byfyh6HuAtKrO+h4bpUSVl1x+npw==
X-Received: by 2002:a2e:a591:: with SMTP id m17mr6124171ljp.511.1637141340471;
        Wed, 17 Nov 2021 01:29:00 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u16sm1666325lfu.42.2021.11.17.01.28.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 01:29:00 -0800 (PST)
Message-ID: <1444ff08-24a6-afbe-1512-9ea24ad5b32d@canonical.com>
Date:   Wed, 17 Nov 2021 10:28:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v2 1/6] riscv: dts: sifive unmatched: Name gpio lines
Content-Language: en-US
To:     Vincent Pelletier <plr.vincent@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        David Abdurachmanov <david.abdurachmanov@sifive.com>
References: <bb7e8e36425a2c243cfbf03a23af525499268822.1637107062.git.plr.vincent@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <bb7e8e36425a2c243cfbf03a23af525499268822.1637107062.git.plr.vincent@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/11/2021 00:57, Vincent Pelletier wrote:
> Follow the pin descriptions given in the version 3 of the board schematics.
> 
> Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
> 
> --
> Changes since v1:
> - Remove trailing "." on subject line.
> ---

This is not a correct changelog placement - you have to use '---' just
like git uses it. Just test it yourself and you will see the problem.

Best regards,
Krzysztof
