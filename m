Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5537C8F651
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 23:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731638AbfHOVUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 17:20:09 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:40108 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726008AbfHOVUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 17:20:09 -0400
Received: by mail-pf1-f195.google.com with SMTP id w16so1953774pfn.7
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 14:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=9btH7gObuB7NSQ1wmgbhVZL9CQC9MoVtAlUTgmdlp/M=;
        b=ldOQ1g85IZyn6tEYhDDDtoDQkL5oBt1ZjAFMcZGTsaB7jPGcdGzXIak3YLLZaTR0c8
         qyOas6sL+nx6Bo4hMFou+zcTNTEyIkvEgzdUyR+Tz8+g8VWDmT63g4ErRX971OaPAEOu
         LNTOuzynSiCWRzi4OWMXx//YvU1rCchuwhVAiI4HE3gPmqYVWfDuhDBrq8dSZvafE2VW
         EB5z1lE6MyIhBvHUTIjDm6sUY5s7Qj5cvND4xW7k0oyiTPoRcJPzQ5CGwSo+wvRPAQhX
         zPoirYx3EgGyiqGIoT8sf7B5zYIoTunjTrvVKpNGzhWJbLric8x7VPfldcCljayK+DI+
         iicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=9btH7gObuB7NSQ1wmgbhVZL9CQC9MoVtAlUTgmdlp/M=;
        b=jFgwujB6GPrNl+2YL1kOGcLG14gUoF/dtCzgz127rusny4u/2iq4N/Hrov1ZoDZDGT
         CnjjefVAbMFwynVfeKPY3liaTNhB7OOrGh/bz1A2nNlxlPuBXLYzHq1mAMtqNK6aY+fl
         x/h6+Q+PJzEIOXBGyVHasqSInUykMIjKKXAFTMO4bIQugcGOX4koQ1T8DLSF0uCBiYWW
         TKFdeQ8NBCrrKJdjtqnCSmOebR00ZWjtXQFSjdQjpkLMBKBFqY4eaiRnzXQCykJDWt5I
         eBUwEIslrAs115jvYhr9GJ1kLoptQ5gKaAvU8K/wU7YlFIwWAiDxN6tXftmTRghGySN8
         9Gfw==
X-Gm-Message-State: APjAAAUcWZS08ul+HWPkIsDOwTQbvJX9/w+3lgynfcF/mQEeOQMEz11v
        6yHTanPmkU0fOZvZdKCg3rdwaQ==
X-Google-Smtp-Source: APXvYqwMBqMHkTvOrHQeYUS4WkFo34Kt5c0X1L9kzdWXYp9P9JmoS5s7mD4im0y2s/z3WEE8BbiNWQ==
X-Received: by 2002:a17:90a:858c:: with SMTP id m12mr4020145pjn.129.1565904008258;
        Thu, 15 Aug 2019 14:20:08 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:35:cf9b:bad:702c])
        by smtp.gmail.com with ESMTPSA id y23sm4193386pfr.86.2019.08.15.14.20.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 15 Aug 2019 14:20:07 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>,
        Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, narmstrong@baylibre.com,
        tglx@linutronix.de, jbrunet@baylibre.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor phandle
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com> <20190731082339.20163-3-ccaione@baylibre.com>
Date:   Thu, 15 Aug 2019 14:20:06 -0700
Message-ID: <7hk1bew2gp.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rob,

Carlo Caione <ccaione@baylibre.com> writes:

> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> index 2e0723ab3384..f7b3ed74db54 100644
> --- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible: should be "amlogic,meson-gxbb-efuse"
>  - clocks: phandle to the efuse peripheral clock provided by the
>  	  clock controller.
> +- secure-monitor: phandle to the secure-monitor node
>  
>  = Data cells =
>  Are child nodes of eFuse, bindings of which as described in
> @@ -16,6 +17,7 @@ Example:
>  		clocks = <&clkc CLKID_EFUSE>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		secure-monitor = <&sm>;
>  
>  		sn: sn@14 {
>  			reg = <0x14 0x10>;
> @@ -30,6 +32,10 @@ Example:
>  		};
>  	};
>  
> +	sm: secure-monitor {
> +		compatible = "amlogic,meson-gxbb-sm";
> +	};
> +
>  = Data consumers =
>  Are device nodes which consume nvmem data cells.
>  

With your review/ack, I'll take this through with the driver changes.

Thanks,

Kevin
