Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C612E20808
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 15:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727187AbfEPNZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 09:25:15 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:46946 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726696AbfEPNZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 09:25:14 -0400
Received: by mail-lj1-f196.google.com with SMTP id h21so3048912ljk.13
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 06:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T7i74xwX9U5ncTUvzhWe57o2tW8tsCxNGT7kMEIaIPk=;
        b=UZ2HOcb7CW2/11jSTnSPHfiHBasuAf7GrJd1OBF6+iXtAEPjKJR5dDzMbRtLzM4B0l
         /VkhzqF8QqngYjEeMk13keD+R52PQsWlMoV5kTRyWfoAgz9X9IgjKR6nnUSsEwV0mlvq
         y+2K3uxFvkCLSlgMAAxkNqa4ewh01JlutozwHyviQURNfG80lV2yU7d+3oyeWqBazhAI
         kuHMJC9agm5hBYp4WmqgZDYo+Xp7/nQBxPU7o3rG/+09m1MHnx/mOwKZsbFpC+wr6c5S
         sZFsWoZBbHj9rRsvLHsDi9DOijCG62RpIhgTZ5Oe6FQPq/y2Q6YEKijQk72SopivTngI
         oXlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T7i74xwX9U5ncTUvzhWe57o2tW8tsCxNGT7kMEIaIPk=;
        b=GULMjN7xT0c6cf/CR6dWHG2CiU4ukIcWYi6Z2C1LQEyN/mdBkzohLzOyDag5W3JHRp
         CGisYnC/wMQyYZfQiNSl1dcXc1Pc9iyq3UY7r+0xxRHXz49F0MQh4YTz7ri4+NYNyOv9
         SAEysG0CwEyfKlUg2aDel/pk2lRcB6+J7Ot+63wkqD5O4jLKszRocJlzoRFIY44P9Eac
         GGI/Nj+3Z946Wfm3xm/zhtXzzJ/DXnTYOZAk7bXPaLvL/mO8L9epIOyJpQlEclH59skz
         SdU14EBLZjdQQwaWI287QcNzVuaBfOciWmGtDXDXxwhv6qVm7iCHlvYbY2ujo9an8/85
         XZ1g==
X-Gm-Message-State: APjAAAUbR9PmUIZ9Mlg9ZfGCnOkgipRGfV3fK42IqMAUwbWj5dbUdaBV
        w9cQlFTrxWohuC39tzUsVMdtLfuqQSip3o/1qODqjw==
X-Google-Smtp-Source: APXvYqypGlrkwcWpkDZqIzkGCG+DJBLuflw6yusCBeidrQObvNv3EKCslo+yOFvLup20kJPOGzeawHtuUNUjQ5uzhwo=
X-Received: by 2002:a2e:731a:: with SMTP id o26mr21535501ljc.105.1558013113062;
 Thu, 16 May 2019 06:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190509205955.27842-1-f.fainelli@gmail.com> <20190509205955.27842-2-f.fainelli@gmail.com>
In-Reply-To: <20190509205955.27842-2-f.fainelli@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 May 2019 15:25:01 +0200
Message-ID: <CACRpkdZqAi4bbpGO8sTBq573dDRF-VWg9gE8=uGVJ3Jv0MY5bg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: bcm2835-gpio: Document BCM7211 compatible
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..." 
        <bcm-kernel-feedback-list@broadcom.com>,
        Eric Anholt <eric@anholt.net>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Doug Berger <opendmb@gmail.com>,
        Matheus Castello <matheus@castello.eng.br>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Lukas Wunner <lukas@wunner.de>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Al Cooper <alcooperx@gmail.com>,
        "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE" 
        <linux-rpi-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 9, 2019 at 11:01 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> BCM7211 has a slightly different block layout and some additional GPIO
> registers that were added, document the compatible string.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Patch applied for v5.3 with ACKs.

Yours,
Linus Walleij
