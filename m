Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3939C46E979
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 14:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238272AbhLIN6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 08:58:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238247AbhLIN6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 08:58:53 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A10C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 05:55:20 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id d9so9842672wrw.4
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 05:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k6D23PRYBlWqPCsXrjjZTcI35QWh4xDYmb3kATWIYYs=;
        b=tAqbIzrQWUGIuhELs8cbNcSzSxLueX8Rcy6bGeSDvz6Nbddcp0rkKg0RIAzljiAYEc
         VPT8BUEsDLTqs94qFhJtDE2WGLElxfXM/o+SFD9zDQ6imWsmLoekHAwTJSOPE+5BX4De
         Q5qcnvc7KJDs1dwBFr2jf8XcRhfIuW+Ax6HoIPrr6cRfja81kZTRWlkVt6x1YJ/JOfHk
         7EdP2H0ao3GLv95VWzVzi75I6t/nE7qpT4X3UeFo0sHMOrck7hEInlf2RNJXfQOz9q5C
         nUnApD2esIP9yMrkyq0LYut8fFuoQVyQkn5alGsivxzqEZslMBwNMmfEkQR2fW0k48Cy
         2+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=k6D23PRYBlWqPCsXrjjZTcI35QWh4xDYmb3kATWIYYs=;
        b=FfgaZlVILZbVA1MCOkh4LCOq1ATqQeUFR/RUWfXiTy/gw/cRtm2IaWkN2FwZlzEGoO
         I2osn9coh9KwizYfHQZWH9nVGN/ljmkFSQcWl23qjktjZcbkO3ZGYKJeYJ18zfijDhJ3
         cPHSfon/mHAE7kIQRW5rYKMkblO0jiyrRERYU80Om2iwENn/tyu+u03Cvtx49yDEafuT
         ekdCgDZ0pJTbAE4mHBApAsUAG66Ubvwat5Z0r1rBMjdgT0o24nzKZskZNTPTm/6OGUpx
         s1KGSPRJvYlLdIBDCSxDdrrNTcVq66j3Q65npEUPxjC9Y+BcV6Wc0CyVkb6MiIAWRotx
         f9PA==
X-Gm-Message-State: AOAM532W5cLvZcliuz6DIDmIigfkcsoESisqEZCgB0fly8wZRJirsH/R
        XUyotNhOkOZjbnB7bcyZRGWOlzL8pjB2q1m1
X-Google-Smtp-Source: ABdhPJySirDudXteZbllUEbTOz80rbMsSMq1yM/rsW2kfUU7cBaW4uudUASmKQofLV8xkerHOjnpIA==
X-Received: by 2002:a5d:674f:: with SMTP id l15mr6451322wrw.624.1639058117689;
        Thu, 09 Dec 2021 05:55:17 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:ee1f:92e9:bcbf:be87? ([2001:861:44c0:66c0:ee1f:92e9:bcbf:be87])
        by smtp.gmail.com with ESMTPSA id q4sm5665421wrs.56.2021.12.09.05.55.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Dec 2021 05:55:16 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: arm: amlogic: add S4 based AQ222 bindings
To:     "xianwei.zhao" <xianwei.zhao@amlogic.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Vyacheslav Bocharov <adeep@lexina.in>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20211208093347.4837-1-xianwei.zhao@amlogic.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <bd981d0c-af5c-2b29-0ae3-df6bf01ea485@baylibre.com>
Date:   Thu, 9 Dec 2021 14:55:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211208093347.4837-1-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+cc linux-amlogic@lists.infradead.org linux-arm-kernel@lists.infradead.org

On 08/12/2021 10:33, xianwei.zhao wrote:
> Add bindings for the new Amlogic S4 SoC family,
> and the compatible for the Amlogic S4 Based AQ222 board.
> 
> S4 is an application processor designed for hybrid OTT/IP Set To
> Box(STB) and high-end media box applications, with quad core Cortex-A35.
> 
> Signed-off-by: xianwei.zhao <xianwei.zhao@amlogic.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 36081734f720..63037ebdd7bf 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -183,6 +183,12 @@ properties:
>                - amlogic,ad401
>            - const: amlogic,a1
>  
> +      - description: Boards with the Amlogic Meson S4 AQ222 SoC
> +        items:
> +          - enum:
> +              - amlogic,aq222
> +          - const: amlogic,s4
> +
>  additionalProperties: true
>  
>  ...
> 
> base-commit: a3ebdcc8fb3d94de390e58ad3da6161826a58a87
> 

