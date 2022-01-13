Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92F7F48D119
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 04:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232351AbiAMDug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 22:50:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232340AbiAMDuf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 22:50:35 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E86AC061748
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 19:50:34 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id i9so6114199oih.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 19:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=M6sxUAmXLx0M8TdEdSE6PUSl7S6EJzqlpQl9niyaXf0=;
        b=V/UuDFlWTeh9jYAqcEqiyUSJlWR9ENv5wNpqhZUA3aMgiTeiwNVfap78nf09IQUrT6
         j7jmfRYlGQQut3Kl+YZ9kLjHJPVs/Lyi3Ecfp6u0OFmbX9HHD9FDaiDQEVIVo8wAkGba
         /T/mOGdrG8UkhNTOQYxVDPE/Ljuv2VM57sQfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=M6sxUAmXLx0M8TdEdSE6PUSl7S6EJzqlpQl9niyaXf0=;
        b=yQCFyecD0NIIawPH0vvKIQ6Idpic+xYZ5ZoKBKq/NxXCVdhhQzUqT/JajbaKYGvzwo
         tS87pUWGOQfUhTNZd8Ip59qgtzFrepV/c6nCYPtdIr9E02yaxa/AtJhJnazn25xDWWQB
         Kc5M04KTsdYsXCuQUtSwTRZhsnjRDP74Gvri+UDYP4QwJ5wfMyEgm3cRmrJ4UAEcdyBz
         961QCqbcgSYe6YpzNHFdjjprGSGeByIV4A775h7Nu7VUi6oYPSUZDLGJ8imwNKX5SmHs
         4KAiADWYXaLnlgOyM5SJb06/U05VoVRRBtg874IntwhyAOFkFp95KaEmeP4SdUgtjJ3e
         1qPg==
X-Gm-Message-State: AOAM531ZiyjQMkmTkIidMBkwXxW3sCpwXR0g8eCmPWGqMK8klWDPMZ/L
        OlL+vqLe+11oe92aUJmX8TJtE5rmD48qQA3EZQYULg==
X-Google-Smtp-Source: ABdhPJxytrLlHhhcGB2y6YLPVDF1TVmqRe7X5e6gXJdSyBZQwZe6QsdT4rdc/ACKrKT2Spg2szNeMq7U1TX4xznEgXk=
X-Received: by 2002:a05:6808:cc:: with SMTP id t12mr918316oic.32.1642045834045;
 Wed, 12 Jan 2022 19:50:34 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Jan 2022 19:50:33 -0800
MIME-Version: 1.0
In-Reply-To: <20220112111028.v19.4.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
References: <20220112191048.837236-1-mka@chromium.org> <20220112111028.v19.4.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 12 Jan 2022 19:50:33 -0800
Message-ID: <CAE-0n50g8w2pyeSrfX+SMzrJWR5xXRhqGkG3k428xYDG2dcbAw@mail.gmail.com>
Subject: Re: [PATCH v19 4/5] usb: core: hcd: Create platform devices for
 onboard hubs in probe()
To:     Alan Stern <stern@rowland.harvard.edu>,
        Felipe Balbi <balbi@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Bastien Nocera <hadess@hadess.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Peter Chen <peter.chen@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        linux-usb@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Li Jun <jun.li@nxp.com>, Peter Chen <peter.chen@nxp.com>,
        Sasha Levin <sashal@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2022-01-12 11:10:47)
> Call onboard_hub_create/destroy_pdevs() from usb_add/remove_hcd()
> for primary HCDs to create/destroy platform devices for onboard
> USB hubs that may be connected to the root hub of the controller.
> These functions are a NOP unless CONFIG_USB_ONBOARD_HUB=y/m.
>
> Also add a field to struct usb_hcd to keep track of the onboard hub
> platform devices that are owned by the HCD.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
