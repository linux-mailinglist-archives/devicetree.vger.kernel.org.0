Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4192D388218
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239338AbhERV2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:28:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236772AbhERV2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:28:21 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44024C06175F
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:27:03 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id i9so15935538lfe.13
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Yq66EOFTE3KRowHKWchwUg+sRn03C/iAH0DpjtlmwwA=;
        b=lbe3tVEZF3bf4ofQpWHktP6cfisd1oE7LA39QhhbdQjbakjMFGhOVKYWhpBpvX1EJp
         ysRjbDTbPSu4nO7kn2stpcaZzDV+8xJUrXTzh+738Nnpovc3b92eFYab3dURRe5n5lCk
         eZr1uA96p7Dxv0kLbK+9PEF9TKGlBrjZkSrQbk26KQ0/aWQ9CIVVXNMNvMqpEr6CK0Lj
         vkjb7ph6cxQEnlPxtwjSL9LZU9SJZDt4oNQrCt1fwSWXtxbmCPfn9dCno/K/xI3R2QWf
         m5gLZ6hj4rRzsRFDYvrj/6fM6A/gd7oKsSo13Ns8zUvzHlar3TDq6FnajVrOtDNbk2Uv
         dwdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Yq66EOFTE3KRowHKWchwUg+sRn03C/iAH0DpjtlmwwA=;
        b=O86rnHmybJlPmdKd69h1AJsUTTKR453EIdBSjPJGDknyeozIl0pJxr2+bt8bcGy5TF
         98Y6pDbfCCbM79LA9SeJZhX217/ZYgMej7ytN/kWiPUrD7XQ4v/vrNtSmt9E4DY7NfWf
         Wxa3NlQckysRt29Kkdc7+26xMLAbB4L7WZoafMXuZ5uBJsWnHcZlQXX/eQxT7lBZCiUV
         b+R/3puKJ64D7xV9o9mKbLkjtsVdlqzHCrnh1U6VSDLFDpYSIlOtgb4fi+cKaZ+qcYXP
         aEOGEXGYs4Ra2Psv+FaDCBnFcFM5FOTnFIqsm4vnQCbPq/4wAyHiRyBEI+V1AsHxA5Zr
         rw5g==
X-Gm-Message-State: AOAM530bgfO3AJiuH1pyzFVz8Xkumm02PKC+wt2Tgj1wE+YQQyrvUV1z
        9XoRkMf7eQ6tfKH4tziMhKJud3T0G/NrG6boUDFLNQ==
X-Google-Smtp-Source: ABdhPJytvp4UMxSWihjcIDYPHUG5+ApQIY9lubQNV5E+oo/RN8aQfDBOqcOVsm4UfQKeUxXP7easAc2R2d3wYUKG5Og=
X-Received: by 2002:a05:6512:11ea:: with SMTP id p10mr5301738lfs.157.1621373221557;
 Tue, 18 May 2021 14:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210518185353.3802437-1-clabbe@baylibre.com>
In-Reply-To: <20210518185353.3802437-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:26:50 +0200
Message-ID: <CACRpkdaXtuHWbZvRiV5GTf4PAPKfO4--ecu0w+XEyU3xZrEOQQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: gemini: convert obsolete SPI properties
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 8:53 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> gpio-xxx are obsoletes properties, convert them to xxx-gpios.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied!

Yours,
Linus Walleij
