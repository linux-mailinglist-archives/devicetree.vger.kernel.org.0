Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9AE348BF8D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 09:10:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351418AbiALIKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 03:10:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345281AbiALIKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 03:10:48 -0500
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB43C061751
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:10:48 -0800 (PST)
Received: by mail-qk1-x72d.google.com with SMTP id e25so1632225qkl.12
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ln4Z+utk5t4wG7dSTr+N/vIytSHGiSk5Tc9SQNyOM48=;
        b=jRXNSagtG+3zCQ/ueepVM/ZM8F+fDU+KYJkYAXte5pXlSXGD9pne8SjP5bzXRhTgTr
         /LDmH+gdHv7f4ka7Fty9DPzim7kmqkCpYiSN6KQNDQ1L+UPPyG2am2s07g300gsYADGT
         AJb+btdFlbtttkdtoD0ebAkqEFyeO5ZOGo36O3wC5NiCecrGTlB1idrAmqutPEOfyWam
         n2rwJW/QZf1zc8D4/iVVtZbcNwIeE6AAM47bc7p45h7cvF0VojA9f3EwrNZAN7Pp7rug
         7ldZ/AEjhRU4lUkcoA5PoPuAYB5eWOFx3J/E/jDvDoQ4tw6dtRSx+L/Q35l36UtxOMOi
         uTrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ln4Z+utk5t4wG7dSTr+N/vIytSHGiSk5Tc9SQNyOM48=;
        b=KSQFgv2vEFqYVkIEZCYPR9htNJQ5xPXY9zocz3rIGTpgtQUZZ6wkAUsEs2YRmE6+mc
         LMj7PJIltJ6GWZpRl8uO7bKrr+PxQaEiIb3Gz8sqQOzpnWwIwUFS89eCl5kg1YKU1ZTs
         gTB930s+MpImLHeqZ46Hz9GpeJOgKktaD3PCRfcnce6ZWKIWngrMf9IXmHRyQO2qVf+X
         zCrKyqIJzKc3IB4wTXdq8sl/XONN9Uv6VXy2FCZavoqUT6SWKNJgFNev/tq/lVaPtwfn
         zE33GQTt/2nCPDtE8bSPiUnEB2cOZoU13BKFSFUUgYPfed0IM3Sz6v19qrIVZDCj/9Jk
         VqQg==
X-Gm-Message-State: AOAM530J4prQAiwF+F8dWPNXt0hejIP4eG/UrF9QZ1FC+pAK35wnp6hm
        RHEpEn9WLq4WTUfZgQqeH4bbN7jNSXOSa0XC+59qkw==
X-Google-Smtp-Source: ABdhPJxgw8vuzvGsNpSUXyvXwl1oHkWI75DxxBdrzPmti4gBxsNpCUeqpRI1bGJFhSec2o2EMW1PEEto2AraQlbf+yQ=
X-Received: by 2002:a37:8045:: with SMTP id b66mr5682021qkd.670.1641975047533;
 Wed, 12 Jan 2022 00:10:47 -0800 (PST)
MIME-Version: 1.0
References: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111175430.224421-1-krzysztof.kozlowski@canonical.com>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Wed, 12 Jan 2022 09:10:36 +0100
Message-ID: <CABxcv===MQp6Riutw0Cs=CAxX1k9fNZfcL+nDEuRHveXzjMQBw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] regulator/mfd: dt-bindings: maxim,max77802:
 convert to dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Krzysztof,

On Tue, Jan 11, 2022 at 6:55 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Hi,
>
> Changes since v1
> ================
> 1. MFD: Use absolute path to schemas.
> 2. Regulator: skip properties.
>
> Dependencies
> ============
> 1. DTS patch: nothing depends on it, sending here so Rob's automatic
>    checker won't complain about DTS.
>    I will take it via Samsung SoC tree.
>
> 2. Final MFD patch depends on regulator, so the two last patches could
>    go via Rob's, Mark's or Lee's trees.
>
> Best regards,
> Krzysztof
>
> Krzysztof Kozlowski (3):
>   regulator: dt-bindings: maxim,max77802: convert to dtschema
>   dt-bindings: mfd: maxim,max77802: convert to dtschema
>   dt-bindings: leds: common: fix unit address in max77693 example
>

For the three patches:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
Javier
