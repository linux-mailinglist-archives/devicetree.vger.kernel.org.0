Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9FCD9313
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 15:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393731AbfJPNxq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 09:53:46 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:43308 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393730AbfJPNxq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 09:53:46 -0400
Received: by mail-qk1-f194.google.com with SMTP id h126so22782898qke.10
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 06:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W3MpqWuXCuED4lPwTmYmfLDrEaS8sTh/GqrnlfZctaE=;
        b=ZTpnmoyqnGgVdoOocqBKv1ocwCh2S7f0PpiyMV4dIdRuoP/uwZW5d6ztsvG0pAgtSw
         y7sVez2MZV86WJ5SQ1FShYHwPnWzykBrjjxkc4rCYBN3SCav7pp+VHGTtX9rAVrtAK4H
         ujkbkv5zB+bU8JukhvrmMxuKH7g0lukQWC8MJVPgkJDaWnaU8fRWA92YNR41ZCoVw0nX
         0AxbTtXKFIFMGENcQziYHggTX3O3CZiFjFIoz4Drfop4J4isyb9btpuo2RobmLyWxqOt
         MUbZdLOH/rpwVQrKtXY5M+h3A9UpdQ1cSCRJ4bwACNIwr+oNXke5DTIyNS0CrGofY8cb
         /67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W3MpqWuXCuED4lPwTmYmfLDrEaS8sTh/GqrnlfZctaE=;
        b=i6P0FMaYr13kS5NBZi+UdLyo+8sBCFp1mn5BRYr54rePfcC9+EwMqFs4/ffwLXIf02
         3wJZEhB694HtB7uxChooQ3lq4VjNrV3EnoSO486yCKfHMiXYleN0wh1givvJmdSJFBiO
         R2oGtobhfp6Jo0SwpII4RzhFVkoh1gNeTGb/VAt+b9vcym0Uh3GINuUJtROAwtH9LZFZ
         mQ9Xm5DjakcaNE+ANDZbqBjEz68XrHSoO3qe8B0IY0mpioOzBIjrGGDsxDlrr/IrcC5G
         a3x148P75UnSyIgFnsZu+j/OyE0ni24/qHf5lK69bBcp8+kyvSiRNjdZPiK8HzXVWiK+
         lAcQ==
X-Gm-Message-State: APjAAAWSYoWJz3LB8E0SeVFNcU5/Xug6n7KFErDtJZgMDWFtIxM/1AFX
        Ywxd39LTkrafVNEPolo0IaOK5jHoEa75o0Z/WPjMofVf
X-Google-Smtp-Source: APXvYqzLuVyub2/mFLs66z7+S1u7CxXVvwqKq63XhUOVOUahZi0oy4vFqDFB8kLVPHKNosuPfckb+bt652CkfqxFknM=
X-Received: by 2002:a05:620a:751:: with SMTP id i17mr40220819qki.340.1571234025322;
 Wed, 16 Oct 2019 06:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191005105936.31216-1-kholk11@gmail.com> <20191005105936.31216-3-kholk11@gmail.com>
In-Reply-To: <20191005105936.31216-3-kholk11@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 16 Oct 2019 15:53:31 +0200
Message-ID: <CACRpkdZRdSo+4ZrSbt+4FzRD7X5PaPQCX4A9eLnw5=Aa4bdfMQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: Add MSM8976 driver bindings and documentation
To:     kholk11@gmail.com
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, marijns95@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 5, 2019 at 12:59 PM <kholk11@gmail.com> wrote:

> From: AngeloGioacchino Del Regno <kholk11@gmail.com>
>
> Add the documentation for this new driver for pin configuration
> with the pinctrl framework on MSM8976/56 and its APQ variants.

Fixed up the tags including SoB and applied!

Thanks!
Linus Walleij
