Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AF00739769
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 23:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730540AbfFGVLM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 17:11:12 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:46131 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730392AbfFGVLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 17:11:08 -0400
Received: by mail-lf1-f66.google.com with SMTP id l26so2599785lfh.13
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 14:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GPc4uqgBsBwvM/V5yLC3GgSCS1qEGuH2AgCesOfjZVs=;
        b=Xj+2CqjydRXkCSQdyY7hh8PknmG976aSmUGB6M0CXKwV68YBSlt7lEEc+0Q42HLwWz
         Kra3lWvzcZx8eZY4JLM9mGD+VkNWxtwDyVXjTFTgP11NG2vkLXXXisA4gdEpta8GgDB2
         yxGporWlOf2R6G+iU1qVE/dS2KcDdPsOgzlWsQScxqbH7f/eMvtehgLWrh/1s1mMzjg1
         BK/0CrHmik6HkETFYVX4kcOMMJv106KemH4Z0D8fzGvw9Y3KVrowv8NuJWMIEnm7Eorb
         QD7hXFsgXb7V41En3COZDajj/mMY4wVVGLQ6hrmrSsj80bmLgb4VTYAq4+CJUHOuV9ia
         B5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GPc4uqgBsBwvM/V5yLC3GgSCS1qEGuH2AgCesOfjZVs=;
        b=qwhcvRHCc7loE9mD5PTc8UzJJGs1XgjSzf3N5IaPgRA56/hjEGWsVjUp0BVn0Qglxy
         GAhzoqPUwFGDJz0EkcyHO6JOyJOUcecuD0lQFTFP6We/I8erUsXZqfj5/i2LeuqvNDuV
         b2+rRf7dJTGXOBvnYKfA5XBYpe5WJXdqCamzGsO3L++JSZo/PagGVtvuASsI9rwS4jZ8
         bzPXTX5CBKnTzoguwoK2tCI8FvvEkwuCt/1qgIzE5e91u/1mwbbPdAiwstsG0OHsMN1g
         hdoY+8u+I7kAKc1P+HYiQgoAjUy0eQ6OVd6IeGgfYXhnR/GgJzQSJdW6xBnFg/Jcch2Z
         HdoA==
X-Gm-Message-State: APjAAAXctnK5JClSe6C8eTpDK3hSogNL4GKAtDp/0srn1OaplHctzSci
        f6uvSJWKN8dsk4xkGYWZAQILdHDepaQxEAnnbxJc+Q==
X-Google-Smtp-Source: APXvYqwLMWoxXQVxSrAqsjepyHJHrlxKQondxww0aj1IMUZLcbBmaGIZOjMLnDuUtqzxjWJr+xi7qFr48fEF7tdb+eo=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr26200028lfu.141.1559941866676;
 Fri, 07 Jun 2019 14:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190603010455.17060-1-masneyb@onstation.org>
In-Reply-To: <20190603010455.17060-1-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jun 2019 23:10:58 +0200
Message-ID: <CACRpkdYP2C1cUN9w9uguSbXV3vkCDrm3o84qNbpTiaD9TcdMog@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: qcom: msm8974-hammerhead: add touchscreen support
To:     Brian Masney <masneyb@onstation.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Russell King <linux@armlinux.org.uk>, frank.rowand@sony.com,
        =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
        absahu@codeaurora.org, MSM <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Jonathan Marek <jonathan@marek.ca>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 3, 2019 at 3:05 AM Brian Masney <masneyb@onstation.org> wrote:

> From: Jonathan Marek <jonathan@marek.ca>
>
> Add support for the Synaptics RMI4 touchscreen that is found on the
> Nexus 5.
>
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
