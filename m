Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 912E2372BA4
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 16:06:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231308AbhEDOHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 10:07:52 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:45000 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231336AbhEDOHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 10:07:52 -0400
Received: from mail-qt1-f198.google.com ([209.85.160.198])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1ldvhQ-0002oN-PF
        for devicetree@vger.kernel.org; Tue, 04 May 2021 14:06:56 +0000
Received: by mail-qt1-f198.google.com with SMTP id w10-20020ac86b0a0000b02901ba74ac38c9so3598855qts.22
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 07:06:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DWRKnXNV3uSJXPmlESo2Co1jPOLNUzmS9oTXfFMPzXM=;
        b=ujJnrWRzrl4oZ/jOCvitAnX5jJCIQ8bEyHjv9/nraaeREfG0nakPEDkucohfOYx4XY
         2uvhoeSjbQ7hhIlbLqwgDrSP+yAGdLXg77A7n1yE+6Nex6Xs6TbU0S6MrnJ4dw2TySC8
         bOYPXaUfZc7bgnRJIRH4gQn7p7UDFh4utITn61HP1f6WHjbhH+JnK7O67d7VhlE5mQX6
         j+HQxYs1VgfKzvIsGPgeJtabkZIUqtlnarcpW7kyGuqrZCjuHndI5zkqO9da8O3KE1aD
         /JLvvX8b1Cn/Tw/KQAEoiWomObCXbfRPMrZFAV/hm8/vqRCjm2HBDnphuTt+NY08cBob
         QdmA==
X-Gm-Message-State: AOAM532fKvoPaEt2Nn7qgL22ZhFcBIPrc+hgt1FwMZq6ikIicGp/2/3B
        MWgophl2qu6go9+ok5pmPJxRRRF69jIS9XMJvgzAlrcajD2e5lfmZUXRTYB+QUmtRyzbcJXeaUK
        MTf0KegcvXSov+5/G5FiZXutzT8n303HRvaUZnx8=
X-Received: by 2002:ac8:6909:: with SMTP id e9mr7938522qtr.338.1620137215670;
        Tue, 04 May 2021 07:06:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBl2lpQtJv39myBZ40HvWie+tqvi5BvCcJraN3Zh9gti5+dUGNf0zUyQrCLYwdSO1IMEJgOw==
X-Received: by 2002:ac8:6909:: with SMTP id e9mr7938507qtr.338.1620137215510;
        Tue, 04 May 2021 07:06:55 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.49.3])
        by smtp.gmail.com with ESMTPSA id u18sm10988533qku.39.2021.05.04.07.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 07:06:54 -0700 (PDT)
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Enable MediaTek DRAMC common
 driver
To:     Po-Kai Chi <pk.chi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
        CC Hwang <cc.hwang@mediatek.com>
References: <1618565538-6972-1-git-send-email-pk.chi@mediatek.com>
 <1618565538-6972-5-git-send-email-pk.chi@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <73ba4443-c0b7-e6e1-0faa-a41d2f552146@canonical.com>
Date:   Tue, 4 May 2021 10:06:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1618565538-6972-5-git-send-email-pk.chi@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/04/2021 05:32, Po-Kai Chi wrote:
> This commit enables MediaTek DRAMC common driver to be built
> as a module by default for the ARM64 builds.

Don't write "This commit".
https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L89

Please read entire doc above.

Best regards,
Krzysztof
