Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42CBC48CE2E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 23:01:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234121AbiALWBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 17:01:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234082AbiALWBG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 17:01:06 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA5DC061751
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 14:01:06 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id w19-20020a056830061300b0058f1dd48932so4102209oti.11
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 14:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=iDJDLZqw5nv9QVwGnsBVKxZyO7G5hSL4+2etn9Bv6Go=;
        b=a1N1BaLxxFZpzGFDluM1OOLYe9nqcZfzbiT8QO8HXMHHMAXl8pAAifZHrowg1kXXTQ
         zQJnGHTyFMFWOBSo0nGUsmUVCc3oBLCDAPqMjy5G/zC19DtkzGYCb6rE80YwHanN8fXi
         yC5mQCPGOcKaXDqML0s41KBnLzWdb0mbPyIho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=iDJDLZqw5nv9QVwGnsBVKxZyO7G5hSL4+2etn9Bv6Go=;
        b=OOdmLWerPGLExkXI+gMHREaRvNpB49BurFojBMT2Ops+VPeh/Od4FIhoBpFRhUi9AD
         89+voPNSD67QDhR8PMFC1TuI8/mhMFPDSxCuhjPj5SAcO+xDS7SEgSydNpvwardDI4qR
         eUV7qP8QKg9I5QbafGGoWlsnGRIrPqZhy5OYdZdKfCN8R5DruEEeDMlwStEKog7oCEFL
         K0xmYW4gspvB+/PoW8i2G85MiA1ytbomt8/QCGQlKtRYRLVGOSTD/shXfHxYTHvMOok/
         2JE0UpNOWVFCFNcaLSdLp8e1+f6OTEY3o/Mtv+k7pA8o9HP6xgU+HFXmm3dxA22sJbJ4
         vXiQ==
X-Gm-Message-State: AOAM533BxSVomxIrFBhI6EOqd/F9K7iTo3XZ2pt3eqHt6ViOAECOFZrY
        MSAlcVPhOiDGswHUFLuc0c91pdqgEz4YifKgV7bboA==
X-Google-Smtp-Source: ABdhPJzQLSAKbBUW+wiQF4THmbYAT7bPbn5M3SmifRqFgAKnUpZtQQfng5QPQJOIEMUOIxWmAXz6jopofhs+LCriqLM=
X-Received: by 2002:a9d:7451:: with SMTP id p17mr1191775otk.159.1642024865576;
 Wed, 12 Jan 2022 14:01:05 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Jan 2022 14:01:05 -0800
MIME-Version: 1.0
In-Reply-To: <20220112111028.v19.1.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
References: <20220112191048.837236-1-mka@chromium.org> <20220112111028.v19.1.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 12 Jan 2022 14:01:05 -0800
Message-ID: <CAE-0n53_XT-b2AJsF6E4dMaLgygkuZDdL=c5UYWEe_ceoPh4SQ@mail.gmail.com>
Subject: Re: [PATCH v19 1/5] of/platform: Add stubs for of_platform_device_create/destroy()
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
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Matthias Kaehlcke (2022-01-12 11:10:44)
> Code for platform_device_create() and of_platform_device_destroy() is
> only generated if CONFIG_OF_ADDRESS=y. Add stubs to avoid unresolved
> symbols when CONFIG_OF_ADDRESS is not set.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
