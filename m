Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF776199D5
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231538AbiKDO2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:28:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231754AbiKDO2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:28:17 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75028D7F
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:26:15 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id t25so13677968ejb.8
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ezu4+x+FxmyX9LnUOtXYBWAL6xwSTPUJFe4qn695+K8=;
        b=CT1hZWbquyHWvrgB8QGBW5W6X6O9ZmDfiWMIdy36NP115npz/vftPW3Y/KXWY9GwVG
         eHJqRqakklZm2mrqCohYKxxqfmGsVd18ife5cR5uc2d9icoK1bP8AnHKDTb0lM1rWW3X
         7RcvCe2reUBgTMvL6PTalopiQulEArdShKqDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ezu4+x+FxmyX9LnUOtXYBWAL6xwSTPUJFe4qn695+K8=;
        b=QnOa5SHzRhcA+CSheYc9E4kXiUaUV5jjO5SZo3M/0NAYy8SXJ0fraBlf5/YthSFzq6
         w4vziqPheM1cwbSSvWhw6/I+EoJvDHwCLYlKph22XeVbdMkURp2eMPqPwYQOEePWPNZT
         d9dBq2PJqSQmxiC2qT8uVZEbEvHPndZ3vjrW0LPQ6NrEW7oZ99fsA/RPTbLaDrBfvJ2T
         CNm8UVlgWfCNi50nCJ2bj0QTVyP3C5/vf4kHZ5SgXVMjfapy/U0aTSwq1SxVtBsbTDH4
         AzTsjZRp5gk/uLw0bo4C3qn4DFSIadvxAb8dqo6atEyfH2JKZTz/BhoTMW4brgHI/f8V
         N8Mw==
X-Gm-Message-State: ANoB5plYnQKb7vtPX7zzNmTFVqD4uyAyvUvZjwC4Rp1G4LXlbTc81ScZ
        if3fZPDPHE6MJOYcbfQ9wS4KcYijCCJZIQPG
X-Google-Smtp-Source: AMsMyM5qGTPPlGPru3eXip8sJDspqRVDppGliVBOUlAwEtl8sSPVbBoAqT4tnNwf1MhfRVqxyhxbMw==
X-Received: by 2002:a17:906:58c6:b0:7ae:43f5:a27a with SMTP id e6-20020a17090658c600b007ae43f5a27amr115872ejs.164.1667571973215;
        Fri, 04 Nov 2022 07:26:13 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id p23-20020a056402155700b004615e1bbaf4sm1976920edx.87.2022.11.04.07.26.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 07:26:09 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id i5-20020a1c3b05000000b003cf47dcd316so5514992wma.4
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:26:08 -0700 (PDT)
X-Received: by 2002:a05:600c:4486:b0:3cf:6e1d:f4a5 with SMTP id
 e6-20020a05600c448600b003cf6e1df4a5mr20925598wmo.85.1667571968557; Fri, 04
 Nov 2022 07:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20221104061941.2739938-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20221104141515.v10.3.I3ac715e729f6f9b5a3e3001b155df4f9d14e6186@changeid> <139c06eb-14b8-10b5-80b7-ba8ec8579846@somainline.org>
In-Reply-To: <139c06eb-14b8-10b5-80b7-ba8ec8579846@somainline.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 4 Nov 2022 07:25:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VwP_s5y0MVNLs+WGD_=nJtJe7h=n+Xu4Ky5RvgdkAw9Q@mail.gmail.com>
Message-ID: <CAD=FV=VwP_s5y0MVNLs+WGD_=nJtJe7h=n+Xu4Ky5RvgdkAw9Q@mail.gmail.com>
Subject: Re: [PATCH v10 3/4] arm64: dts: qcom: sc7280: Add touchscreen and
 touchpad support for evoker
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Nov 4, 2022 at 2:35 AM Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:
>
>
> On 04/11/2022 07:19, Sheng-Liang Pan wrote:
> > Change touchpad and touchscreen node for evoker
> > Touchpad: SA461D-1011
> > Touchscreen: GT7986U
>
> What's the reasoning? Were they changed post r0? Is r0 support
> effectively dropped?
>
> The changes look ok, but I feel like this needs more of a comment in the
> commit msg.

As I understand it r0's toucscreen/touchpad were not right to start
with. We are moving towards getting things upstream sooner and that
means that hardware hasn't always been fully tested out.

I certainly wouldn't object to a better commit message here, but in
this case there are no real world users (yet) and thus nobody is
really affected by this churn. ...so IMO if the series needs to be
spun for some other reason then the commit message could be updated,
but I wouldn't object to it landing as-is either.

-Doug
