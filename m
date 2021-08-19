Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5353F1DB1
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 18:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbhHSQWY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 12:22:24 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:44506
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229491AbhHSQWX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 12:22:23 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 79BC73F328
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629390106;
        bh=+cZtuR9o2k87pvi0rgBoRi8/bFI7YeJU/qox3v5ZI5U=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=pcRb9JvReJSBc1KYUMrzYYjLBZ0qErR5GBZ/AeJYEQl68pbJ9hTL358hC0QTr5hLm
         Xs4RbJIEckpzQwqL5OAliLhSfh2rZELGniA7N9R8YBz+8aaBpvl2jZIouAaKsja7T6
         7gvT20t24i+T5+ivh93fBXHOXCP3FgJ+M55WJ4mFRjOIrGN33qNAr4Qj4udSD5NlwL
         6YjnlPynMzLo4JDQGNT6QokYwlVjqDcbLPIbRIKvGF0+QksvhBvwEotx4ttxENPnUt
         7vpb4e3zdyvx1I/PJ/LPBJ9l++TJWC5MfIs7ovl4wdKS5RZMSsB3dCtPzn9AM80hxl
         jp/8uGyufjYKw==
Received: by mail-ed1-f71.google.com with SMTP id di3-20020a056402318300b003bebf0828a2so3105443edb.8
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 09:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+cZtuR9o2k87pvi0rgBoRi8/bFI7YeJU/qox3v5ZI5U=;
        b=QM8cQMVRv48nH0Xd2L8nZYGjFuaIg9eYGGCmILs2hkOH0Pxx6D0q/F3EF40V/AZj72
         S3d6oecDjjukQ4IMQwu6Cj7bFf2AoDWQeWUJGFPBlycS7LebUyU9X755Tzu92IEGh+cu
         lSZX1yqA3lKo92XR5vBWHfItUfLuWmabsttaN2qmYJKiR+amTYgA0xsfn/RoRMFS5kHk
         gNImiUViWQ2UwUq+uRuH80en8rsdzJGiexXzY6ieVsVlYDH1u/aG4+kMt1Amo1Y3AgBZ
         5aL+raItCcfAp9z79yvMaEns7SIVRIN5UcstjvHJz6U1JHxCuz1XJRoXBICvCrJgeFsS
         HCwg==
X-Gm-Message-State: AOAM531GbHzIAcKrZemZLcCqc4uJi91UTaEQdCWorM2JgNvWaHCe8yge
        oyjFMW7PEqRUM9foQXvAtQQNvTYk4GkFp64s1o+LJwgYisG+rKHyJuVVXWBWXjeatWNx/Yl7fDt
        RlS9pfJN9TVjCLui9RqANiwrpLyPsPuTNAyIB3FI=
X-Received: by 2002:a17:906:87c2:: with SMTP id zb2mr16503216ejb.322.1629390106277;
        Thu, 19 Aug 2021 09:21:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuaQqSj/y3QMWrvKAdgV8r7CJmiTSZ6zuwkSNkqhhy0AKGNuqM3cQONHkLBZcKm5Sw3vridg==
X-Received: by 2002:a17:906:87c2:: with SMTP id zb2mr16503202ejb.322.1629390106161;
        Thu, 19 Aug 2021 09:21:46 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id j11sm1478832ejy.112.2021.08.19.09.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 09:21:45 -0700 (PDT)
Subject: Re: [PATCH 3/6] riscv: microchip: mpfs: drop duplicated nodes
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
 <20210819154436.117798-3-krzysztof.kozlowski@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <4d0d6290-8341-56d8-7902-5a8c36bc7bb5@canonical.com>
Date:   Thu, 19 Aug 2021 18:21:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210819154436.117798-3-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2021 17:44, Krzysztof Kozlowski wrote:
> The DTSI file defines soc node and address/size cells, so there is no
> point in duplicating it in DTS file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 5 -----
>  1 file changed, 5 deletions(-)
> 

Now I wonder whether the subject prefix should be "riscv: dts:
microchip:" instead?


Best regards,
Krzysztof
