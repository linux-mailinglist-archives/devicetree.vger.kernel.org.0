Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B432358D74
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 21:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231420AbhDHTZq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 15:25:46 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:41054 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbhDHTZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 15:25:43 -0400
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lUaHS-0002d2-3b
        for devicetree@vger.kernel.org; Thu, 08 Apr 2021 19:25:30 +0000
Received: by mail-wr1-f72.google.com with SMTP id o11so1399018wrc.4
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 12:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EW7d+9G4/kjjtpomgAZZU/CRnYFDop2X3n6Zj7v339I=;
        b=TfpqzC1qdT0qW23nftFB0BXAv99UToxiGEySd/nNVABOfEKIhgdmm9tTtLs5sJzQQb
         MteK46fX3AgrW71LbZplDlZAVGjUsq27jt/eTnhCY5gmYX/bhavp9MRVujHDs6zKpLBy
         rAw/RYCIvvkwwMKs3m6XtYdrUZl4fzkNmOoQnKSTMFqCZWpW5KB/azrAopSEMhLsqGJr
         7SXmwjYzrccs34iUalXCHs70+XJVPqeCRRzDNqvGq1uwRENXBYdKSOeK724ABYPyKLaA
         oCdlWRW++rjzjQVkyJ2nhWdpR6wZXJe19A7bH0JC/OhNCZKOO7iI3qz0a1dddfX0MfUk
         d8GA==
X-Gm-Message-State: AOAM532Li8f83KahAdh69iDe4f0ZswBGetk8it53rD0wiUBIqD0iHNZf
        Wu7rXNyywwSpIFkOB+qJt5SFFR4rt15Ec8WY6cds/Cvv7+vf20VlqROlwwDpA+XMItfcciZ0sns
        Eb09PtaKRwyk3s9tXuUYbcyLPBgAMK5yVYBw2wwc=
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr14193196wru.0.1617909929799;
        Thu, 08 Apr 2021 12:25:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3uC3t9Rn/hZil2QBwcuqL7F591JGwIex59HP2iZb5W4DsmO5gVtcusB8GA9Rzz/D/7bvgcg==
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr14193176wru.0.1617909929665;
        Thu, 08 Apr 2021 12:25:29 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id u17sm261604wmq.3.2021.04.08.12.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 12:25:29 -0700 (PDT)
Subject: Re: New 'make dtbs_check W=1' warnings
To:     Arnd Bergmann <arnd@kernel.org>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linusw@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Tony Lindgren <tony@atomide.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        SoC Team <soc@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Florian Fainelli <f.fainelli@gmail.com>
References: <CAK8P3a1L8rWpR5b66v6Su8-m7-scA0wZQr_g_4KnV4dnrky6ZA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <70873555-ab01-feb0-536b-d4b60ac89768@canonical.com>
Date:   Thu, 8 Apr 2021 21:25:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1L8rWpR5b66v6Su8-m7-scA0wZQr_g_4KnV4dnrky6ZA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2021 17:08, Arnd Bergmann wrote:
> Greetings to all Arm platform maintainers,
> 
> I've just gone through the DT merges I've received so far and, with a
> little help from Rob,
> managed to run 'make dtbs_check W=1' before and after, to see what
> warnings we get.
> The good news is that the number of warnings is going down, but
> unfortunately there
> is still an unmanageable amount of remaining warnings, and some new
> ones crept in.
> 
> I'm still working on my tooling for this, to catch these better, but
> ideally I think we should
> try to not introduce new warnings. I think some platforms are already
> clean, and I did
> not see any new warnings for mvebu, samsung and broadcom. There were a lot of
> warnings from .dtsi files, and I probably did an incomplete job at
> deduplicating those.
> 
> See below for the other platforms, and the new warnings that I found.
> If these are
> valid, please send a fixup before the merge window, and let me know if
> you have ideas
> for how we should handle these in the future.
> 
> For this merge window, I don't think any of them are show-stoppers (Rob, let me
> know if you disagree), but in the long run we may want to gradually enforce
> a rule about not merging changes that introduce any new warnings, in order to
> have a chance of cleaning up the existing ones.

+1 for such rule, although the best would be to get a report about new
warnings on posted patches or shortly after applying, e.g. via 0-day
kbuild robot.

Best regards,
Krzysztof
