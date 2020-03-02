Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BEE18175FA9
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 17:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726872AbgCBQbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Mar 2020 11:31:10 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36452 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727000AbgCBQbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Mar 2020 11:31:10 -0500
Received: by mail-wm1-f66.google.com with SMTP id g83so9077111wme.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2020 08:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=9ekD/wZU2juB89x3ikSs3OkvRfctZBZxxFo0UhHx8JY=;
        b=eoSemUK7ZEaNlKrg4HP6Fdxa2bm/AR3bYZEjvkL17es58SixQJTcPwvyZwNOpDQ8A/
         MQG1tGVsfuxNYI4m+NO7zBAFHQJmYENCdyK126T8b/+5n0RtMHVIIRFI3KCqz1cZ47cu
         ymX4QQ8l8KrH+NmiJS8zfmW0n9b6efekoW9GjqwPf1dHmurPNtTQ/bwcogGAuRZ5Kslc
         67wzNcuxqJnr8n4Ibt5O7nzmF+gMa81KoaNWC7OJdB3nWYNkVVKZZ+TVtLC6ORZ6eDA/
         ep5tQy1soUtgwjVcNFtV34CG7UMIljnWx4rgW1tykurhCb0F+8LSFTJ3Mj9v+xvo+Lss
         gJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=9ekD/wZU2juB89x3ikSs3OkvRfctZBZxxFo0UhHx8JY=;
        b=PNPVHkSmrVyxSZze4m59T7hZKbtoL4TXZ7J96/zkjyVhnNeN5F/gPnJi8oDx8EGIIN
         kDsR2yhmIPeFLFNtQEhtYJN4p7twYWHIxDtIZnCY74Ng6O0NZmHLAUevjF0ian3NX9IX
         iiuu6pL2+mQQh/ylv4X0IpjTUgnFOWjnwIZ7+1armridnruVS6Z9OPzQXRhEvZYpG0R8
         8u+Q3Q6sjEmmFUwycZRCkBprchEhF9wYix6AFm/JD0x+1Zgxf9TrtiaZNykg8p1eZNcn
         5QzRJYzFMMRHydx/Skhy4+Hq2QqlfiT7tURVN9r42IgeiJ1S3t8qEkfVfvS3QcVVS3Gb
         vNAw==
X-Gm-Message-State: ANhLgQ3FBIwJhWqamJi74/o+PKz9SDUVKe+80mrK8VsJBie71ZzMvngG
        1DAJ8ZG2AV15BKpL3XH4oxpiAg==
X-Google-Smtp-Source: ADFU+vsO4oMThfxe4T+3k8CrA3b+cufx1zE37BxkfjQy0S1+vSAU7EwEHK50HsH3LU0tLqS86uSXvw==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr250047wmi.0.1583166667736;
        Mon, 02 Mar 2020 08:31:07 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v131sm17357885wme.23.2020.03.02.08.31.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Mar 2020 08:31:07 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jianxin Pan <jianxin.pan@amlogic.com>,
        linux-amlogic@lists.infradead.org
Cc:     Jianxin Pan <jianxin.pan@amlogic.com>, SoC Team <soc@kernel.org>,
        "Stephen Rothwell" <sfr@canb.auug.org.au>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: power: Fix dt_binding_check error
In-Reply-To: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
References: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
Date:   Mon, 02 Mar 2020 17:31:06 +0100
Message-ID: <7hsgiqra5x.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jianxin,

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Missing ';' in the end of secure-monitor example node.
>
> Fixes: 165b5fb294e8 ("dt-bindings: power: add Amlogic secure power domains bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> index af32209..bc4e037 100644
> --- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
> @@ -36,5 +36,5 @@ examples:
>              compatible = "amlogic,meson-a1-pwrc";
>              #power-domain-cells = <1>;
>          };
> -    }
> +    };

Thanks for the fix.  Queued for v5.7.

@Arnd, @Olof: you can ignore this one.  I requested Jianxin to send to
you thinking this was a fix for something you already queued, but it's
not.  I'll handle it.

Kevin
