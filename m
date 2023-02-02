Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB14687DF0
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 13:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232254AbjBBMyg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 07:54:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbjBBMyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 07:54:35 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD48B457ED
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 04:54:33 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id b1so1991092ybn.11
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 04:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hou2cpFBpeYFXDjBngNxUrkbjF+eRNy5ueebEuZYyZQ=;
        b=D7N1rGfNtk+hVf8eAwCjQmKZlTV+LjudLUiUdxC1DYZxkJ7TPk1xdmrU7ZUlp1MNOp
         iYIl+scDP8BaLzYbePblz0If/LgYb4apxSDsg1Rp84h+XvuFDnNW4ZH0jZQlojWm9ABt
         ECB18wQ1z+kIE6F3Qdg3QoBOLLqhLykYhQ1TrWhjRgpY9SANz+KiEp1eLkCRcS+9SI+v
         WdYEhSZQi7UnzC1YxOEtA/jeMBtHbkwTZyneDRb5tLL2ahdjC56c6U6/BOJM7OQIvXTw
         evgrfv1Jut2TJ4CWvyDXV4JXse+Kuxl9AAsle1hToSRY0z9OXrpHnzJRTBjb7P2ciPvS
         /MJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hou2cpFBpeYFXDjBngNxUrkbjF+eRNy5ueebEuZYyZQ=;
        b=RgH4eMu5djMHakNhIuubHtNauyOskp50ntiAkqS4NcYg6ctSGjpQQgWnh4qatS3NQ1
         9WZNyh13m/QwFt0fPxEJPWB0QsEtl+1Q+SC4kNP8C1oD2RXEZfRpVZ9y3WIBOuxcnne+
         qeaaUxseYHYb6irMYqrkIuMAowUnham4jnb5A89ZfDk6KypCXpIfSQM4qsG4McNH9wUr
         xFCa/h5SNMcBYbWrO2YxcYpz9Lz5886fsjlVx46E6XU8n5kgERwZRFX2O/WlthxGfZKn
         LWR2kAkdBcwkUly0SNRXnn1e0MxlqkybjfjCCFVDfDUSS3M+k2boYXcSk7GZoDXEx1Q6
         Z4Ug==
X-Gm-Message-State: AO0yUKXSGROv7Xe/0EZp7msbpfunEI4kfGLCUoDGNfXwkfRYmK5V8ez5
        kQvP/7uga1G0lCOOY8qjiE1W51YvnZYErsVHeXj/ww==
X-Google-Smtp-Source: AK7set9JcP4LrmflM2Vg6wAshx+OZbIoXMQmJnLVzau1kHRpZ2Qk6Tzv2+8Kf+dRoEUlxIU3UHfaYHhnIjYMwvPjxZ0=
X-Received: by 2002:a25:fe0a:0:b0:7ca:9b40:72a7 with SMTP id
 k10-20020a25fe0a000000b007ca9b4072a7mr435653ybe.130.1675342473108; Thu, 02
 Feb 2023 04:54:33 -0800 (PST)
MIME-Version: 1.0
References: <20230201150011.200613-1-brgl@bgdev.pl> <CACRpkdYEQkxEJ23Xt4hjwu3Jxct-QXZktdzze5Pf6SBNYj80Fg@mail.gmail.com>
 <CAMRc=MdDwSi+DDJmn3Yrnh5m8EK5EJEfLrejXHN0+0k41DKx3w@mail.gmail.com>
In-Reply-To: <CAMRc=MdDwSi+DDJmn3Yrnh5m8EK5EJEfLrejXHN0+0k41DKx3w@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Feb 2023 13:54:21 +0100
Message-ID: <CACRpkdbLjcGUvycX9p=hYjMwS6UJOkUTOJvbEcNtddx5mnbSuQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] pinctrl: qcom: add dt-bindings and driver for sa8775p-tlmm
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 2, 2023 at 9:25 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> On Wed, Feb 1, 2023 at 11:46 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Wed, Feb 1, 2023 at 4:00 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> >
> > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > >
> > > This series contains the device-tree bindings and the pinctrl driver for the
> > > SA8775P platforms.
> > >
> > > v2 -> v3 (Changes in DT bindings only)
> > > - fix the gpio pattern property (platform has 148 GPIOs)
> > > - add blank lines for better readability
> >
> > v3 patch set applied, fixing the 149->148 number in the example
> > in patch 1!
> >
>
> Thanks! Seems like only patch 1/2 got into your branch?

That's confusing, it looks to me like they are both there?
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=devel

Isn't "pinctrl: qcom: add the tlmm driver sa8775p platforms" patch 2/2?

Yours,
Linus Walleij
