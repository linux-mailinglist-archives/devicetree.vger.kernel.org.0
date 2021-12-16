Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D93B478103
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 00:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbhLPX4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 18:56:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbhLPX4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 18:56:41 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF180C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 15:56:41 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id c22-20020a17090a109600b001b101f02dd1so4073240pja.5
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 15:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qfdGylNHpttDgBez5cht2DYfHPgx7qkn9YTiTcn4MeA=;
        b=abXnDM0+Uarpvz+2qnOD4yB3sfoc2cik1tzmBSbkJYrdEHdoEhqpAXLoAS+9HMLcGa
         3nwOlFn69pJOP1F7l5xWzHlQaN/tYci4mLiaKu45q3SFyT2SQvvYul2hVmYYjQBWojsQ
         768KcnF9jVpNTVw1YzyW0uEs6aJ+TgnGqZGRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qfdGylNHpttDgBez5cht2DYfHPgx7qkn9YTiTcn4MeA=;
        b=5UAsgEGzLBHPUrDbnWyJ3aYfdy8/aMPGWmAGJEDrJ4RRpo73S8THulKTSvxvRhGb2V
         1Hvwmfy2t9US+Nh77fQArtF/P3DUCj1qFCMKKjpbg6uVeeVvL9zjEZIHkjFujk83a0eq
         wHTe0gNHe53HBlItCoWnUO9Lv9AppNzTc3JpCQXoybcM0JAeqIWIYyLvjYGCT1Ms2Wvr
         MUO4En0FrIU4RmH6uosXnb6X6Ra111RMObVZ2c9FvWeVt8fVx1JL30LsJnirAczzBlLP
         VZDR44uyN+iGCHrDx5i+UyiwgbPMnr5GzPhZEn7unE6iV1yNGfTbhcK942bnJchSDFqf
         43XQ==
X-Gm-Message-State: AOAM532DYNW1+NznYoWSH5UH61TzVTjlcVETAZoMj0ikisL+q4oECq9V
        kY+higu7t9pOtX+AwQYM6mQsEA==
X-Google-Smtp-Source: ABdhPJycBoVkGQxMMxjDLxo2CE2YaaUcyispOtyAWCRkHr/tOr5hKfzUcxNzZmkHqoL/YQrFdchIhg==
X-Received: by 2002:a17:90a:c986:: with SMTP id w6mr8898697pjt.27.1639699001289;
        Thu, 16 Dec 2021 15:56:41 -0800 (PST)
Received: from localhost ([2620:15c:202:201:81:c257:d961:22b7])
        by smtp.gmail.com with UTF8SMTPSA id t67sm7212453pfd.24.2021.12.16.15.56.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Dec 2021 15:56:40 -0800 (PST)
Date:   Thu, 16 Dec 2021 15:56:38 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Peter Chen <peter.chen@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Aswath Govindraju <a-govindraju@ti.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Pawel Laszczak <pawell@cadence.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Tony Lindgren <tony@atomide.com>,
        linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v17 7/7] usb: Specify dependencies on USB_XHCI_PLATFORM
 with 'depends on'
Message-ID: <YbvSNta4jCxizaTa@google.com>
References: <20211116200739.924401-1-mka@chromium.org>
 <20211116120642.v17.7.If248f05613bbb06a44eb0b0909be5d97218f417b@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211116120642.v17.7.If248f05613bbb06a44eb0b0909be5d97218f417b@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 12:07:39PM -0800, Matthias Kaehlcke wrote:
> Some USB controller drivers that depend on the xhci-plat driver
> specify this dependency using 'select' in Kconfig. This is not
> recommended for symbols that have other dependencies as it may
> lead to invalid configurations. Use 'depends on' to specify the
> dependency instead of 'select'.
> 
> For dwc3 specify the dependency on USB_XHCI_PLATFORM in
> USB_DWC3_HOST and USB_DWC3_DUAL_ROLE. Also adjust the
> dependencies of USB_DWC3_CORE to make sure that at least one
> of USB_DWC3_HOST, USB_DWC3_GADGET or USB_DWC3_DUAL_ROLE can be
> selected.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Roger Quadros <rogerq@kernel.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Note: This patch has been removed from the onboard_usb_hub series,
together with "ARM: configs: Explicitly enable USB_XHCI_PLATFORM
where needed" and "arm64: defconfig: Explicitly enable
USB_XHCI_PLATFORM". These patches aren't any longer needed for the
series. If maintainers think they are useful independently from
the series please pick them or let me know what needs to be
changed to get them landed.
