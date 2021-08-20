Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6079B3F35F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 23:16:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240591AbhHTVRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 17:17:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240240AbhHTVRO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 17:17:14 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDEAC061756
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:16:36 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso5765182ots.5
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JK5qp9aGPwlk30xRI3qcWwl4gv4KOP1fwY03JpC1sQc=;
        b=JybGeEAWGaaSntO3R2lT7WUj35AygFj+itlN16mJYpO0OvjZL4KqEBkfiQp4PGz5Mh
         IrMNHPoa3RsBgJOm5bzBRMyg06657LdqdM3qiOSs3QY6vOx/NvESZuyoce2FByz4HnNL
         1gZiAXesklldc7Jy2N/XS7I1aWhbJKnHGm2DE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JK5qp9aGPwlk30xRI3qcWwl4gv4KOP1fwY03JpC1sQc=;
        b=q1QaCm3LHtkEKhayC6iJSZhRt+9JKb9r9FwbPhM9x03bHv+j8v+oMAaiF4b60cbuhX
         uQ60ElMg239p9C1gSPiW2NZpFWSVrPuLBu+HSGZ6Y7iMyVBG4t/bsAO30xcEuKlmMymX
         fNbe0uCEtS91ZSS5FdnP7CNoT9OogMe0YKNDjLBmfcl59Sy6VgaLnFdVe4jFJD6xczrY
         T+RyDz/+V42gPMacLbLWQarJNn7167SALWsEtX74e+dTbdpe8WaxQBboVyCn4k9hQVYS
         VOEJBbRtxuYnQa6Lg7/RFzvBVAfF1M5QtQSUq3K7fg5I5IINJK7XnjHH1cK2nQ+lDv2O
         uAIQ==
X-Gm-Message-State: AOAM5339cgpxojVK/RYOq68pRu+UdqwS+m1smu3LrnjL1P/QItTzklGN
        L+xdhwKDSv/A06/OnswcnrWJYTn92fulYg==
X-Google-Smtp-Source: ABdhPJwVOycXxhs4RaaFxJX+bt8o026f1P4nbNmvSYJepFHmaSJ6mOeYbdw5iwIvDX5+qUClAj/pKw==
X-Received: by 2002:aca:171a:: with SMTP id j26mr4321751oii.69.1629494195340;
        Fri, 20 Aug 2021 14:16:35 -0700 (PDT)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com. [209.85.210.42])
        by smtp.gmail.com with ESMTPSA id p64sm1706498oih.29.2021.08.20.14.16.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id c19-20020a9d6153000000b0051829acbfc7so16975572otk.9
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
X-Received: by 2002:a9d:309:: with SMTP id 9mr18770960otv.365.1629494194200;
 Fri, 20 Aug 2021 14:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
 <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
In-Reply-To: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
From:   Brian Norris <briannorris@chromium.org>
Date:   Fri, 20 Aug 2021 14:16:23 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
Message-ID: <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
To:     Doug Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 2:05 PM Doug Anderson <dianders@chromium.org> wrote:
> I guess one minor nit (now that I look back on the veyron patch where
> I mentioned it explicitly in the commit message) is that on the veyron
> ones we sorted this down at the bottom with the other pinctrl stuff
> instead of sorting it alphabetically with everything else. I'll let
> Heiko say which he likes better.

Huh, didn't notice that semi-convention. I can sort it however Heiko prefers.

> I also notice for veyron that we had a second "ABI" exception for the
> recovery mode pin, but I believe that goes through a different
> mechanism now so we're good there.

I believe the recovery mode pin is dropped from recent designs (don't
quote me in general on that), and there's a different mechanism used
just to get the at-boot-time "recovery mode" state directly from the
firmware.

> Even though I didn't do a line-by-line review, I'll still give:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ...though it's possible an "Acked-by" would be more in the spirit of
> that? Not sure...

Thanks!

Brian
