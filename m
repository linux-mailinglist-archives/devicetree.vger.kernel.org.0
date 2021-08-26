Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB463F836B
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 09:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240225AbhHZH5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 03:57:38 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57352
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240156AbhHZH5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 03:57:37 -0400
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AB0F940793
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 07:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629964609;
        bh=JkuOywfaMdggVS4bli5HwaEPziu1ePITpUpnYUIyGCI=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=kiTjAOzbS2LlTvyKP1+knww3DP21WQoTOPPl5FJh+4xLOxbPMOLwfMTyh2t5j6qdB
         KjCWuO23qPdQoXOvneh3A+RtxmKvBgzmDdKrWca/zuPzwQuDKMIaqXX+igerNhAhXU
         5NHjqhixaQ2ULGajIKjWXOt22RhLf6S1KUZ7ZH1GTE3SFrGJCpl2qbCXlcfo8ZgUSd
         YLV78VxcWndCX+NkBNYak175tdKA2v+DQy07RWSEo2X5domCkR5Ye9SdddW9j5Wa2E
         UgtHBP9t8b8lCq8kqwv0cRcAKZZsHcXbu5I2Ko6sUzb7zYqjZsl/8Vf2MQBrAyOtit
         J32/G2pmxaJyw==
Received: by mail-lj1-f198.google.com with SMTP id bn35-20020a05651c17a3b02901b483917a19so813262ljb.2
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 00:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JkuOywfaMdggVS4bli5HwaEPziu1ePITpUpnYUIyGCI=;
        b=gO2F38yMm1/0etIAtK3o3n0zcw82ql+1VMK6uZ1Cd4+WqCT3NYKhTQC7c/pVnsQoyj
         ui1YZKC8puyU1Sca1FdRZcyeaMGfyZm/mfrMFcz9oc9PvBP+tojBAVlGDdTZ6uCwE6Tk
         vTz5SraoMt5I+wq3jwm8avNTzWbUOkEhEM6iXxTeJFby9nLV6mnuKq8Z1X39uV5KpM7o
         f8ep8+Eby2HhM+FwJn6Rd9h5tnSmagHdbsxOSMnEekMx4K6CAey0wY3aFCNzAnK5scxQ
         ePsf+O6f529VWUUbAREk9biGKGpJgLlJ62hXA5f8l5sEpd9xSYPB9L1dr2K4FGalnfJA
         WsQw==
X-Gm-Message-State: AOAM532qj4UI85bKjOknaR6+70P7E1kK/x+j54G0eGttmw/ZhEFUAy3E
        POwj8RxQM3mQauqrBZVWy4VarsdurSDZj4XCOxqwZq7Q0rYIqcKD177LdGxT6huTynRoeFYAY4r
        DQ9mG1XfoiAihKSBhX+PbtuLmmZxg0UkcMFH93T4=
X-Received: by 2002:a5d:4f8d:: with SMTP id d13mr2266826wru.315.1629964598099;
        Thu, 26 Aug 2021 00:56:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7z+KnpYY98pYyEqMF/A3NX8jxv23cu1YJnDvJUhoXHCtlFAZyyEs+2CZ1T1jeMVjcwD6U+g==
X-Received: by 2002:a5d:4f8d:: with SMTP id d13mr2266775wru.315.1629964597932;
        Thu, 26 Aug 2021 00:56:37 -0700 (PDT)
Received: from [192.168.0.103] ([79.98.113.122])
        by smtp.gmail.com with ESMTPSA id z19sm8834614wma.0.2021.08.26.00.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 00:56:37 -0700 (PDT)
Subject: Re: [PATCH v16 3/7] ARM: configs: Explicitly enable USB_XHCI_PLATFORM
 where needed
To:     Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     devicetree@vger.kernel.org, Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Bastien Nocera <hadess@hadess.net>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Douglas Anderson <dianders@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
        Dmitry Osipenko <digetx@gmail.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabrice Gasnier <fabrice.gasnier@st.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Jens Axboe <axboe@kernel.dk>, Johan Hovold <johan@kernel.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Lionel Debieve <lionel.debieve@st.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Mark Brown <broonie@kernel.org>,
        =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
        Olivier Moysan <olivier.moysan@st.com>,
        Robert Richter <rric@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Tony Lindgren <tony@atomide.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        William Cohen <wcohen@redhat.com>,
        linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        =?UTF-8?Q?=c5=81ukasz_Stelmach?= <l.stelmach@samsung.com>
References: <20210813195228.2003500-1-mka@chromium.org>
 <20210813125146.v16.3.I010d5725652b981ebbafba0b260190fe4b995a40@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d6f17e48-4cb5-d665-4770-a4cf0440f85b@canonical.com>
Date:   Thu, 26 Aug 2021 09:56:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210813125146.v16.3.I010d5725652b981ebbafba0b260190fe4b995a40@changeid>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/08/2021 21:52, Matthias Kaehlcke wrote:
> The dependency of USB_DWC3 and USB_XHCI_MVEBU on USB_XHCI_PLATFORM
> is being changed from 'select' to 'depends on' by another patch.
> With that patch the defconfigs that enable one of these host
> controllers also need to select USB_XHCI_PLATFORM explicitly
> to keep the resulting config unchanged.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> 
> Changes in v16:
> - patch added to the series
> 
>  arch/arm/configs/exynos_defconfig    | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
