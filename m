Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C591694D3D
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 17:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbjBMQtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 11:49:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbjBMQtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 11:49:17 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FEBCDCE
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 08:49:16 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id h19so13654260vsv.13
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 08:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tvhGy8ETPL11zqdmZC/xExmWZp35rJjo2Y2WgSoKKbY=;
        b=Weloq8u9lXxJ8tOY5uJNK934GqHg+5Bp+ylQGnTS9Ir5oR8JwoU1fM+/KT7nphG+5z
         6nXDJ3bTR5xkogGeNIV1QQSMnLOxUpsxooMOeL2wmWPfVS9Uabbv3SpWXv8tVMUHnVbD
         aHrPh2nvYk3lxoEPomJXsN40APlgbZfrPDSV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tvhGy8ETPL11zqdmZC/xExmWZp35rJjo2Y2WgSoKKbY=;
        b=p1g3Gq9J53jeF5SpSm6U+8ZHVcivmsFFiSsTOxfUiyimZCDpBPMl0WGz6wsTWVYjUU
         ZnwHPDYbY//zhZgLnL8M1QymBjpD3b9yqnE6cc1Kn5ScTDkORTHDC2hEW9ky1SARQEso
         MKtUmCe8oSh2ljCWSzMkYIebjQI5XPp10rGTl8a7Kr+tb22xb1kU3WDeRD1TUWKRH19k
         X2mbqY26+yViSiU/m4xCjRYuQ4ikvjfLbHrukNxF6nA95McHzqmvrJlV4TnIgd5c9PT7
         Us+mBnmSE1hZS6NdDVxZ+yZTLdh50jIimR3PaE/BB3aoqp3P1sHYvBx93PLm/4C9dFRT
         5iRA==
X-Gm-Message-State: AO0yUKXOY+ZB8f0PC//4RdOKW5CpSAXJXxq7cxjH5/W+wXt9Kz0yNnfv
        t1oFAZBeLq8UxZk1AQAd+26zLl3EheCEu3Bx
X-Google-Smtp-Source: AK7set+1zbQJlAN+bMbte0mjQnG2zCktC3Wf2LwYLFsynVHLcZf+jZNGYbpwwowKEscXoBx+tOvf9w==
X-Received: by 2002:a05:6102:cd4:b0:411:b324:b021 with SMTP id g20-20020a0561020cd400b00411b324b021mr13263246vst.3.1676306954915;
        Mon, 13 Feb 2023 08:49:14 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id c3-20020ab00783000000b005de5a2cca24sm211048uaf.8.2023.02.13.08.49.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 08:49:12 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id p14so1440806vsn.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 08:49:12 -0800 (PST)
X-Received: by 2002:a05:6102:1590:b0:411:c7ae:5b47 with SMTP id
 g16-20020a056102159000b00411c7ae5b47mr2628026vsv.68.1676306952068; Mon, 13
 Feb 2023 08:49:12 -0800 (PST)
MIME-Version: 1.0
References: <20230213105803.v2.1.I610cef0ead2d5df1f7bd18bc0e0ae040b03725d0@changeid>
 <Y+ppFm40+gmVK6NU@google.com>
In-Reply-To: <Y+ppFm40+gmVK6NU@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 Feb 2023 08:49:00 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X3Tj8V7cSzY+JQwdNRRqiqQC80cPHQci8f_HPp8y_q2g@mail.gmail.com>
Message-ID: <CAD=FV=X3Tj8V7cSzY+JQwdNRRqiqQC80cPHQci8f_HPp8y_q2g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Adjust zombie PWM frequency
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Owen Yang <ecs.taipeikernel@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Abner Yen <abner.yen@ecs.com.tw>, Harvey <hunge@google.com>,
        Bob Moragues <moragues@google.com>,
        Gavin Lee <gavin.lee@ecs.com.tw>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Feb 13, 2023 at 8:45 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Mon, Feb 13, 2023 at 10:59:05AM +0800, Owen Yang wrote:
> > Tune the PWM to solve screen flashing issue and high frequency noise.
> > While at it, the comment for the PWM settings incorrectly said we were using a 5kHz duty cycle. It should have said "period", not "duty cycle".
>
> Please split this into two lines
>
> > Correct this while updating the values.
> >
> > Signed-off-by: Owen Yang <ecs.taipeikernel@gmail.com>
>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

Reviewed-by: Douglas Anderson <dianders@chromium.org>
