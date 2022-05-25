Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A668E53426E
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 19:50:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234360AbiEYRui (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 13:50:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343529AbiEYRuh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 13:50:37 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5C4E55225
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:50:35 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id y8so2334315iof.10
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LM3ReL420FsBXX+XGSyRPdq/fubRwpogL9YcgPRaS0E=;
        b=Q924Dm7ycuAYo3Y1WStJA7LSKi4PqoFJNApYmf4eGyAZGHwKqlEqF/hLBZHTBUvAoU
         2WvdY2d49J2lnu1t4qW8z0DzQTCo3YXKYLzQYA30lM3WN6wkMKGVr+bn7zf28UcAjKE8
         y8AWEUSKJaFsdStEKBLq/ysjVun50Gw/fVHZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LM3ReL420FsBXX+XGSyRPdq/fubRwpogL9YcgPRaS0E=;
        b=EMJtZN8Fz/VbZJZJZJmcKZglipp3TK3V7A2JVdEXoWdyDecNReQOylazbB0u37dZd7
         tuwZjemENRj3VE326n02wIf8o/Yu4njT4mC+Fl0o8gMhsN9mxRoCpzHTti5ettrn4lGk
         1JuRxEW9o3lmcsKGp/g9ZRE7VcEs3wHzSCVP64zFEzc4yme9w9UzNhRzXN44Znm29hTm
         cNyLFYh9CNDsPMp0Gq/NeTAuRlp/C2/b0/KkBL5jD/ernlE9y4w+hksAF/rSwf9mnf11
         /pjmQo17GHHj0HsuRf0sc66kNmc/fonU/ixiKjfFTpmDjcubiSflrg7Rl5BEbtd0SyiC
         3zPw==
X-Gm-Message-State: AOAM531PgDvQHG9cJhWDuR5qbG8gARY69ir6oK1f3vSZnlyYd8nDOwW3
        Al/0USxljgvmSVuYltdVB9ny6RiacA8sALdw/C8=
X-Google-Smtp-Source: ABdhPJwD+mXT+bMygbYElKaptKANKO8JwUIkZUFOQxjc/fSjAGwt2yHZkzLhLOnxpilSGBFJY3AD2w==
X-Received: by 2002:a05:6602:2e8d:b0:64f:b683:c70d with SMTP id m13-20020a0566022e8d00b0064fb683c70dmr15470602iow.62.1653501034942;
        Wed, 25 May 2022 10:50:34 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com. [209.85.166.51])
        by smtp.gmail.com with ESMTPSA id z15-20020a02ceaf000000b0032b3a7817a7sm4307254jaq.107.2022.05.25.10.50.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 10:50:33 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id n145so12558948iod.3
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:50:33 -0700 (PDT)
X-Received: by 2002:a02:a595:0:b0:32e:7849:9777 with SMTP id
 b21-20020a02a595000000b0032e78499777mr17220200jam.244.1653501033086; Wed, 25
 May 2022 10:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <20220525014308.1853576-1-judyhsiao@chromium.org> <20220525014308.1853576-2-judyhsiao@chromium.org>
In-Reply-To: <20220525014308.1853576-2-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 25 May 2022 10:50:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UYeXLZ=sTd4NUesMF0E4RCzOqCG2mhQToPPWKXmzmvKg@mail.gmail.com>
Message-ID: <CAD=FV=UYeXLZ=sTd4NUesMF0E4RCzOqCG2mhQToPPWKXmzmvKg@mail.gmail.com>
Subject: Re: [v3 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf
 settings for mi2s1
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 24, 2022 at 6:43 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> 1. Add drive strength property for mi2s1 on sc7280 based platforms.
> 2. Disable the pull-up for mi2s1 lines.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
