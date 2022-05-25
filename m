Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E606534270
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 19:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343526AbiEYRvK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 13:51:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343556AbiEYRvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 13:51:09 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D50913C
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:51:07 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id p74so18489084iod.8
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=po4fZuhQjua5xFboKSeszJd6bmcTvYOuQalf/Wsj6NM=;
        b=GbhWDbOof7USuznbJj3BOp8b+rV7AnZCEjomngAQ1Tm5K6yUmSM9VrF2rXhlIFjjxh
         Ckx8hCMaloSM9IWCHuDmn+jYngmhlml2zbUjugw3WU1TYudDq+AFiXNlTNWyO3lXGFWV
         QYHTlGr7/VhKpgW6q/UlmIRt1ynDNIl5jQp0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=po4fZuhQjua5xFboKSeszJd6bmcTvYOuQalf/Wsj6NM=;
        b=ML7pSzVTAbpWFfDXXcHz1ku/EiYT8eUu1c5JY8qjO0Mpvw78YD/5+TM+bW+MUIu4RF
         3Fo4E7YkXV5M+7ViuU/7+YV6tP/R4yiGChPYZ6iIGRlnAu0guB5mwnKHvyuceIOYoqvL
         TO0GjDWY84vFK0JbdUBS+YgbQAFuDc0aB2Vn6OW/jF7GHCpQoVYveaJ0dX2uEGdckJ4D
         fDnZWXDHjxujosXRtREdYu7cl1o3wz3jnUgKs8fWa/MZwVaThpLiQXwcqOopMUzdYcFR
         it+4f04tENeqVvhPtxY1AqjRU3av5x+IVhu5Lq5NoRc5X1TpOEc5ZQTBnqnekM5JJmXm
         v/fg==
X-Gm-Message-State: AOAM53035DlKTimFsvDX9KoPo/fppm3UX+K4O0JCOyvs9ABT9ByO6HQ2
        aQFU6nHlgwcSkmIoGRMqMAO17Ee8A9Hl88ya4pc=
X-Google-Smtp-Source: ABdhPJxMc5ey2n0QjrO0rPgTuJ+4gIvO/d4mCLPHBbAmaRb46BkDUOvYQWkgVK77IMXsGGMrwedprQ==
X-Received: by 2002:a5d:914a:0:b0:657:724e:67f7 with SMTP id y10-20020a5d914a000000b00657724e67f7mr15053103ioq.205.1653501066647;
        Wed, 25 May 2022 10:51:06 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id m4-20020a02c884000000b0032e6fe7bbe0sm4317839jao.149.2022.05.25.10.51.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 May 2022 10:51:06 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id e3so22120660ios.6
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 10:51:06 -0700 (PDT)
X-Received: by 2002:a02:6d61:0:b0:32b:fb61:9d88 with SMTP id
 e33-20020a026d61000000b0032bfb619d88mr16675388jaf.184.1653501065709; Wed, 25
 May 2022 10:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220525014308.1853576-1-judyhsiao@chromium.org> <20220525014308.1853576-3-judyhsiao@chromium.org>
In-Reply-To: <20220525014308.1853576-3-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 25 May 2022 10:50:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uf6OhDBpr_-ennq0_c61x_sr4_ma6a=z8PWvaPGFyP_A@mail.gmail.com>
Message-ID: <CAD=FV=Uf6OhDBpr_-ennq0_c61x_sr4_ma6a=z8PWvaPGFyP_A@mail.gmail.com>
Subject: Re: [v3 2/3] arm64: dts: qcom: sc7280: Add sc7280-herobrine-audio-rt5682.dtsi
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 24, 2022 at 6:43 PM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> Audio dtsi for sc7280 boards that using rt5682 headset codec:
> 1. Add dt nodes for sound card which use I2S playback and record
>    through rt5682s and I2S playback through max98357a.
> 2. Enable lpass cpu node and add pin control and dai-links.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> ---
>  .../qcom/sc7280-herobrine-audio-rt5682.dtsi   | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
