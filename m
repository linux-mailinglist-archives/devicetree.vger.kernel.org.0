Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7099A96A
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728519AbfHWH64 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:58:56 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:36841 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733146AbfHWH6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:58:55 -0400
Received: by mail-lj1-f196.google.com with SMTP id u15so8021172ljl.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bd8XoLtOAWU+7BwGbBI3SJRXpJvzJRqxBSiZxXkbwbQ=;
        b=cY06XukrB8tjEf9UAwvxbqEkYGIf7YplCL05socdcolxb5FMUe0XrJy1kJFlbZgKRA
         xqBy2i1DYn8CGjEMlIEPBNN/0LLpxzRsS2ynK+EiNpRJVxQP4RSyFdYzu9UbU736NJ5I
         aWADQq7MJJe75skDBRAyGxZ2l5IJ8IbOlJcYqHMxtxxVqAhcy13Kol6ZJ7sVkFqbj/pa
         bHauROnenvzsFCd3LzDoWGTcTldnMrZDcKXLRGU78crbBv4uZNWyvieSTL/GGN5ctTTT
         r7DBfd61vPAP9baxyD63C1Q4bmz3mI8IPOJ6Sdvu6HW0n5kkFwJHqvEmYt4fkKo1BUeJ
         QXGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bd8XoLtOAWU+7BwGbBI3SJRXpJvzJRqxBSiZxXkbwbQ=;
        b=jBfaA1MAKO3IXW+iVwUVt0eYiQexuxdTN8RgDm2W+El2Fg4xCNhvQnBPeyZP/Qljk2
         Y6xI/AA2Iwk9gfX5254yj8gQLVWfSdhWi5ZZGysQkV4zsG6dJ1sGfMKoo8w08gFCz4P6
         cPtM9qPCYxXar+lYlrluRdcRLevykp7eDxwDt3xz22tDKPNV0lZN4GrGKefCas92h8IC
         91HpMZtT4GYJHMIZg6YrIhaoaWnNgcBKgGfYw+bJIkzmmr3LC7HGqoEKeXcFotqLhn4Y
         UsM/Pjp5liUcUIs/JF2EggSSyqIyc5zSs+kH+GIidCy0zelroqNzzsf81dvIVGqoClSI
         fLoA==
X-Gm-Message-State: APjAAAVcZsPUeiEqBgtzcAT9GyuSO7iGlIlMEGEHcDyDzygHUPRLrd8R
        7QY75YPlAUyu9le7/YViAUOK7VewrgjcXW+MmSJDCg==
X-Google-Smtp-Source: APXvYqx20UFE09WUbvPbKRheJe5uPUYJciAr4V5C0JTxwVk+UKhBPMsa+z9iIIb0TS7UW3n8ScMINNgWL5FoPJpJES0=
X-Received: by 2002:a2e:9903:: with SMTP id v3mr2098659lji.37.1566547133896;
 Fri, 23 Aug 2019 00:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190814123512.6017-1-vkoul@kernel.org>
In-Reply-To: <20190814123512.6017-1-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 09:58:42 +0200
Message-ID: <CACRpkdb-y4PhqH+fSeQNRHKHDKB=qDdcgR4VdnBqXJEh2YPAUw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: qcom-pmic-gpio: Add pm8150 support
To:     Vinod Koul <vkoul@kernel.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 14, 2019 at 2:36 PM Vinod Koul <vkoul@kernel.org> wrote:

> Add support for the PM8150 GPIO support to the Qualcomm PMIC GPIO
> binding.
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Patch applied as lightweight and uncontroversial.

Yours,
Linus Walleij
