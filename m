Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3755237527B
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234574AbhEFKhj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:37:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234550AbhEFKhi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 06:37:38 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 845FAC061761
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 03:36:39 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id x19so7106853lfa.2
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 03:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OXbQKzDbxQwqwkLGFQ0kqzvk73zXrjdXLLcNMoTV+r8=;
        b=EKJwqQdW7hdH0N+0G7zzaqw0678I42oJOPhKbcaU+aiQY4MPMMVqbYl7Foc5QkbTBn
         qsQXlg+ekmi6DvvQjYFHEilJzBdtTL7juq0eEH3BwcjKXcyOmlhSk5o2a3fOJ4zgzj7l
         DTcu7Wk08bmdkLWeGxXU4XuEy4XYY4nOSLWqcsEHi6IOLAVuG/aAOLTiFEEDbTS4k2//
         8sX+vTfytXkSYIalpuMPo0jgHFZL3pulLLPeE02LYOAt6M84bgdy11RFgwXJnGA2z8ya
         P4b17+UBSCEvGJrfG0mcitA9IEwypQHKV1Xjjs/rMg6NHkK5xAi0ZztCRba73XQDn1cz
         uvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OXbQKzDbxQwqwkLGFQ0kqzvk73zXrjdXLLcNMoTV+r8=;
        b=I3u2+WzmN0lZ4kUc4SPwcNKoVIWaFcMQcCsQSJ3sGRT1o+rlGmsk9ouid+tTFEli+d
         S49QvNmZBY8eqmPXzBMNlYseCGvuK3lkvSAmc/1Er5KG5AF7mCKc2vzh0oITg2T0aQtL
         UnLkwRM5LMld7ABnPSFVnLh7mIU7LjVDKm53sEH0OMzR10LUqVeDre2iMd4PpsD3vuZF
         kyJEpkmhOm6X2FbfIln2+KoErD/TFUhIFN10zGGVb0oqfnQngdyyaItX4X3cslcafUZR
         dMxTcpwEl00vJ9rvdxC6MJS1eR1pBmnaLZ2cjsB/pSId/p5KAMh9gNucjE4iqqzozCnz
         uKkw==
X-Gm-Message-State: AOAM533Eg5i2V2E2H/6R7SaJcDKWLAgtGD1Uome0Otu1YnyBcAWw+Bdl
        ivLYVpxjj7OV612BJiJGX6+Lvto7tYekc64Wz0Wu0Q==
X-Google-Smtp-Source: ABdhPJz6obQ5zFKGwi0WheVhpUVw5Y1L6DwEcdTp0kskObIxJm1918KFGbwHbcS6FYyobPFu0XY446QPjXd7AVCNTUg=
X-Received: by 2002:ac2:544f:: with SMTP id d15mr2400667lfn.465.1620297398076;
 Thu, 06 May 2021 03:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210503195048.1575007-1-clabbe@baylibre.com> <20210503195048.1575007-2-clabbe@baylibre.com>
In-Reply-To: <20210503195048.1575007-2-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 12:36:26 +0200
Message-ID: <CACRpkdZeTfRHO9EQ0L_ZCiSmqBtjMt4Q9Zb3qHRFgKNMburHqQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: gemini: use the right rtc compatible
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 3, 2021 at 9:50 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The rtc compatible was not following the dt-binding.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied!

Yours,
Linus Walleij
