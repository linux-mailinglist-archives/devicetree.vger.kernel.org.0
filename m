Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5707A59CED5
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 04:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239435AbiHWCz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 22:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239632AbiHWCz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 22:55:59 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE8A5C37D
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:55:57 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id s199so14560003oie.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=T+S/nKyRsVKnDI2NI2XWxFbudSWc5/W62WtWCj7xI5k=;
        b=FyTH6s+w0NZh2OcFL16yY9rrPwgEsLeMGuckTfZFJvUpiQgZhvKwNJDT6oZiYYI1Z6
         ahxK6O/w05oVFZ4wDew/xvyytGyxYN+aSDywQsmGUSyGn5wO+1YdQUKE/fCXgrv+Mdeh
         DuW/vVKva1riddVn6fvIhACtHvxgTngeF1ltc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=T+S/nKyRsVKnDI2NI2XWxFbudSWc5/W62WtWCj7xI5k=;
        b=Uianfywm93LbzED49JUPcopIsHUUhNJhhXN2gMBSpKiGYdKKovpbIbfJ6b4C1HlCQM
         9g+irXlJRh/bbh8ebSZN7LoVZq9shyce9udTOfpRVRMifdbvDMRapZiWOlFp3xF5KbEn
         Jci/huMTVSPCEuMVuvlut2j0/VRWSCez5ST5/VOceLxoY31ejtfX1bzOM9Y2XDTiEoVW
         KE79ncTaNylZTiQ8Vsdmk/uBZalASww1/sOz7c4P/1H5CFVG6yXsgqXphX24rf/ZuE6l
         3y6dFgA+xPgsO37sFknfmcEUNQYqsNWBj9dQOvKsi1Yuhbkawumk3qrMv0RLoRa/tGlB
         s9kA==
X-Gm-Message-State: ACgBeo3m7JQnasU+Pak6CkV+uusmzraurIfgeYrznqZIZuolTcuu51+I
        NMj7YanMQ9UEvMMYiW1CKXSv8x03AHdSTQhPr8ZUDg==
X-Google-Smtp-Source: AA6agR5B1RXiqU24b10dVaT51Y2w8Tu58T9a6cri/gxITu0yRHhbmrCSL4kKosa2BPr7V6Lbpg9/mCneKS0FOSLLrzY=
X-Received: by 2002:a05:6808:1142:b0:343:86a0:dedc with SMTP id
 u2-20020a056808114200b0034386a0dedcmr510821oiu.44.1661223357058; Mon, 22 Aug
 2022 19:55:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 21:55:56 -0500
MIME-Version: 1.0
In-Reply-To: <e9760ee4-421a-5c87-4370-50262930aea1@linaro.org>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
 <20220710084133.30976-9-dmitry.baryshkov@linaro.org> <20220711231638.GA449827-robh@kernel.org>
 <e9760ee4-421a-5c87-4370-50262930aea1@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 21:55:56 -0500
Message-ID: <CAE-0n50OhC=+twQiei8fdXjCAV_XpAW-7N2zDFQMu9Vx7Zyy+Q@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] dt-bindings: msm/dp: add missing properties
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-08-22 11:46:39)
> On 12/07/2022 02:16, Rob Herring wrote:
> >
> > But this is the wrong location for 'data-lanes'. It belongs in an
> > endpoint node.
>
> I rechecked the existing device trees (sc7280-herobrine.dtsi). The
> data-lanes are already inside the main dp controller node. I'll take a
> glance on fixing the driver to check the dp_out endpoint (and update
> existing DT to move the property to the endpoint node), but to make
> schema compatible with the existing device trees we'd probably still
> need this property (which can be marked as deprecated once the proper
> endpoint property is supported). Does that sound plausible?

It would be nice if drm_of_get_data_lanes_count() took some port and
endpoint number instead of a node pointer directly. Then you couldn't
mess this up as easily.
