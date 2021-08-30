Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B50C93FBD44
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 22:08:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234612AbhH3UI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 16:08:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234590AbhH3UI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 16:08:59 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2281BC061575
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 13:08:05 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id v16so17430920ilo.10
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 13:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0RtSe3tPXjpOd0ru72YE33BChLV62/Ie8i3PXYdqo+I=;
        b=YN8ribrXpRm7FNv4ZI5E2n4zz36a4faIdX+Ua6lNeUTqzla9RlyJBG3EfB0uEdskEn
         BNNB7hsiTrDVB5euYOicZNKvhwFmChfyxLtoz8W3VfmuQom3evvkZbMwP/+DW3+985lE
         lPJGcJFB+PNRcH82klgyMod8NN8UM9GXgbJ+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0RtSe3tPXjpOd0ru72YE33BChLV62/Ie8i3PXYdqo+I=;
        b=dBMu8c2qkCt7lsoDFWQ64uJ1s2oZNLrI7j0NhJRFX8MsnAtEwIVhSfKDgiCIFstbpQ
         KYJAFJzzC/tp1kvQyMq+L65gM25uZNgqKuV24bXlYIJ3wOz2tDzADMctgn6Ll5Hnz1Mo
         6rS11Bgu/uzQAhKhonWDk7ieI7V11fITNiMc5mucJJqRm4Ox2Y0QpdVHHr9GRcnJ8SbQ
         gKVtnU+8sqCMXcd5P+XBhmFOGOK09tiujeWwCRdfTgEshcgI9dd5VcXc31G1IEf9Pb1+
         INK7/Dmn9XIjvlVrLBpmN/owiYLmGuQ2HmVRMPkGE516mLSMS3tobnkOZKY7Vi58X77v
         jh7g==
X-Gm-Message-State: AOAM533HMkKTsxL8jb5TYVfPJHasOFn0OaTklMLYkyj5xenoqijd6V5b
        A6crqhUX3UI1M6P9FlJfduDwP0LP8sS/nQ==
X-Google-Smtp-Source: ABdhPJwj33dG4ThwTPNH+mbzn3niVzqx1YwVigtWr2FxJyvQnGNGG/3XEB7rWQU+l28rMyJUtzu8fg==
X-Received: by 2002:a92:d606:: with SMTP id w6mr17864724ilm.28.1630354084381;
        Mon, 30 Aug 2021 13:08:04 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com. [209.85.166.52])
        by smtp.gmail.com with ESMTPSA id u10sm9214067ilg.15.2021.08.30.13.08.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 13:08:03 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id b7so21554612iob.4
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 13:08:03 -0700 (PDT)
X-Received: by 2002:a5d:8acf:: with SMTP id e15mr19403264iot.184.1630354083438;
 Mon, 30 Aug 2021 13:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <1630346073-7099-1-git-send-email-sanm@codeaurora.org> <1630346073-7099-2-git-send-email-sanm@codeaurora.org>
In-Reply-To: <1630346073-7099-2-git-send-email-sanm@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 30 Aug 2021 13:07:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XjRMdB=iHDcMATWDq5CSRGdh1ZBCftjrZvTfMk_Nqgvg@mail.gmail.com>
Message-ID: <CAD=FV=XjRMdB=iHDcMATWDq5CSRGdh1ZBCftjrZvTfMk_Nqgvg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add multi-pd bindings
 for dwc3 qcom
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Pratham Pratap <prathampratap@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 30, 2021 at 10:55 AM Sandeep Maheswaram <sanm@codeaurora.org> wrote:
>
> Add multi pd bindings to set performance state for cx domain
> to maintain minimum corner voltage for USB clocks.
>
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index e70afc4..838d9c4 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -41,7 +41,18 @@ properties:
>
>    power-domains:
>      description: specifies a phandle to PM domain provider node
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: optional,cx power domain
> +      - description: USB gdsc power domain

You need to re-order the above. The optional one needs to be second, not first.


> +  power-domain-names:
> +     items:
> +      - const: cx
> +      - const: usb_gdsc

Why do you need the names at all? The ordering of power-domains is
well defined and there are no holes in it and there are no legacy
reasons for having the names (like there are for clocks), so you
should drop. This is much like reg-names and I always point people to
this message from Rob Herring about reg-names:

https://lore.kernel.org/r/CAL_Jsq+MMunmVWqeW9v2RyzsMKP+=kMzeTHNMG4JDHM7Fy0HBg@mail.gmail.com/

You'll have to change your driver to use dev_pm_domain_attach_by_id()
but that should be fine.

-Doug
