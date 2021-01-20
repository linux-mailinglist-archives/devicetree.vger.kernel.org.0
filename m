Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DDF22FCEA9
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 12:02:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388309AbhATKyO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 05:54:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731040AbhATKFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 05:05:21 -0500
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8128FC0613C1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 02:04:40 -0800 (PST)
Received: by mail-io1-xd2c.google.com with SMTP id z22so19057541ioh.9
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 02:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1x1DNnE2tmguD//mZOuWvz3mKIik8+ReShmCCkMxJPg=;
        b=vOaQe2FJITlcZJobI1lcdZ2oifntBqUUxmvmDwD2+70GiSg80LuRavNbkVR4xTlJB5
         HkmFVKYGb9UL0NEMHF4pM9oMx3hfzzR66xvyBwqiuttgAPmgnUmxb4gSR99x76JTNg6Y
         0iZeTrSo6Ew+Nn6/uyYwDN5Mptk7SyQFecxE/UFUjqpmOt+PA48kPMZwgomvqHMrVOP3
         01TxB7j+NH4tRGWtufzMDcJGx/WbGgoQEwBTp3d9SdNKesrTQC6m6ek27xOcGry5ONkI
         4L8GTpjQ+5Vh17KfFJXfYK/5tV+sEW+D9qb9mx94sD5tl1f3CGHQTK386qlBws8uVAdK
         4R8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1x1DNnE2tmguD//mZOuWvz3mKIik8+ReShmCCkMxJPg=;
        b=DzGlNkkVCdeLQvgxIE9mLF1TXvg3MrpYMVTCLsOMK8MeFAzebGkPNPW4IeG5SmWfyU
         leLZ1+uU9LX/em3oyup02gDt5y9CiNXuvhdTx+pE1O3x/GpqcQndDyivBlJZ4x4rLgX/
         GLSqgJXHlAZEqcyv1dRfyx2/xdpeiyj1aGsp97FqlkScyiyKLgiyMYYdUx+cFbvlrj0P
         9Dmo6QJQirqQHimUegQLPVb6Z/WTW/0WMCC4XyOTBL909yDECxvHVaDldxlCeI3/077j
         pRFFSkAcJ5J3N2mtERE1BrxkeJDmrxdJHZwJWMbkhyFHjLQoNXP302xm/1ApomAx1Mns
         2SCw==
X-Gm-Message-State: AOAM531DckDJWKtn279yVhtAPWu7Jp71UEk0t8Gf9W5WZ3xI77zez7FM
        iYAvFAaLvej3iBJQOyD9Xa3knUURHzOwp/uDCo7AUw==
X-Google-Smtp-Source: ABdhPJyiec6rsJjOmlleiEJnWE+gm+rYerW942cFcdQ7OxN+oRRXKKjz/E4+amu2LBkxWlI1M74QCgrJBJYzZywiPXw=
X-Received: by 2002:a05:6e02:1566:: with SMTP id k6mr7069593ilu.19.1611137079553;
 Wed, 20 Jan 2021 02:04:39 -0800 (PST)
MIME-Version: 1.0
References: <20210119101044.1637023-1-howardyen@google.com> <af91bbf1-6731-3e87-4086-de0dbba22c22@intel.com>
In-Reply-To: <af91bbf1-6731-3e87-4086-de0dbba22c22@intel.com>
From:   Howard Yen <howardyen@google.com>
Date:   Wed, 20 Jan 2021 18:04:28 +0800
Message-ID: <CAJDAHvbTY3Z_bRg+++uLefWSvCWo_nGq+3OOQX3QHJ2w3X1SQw@mail.gmail.com>
Subject: Re: [PATCH 0/4] add xhci hooks for USB offload
To:     Mathias Nyman <mathias.nyman@intel.com>
Cc:     gregkh@linuxfoundation.org, robh+dt@kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 8:47 PM Mathias Nyman <mathias.nyman@intel.com> wrote:
>
> On 19.1.2021 12.10, Howard Yen wrote:
> > To let the xhci driver support USB offload, add hooks for vendor to have
> > customized behavior for the initialization, memory allocation, irq work, and
> > device context synchronization. Detail is in each patch commit message.
>
> Is this related to the usb audio sideband capability that was added to the xHCI specification?
> If yes, then we should probably implement the generic parts first, and then add
> the vendor specific hooks.
>
> -Mathias
>
>

This is for offloading, no matter what type of offloading.
I made the hooks generically and can be used for usb audio on the xhci
which is not including the usb audio sideband capability.


- Howard
