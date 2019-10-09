Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 65F23D0AD8
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 11:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730215AbfJIJT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 05:19:27 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:44738 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725962AbfJIJT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 05:19:27 -0400
Received: by mail-lj1-f193.google.com with SMTP id m13so1685364ljj.11
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 02:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SrtyImwGFfBXfTmX10XBxTMxRS3dOgBhxhOkYorBJio=;
        b=rWE/As9QTJSgcCHZcLIVvg+lCV/orjCblJHb8uOk437G7OsLqIwxuV8L9e50gKWo+T
         h04ygluyUx7Xx3FA+5zXCLKlttHTXUi22brCE7btt4kIFCJmECsz+qmdAQZXaVo6WIxC
         6SKqlM9+M9L1hNmpHpRdXpbqQGkRs5sugYHvH1LIVILS4DwCA2s9w5QrhBSY/nVUyuid
         a9tTWrmFKrT0uf+DXw7Cad3a6ObwMcvuODk8AL/8hPOLIjrPYLA5OuekTZpcRgUh0e/I
         7daRGk/TM/bsvDv9fHcn2OkzlGVE69der5anWpEv5QAPjICdmWtgQ7dyfb4EZBASDvvj
         8tnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SrtyImwGFfBXfTmX10XBxTMxRS3dOgBhxhOkYorBJio=;
        b=lUXSDKd6qthcCAk8H96BDdxm803XipCi2N1v2KagY/znVNoLv4w/7heDFoNfCUtj8e
         TnGvfQ9pSqpSgpY37zF/7KByyocEmM+vdTe/SGdH121AAntDhgtSoAfR4yDd+OVfRhSB
         DvBT4y3/QR3Fu1aMUdOaL/NEsxLHPGCPFdL71ju3sR/m9a7agt4fkpIZVLa3IWliF95E
         YNZVvT/4j0pS2MhJEh2AYm/OqQCYsSaUQiYckvIMkbYTIzIQYaG0pr6XPkxq2jHh9byT
         ofdCPprhxahQaXWIc2xUNMxsC7uoxtCTECnr/TZPU79gNk7ll2kk2l6QSPUij8EwRzh/
         oyFg==
X-Gm-Message-State: APjAAAV60bbS2qnFjDqJVSLSI7IJ1a8uDuTrvI69KqCJP8brZ+G+yuhU
        uE8OATM0AdANQfTBbLCGPmu+mIM7hhBL0jar2ol8lQ==
X-Google-Smtp-Source: APXvYqz5wZWF3goR+xGn5zfKM9UilScaYCcxjmoHcFVD8Yn8v6dgsuS4bgx4jCa+w9Kdlokc7XIobBnrEKzCVCPNEuw=
X-Received: by 2002:a2e:80d1:: with SMTP id r17mr1663352ljg.118.1570612765058;
 Wed, 09 Oct 2019 02:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <1570188039-22122-1-git-send-email-kgunda@codeaurora.org>
In-Reply-To: <1570188039-22122-1-git-send-email-kgunda@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Oct 2019 11:19:13 +0200
Message-ID: <CACRpkda=ce4B1cGfQStxSjXFCR5-GjyBRMRK-mLunbR25PisTg@mail.gmail.com>
Subject: Re: [PATCH V1] dt-bindings: pinctrl: qcom-pmic-gpio: Add support for pm6150/pm6150l
To:     Kiran Gunda <kgunda@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 4, 2019 at 1:20 PM Kiran Gunda <kgunda@codeaurora.org> wrote:

> Add support for the PM6150 and PM6150L GPIO support to the
> Qualcomm PMIC GPIO binding.
>
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>

Patch applied.

Yours,
Linus Walleij
