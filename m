Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37C90454368
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 10:16:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234895AbhKQJTC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 04:19:02 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:38534
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234396AbhKQJTA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 04:19:00 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C3D713F19F
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 09:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637140561;
        bh=zYEF5UbW5URF0n5/9aJrAQZkFg5ps6+9jc/WK19rfmw=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=leaVFzT2MYmsynIhxBrIz2ZJsuGJ0IvKqpn0ePRXfAZ6ImqEIckGGNJ5ZiFKHEZAe
         FjkJSPKvhciJK2djyZnlHRnMyNExajR6BZ7wR7Le5CQHtkWOKWsVV/DrMrQ/sTSlK+
         INC94U24GOb/kK56HdyIWTlzmFT6fMzgBeiz95aVcw3hKYUEX+BWwSm+uRfPZMFair
         p1v70yH7kOM2GCapqjNHuzCk/Z78aSDnvGo7lcS1VG9uhbTGgXN/herkQpRyHPaRwz
         yorJAjRjcDbbyFXVbf1JSJPUE3CmriQVQhi3EVQZs6tqV2+u+v8K1zfTsTmzYVou3N
         e/7agh4+teAdw==
Received: by mail-lf1-f69.google.com with SMTP id z12-20020a0565120c0c00b004037427efb7so1050348lfu.1
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 01:16:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zYEF5UbW5URF0n5/9aJrAQZkFg5ps6+9jc/WK19rfmw=;
        b=lSzgrIKJk6CW5z5jtYcp8aHNwk16V+shsZgOUHMWdm6YpGwgXyXZF35PTSaQb9aUIX
         /Fh3g7e7TdKXKf6HU/gxpLptgW4asDrJe4JrPb4mJRm2cwUzGuS2eKbRaX4mepnKvZhg
         cg2mPNcMeHeeeJRO9fRSrMqUiy0BRoFfKe/HGN6sk96jzy2KeoxZhR5l86u85u8G7Yu+
         PcZTDUMIQ/DAYbM5eE6IBhXlaUYYx2+deVA4INxxZBKWPe44q85JRYnoIEBitxUMtoud
         5K0kzTU1mb1YsnPnk/SJrlqk9JUCpxgZhdmvDEjpzgo3vCcjoe4qXH8rjhD/xJpMl/D6
         4qOg==
X-Gm-Message-State: AOAM533AVdNGk6ZW9Qq3GsohYKqEFcfJR1TKeFQ88Fc944UCz0fYHJMJ
        y2856cBhVDFSGrMv4g4yvXdAb3k7LT6xVhSzmPpZsXjRGBao5QABBcDI6Ob9TJIOEhA+rF5Xs45
        pn466wZlLaSd0/NWKRCTfwFYieLb/a38cntKqo28=
X-Received: by 2002:a2e:9f0d:: with SMTP id u13mr6517607ljk.61.1637140560532;
        Wed, 17 Nov 2021 01:16:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzxU3ehOh0ShZhGM+wz5whDmLtSwMogtXZr4nzbrKd/26lkA6hw68MIGQvtFQ1UKXNgl0L4Zw==
X-Received: by 2002:a2e:9f0d:: with SMTP id u13mr6517582ljk.61.1637140560348;
        Wed, 17 Nov 2021 01:16:00 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id y32sm2055959lfa.171.2021.11.17.01.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 01:16:00 -0800 (PST)
Message-ID: <24e7675e-5ed4-8b99-6d9c-de28d7e60912@canonical.com>
Date:   Wed, 17 Nov 2021 10:15:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v3 0/2] convert ifc binding to yaml and drop "simple-bus"
Content-Language: en-US
To:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20211116211846.16335-1-leoyang.li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211116211846.16335-1-leoyang.li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2021 22:18, Li Yang wrote:
> Convert the ifc binding to yaml schema, in the mean while remove the
> "simple-bus" compatible from the binding to make sure ifc device probes
> before any of the child devices.  Update the driver accordingly.
> 
> DTS changes should be submitted after binding/driver changes are merged.
> 
> Changes in v3:
> - Rebased to v5.16-rc1
> 
> Changes in v2:
> - Update endian property to type boolean
> - Remove example subnodes that don't have yaml binding
> - Spin DTS patches into a different series
> 
> Li Yang (2):
>   dt-bindings: memory: fsl: convert ifc binding to yaml schema
>   memory: fsl_ifc: populate child devices without relying on simple-bus

Thanks, applied.

You keep sending it to wrong address. Please use
scripts/get_maintainers.pl to get the list of people who should be
notified. Maybe you send to wrong address because you base your work on
some old tree, but in such case you need to rebase and use the latest.
Patches on older trees might be considered as not tested.


Best regards,
Krzysztof
